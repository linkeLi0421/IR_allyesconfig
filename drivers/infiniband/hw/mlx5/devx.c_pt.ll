; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/devx.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/devx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon.178 = type { i16 }
%union.anon.180 = type { ptr }
%struct.uapi_definition = type { i8, i8, %union.anon.177, %union.anon.180 }
%union.anon.177 = type { %struct.anon.179 }
%struct.anon.179 = type { i16, i8, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.uverbs_attr_def = type { i16, %struct.uverbs_attr_spec }
%struct.uverbs_attr_spec = type { i8, i8, %union.anon.181, %union.anon.185 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i16, i16 }
%union.anon.185 = type { %struct.anon.186, [4 x i8] }
%struct.anon.186 = type { ptr }
%struct.anon.183 = type { i16, i8 }
%struct.uverbs_obj_type_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uverbs_obj_idr_type = type { %struct.uverbs_obj_type, ptr }
%struct.uverbs_obj_type = type { ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uverbs_obj_fd_type = type { %struct.uverbs_obj_type, ptr, ptr, ptr, i32 }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.atomic_t = type { i32 }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.189, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.191, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.189 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.190] }
%struct.anon.190 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.151 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.151 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.191 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.devx_event = type { %struct.xarray, %struct.list_head }
%struct.devx_obj_event = type { %struct.callback_head, %struct.list_head }
%struct.devx_event_subscription = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32, i32, %struct.callback_head, i64, ptr, ptr }
%struct.devx_async_event_file = type { %struct.ib_uobject, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, ptr, i8 }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.devx_async_event_data = type { %struct.list_head, %struct.mlx5_ib_uapi_devx_async_event_hdr }
%struct.mlx5_ib_uapi_devx_async_event_hdr = type { i64, [0 x i8] }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.127 }
%union.anon.127 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.128, i16, i16, i8 }
%union.anon.128 = type { i64 }
%struct.mlx5_ib_ucontext = type { %struct.ib_ucontext, %struct.list_head, %struct.mutex, %struct.mlx5_bfreg_info, i8, i32, i64, i16, %struct.atomic_t }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx5_bfreg_info = type { ptr, i32, ptr, %struct.mutex, i32, i8, i32, i32, i32, i32 }
%struct.devx_obj = type { ptr, i64, i32, [16 x i32], i32, %union.anon.201, %struct.list_head }
%union.anon.201 = type { %struct.mlx5_core_cq }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.202, i32, %struct.list_head, ptr, i16 }
%struct.anon.202 = type { %struct.list_head, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.uverbs_api_object = type { ptr, ptr, i8, i32 }
%struct.mlx5_ib_cq = type { %struct.ib_cq, %struct.mlx5_core_cq, %struct.mlx5_ib_cq_buf, %struct.mlx5_db, %struct.spinlock, %struct.mutex, ptr, ptr, i32, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.work_struct, i16 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.141, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.141 = type { %struct.work_struct }
%struct.mlx5_ib_cq_buf = type { %struct.mlx5_frag_buf_ctrl, %struct.mlx5_frag_buf, ptr, i32, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.203, i32, i32 }
%union.anon.203 = type { ptr }
%struct.mlx5_ib_srq = type { %struct.ib_srq, %struct.mlx5_core_srq, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_frag_buf_ctrl, ptr, %struct.spinlock, i32, i32, i16, ptr, %struct.mutex, i32 }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.132, %struct.rdma_restrack_entry }
%struct.anon.132 = type { ptr, %union.anon.133 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { ptr, i32 }
%struct.mlx5_core_srq = type { %struct.mlx5_core_rsc_common, i32, i32, i32, i32, i32, ptr, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.mlx5_ib_qp = type { %struct.ib_qp, %union.anon.204, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_ib_wq, i8, i8, %struct.mlx5_ib_wq, %struct.mutex, i32, i32, i8, i32, %struct.mlx5_bf, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mlx5_rate_limit, i32, i32, i32, i32, i16 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%union.anon.204 = type { %struct.mlx5_ib_raw_packet_qp }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_sq, %struct.mlx5_ib_rq }
%struct.mlx5_ib_sq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, ptr, i32, i8 }
%struct.mlx5_ib_qp_base = type { ptr, %struct.mlx5_core_qp, %struct.mlx5_ib_ubuffer }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
%struct.mlx5_ib_ubuffer = type { ptr, i32, i64 }
%struct.mlx5_ib_rq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, i32, i8, i32 }
%struct.mlx5_ib_wq = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, ptr, ptr, i16, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr }
%struct.mlx5_bf = type { i32, i32, ptr }
%struct.mlx5_rate_limit = type { i32, i32, i16 }
%struct.mlx5_ib_rwq = type { %struct.ib_wq, %struct.mlx5_core_qp, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.mlx5_db, i32, i32, i32, i32, i32 }
%struct.ib_wq = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t }
%struct.mlx5_ib_rwq_ind_table = type { %struct.ib_rwq_ind_table, i32, i16 }
%struct.ib_rwq_ind_table = type { ptr, ptr, %struct.atomic_t, i32, i32, ptr }
%struct.devx_async_cmd_event_file = type { %struct.ib_uobject, %struct.devx_async_event_queue, %struct.mlx5_async_ctx }
%struct.devx_async_event_queue = type { %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.atomic_t, i8 }
%struct.devx_async_data = type { ptr, %struct.list_head, ptr, %struct.mlx5_async_work, i16, %struct.mlx5_ib_uapi_devx_async_cmd_hdr }
%struct.mlx5_async_work = type { ptr, ptr }
%struct.mlx5_ib_uapi_devx_async_cmd_hdr = type { i64, [0 x i8] }
%struct.devx_umem = type { ptr, ptr, i32, [4 x i32] }
%struct.devx_umem_reg_cmd = type { ptr, i32, [4 x i32] }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@mlx5_ib_devx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&table->event_xa_lock\00", [42 x i8] zeroinitializer }, align 32
@mlx5_ib_object_MLX5_IB_OBJECT_DEVX = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 4096, ptr null, i32 4, ptr @_object_methods_MLX5_IB_OBJECT_DEVX2971 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_object_MLX5_IB_OBJECT_DEVX_OBJ = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 4097, ptr @.compoundliteral.20, i32 5, ptr @_object_methods_MLX5_IB_OBJECT_DEVX_OBJ2979 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_object_MLX5_IB_OBJECT_DEVX_UMEM = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 4098, ptr @.compoundliteral.38, i32 2, ptr @_object_methods_MLX5_IB_OBJECT_DEVX_UMEM2984 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 4100, ptr @.compoundliteral.47, i32 1, ptr @_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD3000 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 4101, ptr @.compoundliteral.53, i32 1, ptr @_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD3018 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_devx_defs = dso_local constant { <{ { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon.178, [4 x i8] } { %struct.anon.178 { i16 4096 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX } }, %struct.uapi_definition { i8 5, i8 1, %union.anon.177 zeroinitializer, %union.anon.180 { ptr @devx_is_supported } }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon.178, [4 x i8] } { %struct.anon.178 { i16 4097 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_OBJ } }, %struct.uapi_definition { i8 5, i8 1, %union.anon.177 zeroinitializer, %union.anon.180 { ptr @devx_is_supported } }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon.178, [4 x i8] } { %struct.anon.178 { i16 4098 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_UMEM } }, %struct.uapi_definition { i8 5, i8 1, %union.anon.177 zeroinitializer, %union.anon.180 { ptr @devx_is_supported } }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon.178, [4 x i8] } { %struct.anon.178 { i16 4100 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD } }, %struct.uapi_definition { i8 5, i8 1, %union.anon.177 zeroinitializer, %union.anon.180 { ptr @devx_is_supported } }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon.178, [4 x i8] } { %struct.anon.178 { i16 4101 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD } }, %struct.uapi_definition { i8 5, i8 1, %union.anon.177 zeroinitializer, %union.anon.180 { ptr @devx_is_supported } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/infiniband/hw/mlx5/devx.c\00", [62 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dispatch_event_fd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_object_methods_MLX5_IB_OBJECT_DEVX2971 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OTHER, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_UAR, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_EQN, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT], [16 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_OTHER = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 2, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OTHER, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OTHER }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_UAR = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4097, i32 0, i32 2, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_UAR, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_QUERY_UAR }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_EQN = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4098, i32 0, i32 2, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_EQN, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_QUERY_EQN }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4099, i32 0, i32 5, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_OTHER = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.7], [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.181 { %struct.anon.182 { i16 -1, i16 16 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.181 { %struct.anon.182 { i16 -1, i16 16 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_UAR = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.8, ptr @.compoundliteral.9], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 4, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.181 { %struct.anon.182 { i16 4, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_EQN = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.13, ptr @.compoundliteral.14], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 4, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.181 { %struct.anon.182 { i16 4, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 4, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4101, i8 0 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4097, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 0, { %struct.anon.183 } { %struct.anon.183 { i16 4097, i8 0 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.181 { %struct.anon.182 { i16 -1, i16 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4100, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4099, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 { %struct.anon.182 { i16 4, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral.20 = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @devx_obj_cleanup }, [20 x i8] zeroinitializer }, align 32
@_object_methods_MLX5_IB_OBJECT_DEVX_OBJ2979 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_CREATE, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_DESTROY, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_MODIFY, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_QUERY, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY], [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/infiniband/hw/mlx5/mlx5_ib.h\00", [59 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_CREATE = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 3, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_CREATE, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OBJ_CREATE }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4097, i32 0, i32 1, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_MODIFY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4098, i32 0, i32 3, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_MODIFY, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OBJ_MODIFY }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_QUERY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4099, i32 0, i32 3, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_QUERY, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OBJ_QUERY }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4100, i32 0, i32 5, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_CREATE = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4097, i8 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.181 { %struct.anon.182 { i16 -1, i16 16 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.181 { %struct.anon.182 { i16 -1, i16 16 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@devx_handle_mkey_indirect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mkey->wait\00", [20 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.26], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4097, i8 3 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_MODIFY = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 -1, i8 1 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.181 { %struct.anon.182 { i16 -1, i16 16 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.181 { %struct.anon.182 { i16 -1, i16 16 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_QUERY = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 -1, i8 0 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.181 { %struct.anon.182 { i16 -1, i16 16 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.181 { %struct.anon.182 { i16 -1, i16 16 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 -1, i8 0 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.181 { %struct.anon.182 { i16 -1, i16 16 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4100, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4098, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 4, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4100, i8 0 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4099, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @devx_umem_cleanup }, [20 x i8] zeroinitializer }, align 32
@_object_methods_MLX5_IB_OBJECT_DEVX_UMEM2984 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_REG, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_DEREG], [24 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_REG = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 6, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_REG, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_UMEM_REG }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_DEREG = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4097, i32 0, i32 1, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_DEREG, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_REG = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.compoundliteral.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4098, i8 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4099, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 { %struct.anon.182 { i16 8, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4101, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4100, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.181 { %struct.anon.182 { i16 4, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_DEREG = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.45], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4098, i8 3 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@uverbs_fd_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@devx_async_cmd_event_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @devx_async_cmd_event_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @devx_async_cmd_event_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @uverbs_uobject_fd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[devx_async_cmd]\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal constant { %struct.uverbs_obj_fd_type, [40 x i8] } { %struct.uverbs_obj_fd_type { %struct.uverbs_obj_type { ptr @uverbs_fd_class, i32 232 }, ptr @devx_async_cmd_event_destroy_uobj, ptr @devx_async_cmd_event_fops, ptr @.str.46, i32 0 }, [40 x i8] zeroinitializer }, align 32
@_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD3000 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC], [28 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 1, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.48], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 4, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4100, i8 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@devx_init_event_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ev_queue->lock\00", [16 x i8] zeroinitializer }, align 32
@devx_init_event_queue.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ev_queue->poll_wait\00", [43 x i8] zeroinitializer }, align 32
@devx_async_event_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @devx_async_event_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @devx_async_event_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @uverbs_uobject_fd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[devx_async_event]\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal constant { %struct.uverbs_obj_fd_type, [40 x i8] } { %struct.uverbs_obj_fd_type { %struct.uverbs_obj_type { ptr @uverbs_fd_class, i32 176 }, ptr @devx_async_event_destroy_uobj, ptr @devx_async_event_fops, ptr @.str.52, i32 0 }, [40 x i8] zeroinitializer }, align 32
@_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD3018 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC], [28 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 2, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.54, ptr @.compoundliteral.55], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 4, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4101, i8 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 8, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ev_file->lock\00", [17 x i8] zeroinitializer }, align 32
@mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key.57 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ev_file->poll_wait\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 16, i64 17, i64 18, i64 19, i64 20, i64 24, i64 28, i64 29]
@__sancov_gen_cov_switch_values.59 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 16, i64 17, i64 18, i64 19, i64 20, i64 24, i64 28, i64 29]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 1874, i64 1890]
@__sancov_gen_cov_switch_values.61 = internal global [18 x i64] [i64 16, i64 16, i64 256, i64 257, i64 266, i64 1872, i64 1874, i64 1876, i64 1888, i64 1890, i64 1903, i64 1904, i64 2058, i64 2061, i64 2082, i64 2084, i64 2086, i64 2114]
@__sancov_gen_cov_switch_values.62 = internal global [17 x i64] [i64 15, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 16, i64 17, i64 18, i64 19, i64 20, i64 24, i64 28, i64 29]
@__sancov_gen_cov_switch_values.63 = internal global [17 x i64] [i64 15, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 16, i64 17, i64 18, i64 19, i64 20, i64 24, i64 28, i64 29]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 16, i64 1280, i64 1808, i64 2308, i64 2312]
@__sancov_gen_cov_switch_values.65 = internal global [17 x i64] [i64 15, i64 16, i64 1024, i64 1280, i64 1536, i64 1797, i64 1808, i64 1815, i64 2304, i64 2308, i64 2312, i64 2316, i64 2322, i64 2326, i64 2361, i64 2560, i64 65281]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 1874, i64 1890]
@__sancov_gen_cov_switch_values.67 = internal global [31 x i64] [i64 29, i64 16, i64 512, i64 1024, i64 1280, i64 1536, i64 1792, i64 1797, i64 1808, i64 1815, i64 1905, i64 1922, i64 2048, i64 2054, i64 2062, i64 2070, i64 2087, i64 2089, i64 2304, i64 2308, i64 2312, i64 2316, i64 2322, i64 2326, i64 2352, i64 2355, i64 2358, i64 2361, i64 2365, i64 2368, i64 2560]
@__sancov_gen_cov_switch_values.68 = internal global [11 x i64] [i64 9, i64 16, i64 512, i64 1024, i64 1027, i64 1280, i64 1797, i64 1815, i64 2308, i64 2312, i64 2316]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 1024, i64 1808]
@__sancov_gen_cov_switch_values.70 = internal global [32 x i64] [i64 30, i64 16, i64 512, i64 1024, i64 1280, i64 1536, i64 1792, i64 1797, i64 1808, i64 1815, i64 1905, i64 1922, i64 2048, i64 2054, i64 2062, i64 2070, i64 2087, i64 2089, i64 2304, i64 2308, i64 2312, i64 2316, i64 2322, i64 2326, i64 2352, i64 2355, i64 2358, i64 2361, i64 2365, i64 2368, i64 2560, i64 2568]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 1874, i64 1890]
@__sancov_gen_cov_switch_values.72 = internal global [30 x i64] [i64 28, i64 16, i64 1027, i64 1282, i64 1283, i64 1284, i64 1285, i64 1286, i64 1287, i64 1290, i64 1294, i64 1795, i64 1800, i64 1812, i64 1818, i64 1830, i64 1833, i64 1834, i64 1925, i64 2087, i64 2089, i64 2305, i64 2309, i64 2313, i64 2317, i64 2323, i64 2327, i64 2358, i64 2364, i64 2561]
@__sancov_gen_cov_switch_values.73 = internal global [11 x i64] [i64 9, i64 16, i64 512, i64 1024, i64 1027, i64 1280, i64 1797, i64 1815, i64 2308, i64 2312, i64 2316]
@__sancov_gen_cov_switch_values.74 = internal global [55 x i64] [i64 53, i64 16, i64 513, i64 1026, i64 1027, i64 1282, i64 1283, i64 1284, i64 1285, i64 1286, i64 1287, i64 1290, i64 1291, i64 1294, i64 1794, i64 1795, i64 1799, i64 1800, i64 1811, i64 1812, i64 1817, i64 1818, i64 1829, i64 1830, i64 1831, i64 1833, i64 1834, i64 1907, i64 1924, i64 1925, i64 2087, i64 2089, i64 2090, i64 2305, i64 2307, i64 2309, i64 2311, i64 2313, i64 2315, i64 2317, i64 2319, i64 2323, i64 2325, i64 2327, i64 2329, i64 2354, i64 2357, i64 2358, i64 2359, i64 2363, i64 2364, i64 2367, i64 2370, i64 2561, i64 2562]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 5, i64 11, i64 12, i64 4097]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 1874, i64 1890]
@__sancov_gen_cov_switch_values.78 = internal global [27 x i64] [i64 25, i64 16, i64 513, i64 1026, i64 1291, i64 1794, i64 1799, i64 1811, i64 1817, i64 1829, i64 1831, i64 1907, i64 1924, i64 2090, i64 2307, i64 2311, i64 2315, i64 2319, i64 2325, i64 2329, i64 2354, i64 2357, i64 2359, i64 2363, i64 2367, i64 2370, i64 2562]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 1874, i64 1890]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2512, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [35 x i8] c"mlx5_ib_object_MLX5_IB_OBJECT_DEVX\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [39 x i8] c"mlx5_ib_object_MLX5_IB_OBJECT_DEVX_OBJ\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [40 x i8] c"mlx5_ib_object_MLX5_IB_OBJECT_DEVX_UMEM\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [48 x i8] c"mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [50 x i8] c"mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"mlx5_ib_devx_defs\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 3027, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 378, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2348, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 695, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 723, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2446, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [40 x i8] c"_object_methods_MLX5_IB_OBJECT_DEVX2971\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2967, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [41 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OTHER\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [45 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_UAR\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [45 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_EQN\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [51 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [40 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_OTHER\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2858, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [44 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_UAR\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2849, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 230, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 214, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 156, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [44 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_EQN\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2840, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [50 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2946, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [44 x i8] c"_object_methods_MLX5_IB_OBJECT_DEVX_OBJ2979\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2973, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant [40 x i8] c"../drivers/infiniband/hw/mlx5/mlx5_ib.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1627, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [46 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_CREATE\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [47 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_DESTROY\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [46 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_MODIFY\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [45 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_QUERY\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [51 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [45 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_CREATE\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2870, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1305, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [46 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_DESTROY\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2886, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [45 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_MODIFY\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2893, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [44 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_QUERY\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2909, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [50 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2925, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [45 x i8] c"_object_methods_MLX5_IB_OBJECT_DEVX_UMEM2984\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2981, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [44 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_REG\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [46 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_DEREG\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [43 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_REG\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2813, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [45 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_DEREG\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2833, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [26 x i8] c"devx_async_cmd_event_fops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2618, i32 37 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [53 x i8] c"_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD3000\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2994, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant [54 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [53 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2987, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1658, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1660, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [22 x i8] c"devx_async_event_fops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2733, i32 37 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [55 x i8] c"_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD3018\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 3012, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant [56 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [55 x i8] c"_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 3002, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1702, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private constant [37 x i8] c"../drivers/infiniband/hw/mlx5/devx.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1704, i32 2 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @mlx5_ib_devx_init.__key, ptr @.str, ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX, ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_OBJ, ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_UMEM, ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD, ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD, ptr @mlx5_ib_devx_defs, ptr @xa_init_flags.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @_object_methods_MLX5_IB_OBJECT_DEVX2971, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OTHER, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_UAR, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_EQN, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OTHER, ptr @.compoundliteral, ptr @.compoundliteral.7, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_UAR, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_EQN, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @_object_methods_MLX5_IB_OBJECT_DEVX_OBJ2979, ptr @.str.21, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_CREATE, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_DESTROY, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_MODIFY, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_QUERY, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_CREATE, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @devx_handle_mkey_indirect.__key, ptr @.str.25, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_DESTROY, ptr @.compoundliteral.26, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_MODIFY, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_QUERY, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @_object_methods_MLX5_IB_OBJECT_DEVX_UMEM2984, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_REG, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_DEREG, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_REG, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.compoundliteral.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_DEREG, ptr @.compoundliteral.45, ptr @devx_async_cmd_event_fops, ptr @.str.46, ptr @.compoundliteral.47, ptr @_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD3000, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC, ptr @.compoundliteral.48, ptr @devx_init_event_queue.__key, ptr @.str.49, ptr @devx_init_event_queue.__key.50, ptr @.str.51, ptr @devx_async_event_fops, ptr @.str.52, ptr @.compoundliteral.53, ptr @_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD3018, ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC, ptr @_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC, ptr @.compoundliteral.54, ptr @.compoundliteral.55, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key, ptr @.str.56, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_devx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_OBJ to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_UMEM to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_devx_defs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_MLX5_IB_OBJECT_DEVX2971 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OTHER to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_UAR to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_EQN to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OTHER to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_UAR to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_EQN to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_MLX5_IB_OBJECT_DEVX_OBJ2979 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_CREATE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_MODIFY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_QUERY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_CREATE to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devx_handle_mkey_indirect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_MODIFY to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_QUERY to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_MLX5_IB_OBJECT_DEVX_UMEM2984 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_REG to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_DEREG to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_REG to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_DEREG to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devx_async_cmd_event_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD3000 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devx_init_event_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devx_init_event_queue.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devx_async_event_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD3018 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_devx_create(ptr nocapture noundef readonly %dev, i1 noundef zeroext %is_user) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #11
  %0 = call ptr @memset(ptr %in, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #11
  %1 = call ptr @memset(ptr %out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %5, i32 35
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %8 = and i32 %7, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, ptr %in, i32 16
  br i1 %is_user, label %land.lhs.true, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @capable(i32 noundef 13) #11
  br i1 %call, label %land.lhs.true4, label %land.lhs.true.land.lhs.true19_crit_edge

land.lhs.true.land.lhs.true19_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19

land.lhs.true4:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 8
  %caps6 = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %caps6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps6, align 8
  %add.ptr11 = getelementptr i32, ptr %12, i32 53
  %13 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr11, align 4
  %and14 = and i32 %14, 1
  br label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true4, %land.lhs.true.land.lhs.true19_crit_edge
  %cap.0.ph = phi i32 [ %and14, %land.lhs.true4 ], [ 0, %land.lhs.true.land.lhs.true19_crit_edge ]
  %call20 = tail call zeroext i1 @capable(i32 noundef 17) #11
  br i1 %call20, label %land.lhs.true21, label %land.lhs.true19.do.body_crit_edge

land.lhs.true19.do.body_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true21:                                  ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev, align 8
  %caps23 = getelementptr inbounds %struct.mlx5_core_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %caps23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps23, align 8
  %add.ptr28 = getelementptr i32, ptr %18, i32 53
  %19 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr28, align 4
  %and31 = and i32 %20, 2
  %21 = or i32 %and31, %cap.0.ph
  br label %do.body

do.body:                                          ; preds = %land.lhs.true21, %land.lhs.true19.do.body_crit_edge, %if.end.do.body_crit_edge
  %cap.1 = phi i32 [ %cap.0.ph, %land.lhs.true19.do.body_crit_edge ], [ %21, %land.lhs.true21 ], [ 0, %if.end.do.body_crit_edge ]
  %22 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in, align 4
  %and39 = and i32 %23, 65535
  %or41 = or i32 %and39, 168034304
  store i32 %or41, ptr %in, align 4
  %24 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cap.1, ptr %add.ptr2, align 4
  %25 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdev, align 8
  %call62 = call i32 @mlx5_cmd_exec(ptr noundef %26, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %out, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end65:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr67 = getelementptr inbounds i32, ptr %out, i32 2
  %27 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr67, align 4
  %conv70 = and i32 %28, 65535
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv70, %if.end65 ], [ -22, %entry.cleanup_crit_edge ], [ %call62, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_devx_destroy(ptr nocapture noundef readonly %dev, i16 noundef zeroext %uid) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #11
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #11
  %2 = call ptr @memset(ptr %out, i32 0, i32 16)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 168165376, ptr %in, align 4
  %conv = zext i16 %uid to i32
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %add.ptr13, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %6, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_devx_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [16 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #11
  %0 = call ptr @memset(ptr %in.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #11
  %1 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 35
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %mlx5_ib_devx_create.exit.thread, label %if.end.i

mlx5_ib_devx_create.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr2.i = getelementptr inbounds i8, ptr %in.i, i32 16
  %9 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in.i, align 4
  %and39.i = and i32 %10, 65535
  %or41.i = or i32 %and39.i, 168034304
  store i32 %or41.i, ptr %in.i, align 4
  %11 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %add.ptr2.i, align 4
  %call62.i = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %out.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %if.end.i.mlx5_ib_devx_create.exit_crit_edge

if.end.i.mlx5_ib_devx_create.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_ib_devx_create.exit

if.end65.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr67.i = getelementptr inbounds i32, ptr %out.i, i32 2
  %12 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr67.i, align 4
  %conv70.i = and i32 %13, 65535
  br label %mlx5_ib_devx_create.exit

mlx5_ib_devx_create.exit:                         ; preds = %if.end65.i, %if.end.i.mlx5_ib_devx_create.exit_crit_edge
  %retval.0.i = phi i32 [ %conv70.i, %if.end65.i ], [ %call62.i, %if.end.i.mlx5_ib_devx_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then, label %mlx5_ib_devx_create.exit.if.end_crit_edge

mlx5_ib_devx_create.exit.if.end_crit_edge:        ; preds = %mlx5_ib_devx_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %mlx5_ib_devx_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  %devx_event_table = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37
  %conv = trunc i32 %retval.0.i to i16
  %devx_whitelist_uid = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 33
  %14 = ptrtoint ptr %devx_whitelist_uid to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %devx_whitelist_uid, align 8
  %event_xa = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37, i32 2
  call void @__raw_spin_lock_init(ptr noundef %event_xa, ptr noundef nonnull @.str.1, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37, i32 2, i32 1
  %15 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37, i32 2, i32 2
  %16 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.i, align 4
  %event_xa_lock = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37, i32 1
  call void @__mutex_init(ptr noundef %event_xa_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_ib_devx_init.__key) #11
  %17 = ptrtoint ptr %devx_event_table to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @devx_event_notifier, ptr %devx_event_table, align 4
  %event_type = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37, i32 0, i32 1
  %18 = ptrtoint ptr %event_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %event_type, align 4
  %19 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev.i, align 8
  %call6 = call i32 @mlx5_eq_notifier_register(ptr noundef %20, ptr noundef %devx_event_table) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5_ib_devx_create.exit.if.end_crit_edge, %mlx5_ib_devx_create.exit.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devx_event_notifier(ptr noundef %nb, i32 noundef %event_type, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %event_type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %0)
  %switch = icmp eq i32 %0, 10
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdev = getelementptr i8, ptr %nb, i32 -7092
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i39 = icmp eq i32 %7, 0
  br i1 %tobool.not.i39, label %if.then.i40, label %if.end.i

if.then.i40:                                      ; preds = %if.end
  %conv.i = trunc i32 %event_type to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %conv.i)
  %cond.i.i = icmp eq i16 %conv.i, 9
  br i1 %cond.i.i, label %if.then.i40.if.end7_crit_edge, label %if.then.i40.if.then5_crit_edge

if.then.i40.if.then5_crit_edge:                   ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then.i40.if.end7_crit_edge:                    ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %arrayidx3.i = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 20
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %9, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %event_type)
  %cmp.i = icmp ugt i32 %event_type, 255
  br i1 %cmp.i, label %do.end.i, label %if.end.i.is_unaffiliated_event.exit_crit_edge, !prof !114

if.end.i.is_unaffiliated_event.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_unaffiliated_event.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2348, i32 noundef 9, ptr noundef null) #11
  br label %is_unaffiliated_event.exit

is_unaffiliated_event.exit:                       ; preds = %do.end.i, %if.end.i.is_unaffiliated_event.exit_crit_edge
  %div41.i = lshr i32 %event_type, 6
  %rem.i = and i32 %event_type, 63
  %arrayidx29.i = getelementptr i64, ptr %add.ptr6.i, i32 %div41.i
  %10 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx29.i, align 8
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and30.i = and i64 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30.i)
  %tobool31.not.i.not = icmp eq i64 %and30.i, 0
  br i1 %tobool31.not.i.not, label %is_unaffiliated_event.exit.if.then5_crit_edge, label %is_unaffiliated_event.exit.if.end7_crit_edge

is_unaffiliated_event.exit.if.end7_crit_edge:     ; preds = %is_unaffiliated_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

is_unaffiliated_event.exit.if.then5_crit_edge:    ; preds = %is_unaffiliated_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %is_unaffiliated_event.exit.if.then5_crit_edge, %if.then.i40.if.then5_crit_edge
  %12 = zext i32 %event_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event_type, label %sw.default.i [
    i32 5, label %if.then5.sw.bb.i_crit_edge
    i32 17, label %if.then5.sw.bb.i_crit_edge96
    i32 16, label %if.then5.sw.bb.i_crit_edge97
    i32 19, label %if.then5.sw.bb.i_crit_edge98
    i32 1, label %if.then5.sw.bb.i_crit_edge99
    i32 7, label %if.then5.sw.bb.i_crit_edge100
    i32 2, label %if.then5.sw.bb.i_crit_edge101
    i32 3, label %if.then5.sw.bb.i_crit_edge102
    i32 20, label %if.then5.sw.bb.i_crit_edge103
    i32 18, label %if.then5.sw.bb.i_crit_edge104
    i32 4, label %if.then5.get_event_obj_type.exit_crit_edge
    i32 24, label %if.then5.get_event_obj_type.exit_crit_edge105
    i32 28, label %if.then5.sw.bb2.i_crit_edge
    i32 29, label %if.then5.sw.bb2.i_crit_edge106
  ]

if.then5.sw.bb2.i_crit_edge106:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.then5.sw.bb2.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.then5.get_event_obj_type.exit_crit_edge105:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_event_obj_type.exit

if.then5.get_event_obj_type.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_event_obj_type.exit

if.then5.sw.bb.i_crit_edge104:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge103:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge102:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge101:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge100:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge99:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge98:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge97:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge96:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then5.sw.bb.i_crit_edge, %if.then5.sw.bb.i_crit_edge96, %if.then5.sw.bb.i_crit_edge97, %if.then5.sw.bb.i_crit_edge98, %if.then5.sw.bb.i_crit_edge99, %if.then5.sw.bb.i_crit_edge100, %if.then5.sw.bb.i_crit_edge101, %if.then5.sw.bb.i_crit_edge102, %if.then5.sw.bb.i_crit_edge103, %if.then5.sw.bb.i_crit_edge104
  %type.i = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 1, i32 4
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type.i, align 1
  %conv.i41 = zext i8 %14 to i32
  br label %get_event_obj_type.exit

sw.bb2.i:                                         ; preds = %if.then5.sw.bb2.i_crit_edge, %if.then5.sw.bb2.i_crit_edge106
  br label %get_event_obj_type.exit

sw.default.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %data3.i = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data3.i, align 4
  br label %get_event_obj_type.exit

get_event_obj_type.exit:                          ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i, %if.then5.get_event_obj_type.exit_crit_edge, %if.then5.get_event_obj_type.exit_crit_edge105
  %retval.0.i42 = phi i32 [ %16, %sw.default.i ], [ 6, %sw.bb2.i ], [ %conv.i41, %sw.bb.i ], [ 0, %if.then5.get_event_obj_type.exit_crit_edge ], [ 0, %if.then5.get_event_obj_type.exit_crit_edge105 ]
  %phi.cast = shl i32 %retval.0.i42, 16
  br label %if.end7

if.end7:                                          ; preds = %get_event_obj_type.exit, %is_unaffiliated_event.exit.if.end7_crit_edge, %if.then.i40.if.end7_crit_edge
  %retval.0.i94 = phi i1 [ true, %is_unaffiliated_event.exit.if.end7_crit_edge ], [ false, %get_event_obj_type.exit ], [ true, %if.then.i40.if.end7_crit_edge ]
  %obj_type.0 = phi i32 [ 0, %is_unaffiliated_event.exit.if.end7_crit_edge ], [ %phi.cast, %get_event_obj_type.exit ], [ 0, %if.then.i40.if.end7_crit_edge ]
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #11
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !115
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %event_xa = getelementptr inbounds %struct.mlx5_devx_event_table, ptr %nb, i32 0, i32 2
  %or = or i32 %obj_type.0, %event_type
  %call8 = tail call ptr @xa_load(ptr noundef %event_xa, i32 noundef %or) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %rcu_read_lock.exit
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i43, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %if.then10
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  br label %cleanup.sink.split

if.end11:                                         ; preds = %rcu_read_lock.exit
  br i1 %retval.0.i94, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %unaffiliated_list = getelementptr inbounds %struct.devx_event, ptr %call8, i32 0, i32 1
  tail call fastcc void @dispatch_event_fd(ptr noundef %unaffiliated_list, ptr noundef %data)
  %call.i53 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i53, label %if.then13.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true.i56

if.then13.rcu_read_unlock.exit64_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit64

land.lhs.true.i56:                                ; preds = %if.then13
  %call1.i54 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit64

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit64_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit64

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit64

rcu_read_unlock.exit64:                           ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit64_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit64_crit_edge, %if.then13.rcu_read_unlock.exit64_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end11
  %21 = zext i32 %event_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %event_type, label %sw.default.i68 [
    i32 18, label %if.end14.sw.bb.i65_crit_edge
    i32 20, label %if.end14.sw.bb.i65_crit_edge107
    i32 1, label %if.end14.sw.bb.i65_crit_edge108
    i32 2, label %if.end14.sw.bb.i65_crit_edge109
    i32 3, label %if.end14.sw.bb.i65_crit_edge110
    i32 19, label %if.end14.sw.bb.i65_crit_edge111
    i32 5, label %if.end14.sw.bb.i65_crit_edge112
    i32 7, label %if.end14.sw.bb.i65_crit_edge113
    i32 16, label %if.end14.sw.bb.i65_crit_edge114
    i32 17, label %if.end14.sw.bb.i65_crit_edge115
    i32 24, label %sw.bb2.i66
    i32 28, label %if.end14.sw.bb5.i_crit_edge
    i32 29, label %if.end14.sw.bb5.i_crit_edge116
    i32 4, label %sw.bb8.i
  ]

if.end14.sw.bb5.i_crit_edge116:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.end14.sw.bb5.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.end14.sw.bb.i65_crit_edge115:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

if.end14.sw.bb.i65_crit_edge114:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

if.end14.sw.bb.i65_crit_edge113:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

if.end14.sw.bb.i65_crit_edge112:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

if.end14.sw.bb.i65_crit_edge111:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

if.end14.sw.bb.i65_crit_edge110:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

if.end14.sw.bb.i65_crit_edge109:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

if.end14.sw.bb.i65_crit_edge108:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

if.end14.sw.bb.i65_crit_edge107:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

if.end14.sw.bb.i65_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i65

sw.bb.i65:                                        ; preds = %if.end14.sw.bb.i65_crit_edge, %if.end14.sw.bb.i65_crit_edge107, %if.end14.sw.bb.i65_crit_edge108, %if.end14.sw.bb.i65_crit_edge109, %if.end14.sw.bb.i65_crit_edge110, %if.end14.sw.bb.i65_crit_edge111, %if.end14.sw.bb.i65_crit_edge112, %if.end14.sw.bb.i65_crit_edge113, %if.end14.sw.bb.i65_crit_edge114, %if.end14.sw.bb.i65_crit_edge115
  %qp_srq_n.i = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 1, i32 8
  %22 = ptrtoint ptr %qp_srq_n.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %qp_srq_n.i, align 1
  %and.i = and i32 %23, 16777215
  br label %devx_get_obj_id_from_event.exit

sw.bb2.i66:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %type_xrqn.i = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 1, i32 4
  %24 = ptrtoint ptr %type_xrqn.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %type_xrqn.i, align 1
  %and4.i = and i32 %25, 16777215
  br label %devx_get_obj_id_from_event.exit

sw.bb5.i:                                         ; preds = %if.end14.sw.bb5.i_crit_edge, %if.end14.sw.bb5.i_crit_edge116
  %dctn.i = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 1, i32 8
  %26 = ptrtoint ptr %dctn.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %dctn.i, align 1
  %and7.i = and i32 %27, 16777215
  br label %devx_get_obj_id_from_event.exit

sw.bb8.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %data9.i = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5
  %28 = ptrtoint ptr %data9.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %data9.i, align 1
  %and10.i = and i32 %29, 16777215
  br label %devx_get_obj_id_from_event.exit

sw.default.i68:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i67 = getelementptr %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i67, align 4
  br label %devx_get_obj_id_from_event.exit

devx_get_obj_id_from_event.exit:                  ; preds = %sw.default.i68, %sw.bb8.i, %sw.bb5.i, %sw.bb2.i66, %sw.bb.i65
  %obj_id.0.i = phi i32 [ %31, %sw.default.i68 ], [ %and10.i, %sw.bb8.i ], [ %and7.i, %sw.bb5.i ], [ %and4.i, %sw.bb2.i66 ], [ %and.i, %sw.bb.i65 ]
  %call16 = tail call ptr @xa_load(ptr noundef nonnull %call8, i32 noundef %obj_id.0.i) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %devx_get_obj_id_from_event.exit
  %call.i69 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i69, label %if.then18.rcu_read_unlock.exit80_crit_edge, label %land.lhs.true.i72

if.then18.rcu_read_unlock.exit80_crit_edge:       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit80

land.lhs.true.i72:                                ; preds = %if.then18
  %call1.i70 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i72.rcu_read_unlock.exit80_crit_edge, label %land.lhs.true2.i74

land.lhs.true.i72.rcu_read_unlock.exit80_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit80

land.lhs.true2.i74:                               ; preds = %land.lhs.true.i72
  %.b4.i73 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i73, label %land.lhs.true2.i74.rcu_read_unlock.exit80_crit_edge, label %if.then.i75

land.lhs.true2.i74.rcu_read_unlock.exit80_crit_edge: ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit80

if.then.i75:                                      ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit80

rcu_read_unlock.exit80:                           ; preds = %if.then.i75, %land.lhs.true2.i74.rcu_read_unlock.exit80_crit_edge, %land.lhs.true.i72.rcu_read_unlock.exit80_crit_edge, %if.then18.rcu_read_unlock.exit80_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  br label %cleanup.sink.split

if.end19:                                         ; preds = %devx_get_obj_id_from_event.exit
  %obj_sub_list = getelementptr inbounds %struct.devx_obj_event, ptr %call16, i32 0, i32 1
  tail call fastcc void @dispatch_event_fd(ptr noundef %obj_sub_list, ptr noundef %data)
  %call.i81 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i81, label %if.end19.rcu_read_unlock.exit92_crit_edge, label %land.lhs.true.i84

if.end19.rcu_read_unlock.exit92_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit92

land.lhs.true.i84:                                ; preds = %if.end19
  %call1.i82 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit92_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit92_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit92

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit92_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit92_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit92

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit92

rcu_read_unlock.exit92:                           ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit92_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit92_crit_edge, %if.end19.rcu_read_unlock.exit92_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit92, %rcu_read_unlock.exit80, %rcu_read_unlock.exit64, %rcu_read_unlock.exit
  %retval.0.ph = phi i32 [ 0, %rcu_read_unlock.exit ], [ 0, %rcu_read_unlock.exit80 ], [ 1, %rcu_read_unlock.exit92 ], [ 1, %rcu_read_unlock.exit64 ]
  %32 = tail call i32 @llvm.read_register.i32(metadata !104) #11
  %and.i.i.i.i.i50 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i90 = add i32 %35, -1
  store volatile i32 %sub.i.i.i90, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_devx_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %devx_whitelist_uid = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 33
  %0 = ptrtoint ptr %devx_whitelist_uid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %devx_whitelist_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %devx_event_table = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %call = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %3, ptr noundef %devx_event_table) #11
  %event_xa_lock = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37, i32 1
  tail call void @mutex_lock_nested(ptr noundef %event_xa_lock, i32 noundef 0) #11
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %id, align 4
  %event_xa = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37, i32 2
  %call3 = call ptr @xa_find(ptr noundef %event_xa, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #11
  %tobool4.not46 = icmp eq ptr %call3, null
  br i1 %tobool4.not46, label %if.then.for.end22_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end22_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.then.for.body_crit_edge
  %entry1.047 = phi ptr [ %call21, %for.end.for.body_crit_edge ], [ %call3, %if.then.for.body_crit_edge ]
  %unaffiliated_list = getelementptr inbounds %struct.devx_event, ptr %entry1.047, i32 0, i32 1
  %5 = ptrtoint ptr %unaffiliated_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unaffiliated_list, align 4
  %cmp.not44 = icmp eq ptr %6, %unaffiliated_list
  br i1 %cmp.not44, label %for.body.for.end_crit_edge, label %for.body.for.body13_crit_edge

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %.pn.in45 = phi ptr [ %.pn, %for.body13.for.body13_crit_edge ], [ %6, %for.body.for.body13_crit_edge ]
  %sub.0 = getelementptr i8, ptr %.pn.in45, i32 -8
  %7 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in45, align 8
  call fastcc void @devx_cleanup_subscription(ptr noundef %dev, ptr noundef %sub.0)
  %cmp.not = icmp eq ptr %.pn, %unaffiliated_list
  br i1 %cmp.not, label %for.body13.for.end_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.body13.for.end_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body13.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %entry1.047) #11
  %call21 = call ptr @xa_find_after(ptr noundef %event_xa, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #11
  %tobool4.not = icmp eq ptr %call21, null
  br i1 %tobool4.not, label %for.end.for.end22_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22

for.end22:                                        ; preds = %for.end.for.end22_crit_edge, %if.then.for.end22_crit_edge
  call void @mutex_unlock(ptr noundef %event_xa_lock) #11
  call void @xa_destroy(ptr noundef %event_xa) #11
  %8 = ptrtoint ptr %devx_whitelist_uid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %devx_whitelist_uid, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #11
  %10 = getelementptr inbounds i8, ptr %in.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #11
  %12 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %13 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 168165376, ptr %in.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %14 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %add.ptr13.i, align 4
  %15 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev, align 8
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %16, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #11
  br label %if.end

if.end:                                           ; preds = %for.end22, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @devx_cleanup_subscription(ptr noundef %dev, ptr noundef %sub) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_cleaned = getelementptr inbounds %struct.devx_event_subscription, ptr %sub, i32 0, i32 4
  %0 = ptrtoint ptr %is_cleaned to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_cleaned, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load, -128
  %1 = ptrtoint ptr %is_cleaned to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.set, ptr %is_cleaned, align 8
  %xa_list = getelementptr inbounds %struct.devx_event_subscription, ptr %sub, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xa_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.devx_event_subscription, ptr %sub, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %xa_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xa_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.devx_event_subscription, ptr %sub, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %obj_list = getelementptr inbounds %struct.devx_event_subscription, ptr %sub, i32 0, i32 2
  %9 = ptrtoint ptr %obj_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %obj_list, align 4
  %cmp.i.not = icmp eq ptr %10, %obj_list
  br i1 %cmp.i.not, label %list_del_rcu.exit.cleanup_crit_edge, label %if.end5

list_del_rcu.exit.cleanup_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %list_del_rcu.exit
  %call.i.i61 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %obj_list) #11
  br i1 %call.i.i61, label %if.end.i.i64, label %if.end5.list_del_rcu.exit66_crit_edge

if.end5.list_del_rcu.exit66_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit66

if.end.i.i64:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i62 = getelementptr inbounds %struct.devx_event_subscription, ptr %sub, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i62, align 4
  %13 = ptrtoint ptr %obj_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %obj_list, align 4
  %prev1.i.i.i63 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i63, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_rcu.exit66

list_del_rcu.exit66:                              ; preds = %if.end.i.i64, %if.end5.list_del_rcu.exit66_crit_edge
  %prev.i65 = getelementptr inbounds %struct.devx_event_subscription, ptr %sub, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i65, align 4
  %event_xa = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 37, i32 2
  %xa_key_level1 = getelementptr inbounds %struct.devx_event_subscription, ptr %sub, i32 0, i32 5
  %18 = ptrtoint ptr %xa_key_level1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xa_key_level1, align 4
  %call7 = tail call ptr @xa_load(ptr noundef %event_xa, i32 noundef %19) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %list_del_rcu.exit66.if.end24_crit_edge, !prof !114

list_del_rcu.exit66.if.end24_crit_edge:           ; preds = %list_del_rcu.exit66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.end:                                           ; preds = %list_del_rcu.exit66
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1358, i32 noundef 9, ptr noundef null) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end, %list_del_rcu.exit66.if.end24_crit_edge
  %xa_key_level2 = getelementptr inbounds %struct.devx_event_subscription, ptr %sub, i32 0, i32 6
  %20 = ptrtoint ptr %xa_key_level2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xa_key_level2, align 8
  %call31 = tail call ptr @xa_load(ptr noundef %call7, i32 noundef %21) #11
  %obj_sub_list = getelementptr inbounds %struct.devx_obj_event, ptr %call31, i32 0, i32 1
  %22 = ptrtoint ptr %obj_sub_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %obj_sub_list, align 4
  %cmp.i67.not = icmp eq ptr %23, %obj_sub_list
  br i1 %cmp.i67.not, label %if.then34, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34:                                        ; preds = %if.end24
  %24 = ptrtoint ptr %xa_key_level2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xa_key_level2, align 8
  %call37 = tail call ptr @xa_erase(ptr noundef %call7, i32 noundef %25) #11
  %tobool39.not = icmp eq ptr %call31, null
  br i1 %tobool39.not, label %if.then34.cleanup_crit_edge, label %do.end43

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end43:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree_call_rcu(ptr noundef nonnull %call31, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.then34.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %list_del_rcu.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @devx_is_supported(ptr nocapture noundef readonly %device) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 35
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispatch_event_fd(ptr noundef %fd_list, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @dispatch_event_fd.__warned, align 1
  br i1 %.b29, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dispatch_event_fd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2446, ptr noundef nonnull @.str.6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %fd_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn30 = load volatile ptr, ptr %fd_list, align 4
  %cmp.not31 = icmp eq ptr %.pn30, %fd_list
  br i1 %cmp.not31, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn32 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn30, %do.end.for.body_crit_edge ]
  %eventfd = getelementptr i8, ptr %.pn32, i32 60
  %1 = ptrtoint ptr %eventfd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eventfd, align 4
  %tobool9.not = icmp eq ptr %2, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i64 @eventfd_signal(ptr noundef nonnull %2, i64 noundef 1) #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  %ev_file1.i = getelementptr i8, ptr %.pn32, i32 56
  %3 = ptrtoint ptr %ev_file1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ev_file1.i, align 8
  %omit_data.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %omit_data.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %omit_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end17.i, label %do.body2.i

do.body2.i:                                       ; preds = %if.else
  %lock.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %event_list.i = getelementptr i8, ptr %.pn32, i32 16
  %6 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %event_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %event_list.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %do.body2.i.if.then12.i_crit_edge

do.body2.i.if.then12.i_crit_edge:                 ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %do.body2.i
  %8 = ptrtoint ptr %omit_data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load8.i = load i8, ptr %omit_data.i, align 4
  %9 = and i8 %bf.load8.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not.i = icmp eq i8 %9, 0
  br i1 %tobool11.not.i, label %if.end.i, label %lor.lhs.false.i.if.then12.i_crit_edge

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %do.body2.i.if.then12.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  %event_list15.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %event_list.i, ptr noundef %11, ptr noundef %event_list15.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %event_list.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %event_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %event_list15.i, ptr %event_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %.pn32, i32 20
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %event_list.i, ptr %11, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  %poll_wait.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %poll_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %for.inc

if.end17.i:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 80) #14
  %tobool19.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool19.not.i, label %do.body22.i, label %if.end38.i

do.body22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %lock28.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 2
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock28.i) #11
  %17 = ptrtoint ptr %omit_data.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load35.i = load i8, ptr %omit_data.i, align 4
  %bf.set.i = or i8 %bf.load35.i, 64
  store i8 %bf.set.i, ptr %omit_data.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock28.i, i32 noundef %call30.i) #11
  br label %for.inc

if.end38.i:                                       ; preds = %if.end17.i
  %cookie.i = getelementptr i8, ptr %.pn32, i32 48
  %18 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cookie.i, align 8
  %hdr.i = getelementptr inbounds %struct.devx_async_event_data, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %hdr.i, align 8
  %out_data.i = getelementptr inbounds %struct.devx_async_event_data, ptr %call7.i.i.i, i32 1
  %21 = call ptr @memcpy(ptr %out_data.i, ptr %data, i32 64)
  %lock48.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 2
  %call50.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock48.i) #11
  %22 = ptrtoint ptr %omit_data.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load56.i = load i8, ptr %omit_data.i, align 4
  %23 = and i8 %bf.load56.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool59.not.i = icmp eq i8 %23, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %if.else.i

if.then60.i:                                      ; preds = %if.end38.i
  %event_list61.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 4
  %prev.i2.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i3.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %25, ptr noundef %event_list61.i) #11
  br i1 %call.i.i3.i, label %if.end.i.i5.i, label %if.then60.i.if.end62.i_crit_edge

if.then60.i.if.end62.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.end.i.i5.i:                                    ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %prev.i2.i, align 4
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %event_list61.i, ptr %call7.i.i.i, align 8
  %prev3.i.i4.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i4.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i.i, ptr %25, align 4
  br label %if.end62.i

if.else.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.else.i, %if.end.i.i5.i, %if.then60.i.if.end62.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock48.i, i32 noundef %call50.i) #11
  %poll_wait64.i = getelementptr inbounds %struct.devx_async_event_file, ptr %4, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %poll_wait64.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end62.i, %do.body22.i, %list_add_tail.exit.i, %if.then12.i, %if.then10
  %30 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load volatile ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, %fd_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OTHER(ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i.i

entry.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i:                                         ; preds = %if.end.i.i
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 1, i32 1, i32 2
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %4)
  %cmp.i7.i = icmp ult i16 %4, 9
  br i1 %cmp.i7.i, label %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %6, %cond.false.i ], [ %arrayidx.i.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %7 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i55 = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i55, label %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge, label %if.end.i.i56

uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge: ; preds = %uverbs_attr_get_alloced_ptr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.i.i56:                                     ; preds = %uverbs_attr_get_alloced_ptr.exit
  %arrayidx.i.i57 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i58 = icmp ugt ptr %arrayidx.i.i57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i58, label %if.end.i.i56.if.then.i_crit_edge, label %if.end.i59

if.end.i.i56.if.then.i_crit_edge:                 ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i56.if.then.i_crit_edge, %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge
  %retval.0.i7.i = phi ptr [ %arrayidx.i.i57, %if.end.i.i56.if.then.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i7.i to i32
  br label %uverbs_attr_get_len.exit

if.end.i59:                                       ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len.i, align 8
  %conv.i = zext i16 %12 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i59, %if.then.i
  %retval.0.i60 = phi i32 [ %10, %if.then.i ], [ %conv.i, %if.end.i59 ]
  %ufile.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %13 = ptrtoint ptr %ufile.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ufile.i.i, align 8
  %call.i.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %14) #11
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_len.exit
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i.i, align 8
  %18 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retval.0.i, align 4
  %shr.i.i = lshr i32 %19, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %20 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %trunc.i.i, label %if.end9.i [
    i16 256, label %if.end.if.then.i61_crit_edge
    i16 1890, label %if.end.if.then.i61_crit_edge85
    i16 1874, label %if.end.if.then.i61_crit_edge86
  ]

if.end.if.then.i61_crit_edge86:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i61

if.end.if.then.i61_crit_edge85:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i61

if.end.if.then.i61_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i61

if.then.i61:                                      ; preds = %if.end.if.then.i61_crit_edge, %if.end.if.then.i61_crit_edge85, %if.end.if.then.i61_crit_edge86
  %devx_uid.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %call.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %devx_uid.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %devx_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %if.end.i63, label %if.then.i61.if.end8_crit_edge

if.then.i61.if.end8_crit_edge:                    ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.i63:                                       ; preds = %if.then.i61
  %devx_whitelist_uid.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %17, i32 0, i32 33
  %23 = ptrtoint ptr %devx_whitelist_uid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %devx_whitelist_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool4.not.i = icmp eq i16 %24, 0
  br i1 %tobool4.not.i, label %if.end.i63.cleanup_crit_edge, label %if.end.i63.if.end8_crit_edge

if.end.i63.if.end8_crit_edge:                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.i63.cleanup_crit_edge:                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end
  %devx_uid10.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %call.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %devx_uid10.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %devx_uid10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool11.not.i = icmp eq i16 %26, 0
  br i1 %tobool11.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end9.i.if.end8_crit_edge

if.end9.i.if.end8_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end9.i.if.end8_crit_edge, %if.end.i63.if.end8_crit_edge, %if.then.i61.if.end8_crit_edge
  %retval.1.i.ph.in = phi i16 [ %26, %if.end9.i.if.end8_crit_edge ], [ %24, %if.end.i63.if.end8_crit_edge ], [ %22, %if.then.i61.if.end8_crit_edge ]
  %retval.1.i.ph = zext i16 %retval.1.i.ph.in to i32
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %17, i32 0, i32 1
  %27 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %caps.i, align 8
  %add.ptr1.i = getelementptr i64, ptr %30, i32 30
  %31 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool.not.i64 = icmp eq i64 %32, 0
  br i1 %tobool.not.i64, label %lor.lhs.false.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end8
  %add.ptr2.i = getelementptr i32, ptr %retval.0.i, i32 1
  %33 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %34)
  %tobool5.not.i = icmp ugt i32 %34, 65535
  %35 = add i32 %19, -184549376
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %35)
  %36 = icmp ult i32 %35, 33554432
  %or.cond.i = select i1 %tobool5.not.i, i1 true, i1 %36
  br i1 %or.cond.i, label %land.lhs.true.i.if.end11_crit_edge, label %land.lhs.true.i.if.end.i65_crit_edge

land.lhs.true.i.if.end.i65_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i65

land.lhs.true.i.if.end11_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

lor.lhs.false.i:                                  ; preds = %if.end8
  %.old.i = add i32 %19, -184549376
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %.old.i)
  %.old16.i = icmp ult i32 %.old.i, 33554432
  br i1 %.old16.i, label %lor.lhs.false.i.if.end11_crit_edge, label %lor.lhs.false.i.if.end.i65_crit_edge

lor.lhs.false.i.if.end.i65_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i65

lor.lhs.false.i.if.end11_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65:                                       ; preds = %lor.lhs.false.i.if.end.i65_crit_edge, %land.lhs.true.i.if.end.i65_crit_edge
  %37 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %trunc.i.i, label %if.end.i65.cleanup_crit_edge [
    i16 256, label %if.end.i65.if.end11_crit_edge
    i16 1890, label %if.end.i65.if.end11_crit_edge87
    i16 1874, label %if.end.i65.if.end11_crit_edge88
    i16 1872, label %if.end.i65.if.end11_crit_edge89
    i16 257, label %if.end.i65.if.end11_crit_edge90
    i16 266, label %if.end.i65.if.end11_crit_edge91
    i16 1876, label %if.end.i65.if.end11_crit_edge92
    i16 1888, label %if.end.i65.if.end11_crit_edge93
    i16 1903, label %if.end.i65.if.end11_crit_edge94
    i16 1904, label %if.end.i65.if.end11_crit_edge95
    i16 2058, label %if.end.i65.if.end11_crit_edge96
    i16 2061, label %if.end.i65.if.end11_crit_edge97
    i16 2082, label %if.end.i65.if.end11_crit_edge98
    i16 2084, label %if.end.i65.if.end11_crit_edge99
    i16 2086, label %if.end.i65.if.end11_crit_edge100
    i16 2114, label %if.end.i65.if.end11_crit_edge101
  ]

if.end.i65.if.end11_crit_edge101:                 ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge100:                 ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge99:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge98:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge97:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge96:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge95:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge94:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge93:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge92:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge91:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge90:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge89:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge88:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge87:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.if.end11_crit_edge:                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i65.cleanup_crit_edge:                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end.i65.if.end11_crit_edge, %if.end.i65.if.end11_crit_edge87, %if.end.i65.if.end11_crit_edge88, %if.end.i65.if.end11_crit_edge89, %if.end.i65.if.end11_crit_edge90, %if.end.i65.if.end11_crit_edge91, %if.end.i65.if.end11_crit_edge92, %if.end.i65.if.end11_crit_edge93, %if.end.i65.if.end11_crit_edge94, %if.end.i65.if.end11_crit_edge95, %if.end.i65.if.end11_crit_edge96, %if.end.i65.if.end11_crit_edge97, %if.end.i65.if.end11_crit_edge98, %if.end.i65.if.end11_crit_edge99, %if.end.i65.if.end11_crit_edge100, %if.end.i65.if.end11_crit_edge101, %lor.lhs.false.i.if.end11_crit_edge, %land.lhs.true.i.if.end11_crit_edge
  %call.i = tail call noalias ptr @_uverbs_alloc(ptr noundef %attrs, i32 noundef %retval.0.i60, i32 noundef 3520) #11
  %cmp.i67 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then14, label %do.body

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %call.i to i32
  br label %cleanup

do.body:                                          ; preds = %if.end11
  %39 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %retval.0.i, align 4
  %and = and i32 %40, -65536
  %or = or i32 %and, %retval.1.i.ph
  store i32 %or, ptr %retval.0.i, align 4
  %41 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdev.i, align 8
  %43 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i.i69 = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i.i69, label %do.body.if.then.i74_crit_edge, label %if.end.i.i70

do.body.if.then.i74_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i74

if.end.i.i70:                                     ; preds = %do.body
  %arrayidx.i.i71 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i72 = icmp ugt ptr %arrayidx.i.i71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i72, label %if.end.i.i70.if.then.i74_crit_edge, label %if.end.i77

if.end.i.i70.if.then.i74_crit_edge:               ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i74

if.then.i74:                                      ; preds = %if.end.i.i70.if.then.i74_crit_edge, %do.body.if.then.i74_crit_edge
  %retval.0.i7.i73 = phi ptr [ %arrayidx.i.i71, %if.end.i.i70.if.then.i74_crit_edge ], [ inttoptr (i32 -2 to ptr), %do.body.if.then.i74_crit_edge ]
  %46 = ptrtoint ptr %retval.0.i7.i73 to i32
  br label %uverbs_attr_get_len.exit79

if.end.i77:                                       ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  %len.i75 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 1, i32 1, i32 2
  %47 = ptrtoint ptr %len.i75 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %len.i75, align 8
  %conv.i76 = zext i16 %48 to i32
  br label %uverbs_attr_get_len.exit79

uverbs_attr_get_len.exit79:                       ; preds = %if.end.i77, %if.then.i74
  %retval.0.i78 = phi i32 [ %46, %if.then.i74 ], [ %conv.i76, %if.end.i77 ]
  %call23 = tail call i32 @mlx5_cmd_exec(ptr noundef %42, ptr noundef %retval.0.i, i32 noundef %retval.0.i78, ptr noundef %call.i, i32 noundef %retval.0.i60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.end25, label %uverbs_attr_get_len.exit79.cleanup_crit_edge

uverbs_attr_get_len.exit79.cleanup_crit_edge:     ; preds = %uverbs_attr_get_len.exit79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %uverbs_attr_get_len.exit79
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4097, ptr noundef %call.i, i32 noundef %retval.0.i60) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %uverbs_attr_get_len.exit79.cleanup_crit_edge, %if.then14, %if.end.i65.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end.i63.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %38, %if.then14 ], [ %call26, %if.end25 ], [ %call23, %uverbs_attr_get_len.exit79.cleanup_crit_edge ], [ -22, %if.end.i65.cleanup_crit_edge ], [ -95, %if.end.i63.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_uverbs_get_ucontext_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @_uverbs_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_QUERY_UAR(ptr noundef %attrs) #0 align 64 {
entry:
  %user_idx = alloca i32, align 4
  %dev_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_idx) #11
  %0 = ptrtoint ptr %user_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %user_idx, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_idx) #11
  %ufile.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile.i.i, align 8
  %call.i.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %2) #11
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i.i, align 8
  %call4 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %user_idx, ptr noundef %attrs, i32 noundef 4096, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %bfregi = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %call.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %user_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %user_idx, align 4
  %call7 = call i32 @bfregn_to_uar_index(ptr noundef %5, ptr noundef %bfregi, i32 noundef %7, i1 noundef zeroext true) #11
  %8 = ptrtoint ptr %dev_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call7, ptr %dev_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4097, ptr noundef nonnull %dev_idx, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %. = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ -14, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %., %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_idx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_idx) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_uverbs_copy_from(ptr noundef %to, ptr noundef %attrs_bundle, i32 noundef %idx, i32 noundef %size) unnamed_addr #4 align 64 {
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
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7, !prof !114

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
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.else.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %conv3, i32 -1226833920) #15, !srcloc !118
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !119

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %to, i32 noundef %conv3) #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !104) #11
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !120
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %to, ptr noundef %10, i32 noundef %conv3) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv3, %if.else.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !119

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
declare dso_local i32 @bfregn_to_uar_index(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_QUERY_EQN(ptr noundef %attrs) #0 align 64 {
entry:
  %user_vector = alloca i32, align 4
  %dev_eqn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_vector) #11
  %0 = ptrtoint ptr %user_vector to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %user_vector, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_eqn) #11
  %1 = ptrtoint ptr %dev_eqn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dev_eqn, align 4, !annotation !117
  %call = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %user_vector, ptr noundef %attrs, i32 noundef 4096, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %2 = ptrtoint ptr %ufile.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ufile.i.i, align 8
  %call.i.i = call ptr @ib_uverbs_get_ucontext_file(ptr noundef %3) #11
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i.i, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 8
  %9 = ptrtoint ptr %user_vector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %user_vector, align 4
  %call7 = call i32 @mlx5_vector2eqn(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %dev_eqn) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4097, ptr noundef nonnull %dev_eqn, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %. = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ -14, %entry.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %., %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_eqn) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_vector) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vector2eqn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT(ptr noundef %attrs) #0 align 64 {
entry:
  %sub_list = alloca %struct.list_head, align 4
  %redirect_fd = alloca i32, align 4
  %cookie = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not = icmp eq ptr %attrs, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cond.end_crit_edge, label %cond.true

uverbs_attr_get_uobject.exit.cond.end_crit_edge:  ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %uverbs_attr_get_uobject.exit.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ null, %uverbs_attr_get_uobject.exit.cond.end_crit_edge ]
  %7 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cond, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sub_list) #11
  %9 = getelementptr inbounds %struct.list_head, ptr %sub_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %redirect_fd) #11
  %10 = ptrtoint ptr %redirect_fd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %redirect_fd, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cookie) #11
  %11 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %cookie, align 8
  %devx_uid = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %12 = ptrtoint ptr %devx_uid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %devx_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool5.not = icmp eq i16 %13, 0
  br i1 %tobool5.not, label %cond.end.cleanup208_crit_edge, label %if.end

cond.end.cleanup208_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

if.end:                                           ; preds = %cond.end
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %14 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %object, align 8
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.then7.if.end13_crit_edge, label %if.then9

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %obj_id10 = getelementptr inbounds %struct.devx_obj, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %obj_id10 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %obj_id10, align 8
  %conv.i = trunc i64 %17 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then7.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %obj_id.0 = phi i32 [ 0, %if.end.if.end13_crit_edge ], [ %conv.i, %if.then9 ], [ 0, %if.then7.if.end13_crit_edge ]
  %obj.0 = phi ptr [ null, %if.end.if.end13_crit_edge ], [ %15, %if.then9 ], [ null, %if.then7.if.end13_crit_edge ]
  %18 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i317 = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i.i317, label %if.end13.if.then16_crit_edge, label %if.end.i.i318

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.end.i.i318:                                    ; preds = %if.end13
  %arrayidx.i.i319 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i320 = icmp ugt ptr %arrayidx.i.i319, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i320, label %if.end.i.i318.uverbs_attr_get_uobject.exit323_crit_edge, label %if.end.i321

if.end.i.i318.uverbs_attr_get_uobject.exit323_crit_edge: ; preds = %if.end.i.i318
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit323

if.end.i321:                                      ; preds = %if.end.i.i318
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %arrayidx.i.i319 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i319, align 8
  br label %uverbs_attr_get_uobject.exit323

uverbs_attr_get_uobject.exit323:                  ; preds = %if.end.i321, %if.end.i.i318.uverbs_attr_get_uobject.exit323_crit_edge
  %retval.0.i322 = phi ptr [ %22, %if.end.i321 ], [ %arrayidx.i.i319, %if.end.i.i318.uverbs_attr_get_uobject.exit323_crit_edge ]
  %cmp.i324 = icmp ugt ptr %retval.0.i322, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i324, label %uverbs_attr_get_uobject.exit323.if.then16_crit_edge, label %if.end18

uverbs_attr_get_uobject.exit323.if.then16_crit_edge: ; preds = %uverbs_attr_get_uobject.exit323
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16:                                        ; preds = %uverbs_attr_get_uobject.exit323.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  %retval.0.i322393 = phi ptr [ %retval.0.i322, %uverbs_attr_get_uobject.exit323.if.then16_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end13.if.then16_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i322393 to i32
  br label %cleanup208

if.end18:                                         ; preds = %uverbs_attr_get_uobject.exit323
  %24 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %26 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %if.end28.thread, label %if.then23

if.then23:                                        ; preds = %if.end18
  %call24 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %redirect_fd, ptr noundef %attrs, i32 noundef 4099, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %if.then23.cleanup208_crit_edge

if.then23.cleanup208_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

if.end28:                                         ; preds = %if.then23
  %27 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %29 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i328.not = icmp eq i32 %29, 0
  br i1 %tobool.i328.not, label %if.end28.if.end38_crit_edge, label %if.end28.cleanup208_crit_edge

if.end28.cleanup208_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end28.thread:                                  ; preds = %if.end18
  %30 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %32 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i328394.not = icmp eq i32 %32, 0
  br i1 %tobool.i328394.not, label %if.end28.thread.if.end38_crit_edge, label %if.end33

if.end28.thread.if.end38_crit_edge:               ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end33:                                         ; preds = %if.end28.thread
  %call34 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %cookie, ptr noundef %attrs, i32 noundef 4100, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.if.end38_crit_edge, label %if.end33.cleanup208_crit_edge

if.end33.cleanup208_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end38:                                         ; preds = %if.end33.if.end38_crit_edge, %if.end28.thread.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %33 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %35 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i.i, label %if.end38.if.then.i.i_crit_edge, label %if.end.i.i.i

if.end38.if.then.i.i_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %if.end38
  %arrayidx.i.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 5
  %cmp.i.i.i = icmp ugt ptr %arrayidx.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.i.i.if.then.i.i_crit_edge, label %if.end.i.i329

if.end.i.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i.i.i.if.then.i.i_crit_edge, %if.end38.if.then.i.i_crit_edge
  %retval.0.i7.i.i = phi ptr [ %arrayidx.i.i.i, %if.end.i.i.i.if.then.i.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end38.if.then.i.i_crit_edge ]
  %36 = ptrtoint ptr %retval.0.i7.i.i to i32
  br label %uverbs_attr_ptr_get_array_size.exit

if.end.i.i329:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2, i32 2
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len.i.i, align 8
  %conv.i.i = zext i16 %38 to i32
  br label %uverbs_attr_ptr_get_array_size.exit

uverbs_attr_ptr_get_array_size.exit:              ; preds = %if.end.i.i329, %if.then.i.i
  %retval.0.i.i = phi i32 [ %36, %if.then.i.i ], [ %conv.i.i, %if.end.i.i329 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i330 = icmp slt i32 %retval.0.i.i, 0
  %rem.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %div1.i = lshr i32 %retval.0.i.i, 1
  %spec.select.i = select i1 %tobool.not.i, i32 %div1.i, i32 -22
  %retval.0.i331 = select i1 %cmp.i330, i32 %retval.0.i.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i331)
  %cmp = icmp slt i32 %retval.0.i331, 0
  br i1 %cmp, label %uverbs_attr_ptr_get_array_size.exit.cleanup208_crit_edge, label %if.end41

uverbs_attr_ptr_get_array_size.exit.cleanup208_crit_edge: ; preds = %uverbs_attr_ptr_get_array_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

if.end41:                                         ; preds = %uverbs_attr_ptr_get_array_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %retval.0.i331)
  %cmp42 = icmp ugt i32 %retval.0.i331, 16
  br i1 %cmp42, label %if.end41.cleanup208_crit_edge, label %if.end44

if.end41.cleanup208_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

if.end44:                                         ; preds = %if.end41
  %39 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %41 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i.i333 = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i.i333, label %if.end44.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i.i334

if.end44.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i.i334:                                    ; preds = %if.end44
  %arrayidx.i.i335 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 5
  %cmp.i.i336 = icmp ugt ptr %arrayidx.i.i335, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i336, label %if.end.i.i334.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i338

if.end.i.i334.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i.i334
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i338:                                      ; preds = %if.end.i.i334
  %len.i.i337 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2, i32 2
  %42 = ptrtoint ptr %len.i.i337 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len.i.i337, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %43)
  %cmp.i7.i = icmp ult i16 %43, 9
  br i1 %cmp.i7.i, label %if.end.i338.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i338.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %arrayidx.i.i335 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i335, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i338.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end.i.i334.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end44.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i339 = phi ptr [ %arrayidx.i.i335, %if.end.i.i334.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %45, %cond.false.i ], [ %arrayidx.i.i335, %if.end.i338.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end44.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %46 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mdev, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i, align 4
  %52 = and i32 %51, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i340 = icmp eq i32 %52, 0
  br i1 %tobool.not.i340, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %uverbs_attr_get_alloced_ptr.exit
  %arrayidx3.i = getelementptr %struct.mlx5_core_dev, ptr %47, i32 0, i32 8, i32 0, i32 20
  %53 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx3.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %54, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i331)
  %cmp63.i.not = icmp eq i32 %retval.0.i331, 0
  br i1 %cmp63.i.not, label %if.then.i.if.end48_crit_edge, label %for.body.lr.ph.i

if.then.i.if.end48_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %tobool22.not.i = icmp eq ptr %obj.0, null
  br label %for.body.i

if.else.i:                                        ; preds = %uverbs_attr_get_alloced_ptr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i331)
  %cmp12.i.i.not = icmp eq i32 %retval.0.i331, 0
  br i1 %cmp12.i.i.not, label %if.else.i.if.end48_crit_edge, label %for.body.lr.ph.i.i

if.else.i.if.end48_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

for.body.lr.ph.i.i:                               ; preds = %if.else.i
  %tobool.not.i.i = icmp eq ptr %obj.0, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %cmp15.i.i = phi i1 [ true, %for.body.lr.ph.i.i ], [ %cmp.i.i342, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr i16, ptr %retval.0.i339, i32 %i.013.i.i
  %55 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx2.i.i, align 2
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i341

if.then.i.i341:                                   ; preds = %for.body.i.i
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %56, label %if.then.i.i341.is_valid_events.exit_crit_edge [
    i16 1, label %if.then.i.i341.for.inc.i.i_crit_edge
    i16 2, label %if.then.i.i341.for.inc.i.i_crit_edge434
    i16 3, label %if.then.i.i341.for.inc.i.i_crit_edge435
    i16 19, label %if.then.i.i341.for.inc.i.i_crit_edge436
    i16 20, label %if.then.i.i341.for.inc.i.i_crit_edge437
    i16 4, label %if.then.i.i341.for.inc.i.i_crit_edge438
    i16 5, label %if.then.i.i341.for.inc.i.i_crit_edge439
    i16 7, label %if.then.i.i341.for.inc.i.i_crit_edge440
    i16 16, label %if.then.i.i341.for.inc.i.i_crit_edge441
    i16 17, label %if.then.i.i341.for.inc.i.i_crit_edge442
    i16 18, label %if.then.i.i341.for.inc.i.i_crit_edge443
    i16 28, label %if.then.i.i341.for.inc.i.i_crit_edge444
    i16 0, label %if.then.i.i341.for.inc.i.i_crit_edge445
    i16 29, label %if.then.i.i341.for.inc.i.i_crit_edge446
    i16 24, label %if.then.i.i341.for.inc.i.i_crit_edge447
  ]

if.then.i.i341.for.inc.i.i_crit_edge447:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge446:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge445:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge444:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge443:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge442:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge441:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge440:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge439:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge438:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge437:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge436:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge435:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge434:          ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.for.inc.i.i_crit_edge:             ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i341.is_valid_events.exit_crit_edge:    ; preds = %if.then.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_valid_events.exit

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %56)
  %cond.i.i.i = icmp eq i16 %56, 9
  br i1 %cond.i.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.else.i.i.is_valid_events.exit_crit_edge

if.else.i.i.is_valid_events.exit_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_valid_events.exit

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i.for.inc.i.i_crit_edge, %if.then.i.i341.for.inc.i.i_crit_edge, %if.then.i.i341.for.inc.i.i_crit_edge434, %if.then.i.i341.for.inc.i.i_crit_edge435, %if.then.i.i341.for.inc.i.i_crit_edge436, %if.then.i.i341.for.inc.i.i_crit_edge437, %if.then.i.i341.for.inc.i.i_crit_edge438, %if.then.i.i341.for.inc.i.i_crit_edge439, %if.then.i.i341.for.inc.i.i_crit_edge440, %if.then.i.i341.for.inc.i.i_crit_edge441, %if.then.i.i341.for.inc.i.i_crit_edge442, %if.then.i.i341.for.inc.i.i_crit_edge443, %if.then.i.i341.for.inc.i.i_crit_edge444, %if.then.i.i341.for.inc.i.i_crit_edge445, %if.then.i.i341.for.inc.i.i_crit_edge446, %if.then.i.i341.for.inc.i.i_crit_edge447
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %retval.0.i331)
  %cmp.i.i342 = icmp slt i32 %inc.i.i, %retval.0.i331
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %retval.0.i331
  br i1 %exitcond.not.i.i, label %for.inc.i.i.is_valid_events.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.is_valid_events.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_valid_events.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.064.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx13.i = getelementptr i16, ptr %retval.0.i339, i32 %i.064.i
  %58 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %59)
  %cmp14.i = icmp ugt i16 %59, 255
  br i1 %cmp14.i, label %for.body.i.cleanup208_crit_edge, label %if.end17.i

for.body.i.cleanup208_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

if.end17.i:                                       ; preds = %for.body.i
  %conv.i343 = zext i16 %59 to i32
  %div62.i = lshr i32 %conv.i343, 6
  %rem.i344 = and i32 %conv.i343, 63
  br i1 %tobool22.not.i, label %if.end35.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp26.i = icmp eq i16 %59, 0
  br i1 %cmp26.i, label %if.then23.i.for.inc.i_crit_edge, label %if.end29.i

if.then23.i.for.inc.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end29.i:                                       ; preds = %if.then23.i
  %arrayidx30.i = getelementptr i64, ptr %54, i32 %div62.i
  %60 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx30.i, align 8
  %sh_prom.i = zext i32 %rem.i344 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and31.i = and i64 %61, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31.i)
  %tobool32.not.i = icmp eq i64 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.cleanup208_crit_edge, label %if.end29.i.for.inc.i_crit_edge

if.end29.i.for.inc.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end29.i.cleanup208_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

if.end35.i:                                       ; preds = %if.end17.i
  %arrayidx36.i = getelementptr i64, ptr %add.ptr12.i, i32 %div62.i
  %62 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx36.i, align 8
  %sh_prom37.i = zext i32 %rem.i344 to i64
  %shl38.i = shl nuw i64 1, %sh_prom37.i
  %and39.i = and i64 %63, %shl38.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39.i)
  %tobool40.not.i = icmp eq i64 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end35.i.cleanup208_crit_edge, label %if.end35.i.for.inc.i_crit_edge

if.end35.i.for.inc.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end35.i.cleanup208_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

for.inc.i:                                        ; preds = %if.end35.i.for.inc.i_crit_edge, %if.end29.i.for.inc.i_crit_edge, %if.then23.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %retval.0.i331
  br i1 %exitcond.not.i, label %for.inc.i.if.end48_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end48_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

is_valid_events.exit:                             ; preds = %for.inc.i.i.is_valid_events.exit_crit_edge, %if.else.i.i.is_valid_events.exit_crit_edge, %if.then.i.i341.is_valid_events.exit_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp15.i.i, %if.else.i.i.is_valid_events.exit_crit_edge ], [ %cmp.i.i342, %for.inc.i.i.is_valid_events.exit_crit_edge ], [ %cmp15.i.i, %if.then.i.i341.is_valid_events.exit_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %is_valid_events.exit.cleanup208_crit_edge, label %is_valid_events.exit.if.end48_crit_edge

is_valid_events.exit.if.end48_crit_edge:          ; preds = %is_valid_events.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

is_valid_events.exit.cleanup208_crit_edge:        ; preds = %is_valid_events.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208

if.end48:                                         ; preds = %is_valid_events.exit.if.end48_crit_edge, %for.inc.i.if.end48_crit_edge, %if.else.i.if.end48_crit_edge, %if.then.i.if.end48_crit_edge
  %64 = ptrtoint ptr %sub_list to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %sub_list, ptr %sub_list, align 4
  %65 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %sub_list, ptr %9, align 4
  %event_xa_lock = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 37, i32 1
  call void @mutex_lock_nested(ptr noundef %event_xa_lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i331)
  %cmp49413 = icmp sgt i32 %retval.0.i331, 0
  br i1 %cmp49413, label %for.body.lr.ph, label %if.end48.for.end_crit_edge

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end48
  %tobool50.not = icmp eq ptr %obj.0, null
  %obj_id.i = getelementptr inbounds %struct.devx_obj, ptr %obj.0, i32 0, i32 1
  %event_xa.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 37, i32 2
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i322, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %obj_type.0416 = phi i16 [ 0, %for.body.lr.ph ], [ %obj_type.1, %for.inc.for.body_crit_edge ]
  %i.0414 = phi i32 [ 0, %for.body.lr.ph ], [ %inc78, %for.inc.for.body_crit_edge ]
  br i1 %tobool50.not, label %for.body.if.end53_crit_edge, label %if.then51

for.body.if.end53_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then51:                                        ; preds = %for.body
  %arrayidx = getelementptr i16, ptr %retval.0.i339, i32 %i.0414
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx, align 2
  %68 = ptrtoint ptr %obj_id.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %obj_id.i, align 8
  %shr.i = lshr i64 %69, 32
  %70 = zext i16 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %67, label %if.end.i348 [
    i16 1, label %if.then51.if.then.i347_crit_edge
    i16 2, label %if.then51.if.then.i347_crit_edge448
    i16 3, label %if.then51.if.then.i347_crit_edge449
    i16 19, label %if.then51.if.then.i347_crit_edge450
    i16 20, label %if.then51.if.then.i347_crit_edge451
    i16 4, label %if.then51.if.then.i347_crit_edge452
    i16 5, label %if.then51.if.then.i347_crit_edge453
    i16 7, label %if.then51.if.then.i347_crit_edge454
    i16 16, label %if.then51.if.then.i347_crit_edge455
    i16 17, label %if.then51.if.then.i347_crit_edge456
    i16 18, label %if.then51.if.then.i347_crit_edge457
    i16 28, label %if.then51.if.then.i347_crit_edge458
    i16 0, label %if.then51.if.then.i347_crit_edge459
    i16 29, label %if.then51.if.then.i347_crit_edge460
    i16 24, label %if.then51.if.then.i347_crit_edge461
  ]

if.then51.if.then.i347_crit_edge461:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge460:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge459:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge458:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge457:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge456:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge455:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge454:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge453:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge452:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge451:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge450:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge449:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge448:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then51.if.then.i347_crit_edge:                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i347

if.then.i347:                                     ; preds = %if.then51.if.then.i347_crit_edge, %if.then51.if.then.i347_crit_edge448, %if.then51.if.then.i347_crit_edge449, %if.then51.if.then.i347_crit_edge450, %if.then51.if.then.i347_crit_edge451, %if.then51.if.then.i347_crit_edge452, %if.then51.if.then.i347_crit_edge453, %if.then51.if.then.i347_crit_edge454, %if.then51.if.then.i347_crit_edge455, %if.then51.if.then.i347_crit_edge456, %if.then51.if.then.i347_crit_edge457, %if.then51.if.then.i347_crit_edge458, %if.then51.if.then.i347_crit_edge459, %if.then51.if.then.i347_crit_edge460, %if.then51.if.then.i347_crit_edge461
  %conv.i346 = trunc i64 %shr.i to i16
  %71 = zext i16 %conv.i346 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %conv.i346, label %sw.default.i22.i [
    i16 2312, label %if.then.i347.if.end53_crit_edge
    i16 1280, label %sw.bb1.i.i
    i16 2308, label %sw.bb2.i.i
    i16 1808, label %sw.bb3.i.i
  ]

if.then.i347.if.end53_crit_edge:                  ; preds = %if.then.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb1.i.i:                                       ; preds = %if.then.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb2.i.i:                                       ; preds = %if.then.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb3.i.i:                                       ; preds = %if.then.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.default.i22.i:                                 ; preds = %if.then.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end.i348:                                      ; preds = %if.then51
  %72 = trunc i64 %shr.i to i16
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %72, label %sw.default.i [
    i16 2560, label %sw.bb.i
    i16 2312, label %if.end.i348.if.end53_crit_edge
    i16 1280, label %sw.bb7.i
    i16 2308, label %sw.bb8.i
    i16 1808, label %sw.bb9.i
    i16 2304, label %sw.bb10.i
    i16 2322, label %sw.bb11.i
    i16 1536, label %sw.bb12.i
    i16 -255, label %sw.bb13.i
    i16 2316, label %sw.bb14.i
    i16 1797, label %sw.bb15.i
    i16 1815, label %sw.bb16.i
    i16 2326, label %sw.bb17.i
    i16 2361, label %sw.bb18.i
    i16 1024, label %sw.bb19.i
  ]

if.end.i348.if.end53_crit_edge:                   ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb.i:                                          ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  %shr4.i = lshr i64 %69, 48
  %conv5.i = trunc i64 %shr4.i to i16
  br label %if.end53

sw.bb7.i:                                         ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb8.i:                                         ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb9.i:                                         ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb10.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb11.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb12.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb13.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb14.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb15.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb16.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb17.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb18.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.bb19.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

sw.default.i:                                     ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end53:                                         ; preds = %sw.default.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb.i, %if.end.i348.if.end53_crit_edge, %sw.default.i22.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i347.if.end53_crit_edge, %for.body.if.end53_crit_edge
  %obj_type.1 = phi i16 [ %obj_type.0416, %for.body.if.end53_crit_edge ], [ 0, %sw.default.i ], [ -240, %sw.bb19.i ], [ -241, %sw.bb18.i ], [ -242, %sw.bb17.i ], [ -245, %sw.bb16.i ], [ -251, %sw.bb15.i ], [ -252, %sw.bb14.i ], [ -255, %sw.bb13.i ], [ -253, %sw.bb12.i ], [ -247, %sw.bb11.i ], [ -248, %sw.bb10.i ], [ -246, %sw.bb9.i ], [ -249, %sw.bb8.i ], [ -254, %sw.bb7.i ], [ %conv5.i, %sw.bb.i ], [ -250, %if.end.i348.if.end53_crit_edge ], [ 0, %sw.default.i22.i ], [ 6, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ 1, %if.then.i347.if.end53_crit_edge ]
  %arrayidx54 = getelementptr i16, ptr %retval.0.i339, i32 %i.0414
  %74 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx54, align 2
  %conv = zext i16 %75 to i32
  %conv55 = zext i16 %obj_type.1 to i32
  %shl = shl nuw i32 %conv55, 16
  %or = or i32 %shl, %conv
  %call.i = call ptr @xa_load(ptr noundef %event_xa.i, i32 noundef %or) #11
  %tobool.not.i350 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i350, label %if.then.i351, label %if.end53.if.end9.i_crit_edge

if.end53.if.end9.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then.i351:                                     ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 60) #14
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.then.i351.err173_crit_edge, label %if.end.i352

if.then.i351.err173_crit_edge:                    ; preds = %if.then.i351
  call void @__sanitizer_cov_trace_pc() #13
  br label %err173

if.end.i352:                                      ; preds = %if.then.i351
  %unaffiliated_list.i = getelementptr inbounds %struct.devx_event, ptr %call7.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %unaffiliated_list.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %unaffiliated_list.i, ptr %unaffiliated_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.devx_event, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %unaffiliated_list.i, ptr %prev.i.i, align 8
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %xa_head.i.i.i, align 8
  call void @_raw_spin_lock(ptr noundef %event_xa.i) #11
  %call.i.i = call i32 @__xa_insert(ptr noundef %event_xa.i, i32 noundef %or, ptr noundef nonnull %call7.i.i.i, i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %event_xa.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.end.i352.if.end9.i_crit_edge, label %if.then7.i

if.end.i352.if.end9.i_crit_edge:                  ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %err173

if.end9.i:                                        ; preds = %if.end.i352.if.end9.i_crit_edge, %if.end53.if.end9.i_crit_edge
  %event.0.i = phi ptr [ %call.i, %if.end53.if.end9.i_crit_edge ], [ %call7.i.i.i, %if.end.i352.if.end9.i_crit_edge ]
  br i1 %tobool50.not, label %if.end9.i.if.end60_crit_edge, label %if.end12.i

if.end9.i.if.end60_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.end12.i:                                       ; preds = %if.end9.i
  %call14.i = call ptr @xa_load(ptr noundef nonnull %event.0.i, i32 noundef %obj_id.0) #11
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end12.i.if.end60_crit_edge

if.end12.i.if.end60_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then16.i:                                      ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i45.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 16) #14
  %tobool18.not.i = icmp eq ptr %call7.i.i45.i, null
  br i1 %tobool18.not.i, label %if.then16.i.err173_crit_edge, label %if.end20.i

if.then16.i.err173_crit_edge:                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err173

if.end20.i:                                       ; preds = %if.then16.i
  call void @_raw_spin_lock(ptr noundef nonnull %event.0.i) #11
  %call.i46.i = call i32 @__xa_insert(ptr noundef nonnull %event.0.i, i32 noundef %obj_id.0, ptr noundef nonnull %call7.i.i45.i, i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef nonnull %event.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool23.not.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end20.i.err173_crit_edge

if.end20.i.err173_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err173

if.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %obj_sub_list.i = getelementptr inbounds %struct.devx_obj_event, ptr %call7.i.i45.i, i32 0, i32 1
  %82 = ptrtoint ptr %obj_sub_list.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %obj_sub_list.i, ptr %obj_sub_list.i, align 8
  %prev.i47.i = getelementptr inbounds %struct.devx_obj_event, ptr %call7.i.i45.i, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %prev.i47.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %obj_sub_list.i, ptr %prev.i47.i, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end25.i, %if.end12.i.if.end60_crit_edge, %if.end9.i.if.end60_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %84 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3520, i32 noundef 72) #14
  %tobool62.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool62.not, label %if.end60.err173_crit_edge, label %if.end64

if.end60.err173_crit_edge:                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %err173

if.end64:                                         ; preds = %if.end60
  %event_list = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %9, align 4
  %call.i.i356 = call zeroext i1 @__list_add_valid(ptr noundef %event_list, ptr noundef %86, ptr noundef nonnull %sub_list) #11
  br i1 %call.i.i356, label %if.end.i.i357, label %if.end64.list_add_tail.exit_crit_edge

if.end64.list_add_tail.exit_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i357:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %event_list, ptr %9, align 4
  %88 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %sub_list, ptr %event_list, align 8
  %prev3.i.i = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %event_list, ptr %86, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i357, %if.end64.list_add_tail.exit_crit_edge
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !114

list_add_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_add_tail.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %92 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %.not.i.i.i.i.i = icmp sgt i32 %92, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_uobject_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %uverbs_uobject_get.exit

uverbs_uobject_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge
  br i1 %tobool.i.not, label %uverbs_uobject_get.exit.for.inc_crit_edge, label %if.then66

uverbs_uobject_get.exit.for.inc_crit_edge:        ; preds = %uverbs_uobject_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then66:                                        ; preds = %uverbs_uobject_get.exit
  %93 = ptrtoint ptr %redirect_fd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %redirect_fd, align 4
  %call67 = call ptr @eventfd_ctx_fdget(i32 noundef %94) #11
  %eventfd = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 10
  %95 = ptrtoint ptr %eventfd to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call67, ptr %eventfd, align 4
  %cmp.i358 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i358, label %if.then70, label %if.then66.for.inc_crit_edge

if.then66.for.inc_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then70:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  %eventfd.le = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 10
  %96 = ptrtoint ptr %call67 to i32
  %97 = ptrtoint ptr %eventfd.le to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %eventfd.le, align 4
  br label %err173

for.inc:                                          ; preds = %if.then66.for.inc_crit_edge, %uverbs_uobject_get.exit.for.inc_crit_edge
  %98 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %cookie, align 8
  %cookie76 = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 8
  %100 = ptrtoint ptr %cookie76 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %cookie76, align 8
  %ev_file77 = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 9
  %101 = ptrtoint ptr %ev_file77 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %retval.0.i322, ptr %ev_file77, align 8
  %xa_key_level1 = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 5
  %102 = ptrtoint ptr %xa_key_level1 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or, ptr %xa_key_level1, align 4
  %xa_key_level2 = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 6
  %103 = ptrtoint ptr %xa_key_level2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %obj_id.0, ptr %xa_key_level2, align 8
  %obj_list = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %obj_list to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %obj_list, ptr %obj_list, align 8
  %prev.i359 = getelementptr inbounds %struct.devx_event_subscription, ptr %call7.i.i, i32 0, i32 2, i32 1
  %105 = ptrtoint ptr %prev.i359 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %obj_list, ptr %prev.i359, align 4
  %inc78 = add nuw nsw i32 %i.0414, 1
  %exitcond.not = icmp eq i32 %inc78, %retval.0.i331
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end48.for.end_crit_edge
  %106 = ptrtoint ptr %sub_list to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sub_list, align 4
  %cmp89.not418 = icmp eq ptr %107, %sub_list
  br i1 %cmp89.not418, label %for.end.for.end171_crit_edge, label %for.body91.lr.ph

for.end.for.end171_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end171

for.body91.lr.ph:                                 ; preds = %for.end
  %lock = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i322, i32 0, i32 2
  %subscribed_events_list = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i322, i32 0, i32 1
  %prev.i363 = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i322, i32 0, i32 1, i32 1
  %event_xa = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 37, i32 2
  %tobool121.not = icmp eq ptr %obj.0, null
  %event_sub160 = getelementptr inbounds %struct.devx_obj, ptr %obj.0, i32 0, i32 6
  %prev.i376 = getelementptr inbounds %struct.devx_obj, ptr %obj.0, i32 0, i32 6, i32 1
  br label %for.body91

for.body91:                                       ; preds = %cleanup161.for.body91_crit_edge, %for.body91.lr.ph
  %.pn.in419 = phi ptr [ %107, %for.body91.lr.ph ], [ %.pn422, %cleanup161.for.body91_crit_edge ]
  %108 = ptrtoint ptr %.pn.in419 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn422 = load ptr, ptr %.pn.in419, align 8
  %event_sub.0 = getelementptr i8, ptr %.pn.in419, i32 -24
  %call.i.i360 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in419) #11
  br i1 %call.i.i360, label %if.end.i.i362, label %for.body91.list_del_init.exit_crit_edge

for.body91.list_del_init.exit_crit_edge:          ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i362:                                    ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i361 = getelementptr inbounds %struct.list_head, ptr %.pn.in419, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i.i361 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %prev.i.i361, align 4
  %111 = ptrtoint ptr %.pn.in419 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %.pn.in419, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %110, ptr %prev1.i.i.i, align 4
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %112, ptr %110, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i362, %for.body91.list_del_init.exit_crit_edge
  %115 = ptrtoint ptr %.pn.in419 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %.pn.in419, ptr %.pn.in419, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in419, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %.pn.in419, ptr %prev.i3.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %117 = ptrtoint ptr %prev.i363 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i363, align 4
  %call.i.i364 = call zeroext i1 @__list_add_valid(ptr noundef %event_sub.0, ptr noundef %118, ptr noundef %subscribed_events_list) #11
  br i1 %call.i.i364, label %if.end.i.i365, label %list_del_init.exit.list_add_tail_rcu.exit_crit_edge

list_del_init.exit.list_add_tail_rcu.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail_rcu.exit

if.end.i.i365:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %event_sub.0 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %subscribed_events_list, ptr %event_sub.0, align 4
  %prev2.i.i = getelementptr i8, ptr %.pn.in419, i32 -20
  %120 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %118, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %event_sub.0, ptr %118, align 4
  %122 = ptrtoint ptr %prev.i363 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %event_sub.0, ptr %prev.i363, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i365, %list_del_init.exit.list_add_tail_rcu.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %xa_key_level194 = getelementptr i8, ptr %.pn.in419, i32 12
  %123 = ptrtoint ptr %xa_key_level194 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %xa_key_level194, align 4
  %call95 = call ptr @xa_load(ptr noundef %event_xa, i32 noundef %124) #11
  %tobool96.not = icmp eq ptr %call95, null
  br i1 %tobool96.not, label %do.end, label %list_add_tail_rcu.exit.if.end113_crit_edge, !prof !114

list_add_tail_rcu.exit.if.end113_crit_edge:       ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

do.end:                                           ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2110, i32 noundef 9, ptr noundef null) #11
  br label %if.end113

if.end113:                                        ; preds = %do.end, %list_add_tail_rcu.exit.if.end113_crit_edge
  br i1 %tobool121.not, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.end113
  %xa_list = getelementptr i8, ptr %.pn.in419, i32 -16
  %unaffiliated_list = getelementptr inbounds %struct.devx_event, ptr %call95, i32 0, i32 1
  %prev.i366 = getelementptr inbounds %struct.devx_event, ptr %call95, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %prev.i366 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i366, align 4
  %call.i.i367 = call zeroext i1 @__list_add_valid(ptr noundef %xa_list, ptr noundef %126, ptr noundef %unaffiliated_list) #11
  br i1 %call.i.i367, label %if.end.i.i369, label %if.then122.cleanup161_crit_edge

if.then122.cleanup161_crit_edge:                  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup161

if.end.i.i369:                                    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %xa_list to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %unaffiliated_list, ptr %xa_list, align 4
  %prev2.i.i368 = getelementptr i8, ptr %.pn.in419, i32 -12
  %128 = ptrtoint ptr %prev2.i.i368 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %126, ptr %prev2.i.i368, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %xa_list, ptr %126, align 4
  %130 = ptrtoint ptr %prev.i366 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %xa_list, ptr %prev.i366, align 4
  br label %cleanup161

if.end123:                                        ; preds = %if.end113
  %call124 = call ptr @xa_load(ptr noundef %call95, i32 noundef %obj_id.0) #11
  %tobool126.not = icmp eq ptr %call124, null
  br i1 %tobool126.not, label %do.end144, label %if.end123.if.end150_crit_edge, !prof !114

if.end123.if.end150_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

do.end144:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2119, i32 noundef 9, ptr noundef null) #11
  br label %if.end150

if.end150:                                        ; preds = %do.end144, %if.end123.if.end150_crit_edge
  %xa_list158 = getelementptr i8, ptr %.pn.in419, i32 -16
  %obj_sub_list = getelementptr inbounds %struct.devx_obj_event, ptr %call124, i32 0, i32 1
  %prev.i371 = getelementptr inbounds %struct.devx_obj_event, ptr %call124, i32 0, i32 1, i32 1
  %131 = ptrtoint ptr %prev.i371 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %prev.i371, align 4
  %call.i.i372 = call zeroext i1 @__list_add_valid(ptr noundef %xa_list158, ptr noundef %132, ptr noundef %obj_sub_list) #11
  br i1 %call.i.i372, label %if.end.i.i374, label %if.end150.list_add_tail_rcu.exit375_crit_edge

if.end150.list_add_tail_rcu.exit375_crit_edge:    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail_rcu.exit375

if.end.i.i374:                                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %xa_list158 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %obj_sub_list, ptr %xa_list158, align 4
  %prev2.i.i373 = getelementptr i8, ptr %.pn.in419, i32 -12
  %134 = ptrtoint ptr %prev2.i.i373 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %132, ptr %prev2.i.i373, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %xa_list158, ptr %132, align 4
  %136 = ptrtoint ptr %prev.i371 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %xa_list158, ptr %prev.i371, align 4
  br label %list_add_tail_rcu.exit375

list_add_tail_rcu.exit375:                        ; preds = %if.end.i.i374, %if.end150.list_add_tail_rcu.exit375_crit_edge
  %obj_list159 = getelementptr i8, ptr %.pn.in419, i32 -8
  %137 = ptrtoint ptr %prev.i376 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i376, align 4
  %call.i.i377 = call zeroext i1 @__list_add_valid(ptr noundef %obj_list159, ptr noundef %138, ptr noundef %event_sub160) #11
  br i1 %call.i.i377, label %if.end.i.i379, label %list_add_tail_rcu.exit375.cleanup161_crit_edge

list_add_tail_rcu.exit375.cleanup161_crit_edge:   ; preds = %list_add_tail_rcu.exit375
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup161

if.end.i.i379:                                    ; preds = %list_add_tail_rcu.exit375
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %obj_list159 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %event_sub160, ptr %obj_list159, align 4
  %prev2.i.i378 = getelementptr i8, ptr %.pn.in419, i32 -4
  %140 = ptrtoint ptr %prev2.i.i378 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %138, ptr %prev2.i.i378, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %obj_list159, ptr %138, align 4
  %142 = ptrtoint ptr %prev.i376 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %obj_list159, ptr %prev.i376, align 4
  br label %cleanup161

cleanup161:                                       ; preds = %if.end.i.i379, %list_add_tail_rcu.exit375.cleanup161_crit_edge, %if.end.i.i369, %if.then122.cleanup161_crit_edge
  %cmp89.not = icmp eq ptr %.pn422, %sub_list
  br i1 %cmp89.not, label %cleanup161.for.end171_crit_edge, label %cleanup161.for.body91_crit_edge

cleanup161.for.body91_crit_edge:                  ; preds = %cleanup161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body91

cleanup161.for.end171_crit_edge:                  ; preds = %cleanup161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end171

for.end171:                                       ; preds = %cleanup161.for.end171_crit_edge, %for.end.for.end171_crit_edge
  call void @mutex_unlock(ptr noundef %event_xa_lock) #11
  br label %cleanup208

err173:                                           ; preds = %if.then70, %if.end60.err173_crit_edge, %if.end20.i.err173_crit_edge, %if.then16.i.err173_crit_edge, %if.then7.i, %if.then.i351.err173_crit_edge
  %err.0.ph = phi i32 [ %96, %if.then70 ], [ %call.i.i, %if.then7.i ], [ -12, %if.then.i351.err173_crit_edge ], [ -12, %if.then16.i.err173_crit_edge ], [ %call.i46.i, %if.end20.i.err173_crit_edge ], [ -12, %if.end60.err173_crit_edge ]
  %143 = ptrtoint ptr %sub_list to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sub_list, align 4
  %cmp185.not425 = icmp eq ptr %144, %sub_list
  br i1 %cmp185.not425, label %err173.for.end206_crit_edge, label %err173.for.body189_crit_edge

err173.for.body189_crit_edge:                     ; preds = %err173
  br label %for.body189

err173.for.end206_crit_edge:                      ; preds = %err173
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end206

for.body189:                                      ; preds = %if.end197.for.body189_crit_edge, %err173.for.body189_crit_edge
  %.pn313.in426 = phi ptr [ %.pn313429, %if.end197.for.body189_crit_edge ], [ %144, %err173.for.body189_crit_edge ]
  %event_sub.1428 = getelementptr i8, ptr %.pn313.in426, i32 -24
  %145 = ptrtoint ptr %.pn313.in426 to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pn313429 = load ptr, ptr %.pn313.in426, align 8
  %call.i.i381 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn313.in426) #11
  br i1 %call.i.i381, label %if.end.i.i384, label %for.body189.list_del.exit_crit_edge

for.body189.list_del.exit_crit_edge:              ; preds = %for.body189
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i384:                                    ; preds = %for.body189
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i382 = getelementptr inbounds %struct.list_head, ptr %.pn313.in426, i32 0, i32 1
  %146 = ptrtoint ptr %prev.i.i382 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %prev.i.i382, align 4
  %148 = ptrtoint ptr %.pn313.in426 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %.pn313.in426, align 4
  %prev1.i.i.i383 = getelementptr inbounds %struct.list_head, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %prev1.i.i.i383 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %147, ptr %prev1.i.i.i383, align 4
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %149, ptr %147, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i384, %for.body189.list_del.exit_crit_edge
  %152 = ptrtoint ptr %.pn313.in426 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn313.in426, align 4
  %prev.i385 = getelementptr inbounds %struct.list_head, ptr %.pn313.in426, i32 0, i32 1
  %153 = ptrtoint ptr %prev.i385 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i385, align 4
  br i1 %tobool50.not, label %list_del.exit.subscribe_event_xa_dealloc.exit_crit_edge, label %if.end.i388

list_del.exit.subscribe_event_xa_dealloc.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %subscribe_event_xa_dealloc.exit

if.end.i388:                                      ; preds = %list_del.exit
  %xa_key_level1191 = getelementptr i8, ptr %.pn313.in426, i32 12
  %154 = ptrtoint ptr %xa_key_level1191 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %xa_key_level1191, align 4
  %call.i387 = call ptr @xa_load(ptr noundef %event_xa.i, i32 noundef %155) #11
  %tobool1.not.i = icmp eq ptr %call.i387, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end.i388.if.end17.i390_crit_edge, !prof !114

if.end.i388.if.end17.i390_crit_edge:              ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i390

do.end.i:                                         ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1835, i32 noundef 9, ptr noundef null) #11
  br label %if.end17.i390

if.end17.i390:                                    ; preds = %do.end.i, %if.end.i388.if.end17.i390_crit_edge
  %call24.i = call ptr @xa_load(ptr noundef %call.i387, i32 noundef %obj_id.0) #11
  %obj_sub_list.i389 = getelementptr inbounds %struct.devx_obj_event, ptr %call24.i, i32 0, i32 1
  %156 = ptrtoint ptr %obj_sub_list.i389 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile ptr, ptr %obj_sub_list.i389, align 4
  %cmp.i.not.i = icmp eq ptr %157, %obj_sub_list.i389
  br i1 %cmp.i.not.i, label %if.then27.i, label %if.end17.i390.subscribe_event_xa_dealloc.exit_crit_edge

if.end17.i390.subscribe_event_xa_dealloc.exit_crit_edge: ; preds = %if.end17.i390
  call void @__sanitizer_cov_trace_pc() #13
  br label %subscribe_event_xa_dealloc.exit

if.then27.i:                                      ; preds = %if.end17.i390
  %call29.i = call ptr @xa_erase(ptr noundef %call.i387, i32 noundef %obj_id.0) #11
  %tobool31.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool31.not.i, label %if.then27.i.subscribe_event_xa_dealloc.exit_crit_edge, label %do.end35.i

if.then27.i.subscribe_event_xa_dealloc.exit_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %subscribe_event_xa_dealloc.exit

do.end35.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kvfree_call_rcu(ptr noundef nonnull %call24.i, ptr noundef null) #11
  br label %subscribe_event_xa_dealloc.exit

subscribe_event_xa_dealloc.exit:                  ; preds = %do.end35.i, %if.then27.i.subscribe_event_xa_dealloc.exit_crit_edge, %if.end17.i390.subscribe_event_xa_dealloc.exit_crit_edge, %list_del.exit.subscribe_event_xa_dealloc.exit_crit_edge
  %eventfd193 = getelementptr i8, ptr %.pn313.in426, i32 44
  %158 = ptrtoint ptr %eventfd193 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %eventfd193, align 4
  %tobool194.not = icmp eq ptr %159, null
  br i1 %tobool194.not, label %subscribe_event_xa_dealloc.exit.if.end197_crit_edge, label %if.then195

subscribe_event_xa_dealloc.exit.if.end197_crit_edge: ; preds = %subscribe_event_xa_dealloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end197

if.then195:                                       ; preds = %subscribe_event_xa_dealloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @eventfd_ctx_put(ptr noundef nonnull %159) #11
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %subscribe_event_xa_dealloc.exit.if.end197_crit_edge
  %ev_file198 = getelementptr i8, ptr %.pn313.in426, i32 40
  %160 = ptrtoint ptr %ev_file198 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ev_file198, align 8
  call void @uverbs_uobject_put(ptr noundef %161) #11
  call void @kfree(ptr noundef %event_sub.1428) #11
  %cmp185.not = icmp eq ptr %.pn313429, %sub_list
  br i1 %cmp185.not, label %if.end197.for.end206_crit_edge, label %if.end197.for.body189_crit_edge

if.end197.for.body189_crit_edge:                  ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body189

if.end197.for.end206_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end206

for.end206:                                       ; preds = %if.end197.for.end206_crit_edge, %err173.for.end206_crit_edge
  call void @mutex_unlock(ptr noundef %event_xa_lock) #11
  br label %cleanup208

cleanup208:                                       ; preds = %for.end206, %for.end171, %is_valid_events.exit.cleanup208_crit_edge, %if.end35.i.cleanup208_crit_edge, %if.end29.i.cleanup208_crit_edge, %for.body.i.cleanup208_crit_edge, %if.end41.cleanup208_crit_edge, %uverbs_attr_ptr_get_array_size.exit.cleanup208_crit_edge, %if.end33.cleanup208_crit_edge, %if.end28.cleanup208_crit_edge, %if.then23.cleanup208_crit_edge, %if.then16, %cond.end.cleanup208_crit_edge
  %retval.0 = phi i32 [ %23, %if.then16 ], [ %err.0.ph, %for.end206 ], [ 0, %for.end171 ], [ -22, %cond.end.cleanup208_crit_edge ], [ %call24, %if.then23.cleanup208_crit_edge ], [ %call34, %if.end33.cleanup208_crit_edge ], [ %retval.0.i331, %uverbs_attr_ptr_get_array_size.exit.cleanup208_crit_edge ], [ -22, %if.end41.cleanup208_crit_edge ], [ -22, %is_valid_events.exit.cleanup208_crit_edge ], [ -22, %if.end28.cleanup208_crit_edge ], [ -22, %for.body.i.cleanup208_crit_edge ], [ -22, %if.end29.i.cleanup208_crit_edge ], [ -22, %if.end35.i.cleanup208_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cookie) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %redirect_fd) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sub_list) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_uobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devx_obj_cleanup(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr noundef readonly %attrs) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #11
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = call ptr @memset(ptr %out, i32 255, i32 16)
  %1 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %object, align 8
  %tobool.not.i = icmp eq ptr %attrs, null
  br i1 %tobool.not.i, label %entry.mlx5_udata_to_mdev.exit_crit_edge, label %cond.true.i

entry.mlx5_udata_to_mdev.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_udata_to_mdev.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %context1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %3 = ptrtoint ptr %context1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context1.i, align 4
  br label %mlx5_udata_to_mdev.exit

mlx5_udata_to_mdev.exit:                          ; preds = %cond.true.i, %entry.mlx5_udata_to_mdev.exit_crit_edge
  %cond.i = phi ptr [ %4, %cond.true.i ], [ null, %entry.mlx5_udata_to_mdev.exit_crit_edge ]
  %5 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cond.i, align 8
  %flags = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %mlx5_udata_to_mdev.exit.if.end_crit_edge, label %land.lhs.true

mlx5_udata_to_mdev.exit.if.end_crit_edge:         ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %mlx5_udata_to_mdev.exit
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 8
  %odp_mkeys = getelementptr inbounds %struct.mlx5_ib_dev, ptr %10, i32 0, i32 17
  %11 = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %and.i = and i32 %13, -256
  %call2 = tail call ptr @xa_erase(ptr noundef %odp_mkeys, i32 noundef %and.i) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %usecount.i.i = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 5, i32 0, i32 6, i32 1, i32 0, i32 4, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %usecount.i.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount.i.i, ptr %usecount.i.i, i32 1, ptr elementtype(i32) %usecount.i.i) #11, !srcloc !126
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mlx5r_deref_odp_mkey.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !119

if.end5.i.i.i.i.i.mlx5r_deref_odp_mkey.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5r_deref_odp_mkey.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usecount.i.i, i32 noundef 3) #11
  br label %mlx5r_deref_odp_mkey.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  %wait.i.i = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 5, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %mlx5r_deref_odp_mkey.exit.i

mlx5r_deref_odp_mkey.exit.i:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mlx5r_deref_odp_mkey.exit.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 1627) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecount.i.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %usecount.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %usecount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %mlx5r_deref_odp_mkey.exit.i.if.end_crit_edge, label %if.end.i

mlx5r_deref_odp_mkey.exit.i.if.end_crit_edge:     ; preds = %mlx5r_deref_odp_mkey.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %mlx5r_deref_odp_mkey.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %17 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %wait.i = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 5, i32 0, i32 3
  %call419.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call.i.i.i1620.i = call zeroext i1 @__kasan_check_read(ptr noundef %usecount.i.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %usecount.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %usecount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp721.i = icmp eq i32 %19, 0
  br i1 %cmp721.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #11
  %call4.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call.i.i.i16.i = call zeroext i1 @__kasan_check_read(ptr noundef %usecount.i.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %usecount.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %usecount.i.i, align 4
  %cmp7.i = icmp eq i32 %21, 0
  br i1 %cmp7.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %if.end

if.end:                                           ; preds = %for.end.i, %mlx5r_deref_odp_mkey.exit.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %mlx5_udata_to_mdev.exit.if.end_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and5 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 5
  %call9 = call i32 @mlx5_core_destroy_dct(ptr noundef %25, ptr noundef %26) #11
  br label %if.end22

if.else:                                          ; preds = %if.end
  %and11 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 8
  %mdev18 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %mdev18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev18, align 8
  br i1 %tobool12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %31 = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 5
  %call15 = call i32 @mlx5_core_destroy_cq(ptr noundef %30, ptr noundef %31) #11
  br label %if.end22

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dinbox = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 3
  %dinlen = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 2
  %32 = ptrtoint ptr %dinlen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dinlen, align 8
  %call20 = call i32 @mlx5_cmd_exec(ptr noundef %30, ptr noundef %dinbox, i32 noundef %33, ptr noundef nonnull %out, i32 noundef 16) #11
  br label %if.end22

if.end22:                                         ; preds = %if.else16, %if.then13, %if.then7
  %ret.0 = phi i32 [ %call9, %if.then7 ], [ %call15, %if.then13 ], [ %call20, %if.else16 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool23.not = icmp eq i32 %ret.0, 0
  br i1 %tobool23.not, label %if.end25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %event_xa_lock = getelementptr inbounds %struct.mlx5_ib_dev, ptr %6, i32 0, i32 37, i32 1
  call void @mutex_lock_nested(ptr noundef %event_xa_lock, i32 noundef 0) #11
  %event_sub = getelementptr inbounds %struct.devx_obj, ptr %2, i32 0, i32 6
  %34 = ptrtoint ptr %event_sub to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %event_sub, align 4
  %cmp.not69 = icmp eq ptr %35, %event_sub
  br i1 %cmp.not69, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end25.for.body_crit_edge
  %.pn.in70 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %35, %if.end25.for.body_crit_edge ]
  %sub_entry.0 = getelementptr i8, ptr %.pn.in70, i32 -16
  %36 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load ptr, ptr %.pn.in70, align 8
  call fastcc void @devx_cleanup_subscription(ptr noundef %6, ptr noundef %sub_entry.0)
  %cmp.not = icmp eq ptr %.pn, %event_sub
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end25.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %event_xa_lock) #11
  call void @kfree(ptr noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end22.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_dct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OBJ_CREATE(ptr noundef %attrs) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %obj_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i.i

entry.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i:                                         ; preds = %if.end.i.i
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %4)
  %cmp.i7.i = icmp ult i16 %4, 9
  br i1 %cmp.i7.i, label %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %6, %cond.false.i ], [ %arrayidx.i.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %7 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i241 = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i241, label %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge, label %if.end.i.i242

uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge: ; preds = %uverbs_attr_get_alloced_ptr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.i.i242:                                    ; preds = %uverbs_attr_get_alloced_ptr.exit
  %arrayidx.i.i243 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 5
  %cmp.i.i244 = icmp ugt ptr %arrayidx.i.i243, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i244, label %if.end.i.i242.if.then.i_crit_edge, label %if.end.i245

if.end.i.i242.if.then.i_crit_edge:                ; preds = %if.end.i.i242
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i242.if.then.i_crit_edge, %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge
  %retval.0.i7.i = phi ptr [ %arrayidx.i.i243, %if.end.i.i242.if.then.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i7.i to i32
  br label %uverbs_attr_get_len.exit

if.end.i245:                                      ; preds = %if.end.i.i242
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len.i, align 8
  %conv.i = zext i16 %12 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i245, %if.then.i
  %retval.0.i246 = phi i32 [ %10, %if.then.i ], [ %conv.i, %if.end.i245 ]
  %13 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i248 = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i248, label %uverbs_attr_get_len.exit.if.then.i253_crit_edge, label %if.end.i.i249

uverbs_attr_get_len.exit.if.then.i253_crit_edge:  ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i253

if.end.i.i249:                                    ; preds = %uverbs_attr_get_len.exit
  %arrayidx.i.i250 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i251 = icmp ugt ptr %arrayidx.i.i250, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i251, label %if.end.i.i249.if.then.i253_crit_edge, label %if.end.i256

if.end.i.i249.if.then.i253_crit_edge:             ; preds = %if.end.i.i249
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i253

if.then.i253:                                     ; preds = %if.end.i.i249.if.then.i253_crit_edge, %uverbs_attr_get_len.exit.if.then.i253_crit_edge
  %retval.0.i7.i252 = phi ptr [ %arrayidx.i.i250, %if.end.i.i249.if.then.i253_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_len.exit.if.then.i253_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i7.i252 to i32
  br label %uverbs_attr_get_len.exit258

if.end.i256:                                      ; preds = %if.end.i.i249
  call void @__sanitizer_cov_trace_pc() #13
  %len.i254 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %17 = ptrtoint ptr %len.i254 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len.i254, align 8
  %conv.i255 = zext i16 %18 to i32
  br label %uverbs_attr_get_len.exit258

uverbs_attr_get_len.exit258:                      ; preds = %if.end.i256, %if.then.i253
  %retval.0.i257 = phi i32 [ %16, %if.then.i253 ], [ %conv.i255, %if.end.i256 ]
  %19 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i.i260 = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i.i260, label %uverbs_attr_get_len.exit258.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i.i261

uverbs_attr_get_len.exit258.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get_len.exit258
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i.i261:                                    ; preds = %uverbs_attr_get_len.exit258
  %arrayidx.i.i262 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i263 = icmp ugt ptr %arrayidx.i.i262, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i263, label %if.end.i.i261.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i264

if.end.i.i261.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %if.end.i.i261
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i264:                                      ; preds = %if.end.i.i261
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %arrayidx.i.i262 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i262, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i264, %if.end.i.i261.uverbs_attr_get_uobject.exit_crit_edge, %uverbs_attr_get_len.exit258.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i265 = phi ptr [ %23, %if.end.i264 ], [ %arrayidx.i.i262, %if.end.i.i261.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_len.exit258.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not = icmp eq ptr %attrs, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cond.end_crit_edge, label %cond.true

uverbs_attr_get_uobject.exit.cond.end_crit_edge:  ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %24 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %uverbs_attr_get_uobject.exit.cond.end_crit_edge
  %cond = phi ptr [ %25, %cond.true ], [ null, %uverbs_attr_get_uobject.exit.cond.end_crit_edge ]
  %26 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cond, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #11
  %28 = call ptr @memset(ptr %out, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obj_id) #11
  %29 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %obj_id, align 4, !annotation !117
  %add.ptr7 = getelementptr i32, ptr %retval.0.i, i32 1
  %30 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %31)
  %tobool8.not = icmp ult i32 %31, 65536
  br i1 %tobool8.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %32 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %retval.0.i, align 4
  %shr.i.i = lshr i32 %33, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %34 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %trunc.i.i, label %if.end9.i [
    i16 256, label %if.end.if.then.i266_crit_edge
    i16 1890, label %if.end.if.then.i266_crit_edge302
    i16 1874, label %if.end.if.then.i266_crit_edge303
  ]

if.end.if.then.i266_crit_edge303:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i266

if.end.if.then.i266_crit_edge302:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i266

if.end.if.then.i266_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i266

if.then.i266:                                     ; preds = %if.end.if.then.i266_crit_edge, %if.end.if.then.i266_crit_edge302, %if.end.if.then.i266_crit_edge303
  %devx_uid.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %35 = ptrtoint ptr %devx_uid.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %devx_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i = icmp eq i16 %36, 0
  br i1 %tobool.not.i, label %if.end.i268, label %if.then.i266.if.end11_crit_edge

if.then.i266.if.end11_crit_edge:                  ; preds = %if.then.i266
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i268:                                      ; preds = %if.then.i266
  %37 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cond, align 8
  %devx_whitelist_uid.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %devx_whitelist_uid.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %devx_whitelist_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool4.not.i = icmp eq i16 %40, 0
  br i1 %tobool4.not.i, label %if.end.i268.cleanup_crit_edge, label %if.end.i268.if.end11_crit_edge

if.end.i268.if.end11_crit_edge:                   ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i268.cleanup_crit_edge:                    ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end
  %devx_uid10.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %41 = ptrtoint ptr %devx_uid10.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %devx_uid10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool11.not.i = icmp eq i16 %42, 0
  br i1 %tobool11.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end9.i.if.end11_crit_edge

if.end9.i.if.end11_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end9.i.if.end11_crit_edge, %if.end.i268.if.end11_crit_edge, %if.then.i266.if.end11_crit_edge
  %retval.1.i.ph.in = phi i16 [ %42, %if.end9.i.if.end11_crit_edge ], [ %40, %if.end.i268.if.end11_crit_edge ], [ %36, %if.then.i266.if.end11_crit_edge ]
  %retval.1.i.ph = zext i16 %retval.1.i.ph.in to i32
  %43 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %trunc.i.i, label %if.end11.cleanup_crit_edge [
    i16 2560, label %if.end11.if.end14_crit_edge
    i16 512, label %if.end11.if.end14_crit_edge304
    i16 1024, label %if.end11.if.end14_crit_edge305
    i16 2048, label %if.end11.if.end14_crit_edge306
    i16 2070, label %if.end11.if.end14_crit_edge307
    i16 2316, label %if.end11.if.end14_crit_edge308
    i16 2308, label %if.end11.if.end14_crit_edge309
    i16 2312, label %if.end11.if.end14_crit_edge310
    i16 2326, label %if.end11.if.end14_crit_edge311
    i16 2304, label %if.end11.if.end14_crit_edge312
    i16 2322, label %if.end11.if.end14_crit_edge313
    i16 1905, label %if.end11.if.end14_crit_edge314
    i16 2352, label %if.end11.if.end14_crit_edge315
    i16 2355, label %if.end11.if.end14_crit_edge316
    i16 2361, label %if.end11.if.end14_crit_edge317
    i16 2365, label %if.end11.if.end14_crit_edge318
    i16 2368, label %if.end11.if.end14_crit_edge319
    i16 1922, label %if.end11.if.end14_crit_edge320
    i16 2087, label %if.end11.if.end14_crit_edge321
    i16 2089, label %if.end11.if.end14_crit_edge322
    i16 1280, label %if.end11.if.end14_crit_edge323
    i16 1792, label %if.end11.if.end14_crit_edge324
    i16 1797, label %if.end11.if.end14_crit_edge325
    i16 1808, label %if.end11.if.end14_crit_edge326
    i16 1815, label %if.end11.if.end14_crit_edge327
    i16 2054, label %if.end11.if.end14_crit_edge328
    i16 2062, label %if.end11.if.end14_crit_edge329
    i16 2358, label %devx_is_obj_create_cmd.exit
    i16 1536, label %sw.bb9.i
  ]

if.end11.if.end14_crit_edge329:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge328:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge327:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge326:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge325:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge324:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge323:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge322:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge321:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge320:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge319:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge318:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge317:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge316:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge315:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge314:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge313:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge312:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge311:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge310:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge309:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge308:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge307:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge306:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge305:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge304:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb9.i:                                         ; preds = %if.end11
  %add.ptr10.i = getelementptr i32, ptr %retval.0.i, i32 2
  %44 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr10.i, align 4
  %shr11.mask.i = and i32 %45, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %shr11.mask.i)
  %cmp15.i = icmp eq i32 %shr11.mask.i, 268435456
  br i1 %cmp15.i, label %sw.bb9.i.if.end14_crit_edge, label %sw.bb9.i.cleanup_crit_edge

sw.bb9.i.cleanup_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb9.i.if.end14_crit_edge:                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

devx_is_obj_create_cmd.exit:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %devx_is_obj_create_cmd.exit.if.end14_crit_edge, label %devx_is_obj_create_cmd.exit.cleanup_crit_edge

devx_is_obj_create_cmd.exit.cleanup_crit_edge:    ; preds = %devx_is_obj_create_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devx_is_obj_create_cmd.exit.if.end14_crit_edge:   ; preds = %devx_is_obj_create_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %devx_is_obj_create_cmd.exit.if.end14_crit_edge, %sw.bb9.i.if.end14_crit_edge, %if.end11.if.end14_crit_edge, %if.end11.if.end14_crit_edge304, %if.end11.if.end14_crit_edge305, %if.end11.if.end14_crit_edge306, %if.end11.if.end14_crit_edge307, %if.end11.if.end14_crit_edge308, %if.end11.if.end14_crit_edge309, %if.end11.if.end14_crit_edge310, %if.end11.if.end14_crit_edge311, %if.end11.if.end14_crit_edge312, %if.end11.if.end14_crit_edge313, %if.end11.if.end14_crit_edge314, %if.end11.if.end14_crit_edge315, %if.end11.if.end14_crit_edge316, %if.end11.if.end14_crit_edge317, %if.end11.if.end14_crit_edge318, %if.end11.if.end14_crit_edge319, %if.end11.if.end14_crit_edge320, %if.end11.if.end14_crit_edge321, %if.end11.if.end14_crit_edge322, %if.end11.if.end14_crit_edge323, %if.end11.if.end14_crit_edge324, %if.end11.if.end14_crit_edge325, %if.end11.if.end14_crit_edge326, %if.end11.if.end14_crit_edge327, %if.end11.if.end14_crit_edge328, %if.end11.if.end14_crit_edge329
  %call.i = tail call noalias ptr @_uverbs_alloc(ptr noundef %attrs, i32 noundef %retval.0.i246, i32 noundef 3520) #11
  %cmp.i271 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 248) #14
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %do.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end19
  %48 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %retval.0.i, align 4
  %and26 = and i32 %49, -65536
  %or = or i32 %and26, %retval.1.i.ph
  store i32 %or, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %trunc.i.i)
  %cmp31 = icmp eq i16 %trunc.i.i, 512
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %retval.0.i257)
  %cmp.i273 = icmp slt i32 %retval.0.i257, 80
  br i1 %cmp.i273, label %if.then33.obj_free_crit_edge, label %if.end38.thread

if.then33.obj_free_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %obj_free

if.end38.thread:                                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 16
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i, align 4
  %shr.i274 = lshr i32 %51, 8
  %conv.i275 = and i32 %shr.i274, 2
  %52 = lshr i32 %51, 24
  %shl.i = and i32 %52, 28
  %or.i = or i32 %conv.i275, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or.i)
  %switch.i = icmp eq i32 %or.i, 2
  %add.ptr17.i = getelementptr i32, ptr %retval.0.i, i32 3
  %flags.i = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 4
  %add.ptr17.sink2.i = select i1 %switch.i, ptr %flags.i, ptr %add.ptr17.i
  %.sink1.i = select i1 %switch.i, i32 1, i32 1073741824
  %53 = ptrtoint ptr %add.ptr17.sink2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr17.sink2.i, align 4
  %or21.i = or i32 %.sink1.i, %54
  store i32 %or21.i, ptr %add.ptr17.sink2.i, align 4
  br label %if.else54

if.else:                                          ; preds = %do.body
  %shr.i278 = lshr i32 %49, 16
  %trunc.i = trunc i32 %shr.i278 to i16
  %55 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %trunc.i, label %if.else.if.end38_crit_edge [
    i16 512, label %do.body.i
    i16 1024, label %sw.bb9.i280
    i16 1280, label %sw.bb37.i
    i16 2312, label %sw.bb65.i
    i16 2308, label %sw.bb94.i
    i16 1027, label %do.body125.i
    i16 2316, label %sw.bb138.i
    i16 1815, label %sw.bb168.i
    i16 1797, label %sw.bb198.i
  ]

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3.i279 = getelementptr i32, ptr %retval.0.i, i32 3
  br label %cleanup.sink.split.i

sw.bb9.i280:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr15.i = getelementptr i32, ptr %retval.0.i, i32 23
  %56 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr15.i, align 4
  %or19.i = or i32 %57, -2147483648
  store i32 %or19.i, ptr %add.ptr15.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %retval.0.i, i32 16
  br label %cleanup.sink.split.i

sw.bb37.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr44.i = getelementptr i8, ptr %retval.0.i, i32 232
  %58 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr44.i, align 4
  %or48.i = or i32 %59, 268435456
  store i32 %or48.i, ptr %add.ptr44.i, align 4
  %add.ptr57.i = getelementptr i32, ptr %retval.0.i, i32 67
  br label %cleanup.sink.split.i

sw.bb65.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr73.i = getelementptr i8, ptr %retval.0.i, i32 116
  br label %cleanup.sink.split.i

sw.bb94.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr103.i = getelementptr i8, ptr %retval.0.i, i32 116
  br label %cleanup.sink.split.i

do.body125.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr130.i = getelementptr i32, ptr %retval.0.i, i32 23
  br label %cleanup.sink.split.i

sw.bb138.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr147.i = getelementptr i8, ptr %retval.0.i, i32 116
  br label %cleanup.sink.split.i

sw.bb168.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr177.i = getelementptr i8, ptr %retval.0.i, i32 180
  br label %cleanup.sink.split.i

sw.bb198.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr204.i = getelementptr i32, ptr %retval.0.i, i32 23
  %60 = ptrtoint ptr %add.ptr204.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr204.i, align 4
  %or208.i = or i32 %61, -2147483648
  store i32 %or208.i, ptr %add.ptr204.i, align 4
  %add.ptr218.i = getelementptr i8, ptr %retval.0.i, i32 24
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb198.i, %sw.bb168.i, %sw.bb138.i, %do.body125.i, %sw.bb94.i, %sw.bb65.i, %sw.bb37.i, %sw.bb9.i280, %do.body.i
  %add.ptr3.sink259.i = phi ptr [ %add.ptr3.i279, %do.body.i ], [ %add.ptr23.i, %sw.bb9.i280 ], [ %add.ptr57.i, %sw.bb37.i ], [ %add.ptr73.i, %sw.bb65.i ], [ %add.ptr103.i, %sw.bb94.i ], [ %add.ptr130.i, %do.body125.i ], [ %add.ptr147.i, %sw.bb138.i ], [ %add.ptr177.i, %sw.bb168.i ], [ %add.ptr218.i, %sw.bb198.i ]
  %.sink258.i = phi i32 [ 1073741824, %do.body.i ], [ 33554432, %sw.bb9.i280 ], [ -2147483648, %sw.bb37.i ], [ -1073741824, %sw.bb65.i ], [ -1073741824, %sw.bb94.i ], [ -2147483648, %do.body125.i ], [ -1073741824, %sw.bb138.i ], [ -1073741824, %sw.bb168.i ], [ 16777216, %sw.bb198.i ]
  %62 = ptrtoint ptr %add.ptr3.sink259.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr3.sink259.i, align 4
  %or.i281 = or i32 %63, %.sink258.i
  store i32 %or.i281, ptr %add.ptr3.sink259.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %cleanup.sink.split.i, %if.else.if.end38_crit_edge
  %64 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %trunc.i.i, label %if.end38.if.else54_crit_edge [
    i16 1808, label %if.then42
    i16 1024, label %land.lhs.true
  ]

if.end38.if.else54_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else54

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %or43 = or i32 %66, 2
  store i32 %or43, ptr %flags, align 4
  %67 = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 5
  %call44 = tail call i32 @mlx5_core_create_dct(ptr noundef %27, ptr noundef %67, ptr noundef %retval.0.i, i32 noundef %retval.0.i257, ptr noundef %call.i, i32 noundef %retval.0.i246) #11
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end38
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %27, i32 0, i32 1
  %68 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %caps.i, align 8
  %add.ptr.i282 = getelementptr i32, ptr %71, i32 52
  %72 = ptrtoint ptr %add.ptr.i282 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i282, align 4
  %74 = and i32 %73, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i283 = icmp eq i32 %74, 0
  br i1 %tobool.not.i283, label %land.lhs.true.if.then50_crit_edge, label %is_apu_cq.exit

land.lhs.true.if.then50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

is_apu_cq.exit:                                   ; preds = %land.lhs.true
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i, i32 16
  %75 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr1.i, align 4
  %77 = and i32 %76, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool5.not.i.not = icmp eq i32 %77, 0
  br i1 %tobool5.not.i.not, label %is_apu_cq.exit.if.then50_crit_edge, label %is_apu_cq.exit.if.else54_crit_edge

is_apu_cq.exit.if.else54_crit_edge:               ; preds = %is_apu_cq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else54

is_apu_cq.exit.if.then50_crit_edge:               ; preds = %is_apu_cq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

if.then50:                                        ; preds = %is_apu_cq.exit.if.then50_crit_edge, %land.lhs.true.if.then50_crit_edge
  %flags51 = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags51, align 4
  %or52 = or i32 %79, 4
  store i32 %or52, ptr %flags51, align 4
  %80 = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 5
  %comp = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 9
  %81 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @devx_cq_comp, ptr %comp, align 8
  %82 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mdev.i, align 8
  %call53 = tail call i32 @mlx5_core_create_cq(ptr noundef %83, ptr noundef %80, ptr noundef %retval.0.i, i32 noundef %retval.0.i257, ptr noundef %call.i, i32 noundef %retval.0.i246) #11
  br label %if.end58

if.else54:                                        ; preds = %is_apu_cq.exit.if.else54_crit_edge, %if.end38.if.else54_crit_edge, %if.end38.thread
  %mdev55 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %27, i32 0, i32 1
  %84 = ptrtoint ptr %mdev55 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mdev55, align 8
  %call56 = tail call i32 @mlx5_cmd_exec(ptr noundef %85, ptr noundef %retval.0.i, i32 noundef %retval.0.i257, ptr noundef %call.i, i32 noundef %retval.0.i246) #11
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.then50, %if.then42
  %err.0 = phi i32 [ %call44, %if.then42 ], [ %call56, %if.else54 ], [ %call53, %if.then50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool59.not = icmp eq i32 %err.0, 0
  br i1 %tobool59.not, label %if.end61, label %if.end58.obj_free_crit_edge

if.end58.obj_free_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %obj_free

if.end61:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp2(i16 2361, i16 %trunc.i.i)
  %cmp63 = icmp eq i16 %trunc.i.i, 2361
  br i1 %cmp63, label %if.then65, label %if.end61.if.end71_crit_edge

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr66 = getelementptr i32, ptr %retval.0.i, i32 3
  %86 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr66, align 4
  %conv70 = shl i32 %87, 7
  %mul = and i32 %conv70, 32640
  %88 = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 5
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %mul, ptr %88, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %if.end61.if.end71_crit_edge
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i265, i32 0, i32 3
  %90 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %object, align 8
  %event_sub = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 6
  %91 = ptrtoint ptr %event_sub to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %event_sub, ptr %event_sub, align 4
  %prev.i = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 6, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %event_sub, ptr %prev.i, align 8
  %93 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %27, ptr %call7.i.i, align 8
  %dinbox = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 3
  %dinlen = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 2
  call fastcc void @devx_obj_build_destroy_cmd(ptr noundef %retval.0.i, ptr noundef %call.i, ptr noundef %dinbox, ptr noundef %dinlen, ptr noundef nonnull %obj_id)
  %94 = ptrtoint ptr %dinlen to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dinlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %95)
  %cmp73 = icmp ugt i32 %95, 64
  br i1 %cmp73, label %do.end86, label %if.end71.if.end92_crit_edge, !prof !114

if.end71.if.end92_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

do.end86:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1524, i32 noundef 9, ptr noundef null) #11
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %if.end71.if.end92_crit_edge
  %call100 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4098, ptr noundef %call.i, i32 noundef %retval.0.i246) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end92.obj_destroy_crit_edge

if.end92.obj_destroy_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %obj_destroy

if.end103:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp2(i16 2560, i16 %trunc.i.i)
  %cmp105 = icmp eq i16 %trunc.i.i, 2560
  br i1 %cmp105, label %if.then107, label %if.end103.if.end112_crit_edge

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr7, align 4
  %phi.bo = shl i32 %97, 16
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %if.end103.if.end112_crit_edge
  %obj_type.0 = phi i32 [ %phi.bo, %if.then107 ], [ 0, %if.end103.if.end112_crit_edge ]
  %or116 = or i32 %obj_type.0, %shr.i.i
  %98 = ptrtoint ptr %obj_id to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %obj_id, align 4
  %conv.i285 = zext i32 %or116 to i64
  %shl.i286 = shl nuw i64 %conv.i285, 32
  %conv1.i = zext i32 %99 to i64
  %or.i287 = or i64 %shl.i286, %conv1.i
  %obj_id118 = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %obj_id118 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %or.i287, ptr %obj_id118, align 8
  %flags119 = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 4
  %101 = ptrtoint ptr %flags119 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags119, align 4
  %and120 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end112.cleanup_crit_edge, label %if.then122

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then122:                                       ; preds = %if.end112
  %call123 = call fastcc i32 @devx_handle_mkey_indirect(ptr noundef nonnull %call7.i.i, ptr noundef %27, ptr noundef %retval.0.i, ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.then122.cleanup_crit_edge, label %if.then122.obj_destroy_crit_edge

if.then122.obj_destroy_crit_edge:                 ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  br label %obj_destroy

if.then122.cleanup_crit_edge:                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

obj_destroy:                                      ; preds = %if.then122.obj_destroy_crit_edge, %if.end92.obj_destroy_crit_edge
  %err.1 = phi i32 [ %call100, %if.end92.obj_destroy_crit_edge ], [ %call123, %if.then122.obj_destroy_crit_edge ]
  %flags128 = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 4
  %103 = ptrtoint ptr %flags128 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags128, align 4
  %and129 = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.else134, label %if.then131

if.then131:                                       ; preds = %obj_destroy
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call7.i.i, align 8
  %107 = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 5
  %call133 = call i32 @mlx5_core_destroy_dct(ptr noundef %106, ptr noundef %107) #11
  br label %obj_free

if.else134:                                       ; preds = %obj_destroy
  %and136 = and i32 %104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %108 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call7.i.i, align 8
  %mdev144 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %mdev144 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mdev144, align 8
  br i1 %tobool137.not, label %if.else142, label %if.then138

if.then138:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #13
  %112 = getelementptr inbounds %struct.devx_obj, ptr %call7.i.i, i32 0, i32 5
  %call141 = call i32 @mlx5_core_destroy_cq(ptr noundef %111, ptr noundef %112) #11
  br label %obj_free

if.else142:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %dinlen to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dinlen, align 8
  %call149 = call i32 @mlx5_cmd_exec(ptr noundef %111, ptr noundef %dinbox, i32 noundef %114, ptr noundef nonnull %out, i32 noundef 16) #11
  br label %obj_free

obj_free:                                         ; preds = %if.else142, %if.then138, %if.then131, %if.end58.obj_free_crit_edge, %if.then33.obj_free_crit_edge
  %err.2 = phi i32 [ %err.0, %if.end58.obj_free_crit_edge ], [ %err.1, %if.then131 ], [ %err.1, %if.then138 ], [ %err.1, %if.else142 ], [ -22, %if.then33.obj_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %obj_free, %if.then122.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then17, %devx_is_obj_create_cmd.exit.cleanup_crit_edge, %sw.bb9.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end.i268.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %if.then17 ], [ %err.2, %obj_free ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %devx_is_obj_create_cmd.exit.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ 0, %if.then122.cleanup_crit_edge ], [ 0, %if.end112.cleanup_crit_edge ], [ -22, %sw.bb9.i.cleanup_crit_edge ], [ -95, %if.end.i268.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obj_id) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_dct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devx_cq_comp(ptr nocapture noundef readonly %mcq, ptr nocapture noundef readonly %eqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mcq, i32 -88
  %0 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mcq, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !104) #11
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !115
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %event_xa = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 37, i32 2
  %call = tail call ptr @xa_load(ptr noundef %event_xa, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  %call1 = tail call ptr @xa_load(ptr noundef nonnull %call, i32 noundef %1) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %obj_sub_list = getelementptr inbounds %struct.devx_obj_event, ptr %call1, i32 0, i32 1
  tail call fastcc void @dispatch_event_fd(ptr noundef %obj_sub_list, ptr noundef %eqe)
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i8, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %out
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  %8 = tail call i32 @llvm.read_register.i32(metadata !104) #11
  %and.i.i.i.i.i15 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_cq(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @devx_obj_build_destroy_cmd(ptr nocapture noundef readonly %in, ptr noundef readonly %out, ptr noundef %din, ptr nocapture noundef writeonly %dinlen, ptr noundef %obj_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %shr = lshr i32 %1, 16
  %conv = trunc i32 %shr to i16
  %2 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %conv, label %devx_get_created_obj_id.exit [
    i16 2560, label %devx_get_created_obj_id.exit.thread
    i16 2568, label %devx_get_created_obj_id.exit.thread1277
    i16 512, label %devx_get_created_obj_id.exit.thread1283
    i16 1024, label %devx_get_created_obj_id.exit.thread1289
    i16 2048, label %devx_get_created_obj_id.exit.thread1295
    i16 2070, label %devx_get_created_obj_id.exit.thread1301
    i16 2316, label %devx_get_created_obj_id.exit.thread1307
    i16 2308, label %devx_get_created_obj_id.exit.thread1313
    i16 2312, label %devx_get_created_obj_id.exit.thread1319
    i16 2326, label %devx_get_created_obj_id.exit.thread1325
    i16 2304, label %devx_get_created_obj_id.exit.thread1331
    i16 2322, label %devx_get_created_obj_id.exit.thread1337
    i16 1905, label %devx_get_created_obj_id.exit.thread1343
    i16 2352, label %devx_get_created_obj_id.exit.thread1349
    i16 2355, label %devx_get_created_obj_id.exit.thread1354
    i16 2358, label %devx_get_created_obj_id.exit.thread1359
    i16 2361, label %devx_get_created_obj_id.exit.thread1364
    i16 2365, label %devx_get_created_obj_id.exit.thread1370
    i16 2368, label %devx_get_created_obj_id.exit.thread1376
    i16 1922, label %devx_get_created_obj_id.exit.thread1382
    i16 2087, label %devx_get_created_obj_id.exit.thread1387
    i16 2089, label %devx_get_created_obj_id.exit.thread1392
    i16 1280, label %devx_get_created_obj_id.exit.thread1397
    i16 1792, label %devx_get_created_obj_id.exit.thread1403
    i16 1797, label %devx_get_created_obj_id.exit.thread1409
    i16 1808, label %devx_get_created_obj_id.exit.thread1415
    i16 1815, label %devx_get_created_obj_id.exit.thread1421
    i16 2054, label %devx_get_created_obj_id.exit.thread1427
    i16 2062, label %devx_get_created_obj_id.exit.thread1432
    i16 1536, label %devx_get_created_obj_id.exit.thread1438
  ]

devx_get_created_obj_id.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i32, ptr %out, i32 2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %5 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %obj_id, align 4
  %6 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %dinlen, align 4
  %conv51273 = and i32 %1, 65535
  %or23 = or i32 %conv51273, 167968768
  %7 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or23, ptr %din, align 4
  %8 = load i32, ptr %obj_id, align 4
  %add.ptr32 = getelementptr i32, ptr %din, i32 2
  %9 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr32, align 4
  %add.ptr42 = getelementptr i32, ptr %in, i32 1
  %10 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr42, align 4
  %and44 = and i32 %11, 65535
  %add.ptr48 = getelementptr i32, ptr %din, i32 1
  %12 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr48, align 4
  %and49 = and i32 %13, -65536
  %or52 = or i32 %and49, %and44
  store i32 %or52, ptr %add.ptr48, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1277:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr2.i = getelementptr i32, ptr %out, i32 2
  %14 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr2.i, align 4
  %and4.i = and i32 %15, 16777215
  %16 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and4.i, ptr %obj_id, align 4
  %17 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %dinlen, align 4
  %conv51279 = and i32 %1, 65535
  %or66 = or i32 %conv51279, 168427520
  %18 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or66, ptr %din, align 4
  %19 = load i32, ptr %obj_id, align 4
  %add.ptr75 = getelementptr i32, ptr %din, i32 2
  %20 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr75, align 4
  %and76 = and i32 %21, -16777216
  %and77 = and i32 %19, 16777215
  %or79 = or i32 %and76, %and77
  store i32 %or79, ptr %add.ptr75, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1283:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr6.i = getelementptr i32, ptr %out, i32 2
  %22 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr6.i, align 4
  %and8.i = and i32 %23, 16777215
  %24 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and8.i, ptr %obj_id, align 4
  %25 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %dinlen, align 4
  %conv51285 = and i32 %1, 65535
  %or93 = or i32 %conv51285, 33685504
  %26 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or93, ptr %din, align 4
  %27 = load i32, ptr %obj_id, align 4
  %add.ptr102 = getelementptr i32, ptr %din, i32 2
  %28 = ptrtoint ptr %add.ptr102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr102, align 4
  %and103 = and i32 %29, -16777216
  %and104 = and i32 %27, 16777215
  %or106 = or i32 %and103, %and104
  store i32 %or106, ptr %add.ptr102, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1289:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr10.i = getelementptr i32, ptr %out, i32 2
  %30 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr10.i, align 4
  %and12.i = and i32 %31, 16777215
  %32 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and12.i, ptr %obj_id, align 4
  %33 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %dinlen, align 4
  %conv51291 = and i32 %1, 65535
  %or120 = or i32 %conv51291, 67174400
  %34 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or120, ptr %din, align 4
  %35 = load i32, ptr %obj_id, align 4
  %add.ptr129 = getelementptr i32, ptr %din, i32 2
  %36 = ptrtoint ptr %add.ptr129 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr129, align 4
  %and130 = and i32 %37, -16777216
  %and131 = and i32 %35, 16777215
  %or133 = or i32 %and130, %and131
  store i32 %or133, ptr %add.ptr129, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1295:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr14.i = getelementptr i32, ptr %out, i32 2
  %38 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr14.i, align 4
  %and16.i = and i32 %39, 16777215
  %40 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and16.i, ptr %obj_id, align 4
  %41 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %dinlen, align 4
  %conv51297 = and i32 %1, 65535
  %or147 = or i32 %conv51297, 134283264
  %42 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or147, ptr %din, align 4
  %43 = load i32, ptr %obj_id, align 4
  %add.ptr156 = getelementptr i32, ptr %din, i32 2
  %44 = ptrtoint ptr %add.ptr156 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr156, align 4
  %and157 = and i32 %45, -16777216
  %and158 = and i32 %43, 16777215
  %or160 = or i32 %and157, %and158
  store i32 %or160, ptr %add.ptr156, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1301:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr18.i = getelementptr i32, ptr %out, i32 2
  %46 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr18.i, align 4
  %and20.i = and i32 %47, 16777215
  %48 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and20.i, ptr %obj_id, align 4
  %49 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16, ptr %dinlen, align 4
  %conv51303 = and i32 %1, 65535
  %or174 = or i32 %conv51303, 135725056
  %50 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or174, ptr %din, align 4
  %51 = load i32, ptr %obj_id, align 4
  %add.ptr183 = getelementptr i32, ptr %din, i32 2
  %52 = ptrtoint ptr %add.ptr183 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr183, align 4
  %and184 = and i32 %53, -16777216
  %and185 = and i32 %51, 16777215
  %or187 = or i32 %and184, %and185
  store i32 %or187, ptr %add.ptr183, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1307:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr22.i = getelementptr i32, ptr %out, i32 2
  %54 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr22.i, align 4
  %and24.i = and i32 %55, 16777215
  %56 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and24.i, ptr %obj_id, align 4
  %57 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16, ptr %dinlen, align 4
  %conv51309 = and i32 %1, 65535
  %or201 = or i32 %conv51309, 151912448
  %58 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or201, ptr %din, align 4
  %59 = load i32, ptr %obj_id, align 4
  %add.ptr210 = getelementptr i32, ptr %din, i32 2
  %60 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr210, align 4
  %and211 = and i32 %61, -16777216
  %and212 = and i32 %59, 16777215
  %or214 = or i32 %and211, %and212
  store i32 %or214, ptr %add.ptr210, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1313:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr26.i = getelementptr i32, ptr %out, i32 2
  %62 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr26.i, align 4
  %and28.i = and i32 %63, 16777215
  %64 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and28.i, ptr %obj_id, align 4
  %65 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 16, ptr %dinlen, align 4
  %conv51315 = and i32 %1, 65535
  %or228 = or i32 %conv51315, 151388160
  %66 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or228, ptr %din, align 4
  %67 = load i32, ptr %obj_id, align 4
  %add.ptr237 = getelementptr i32, ptr %din, i32 2
  %68 = ptrtoint ptr %add.ptr237 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr237, align 4
  %and238 = and i32 %69, -16777216
  %and239 = and i32 %67, 16777215
  %or241 = or i32 %and238, %and239
  store i32 %or241, ptr %add.ptr237, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1319:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr30.i = getelementptr i32, ptr %out, i32 2
  %70 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr30.i, align 4
  %and32.i = and i32 %71, 16777215
  %72 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and32.i, ptr %obj_id, align 4
  %73 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 16, ptr %dinlen, align 4
  %conv51321 = and i32 %1, 65535
  %or255 = or i32 %conv51321, 151650304
  %74 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or255, ptr %din, align 4
  %75 = load i32, ptr %obj_id, align 4
  %add.ptr264 = getelementptr i32, ptr %din, i32 2
  %76 = ptrtoint ptr %add.ptr264 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr264, align 4
  %and265 = and i32 %77, -16777216
  %and266 = and i32 %75, 16777215
  %or268 = or i32 %and265, %and266
  store i32 %or268, ptr %add.ptr264, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1325:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr34.i = getelementptr i32, ptr %out, i32 2
  %78 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr34.i, align 4
  %and36.i = and i32 %79, 16777215
  %80 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and36.i, ptr %obj_id, align 4
  %81 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 16, ptr %dinlen, align 4
  %conv51327 = and i32 %1, 65535
  %or282 = or i32 %conv51327, 152567808
  %82 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or282, ptr %din, align 4
  %83 = load i32, ptr %obj_id, align 4
  %add.ptr291 = getelementptr i32, ptr %din, i32 2
  %84 = ptrtoint ptr %add.ptr291 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr291, align 4
  %and292 = and i32 %85, -16777216
  %and293 = and i32 %83, 16777215
  %or295 = or i32 %and292, %and293
  store i32 %or295, ptr %add.ptr291, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1331:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr38.i = getelementptr i32, ptr %out, i32 2
  %86 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr38.i, align 4
  %and40.i = and i32 %87, 16777215
  %88 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and40.i, ptr %obj_id, align 4
  %89 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 16, ptr %dinlen, align 4
  %conv51333 = and i32 %1, 65535
  %or309 = or i32 %conv51333, 151126016
  %90 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or309, ptr %din, align 4
  %91 = load i32, ptr %obj_id, align 4
  %add.ptr318 = getelementptr i32, ptr %din, i32 2
  %92 = ptrtoint ptr %add.ptr318 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr318, align 4
  %and319 = and i32 %93, -16777216
  %and320 = and i32 %91, 16777215
  %or322 = or i32 %and319, %and320
  store i32 %or322, ptr %add.ptr318, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1337:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42.i = getelementptr i32, ptr %out, i32 2
  %94 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr42.i, align 4
  %and44.i = and i32 %95, 16777215
  %96 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and44.i, ptr %obj_id, align 4
  %97 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 16, ptr %dinlen, align 4
  %conv51339 = and i32 %1, 65535
  %or336 = or i32 %conv51339, 152305664
  %98 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or336, ptr %din, align 4
  %99 = load i32, ptr %obj_id, align 4
  %add.ptr345 = getelementptr i32, ptr %din, i32 2
  %100 = ptrtoint ptr %add.ptr345 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr345, align 4
  %and346 = and i32 %101, -16777216
  %and347 = and i32 %99, 16777215
  %or349 = or i32 %and346, %and347
  store i32 %or349, ptr %add.ptr345, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1343:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr46.i = getelementptr i32, ptr %out, i32 2
  %102 = ptrtoint ptr %add.ptr46.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr46.i, align 4
  %and48.i = and i32 %103, 255
  %104 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and48.i, ptr %obj_id, align 4
  %105 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 16, ptr %dinlen, align 4
  %conv51345 = and i32 %1, 65535
  %or363 = or i32 %conv51345, 124911616
  %106 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or363, ptr %din, align 4
  %107 = load i32, ptr %obj_id, align 4
  %add.ptr372 = getelementptr i32, ptr %din, i32 2
  %108 = ptrtoint ptr %add.ptr372 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr372, align 4
  %and373 = and i32 %109, -256
  %and374 = and i32 %107, 255
  %or376 = or i32 %and373, %and374
  store i32 %or376, ptr %add.ptr372, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1349:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr50.i = getelementptr i32, ptr %out, i32 2
  %110 = ptrtoint ptr %add.ptr50.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr50.i, align 4
  %and52.i = and i32 %111, 16777215
  %112 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %and52.i, ptr %obj_id, align 4
  %113 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 16, ptr %dinlen, align 4
  %conv51351 = and i32 %1, 65535
  %114 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %din, align 4
  %and81352 = and i32 %115, -65536
  %or1353 = or i32 %and81352, %conv51351
  store i32 %or1353, ptr %din, align 4
  store i32 64, ptr %dinlen, align 4
  %add.ptr383 = getelementptr i32, ptr %in, i32 2
  %116 = ptrtoint ptr %add.ptr383 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr383, align 4
  %shr384 = and i32 %117, -2147483648
  %add.ptr389 = getelementptr i32, ptr %din, i32 2
  %118 = ptrtoint ptr %add.ptr389 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr389, align 4
  %and390 = and i32 %119, 2147483647
  %or393 = or i32 %and390, %shr384
  store i32 %or393, ptr %add.ptr389, align 4
  %120 = load i32, ptr %add.ptr383, align 4
  %and401 = and i32 %120, 65535
  %and406 = and i32 %or393, -65536
  %or409 = or i32 %and406, %and401
  store i32 %or409, ptr %add.ptr389, align 4
  %add.ptr415 = getelementptr i32, ptr %in, i32 4
  %121 = ptrtoint ptr %add.ptr415 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr415, align 4
  %shr416 = and i32 %122, -16777216
  %add.ptr421 = getelementptr i32, ptr %din, i32 4
  %123 = ptrtoint ptr %add.ptr421 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr421, align 4
  %and422 = and i32 %124, 16777215
  %or425 = or i32 %and422, %shr416
  store i32 %or425, ptr %add.ptr421, align 4
  %125 = load i32, ptr %obj_id, align 4
  %add.ptr434 = getelementptr i32, ptr %din, i32 5
  %126 = ptrtoint ptr %add.ptr434 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr434, align 4
  %and435 = and i32 %127, -16777216
  %and436 = and i32 %125, 16777215
  %or438 = or i32 %and435, %and436
  store i32 %or438, ptr %add.ptr434, align 4
  %128 = load i32, ptr %din, align 4
  %and448 = and i32 %128, 65535
  %or451 = or i32 %and448, 154206208
  store i32 %or451, ptr %din, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1354:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr54.i = getelementptr i32, ptr %out, i32 2
  %129 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr54.i, align 4
  %and56.i = and i32 %130, 16777215
  %131 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %and56.i, ptr %obj_id, align 4
  %132 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 16, ptr %dinlen, align 4
  %conv51356 = and i32 %1, 65535
  %133 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %din, align 4
  %and81357 = and i32 %134, -65536
  %or1358 = or i32 %and81357, %conv51356
  store i32 %or1358, ptr %din, align 4
  store i32 64, ptr %dinlen, align 4
  %add.ptr458 = getelementptr i32, ptr %in, i32 2
  %135 = ptrtoint ptr %add.ptr458 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr458, align 4
  %shr459 = and i32 %136, -2147483648
  %add.ptr464 = getelementptr i32, ptr %din, i32 2
  %137 = ptrtoint ptr %add.ptr464 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr464, align 4
  %and465 = and i32 %138, 2147483647
  %or468 = or i32 %and465, %shr459
  store i32 %or468, ptr %add.ptr464, align 4
  %139 = load i32, ptr %add.ptr458, align 4
  %and476 = and i32 %139, 65535
  %and481 = and i32 %or468, -65536
  %or484 = or i32 %and481, %and476
  store i32 %or484, ptr %add.ptr464, align 4
  %add.ptr490 = getelementptr i32, ptr %in, i32 4
  %140 = ptrtoint ptr %add.ptr490 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr490, align 4
  %shr491 = and i32 %141, -16777216
  %add.ptr496 = getelementptr i32, ptr %din, i32 4
  %142 = ptrtoint ptr %add.ptr496 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %add.ptr496, align 4
  %and497 = and i32 %143, 16777215
  %or500 = or i32 %and497, %shr491
  store i32 %or500, ptr %add.ptr496, align 4
  %add.ptr506 = getelementptr i32, ptr %in, i32 5
  %144 = ptrtoint ptr %add.ptr506 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %add.ptr506, align 4
  %and508 = and i32 %145, 16777215
  %add.ptr512 = getelementptr i32, ptr %din, i32 5
  %146 = ptrtoint ptr %add.ptr512 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %add.ptr512, align 4
  %and513 = and i32 %147, -16777216
  %or516 = or i32 %and513, %and508
  store i32 %or516, ptr %add.ptr512, align 4
  %148 = load i32, ptr %obj_id, align 4
  %add.ptr525 = getelementptr i32, ptr %din, i32 6
  %149 = ptrtoint ptr %add.ptr525 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %add.ptr525, align 4
  %150 = load i32, ptr %din, align 4
  %and539 = and i32 %150, 65535
  %or542 = or i32 %and539, 154402816
  store i32 %or542, ptr %din, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1359:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr58.i = getelementptr i32, ptr %in, i32 8
  %151 = ptrtoint ptr %add.ptr58.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %add.ptr58.i, align 4
  %153 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %obj_id, align 4
  %154 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 16, ptr %dinlen, align 4
  %conv51361 = and i32 %1, 65535
  %155 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %din, align 4
  %and81362 = and i32 %156, -65536
  %or1363 = or i32 %and81362, %conv51361
  store i32 %or1363, ptr %din, align 4
  store i32 64, ptr %dinlen, align 4
  %add.ptr549 = getelementptr i32, ptr %in, i32 2
  %157 = ptrtoint ptr %add.ptr549 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %add.ptr549, align 4
  %shr550 = and i32 %158, -2147483648
  %add.ptr555 = getelementptr i32, ptr %din, i32 2
  %159 = ptrtoint ptr %add.ptr555 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %add.ptr555, align 4
  %and556 = and i32 %160, 2147483647
  %or559 = or i32 %and556, %shr550
  store i32 %or559, ptr %add.ptr555, align 4
  %161 = load i32, ptr %add.ptr549, align 4
  %and567 = and i32 %161, 65535
  %and572 = and i32 %or559, -65536
  %or575 = or i32 %and572, %and567
  store i32 %or575, ptr %add.ptr555, align 4
  %add.ptr581 = getelementptr i32, ptr %in, i32 4
  %162 = ptrtoint ptr %add.ptr581 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %add.ptr581, align 4
  %shr582 = and i32 %163, -16777216
  %add.ptr587 = getelementptr i32, ptr %din, i32 4
  %164 = ptrtoint ptr %add.ptr587 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %add.ptr587, align 4
  %and588 = and i32 %165, 16777215
  %or591 = or i32 %and588, %shr582
  store i32 %or591, ptr %add.ptr587, align 4
  %add.ptr597 = getelementptr i32, ptr %in, i32 5
  %166 = ptrtoint ptr %add.ptr597 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr597, align 4
  %and599 = and i32 %167, 16777215
  %add.ptr603 = getelementptr i32, ptr %din, i32 5
  %168 = ptrtoint ptr %add.ptr603 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %add.ptr603, align 4
  %and604 = and i32 %169, -16777216
  %or607 = or i32 %and604, %and599
  store i32 %or607, ptr %add.ptr603, align 4
  %170 = load i32, ptr %obj_id, align 4
  %add.ptr616 = getelementptr i32, ptr %din, i32 8
  %171 = ptrtoint ptr %add.ptr616 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %add.ptr616, align 4
  %172 = load i32, ptr %din, align 4
  %and630 = and i32 %172, 65535
  %or633 = or i32 %and630, 154664960
  store i32 %or633, ptr %din, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1364:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr62.i = getelementptr i32, ptr %out, i32 2
  %173 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %add.ptr62.i, align 4
  %175 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %obj_id, align 4
  %176 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 16, ptr %dinlen, align 4
  %conv51366 = and i32 %1, 65535
  %or647 = or i32 %conv51366, 154796032
  %177 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %or647, ptr %din, align 4
  %178 = load i32, ptr %obj_id, align 4
  %add.ptr656 = getelementptr i32, ptr %din, i32 2
  %179 = ptrtoint ptr %add.ptr656 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %add.ptr656, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1370:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr66.i = getelementptr i32, ptr %out, i32 2
  %180 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %add.ptr66.i, align 4
  %182 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %obj_id, align 4
  %183 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 16, ptr %dinlen, align 4
  %conv51372 = and i32 %1, 65535
  %or674 = or i32 %conv51372, 155058176
  %184 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or674, ptr %din, align 4
  %185 = load i32, ptr %obj_id, align 4
  %add.ptr683 = getelementptr i32, ptr %din, i32 2
  %186 = ptrtoint ptr %add.ptr683 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %add.ptr683, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1376:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr70.i = getelementptr i32, ptr %out, i32 2
  %187 = ptrtoint ptr %add.ptr70.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %add.ptr70.i, align 4
  %189 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %obj_id, align 4
  %190 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 16, ptr %dinlen, align 4
  %conv51378 = and i32 %1, 65535
  %or701 = or i32 %conv51378, 155254784
  %191 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %or701, ptr %din, align 4
  %192 = load i32, ptr %obj_id, align 4
  %add.ptr710 = getelementptr i32, ptr %din, i32 2
  %193 = ptrtoint ptr %add.ptr710 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %add.ptr710, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1382:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr74.i = getelementptr i32, ptr %out, i32 4
  %194 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %add.ptr74.i, align 4
  %196 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %obj_id, align 4
  %197 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 16, ptr %dinlen, align 4
  %conv51384 = and i32 %1, 65535
  %198 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %din, align 4
  %and81385 = and i32 %199, -65536
  %or1386 = or i32 %and81385, %conv51384
  store i32 %or1386, ptr %din, align 4
  store i32 64, ptr %dinlen, align 4
  %add.ptr721 = getelementptr i32, ptr %in, i32 2
  %200 = ptrtoint ptr %add.ptr721 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %add.ptr721, align 4
  %shr722 = and i32 %201, -16777216
  %add.ptr727 = getelementptr i32, ptr %din, i32 2
  %202 = ptrtoint ptr %add.ptr727 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr727, align 4
  %and728 = and i32 %203, 16777215
  %or731 = or i32 %and728, %shr722
  store i32 %or731, ptr %add.ptr727, align 4
  %204 = load i32, ptr %obj_id, align 4
  %add.ptr740 = getelementptr i32, ptr %din, i32 3
  %205 = ptrtoint ptr %add.ptr740 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %add.ptr740, align 4
  %206 = load i32, ptr %din, align 4
  %and754 = and i32 %206, 65535
  %or757 = or i32 %and754, 126025728
  store i32 %or757, ptr %din, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1387:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr78.i = getelementptr i32, ptr %in, i32 3
  %207 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %add.ptr78.i, align 4
  %and80.i = and i32 %208, 65535
  %209 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %and80.i, ptr %obj_id, align 4
  %210 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 16, ptr %dinlen, align 4
  %conv51389 = and i32 %1, 65535
  %211 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %din, align 4
  %and81390 = and i32 %212, -65536
  %or1391 = or i32 %and81390, %conv51389
  store i32 %or1391, ptr %din, align 4
  store i32 16, ptr %dinlen, align 4
  %213 = load i32, ptr %obj_id, align 4
  %add.ptr767 = getelementptr i32, ptr %din, i32 3
  %214 = ptrtoint ptr %add.ptr767 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %add.ptr767, align 4
  %and768 = and i32 %215, -65536
  %and769 = and i32 %213, 65535
  %or771 = or i32 %and768, %and769
  store i32 %or771, ptr %add.ptr767, align 4
  %216 = load i32, ptr %din, align 4
  %and781 = and i32 %216, 65535
  %or784 = or i32 %and781, 136839168
  store i32 %or784, ptr %din, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1392:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr82.i = getelementptr i32, ptr %in, i32 5
  %217 = ptrtoint ptr %add.ptr82.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %add.ptr82.i, align 4
  %and84.i = and i32 %218, 16777215
  %219 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %and84.i, ptr %obj_id, align 4
  %220 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 16, ptr %dinlen, align 4
  %conv51394 = and i32 %1, 65535
  %221 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %din, align 4
  %and81395 = and i32 %222, -65536
  %or1396 = or i32 %and81395, %conv51394
  store i32 %or1396, ptr %din, align 4
  store i32 64, ptr %dinlen, align 4
  %223 = load i32, ptr %obj_id, align 4
  %add.ptr794 = getelementptr i32, ptr %din, i32 5
  %224 = ptrtoint ptr %add.ptr794 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %add.ptr794, align 4
  %and795 = and i32 %225, -16777216
  %and796 = and i32 %223, 16777215
  %or798 = or i32 %and795, %and796
  store i32 %or798, ptr %add.ptr794, align 4
  %226 = load i32, ptr %din, align 4
  %and808 = and i32 %226, 65535
  %or811 = or i32 %and808, 137035776
  store i32 %or811, ptr %din, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1397:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr86.i = getelementptr i32, ptr %out, i32 2
  %227 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %add.ptr86.i, align 4
  %and88.i = and i32 %228, 16777215
  %229 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %and88.i, ptr %obj_id, align 4
  %230 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 16, ptr %dinlen, align 4
  %conv51399 = and i32 %1, 65535
  %or825 = or i32 %conv51399, 83951616
  %231 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %or825, ptr %din, align 4
  %232 = load i32, ptr %obj_id, align 4
  %add.ptr834 = getelementptr i32, ptr %din, i32 2
  %233 = ptrtoint ptr %add.ptr834 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %add.ptr834, align 4
  %and835 = and i32 %234, -16777216
  %and836 = and i32 %232, 16777215
  %or838 = or i32 %and835, %and836
  store i32 %or838, ptr %add.ptr834, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1403:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr90.i = getelementptr i32, ptr %out, i32 2
  %235 = ptrtoint ptr %add.ptr90.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %add.ptr90.i, align 4
  %and92.i = and i32 %236, 16777215
  %237 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %and92.i, ptr %obj_id, align 4
  %238 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 16, ptr %dinlen, align 4
  %conv51405 = and i32 %1, 65535
  %or852 = or i32 %conv51405, 117506048
  %239 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %or852, ptr %din, align 4
  %240 = load i32, ptr %obj_id, align 4
  %add.ptr861 = getelementptr i32, ptr %din, i32 2
  %241 = ptrtoint ptr %add.ptr861 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %add.ptr861, align 4
  %and862 = and i32 %242, -16777216
  %and863 = and i32 %240, 16777215
  %or865 = or i32 %and862, %and863
  store i32 %or865, ptr %add.ptr861, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1409:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr94.i = getelementptr i32, ptr %out, i32 2
  %243 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %add.ptr94.i, align 4
  %and96.i = and i32 %244, 16777215
  %245 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %and96.i, ptr %obj_id, align 4
  %246 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 16, ptr %dinlen, align 4
  %conv51411 = and i32 %1, 65535
  %or879 = or i32 %conv51411, 117833728
  %247 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %or879, ptr %din, align 4
  %248 = load i32, ptr %obj_id, align 4
  %add.ptr888 = getelementptr i32, ptr %din, i32 2
  %249 = ptrtoint ptr %add.ptr888 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %add.ptr888, align 4
  %and889 = and i32 %250, -16777216
  %and890 = and i32 %248, 16777215
  %or892 = or i32 %and889, %and890
  store i32 %or892, ptr %add.ptr888, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1415:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr98.i = getelementptr i32, ptr %out, i32 2
  %251 = ptrtoint ptr %add.ptr98.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %add.ptr98.i, align 4
  %and100.i = and i32 %252, 16777215
  %253 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %and100.i, ptr %obj_id, align 4
  %254 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 16, ptr %dinlen, align 4
  %conv51417 = and i32 %1, 65535
  %or906 = or i32 %conv51417, 118554624
  %255 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %or906, ptr %din, align 4
  %256 = load i32, ptr %obj_id, align 4
  %add.ptr915 = getelementptr i32, ptr %din, i32 2
  %257 = ptrtoint ptr %add.ptr915 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %add.ptr915, align 4
  %and916 = and i32 %258, -16777216
  %and917 = and i32 %256, 16777215
  %or919 = or i32 %and916, %and917
  store i32 %or919, ptr %add.ptr915, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1421:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr102.i = getelementptr i32, ptr %out, i32 2
  %259 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %add.ptr102.i, align 4
  %and104.i = and i32 %260, 16777215
  %261 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %and104.i, ptr %obj_id, align 4
  %262 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 16, ptr %dinlen, align 4
  %conv51423 = and i32 %1, 65535
  %or933 = or i32 %conv51423, 119013376
  %263 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %or933, ptr %din, align 4
  %264 = load i32, ptr %obj_id, align 4
  %add.ptr942 = getelementptr i32, ptr %din, i32 2
  %265 = ptrtoint ptr %add.ptr942 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %add.ptr942, align 4
  %and943 = and i32 %266, -16777216
  %and944 = and i32 %264, 16777215
  %or946 = or i32 %and943, %and944
  store i32 %or946, ptr %add.ptr942, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1427:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr106.i = getelementptr i32, ptr %in, i32 2
  %267 = ptrtoint ptr %add.ptr106.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %add.ptr106.i, align 4
  %and108.i = and i32 %268, 16777215
  %269 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %and108.i, ptr %obj_id, align 4
  %270 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 16, ptr %dinlen, align 4
  %conv51429 = and i32 %1, 65535
  %271 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %din, align 4
  %and81430 = and i32 %272, -65536
  %or1431 = or i32 %and81430, %conv51429
  store i32 %or1431, ptr %din, align 4
  store i32 32, ptr %dinlen, align 4
  %273 = load i32, ptr %add.ptr106.i, align 4
  %and955 = and i32 %273, 16777215
  %add.ptr959 = getelementptr i32, ptr %din, i32 2
  %274 = ptrtoint ptr %add.ptr959 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %add.ptr959, align 4
  %and960 = and i32 %275, -16777216
  %or963 = or i32 %and960, %and955
  store i32 %or963, ptr %add.ptr959, align 4
  %add.ptr967 = getelementptr i8, ptr %din, i32 16
  %add.ptr968 = getelementptr i8, ptr %in, i32 16
  %276 = call ptr @memcpy(ptr %add.ptr967, ptr %add.ptr968, i32 16)
  %277 = load i32, ptr %din, align 4
  %and975 = and i32 %277, 65535
  %or978 = or i32 %and975, 134676480
  store i32 %or978, ptr %din, align 4
  %278 = load i32, ptr %obj_id, align 4
  %and989 = and i32 %278, 16777215
  %or991 = or i32 %and989, %and960
  store i32 %or991, ptr %add.ptr959, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1432:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr110.i = getelementptr i32, ptr %out, i32 2
  %279 = ptrtoint ptr %add.ptr110.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %add.ptr110.i, align 4
  %and112.i = and i32 %280, 16777215
  %281 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %and112.i, ptr %obj_id, align 4
  %282 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 16, ptr %dinlen, align 4
  %conv51434 = and i32 %1, 65535
  %or1005 = or i32 %conv51434, 135200768
  %283 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %or1005, ptr %din, align 4
  %284 = load i32, ptr %obj_id, align 4
  %add.ptr1014 = getelementptr i32, ptr %din, i32 2
  %285 = ptrtoint ptr %add.ptr1014 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %add.ptr1014, align 4
  %and1015 = and i32 %286, -16777216
  %and1016 = and i32 %284, 16777215
  %or1018 = or i32 %and1015, %and1016
  store i32 %or1018, ptr %add.ptr1014, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit.thread1438:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr114.i = getelementptr i32, ptr %out, i32 4
  %287 = ptrtoint ptr %add.ptr114.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %add.ptr114.i, align 4
  %and116.i = and i32 %288, 16777215
  %289 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %and116.i, ptr %obj_id, align 4
  %290 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 16, ptr %dinlen, align 4
  %conv51440 = and i32 %1, 65535
  %or1032 = or i32 %conv51440, 100728832
  %291 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %or1032, ptr %din, align 4
  %292 = load i32, ptr %obj_id, align 4
  %add.ptr1041 = getelementptr i32, ptr %din, i32 2
  %293 = ptrtoint ptr %add.ptr1041 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %add.ptr1041, align 4
  %and1042 = and i32 %294, -16777216
  %and1043 = and i32 %292, 16777215
  %or1045 = or i32 %and1042, %and1043
  store i32 %or1045, ptr %add.ptr1041, align 4
  br label %sw.epilog

devx_get_created_obj_id.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 360, i32 noundef 9, ptr noundef null) #11
  %295 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 0, ptr %obj_id, align 4
  %296 = ptrtoint ptr %dinlen to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 16, ptr %dinlen, align 4
  %conv5 = and i32 %1, 65535
  %297 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %din, align 4
  %and8 = and i32 %298, -65536
  %or = or i32 %and8, %conv5
  store i32 %or, ptr %din, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1286, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %devx_get_created_obj_id.exit, %devx_get_created_obj_id.exit.thread1438, %devx_get_created_obj_id.exit.thread1432, %devx_get_created_obj_id.exit.thread1427, %devx_get_created_obj_id.exit.thread1421, %devx_get_created_obj_id.exit.thread1415, %devx_get_created_obj_id.exit.thread1409, %devx_get_created_obj_id.exit.thread1403, %devx_get_created_obj_id.exit.thread1397, %devx_get_created_obj_id.exit.thread1392, %devx_get_created_obj_id.exit.thread1387, %devx_get_created_obj_id.exit.thread1382, %devx_get_created_obj_id.exit.thread1376, %devx_get_created_obj_id.exit.thread1370, %devx_get_created_obj_id.exit.thread1364, %devx_get_created_obj_id.exit.thread1359, %devx_get_created_obj_id.exit.thread1354, %devx_get_created_obj_id.exit.thread1349, %devx_get_created_obj_id.exit.thread1343, %devx_get_created_obj_id.exit.thread1337, %devx_get_created_obj_id.exit.thread1331, %devx_get_created_obj_id.exit.thread1325, %devx_get_created_obj_id.exit.thread1319, %devx_get_created_obj_id.exit.thread1313, %devx_get_created_obj_id.exit.thread1307, %devx_get_created_obj_id.exit.thread1301, %devx_get_created_obj_id.exit.thread1295, %devx_get_created_obj_id.exit.thread1289, %devx_get_created_obj_id.exit.thread1283, %devx_get_created_obj_id.exit.thread1277, %devx_get_created_obj_id.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devx_handle_mkey_indirect(ptr noundef %obj, ptr noundef %dev, ptr nocapture noundef readonly %in, ptr nocapture noundef readonly %out) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.devx_obj, ptr %obj, i32 0, i32 5
  %add.ptr1 = getelementptr i8, ptr %in, i32 20
  %1 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr1, align 4
  %add.ptr2 = getelementptr i32, ptr %out, i32 2
  %3 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr2, align 4
  %and4 = shl i32 %4, 8
  %conv5 = and i32 %2, 255
  %or = or i32 %and4, %conv5
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %0, align 4
  %type = getelementptr inbounds %struct.devx_obj, ptr %obj, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %type, align 4
  %add.ptr7 = getelementptr i8, ptr %in, i32 68
  %7 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr7, align 4
  %ndescs = getelementptr inbounds %struct.devx_obj, ptr %obj, i32 0, i32 5, i32 0, i32 2
  %9 = ptrtoint ptr %ndescs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ndescs, align 4
  %wait = getelementptr inbounds %struct.devx_obj, ptr %obj, i32 0, i32 5, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.25, ptr noundef nonnull @devx_handle_mkey_indirect.__key) #11
  %usecount.i = getelementptr inbounds %struct.devx_obj, ptr %obj, i32 0, i32 5, i32 0, i32 6, i32 1, i32 0, i32 4, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %usecount.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %usecount.i, align 4
  %odp_mkeys.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %and.i.i = and i32 %12, -256
  %call1.i = tail call ptr @xa_store(ptr noundef %odp_mkeys.i, i32 noundef %and.i.i, ptr noundef %0, i32 noundef 3264) #11
  %13 = ptrtoint ptr %call1.i to i32
  %and.i.i.i.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp uge ptr %call1.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %cmp.i.i.i.i
  %shr.i.i = ashr i32 %13, 2
  %retval.0.i.i = select i1 %spec.select.i.i.i, i32 %shr.i.i, i32 0
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_destroy_def_handler(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OBJ_MODIFY(ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i.i

entry.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i:                                         ; preds = %if.end.i.i
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %4)
  %cmp.i7.i = icmp ult i16 %4, 9
  br i1 %cmp.i7.i, label %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %6, %cond.false.i ], [ %arrayidx.i.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %7 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i68 = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i68, label %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge, label %if.end.i.i69

uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge: ; preds = %uverbs_attr_get_alloced_ptr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.i.i69:                                     ; preds = %uverbs_attr_get_alloced_ptr.exit
  %arrayidx.i.i70 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 5
  %cmp.i.i71 = icmp ugt ptr %arrayidx.i.i70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i71, label %if.end.i.i69.if.then.i_crit_edge, label %if.end.i72

if.end.i.i69.if.then.i_crit_edge:                 ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i69.if.then.i_crit_edge, %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge
  %retval.0.i7.i = phi ptr [ %arrayidx.i.i70, %if.end.i.i69.if.then.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i7.i to i32
  br label %uverbs_attr_get_len.exit

if.end.i72:                                       ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len.i, align 8
  %conv.i = zext i16 %12 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i72, %if.then.i
  %retval.0.i73 = phi i32 [ %10, %if.then.i ], [ %conv.i, %if.end.i72 ]
  %13 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i75 = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i75, label %uverbs_attr_get_len.exit.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i.i76

uverbs_attr_get_len.exit.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i.i76:                                     ; preds = %uverbs_attr_get_len.exit
  %arrayidx.i.i77 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i78 = icmp ugt ptr %arrayidx.i.i77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i78, label %if.end.i.i76.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i79

if.end.i.i76.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i79:                                       ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i77, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i79, %if.end.i.i76.uverbs_attr_get_uobject.exit_crit_edge, %uverbs_attr_get_len.exit.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i80 = phi ptr [ %17, %if.end.i79 ], [ %arrayidx.i.i77, %if.end.i.i76.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_len.exit.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not = icmp eq ptr %attrs, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cond.end_crit_edge, label %cond.true

uverbs_attr_get_uobject.exit.cond.end_crit_edge:  ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %uverbs_attr_get_uobject.exit.cond.end_crit_edge
  %cond = phi ptr [ %19, %cond.true ], [ null, %uverbs_attr_get_uobject.exit.cond.end_crit_edge ]
  %20 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cond, align 8
  %add.ptr6 = getelementptr i32, ptr %retval.0.i, i32 1
  %22 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %23)
  %tobool7.not = icmp ult i32 %23, 65536
  br i1 %tobool7.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i, align 4
  %shr.i.i = lshr i32 %25, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %26 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %trunc.i.i, label %if.end9.i [
    i16 256, label %if.end.if.then.i81_crit_edge
    i16 1890, label %if.end.if.then.i81_crit_edge109
    i16 1874, label %if.end.if.then.i81_crit_edge110
  ]

if.end.if.then.i81_crit_edge110:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i81

if.end.if.then.i81_crit_edge109:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i81

if.end.if.then.i81_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i81

if.then.i81:                                      ; preds = %if.end.if.then.i81_crit_edge, %if.end.if.then.i81_crit_edge109, %if.end.if.then.i81_crit_edge110
  %devx_uid.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %27 = ptrtoint ptr %devx_uid.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %devx_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i, label %if.end.i83, label %if.then.i81.if.end10_crit_edge

if.then.i81.if.end10_crit_edge:                   ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.i83:                                       ; preds = %if.then.i81
  %devx_whitelist_uid.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %21, i32 0, i32 33
  %29 = ptrtoint ptr %devx_whitelist_uid.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %devx_whitelist_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool4.not.i = icmp eq i16 %30, 0
  br i1 %tobool4.not.i, label %if.end.i83.cleanup_crit_edge, label %if.end.i83.if.end10_crit_edge

if.end.i83.if.end10_crit_edge:                    ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.i83.cleanup_crit_edge:                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end
  %devx_uid10.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %31 = ptrtoint ptr %devx_uid10.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %devx_uid10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool11.not.i = icmp eq i16 %32, 0
  br i1 %tobool11.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end9.i.if.end10_crit_edge

if.end9.i.if.end10_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end9.i.if.end10_crit_edge, %if.end.i83.if.end10_crit_edge, %if.then.i81.if.end10_crit_edge
  %retval.1.i.ph.in = phi i16 [ %32, %if.end9.i.if.end10_crit_edge ], [ %30, %if.end.i83.if.end10_crit_edge ], [ %28, %if.then.i81.if.end10_crit_edge ]
  %retval.1.i.ph = zext i16 %retval.1.i.ph.in to i32
  %33 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %trunc.i.i, label %if.end10.cleanup_crit_edge [
    i16 2561, label %if.end10.if.end13_crit_edge
    i16 1027, label %if.end10.if.end13_crit_edge111
    i16 2317, label %if.end10.if.end13_crit_edge112
    i16 2309, label %if.end10.if.end13_crit_edge113
    i16 2313, label %if.end10.if.end13_crit_edge114
    i16 2327, label %if.end10.if.end13_crit_edge115
    i16 2305, label %if.end10.if.end13_crit_edge116
    i16 2323, label %if.end10.if.end13_crit_edge117
    i16 2364, label %if.end10.if.end13_crit_edge118
    i16 1925, label %if.end10.if.end13_crit_edge119
    i16 2087, label %if.end10.if.end13_crit_edge120
    i16 2089, label %if.end10.if.end13_crit_edge121
    i16 1282, label %if.end10.if.end13_crit_edge122
    i16 1283, label %if.end10.if.end13_crit_edge123
    i16 1294, label %if.end10.if.end13_crit_edge124
    i16 1284, label %if.end10.if.end13_crit_edge125
    i16 1285, label %if.end10.if.end13_crit_edge126
    i16 1286, label %if.end10.if.end13_crit_edge127
    i16 1287, label %if.end10.if.end13_crit_edge128
    i16 1290, label %if.end10.if.end13_crit_edge129
    i16 1800, label %if.end10.if.end13_crit_edge130
    i16 1795, label %if.end10.if.end13_crit_edge131
    i16 1812, label %if.end10.if.end13_crit_edge132
    i16 1818, label %if.end10.if.end13_crit_edge133
    i16 1830, label %if.end10.if.end13_crit_edge134
    i16 1833, label %if.end10.if.end13_crit_edge135
    i16 1834, label %if.end10.if.end13_crit_edge136
    i16 2358, label %devx_is_obj_modify_cmd.exit
  ]

if.end10.if.end13_crit_edge136:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge135:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge134:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge133:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge132:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge131:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge130:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge129:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge128:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge127:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge126:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge125:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge124:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge123:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge122:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge121:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge120:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge119:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge118:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge117:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge116:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge115:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge114:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge113:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge112:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge111:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devx_is_obj_modify_cmd.exit:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i = icmp eq i32 %23, 1
  br i1 %cmp.i, label %devx_is_obj_modify_cmd.exit.if.end13_crit_edge, label %devx_is_obj_modify_cmd.exit.cleanup_crit_edge

devx_is_obj_modify_cmd.exit.cleanup_crit_edge:    ; preds = %devx_is_obj_modify_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devx_is_obj_modify_cmd.exit.if.end13_crit_edge:   ; preds = %devx_is_obj_modify_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %devx_is_obj_modify_cmd.exit.if.end13_crit_edge, %if.end10.if.end13_crit_edge, %if.end10.if.end13_crit_edge111, %if.end10.if.end13_crit_edge112, %if.end10.if.end13_crit_edge113, %if.end10.if.end13_crit_edge114, %if.end10.if.end13_crit_edge115, %if.end10.if.end13_crit_edge116, %if.end10.if.end13_crit_edge117, %if.end10.if.end13_crit_edge118, %if.end10.if.end13_crit_edge119, %if.end10.if.end13_crit_edge120, %if.end10.if.end13_crit_edge121, %if.end10.if.end13_crit_edge122, %if.end10.if.end13_crit_edge123, %if.end10.if.end13_crit_edge124, %if.end10.if.end13_crit_edge125, %if.end10.if.end13_crit_edge126, %if.end10.if.end13_crit_edge127, %if.end10.if.end13_crit_edge128, %if.end10.if.end13_crit_edge129, %if.end10.if.end13_crit_edge130, %if.end10.if.end13_crit_edge131, %if.end10.if.end13_crit_edge132, %if.end10.if.end13_crit_edge133, %if.end10.if.end13_crit_edge134, %if.end10.if.end13_crit_edge135, %if.end10.if.end13_crit_edge136
  %call14 = tail call fastcc zeroext i1 @devx_is_valid_obj_id(ptr noundef %attrs, ptr noundef %retval.0.i80, ptr noundef %retval.0.i)
  br i1 %call14, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %call.i = tail call noalias ptr @_uverbs_alloc(ptr noundef %attrs, i32 noundef %retval.0.i73, i32 noundef 3520) #11
  %cmp.i86 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then19, label %do.body

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %call.i to i32
  br label %cleanup

do.body:                                          ; preds = %if.end16
  %35 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retval.0.i, align 4
  %and24 = and i32 %36, -65536
  %or = or i32 %and24, %retval.1.i.ph
  store i32 %or, ptr %retval.0.i, align 4
  %shr.i87 = lshr i32 %36, 16
  %trunc.i88 = trunc i32 %shr.i87 to i16
  %37 = zext i16 %trunc.i88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %trunc.i88, label %do.body.devx_set_umem_valid.exit_crit_edge [
    i16 512, label %do.body.i
    i16 1024, label %sw.bb9.i
    i16 1280, label %sw.bb37.i
    i16 2312, label %sw.bb65.i
    i16 2308, label %sw.bb94.i
    i16 1027, label %do.body125.i
    i16 2316, label %sw.bb138.i
    i16 1815, label %sw.bb168.i
    i16 1797, label %sw.bb198.i
  ]

do.body.devx_set_umem_valid.exit_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %devx_set_umem_valid.exit

do.body.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3.i89 = getelementptr i32, ptr %retval.0.i, i32 3
  br label %cleanup.sink.split.i

sw.bb9.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr15.i = getelementptr i32, ptr %retval.0.i, i32 23
  %38 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr15.i, align 4
  %or19.i = or i32 %39, -2147483648
  store i32 %or19.i, ptr %add.ptr15.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %retval.0.i, i32 16
  br label %cleanup.sink.split.i

sw.bb37.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr44.i = getelementptr i8, ptr %retval.0.i, i32 232
  %40 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr44.i, align 4
  %or48.i = or i32 %41, 268435456
  store i32 %or48.i, ptr %add.ptr44.i, align 4
  %add.ptr57.i = getelementptr i32, ptr %retval.0.i, i32 67
  br label %cleanup.sink.split.i

sw.bb65.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr73.i = getelementptr i8, ptr %retval.0.i, i32 116
  br label %cleanup.sink.split.i

sw.bb94.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr103.i = getelementptr i8, ptr %retval.0.i, i32 116
  br label %cleanup.sink.split.i

do.body125.i:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr130.i = getelementptr i32, ptr %retval.0.i, i32 23
  br label %cleanup.sink.split.i

sw.bb138.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr147.i = getelementptr i8, ptr %retval.0.i, i32 116
  br label %cleanup.sink.split.i

sw.bb168.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr177.i = getelementptr i8, ptr %retval.0.i, i32 180
  br label %cleanup.sink.split.i

sw.bb198.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr204.i = getelementptr i32, ptr %retval.0.i, i32 23
  %42 = ptrtoint ptr %add.ptr204.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr204.i, align 4
  %or208.i = or i32 %43, -2147483648
  store i32 %or208.i, ptr %add.ptr204.i, align 4
  %add.ptr218.i = getelementptr i8, ptr %retval.0.i, i32 24
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb198.i, %sw.bb168.i, %sw.bb138.i, %do.body125.i, %sw.bb94.i, %sw.bb65.i, %sw.bb37.i, %sw.bb9.i, %do.body.i
  %add.ptr3.sink259.i = phi ptr [ %add.ptr3.i89, %do.body.i ], [ %add.ptr23.i, %sw.bb9.i ], [ %add.ptr57.i, %sw.bb37.i ], [ %add.ptr73.i, %sw.bb65.i ], [ %add.ptr103.i, %sw.bb94.i ], [ %add.ptr130.i, %do.body125.i ], [ %add.ptr147.i, %sw.bb138.i ], [ %add.ptr177.i, %sw.bb168.i ], [ %add.ptr218.i, %sw.bb198.i ]
  %.sink258.i = phi i32 [ 1073741824, %do.body.i ], [ 33554432, %sw.bb9.i ], [ -2147483648, %sw.bb37.i ], [ -1073741824, %sw.bb65.i ], [ -1073741824, %sw.bb94.i ], [ -2147483648, %do.body125.i ], [ -1073741824, %sw.bb138.i ], [ -1073741824, %sw.bb168.i ], [ 16777216, %sw.bb198.i ]
  %44 = ptrtoint ptr %add.ptr3.sink259.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr3.sink259.i, align 4
  %or.i = or i32 %45, %.sink258.i
  store i32 %or.i, ptr %add.ptr3.sink259.i, align 4
  br label %devx_set_umem_valid.exit

devx_set_umem_valid.exit:                         ; preds = %cleanup.sink.split.i, %do.body.devx_set_umem_valid.exit_crit_edge
  %mdev29 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %21, i32 0, i32 1
  %46 = ptrtoint ptr %mdev29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mdev29, align 8
  %48 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %50 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not.i.i91 = icmp eq i32 %50, 0
  br i1 %tobool.i.not.i.i91, label %devx_set_umem_valid.exit.if.then.i96_crit_edge, label %if.end.i.i92

devx_set_umem_valid.exit.if.then.i96_crit_edge:   ; preds = %devx_set_umem_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i96

if.end.i.i92:                                     ; preds = %devx_set_umem_valid.exit
  %arrayidx.i.i93 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i94 = icmp ugt ptr %arrayidx.i.i93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i94, label %if.end.i.i92.if.then.i96_crit_edge, label %if.end.i99

if.end.i.i92.if.then.i96_crit_edge:               ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i96

if.then.i96:                                      ; preds = %if.end.i.i92.if.then.i96_crit_edge, %devx_set_umem_valid.exit.if.then.i96_crit_edge
  %retval.0.i7.i95 = phi ptr [ %arrayidx.i.i93, %if.end.i.i92.if.then.i96_crit_edge ], [ inttoptr (i32 -2 to ptr), %devx_set_umem_valid.exit.if.then.i96_crit_edge ]
  %51 = ptrtoint ptr %retval.0.i7.i95 to i32
  br label %uverbs_attr_get_len.exit101

if.end.i99:                                       ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #13
  %len.i97 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %52 = ptrtoint ptr %len.i97 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %len.i97, align 8
  %conv.i98 = zext i16 %53 to i32
  br label %uverbs_attr_get_len.exit101

uverbs_attr_get_len.exit101:                      ; preds = %if.end.i99, %if.then.i96
  %retval.0.i100 = phi i32 [ %51, %if.then.i96 ], [ %conv.i98, %if.end.i99 ]
  %call31 = tail call i32 @mlx5_cmd_exec(ptr noundef %47, ptr noundef %retval.0.i, i32 noundef %retval.0.i100, ptr noundef %call.i, i32 noundef %retval.0.i73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %uverbs_attr_get_len.exit101.cleanup_crit_edge

uverbs_attr_get_len.exit101.cleanup_crit_edge:    ; preds = %uverbs_attr_get_len.exit101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %uverbs_attr_get_len.exit101
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4098, ptr noundef %call.i, i32 noundef %retval.0.i73) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %uverbs_attr_get_len.exit101.cleanup_crit_edge, %if.then19, %if.end13.cleanup_crit_edge, %devx_is_obj_modify_cmd.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end.i83.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %34, %if.then19 ], [ %call35, %if.end34 ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %devx_is_obj_modify_cmd.exit.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %call31, %uverbs_attr_get_len.exit101.cleanup_crit_edge ], [ -95, %if.end.i83.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @devx_is_valid_obj_id(ptr noundef readonly %attrs, ptr nocapture noundef readonly %uobj, ptr noundef readonly %in) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %attrs, null
  br i1 %tobool.not.i, label %entry.mlx5_udata_to_mdev.exit_crit_edge, label %cond.true.i

entry.mlx5_udata_to_mdev.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_udata_to_mdev.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %context1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %0 = ptrtoint ptr %context1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1.i, align 4
  br label %mlx5_udata_to_mdev.exit

mlx5_udata_to_mdev.exit:                          ; preds = %cond.true.i, %entry.mlx5_udata_to_mdev.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.mlx5_udata_to_mdev.exit_crit_edge ]
  %2 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond.i, align 8
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in, align 4
  %shr.i = lshr i32 %5, 16
  %trunc.i = trunc i32 %shr.i to i16
  %6 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %trunc.i, label %mlx5_udata_to_mdev.exit.cleanup78_crit_edge [
    i16 2561, label %mlx5_udata_to_mdev.exit.sw.bb.i_crit_edge
    i16 2562, label %mlx5_udata_to_mdev.exit.sw.bb.i_crit_edge129
    i16 513, label %sw.bb8.i
    i16 1026, label %sw.bb13.i
    i16 1027, label %sw.bb18.i
    i16 2311, label %sw.bb23.i
    i16 2309, label %sw.bb28.i
    i16 2315, label %sw.bb33.i
    i16 2313, label %sw.bb38.i
    i16 2319, label %sw.bb43.i
    i16 2317, label %sw.bb48.i
    i16 2329, label %sw.bb53.i
    i16 2327, label %sw.bb58.i
    i16 2307, label %sw.bb63.i
    i16 2305, label %sw.bb68.i
    i16 2325, label %sw.bb73.i
    i16 2323, label %sw.bb78.i
    i16 2354, label %sw.bb83.i
    i16 2364, label %sw.bb88.i
    i16 2357, label %sw.bb93.i
    i16 2359, label %sw.bb98.i
    i16 2358, label %sw.bb103.i
    i16 1907, label %sw.bb108.i
    i16 2363, label %sw.bb113.i
    i16 2370, label %sw.bb118.i
    i16 1924, label %sw.bb123.i
    i16 1925, label %sw.bb128.i
    i16 2087, label %sw.bb133.i
    i16 2090, label %sw.bb138.i
    i16 2089, label %sw.bb143.i
    i16 1291, label %sw.bb148.i
    i16 1282, label %sw.bb153.i
    i16 1294, label %sw.bb158.i
    i16 1283, label %sw.bb163.i
    i16 1284, label %sw.bb168.i
    i16 1285, label %sw.bb173.i
    i16 1286, label %sw.bb178.i
    i16 1287, label %sw.bb183.i
    i16 1290, label %sw.bb188.i
    i16 1811, label %sw.bb193.i
    i16 1817, label %mlx5_udata_to_mdev.exit.sw.bb198.i_crit_edge
    i16 1829, label %mlx5_udata_to_mdev.exit.sw.bb198.i_crit_edge130
    i16 1831, label %mlx5_udata_to_mdev.exit.sw.bb198.i_crit_edge131
    i16 1799, label %sw.bb203.i
    i16 1800, label %sw.bb208.i
    i16 1794, label %sw.bb213.i
    i16 1795, label %sw.bb218.i
    i16 1812, label %sw.bb223.i
    i16 1818, label %mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge
    i16 1830, label %mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge132
    i16 1833, label %mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge133
    i16 1834, label %mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge134
    i16 2367, label %sw.bb233.i
  ]

mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge134:  ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb228.i

mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge133:  ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb228.i

mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge132:  ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb228.i

mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge:     ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb228.i

mlx5_udata_to_mdev.exit.sw.bb198.i_crit_edge131:  ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb198.i

mlx5_udata_to_mdev.exit.sw.bb198.i_crit_edge130:  ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb198.i

mlx5_udata_to_mdev.exit.sw.bb198.i_crit_edge:     ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb198.i

mlx5_udata_to_mdev.exit.sw.bb.i_crit_edge129:     ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

mlx5_udata_to_mdev.exit.sw.bb.i_crit_edge:        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

mlx5_udata_to_mdev.exit.cleanup78_crit_edge:      ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

sw.bb.i:                                          ; preds = %mlx5_udata_to_mdev.exit.sw.bb.i_crit_edge, %mlx5_udata_to_mdev.exit.sw.bb.i_crit_edge129
  %add.ptr2.i = getelementptr i32, ptr %in, i32 1
  %7 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr2.i, align 4
  %shl.i = shl i32 %8, 16
  %or.i = or i32 %shl.i, 2560
  %add.ptr5.i = getelementptr i32, ptr %in, i32 2
  %9 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr5.i, align 4
  %conv.i.i = zext i32 %or.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %10 to i64
  br label %if.end

sw.bb8.i:                                         ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr9.i = getelementptr i32, ptr %in, i32 2
  %11 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr9.i, align 4
  %and11.i = and i32 %12, 16777215
  %conv1.i286.i = zext i32 %and11.i to i64
  br label %if.end

sw.bb13.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr14.i = getelementptr i32, ptr %in, i32 2
  %13 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr14.i, align 4
  %and16.i = and i32 %14, 16777215
  %conv1.i288.i = zext i32 %and16.i to i64
  br label %if.end

sw.bb18.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr19.i = getelementptr i32, ptr %in, i32 2
  %15 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr19.i, align 4
  %and21.i = and i32 %16, 16777215
  %conv1.i290.i = zext i32 %and21.i to i64
  br label %if.end

sw.bb23.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr24.i = getelementptr i32, ptr %in, i32 2
  %17 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr24.i, align 4
  %and26.i = and i32 %18, 16777215
  %conv1.i292.i = zext i32 %and26.i to i64
  br label %if.end

sw.bb28.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr29.i = getelementptr i32, ptr %in, i32 2
  %19 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr29.i, align 4
  %and31.i = and i32 %20, 16777215
  %conv1.i294.i = zext i32 %and31.i to i64
  br label %if.end

sw.bb33.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr34.i = getelementptr i32, ptr %in, i32 2
  %21 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr34.i, align 4
  %and36.i = and i32 %22, 16777215
  %conv1.i296.i = zext i32 %and36.i to i64
  br label %if.end

sw.bb38.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr39.i = getelementptr i32, ptr %in, i32 2
  %23 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr39.i, align 4
  %and41.i = and i32 %24, 16777215
  %conv1.i298.i = zext i32 %and41.i to i64
  br label %if.end

sw.bb43.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr44.i = getelementptr i32, ptr %in, i32 2
  %25 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr44.i, align 4
  %and46.i = and i32 %26, 16777215
  %conv1.i300.i = zext i32 %and46.i to i64
  br label %if.end

sw.bb48.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr49.i = getelementptr i32, ptr %in, i32 2
  %27 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr49.i, align 4
  %and51.i = and i32 %28, 16777215
  %conv1.i302.i = zext i32 %and51.i to i64
  br label %if.end

sw.bb53.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr54.i = getelementptr i32, ptr %in, i32 2
  %29 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr54.i, align 4
  %and56.i = and i32 %30, 16777215
  %conv1.i304.i = zext i32 %and56.i to i64
  br label %if.end

sw.bb58.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr59.i = getelementptr i32, ptr %in, i32 2
  %31 = ptrtoint ptr %add.ptr59.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr59.i, align 4
  %and61.i = and i32 %32, 16777215
  %conv1.i306.i = zext i32 %and61.i to i64
  br label %if.end

sw.bb63.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr64.i = getelementptr i32, ptr %in, i32 2
  %33 = ptrtoint ptr %add.ptr64.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr64.i, align 4
  %and66.i = and i32 %34, 16777215
  %conv1.i308.i = zext i32 %and66.i to i64
  br label %if.end

sw.bb68.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr69.i = getelementptr i32, ptr %in, i32 2
  %35 = ptrtoint ptr %add.ptr69.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr69.i, align 4
  %and71.i = and i32 %36, 16777215
  %conv1.i310.i = zext i32 %and71.i to i64
  br label %if.end

sw.bb73.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr74.i = getelementptr i32, ptr %in, i32 2
  %37 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr74.i, align 4
  %and76.i = and i32 %38, 16777215
  %conv1.i312.i = zext i32 %and76.i to i64
  br label %if.end

sw.bb78.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr79.i = getelementptr i32, ptr %in, i32 2
  %39 = ptrtoint ptr %add.ptr79.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr79.i, align 4
  %and81.i = and i32 %40, 16777215
  %conv1.i314.i = zext i32 %and81.i to i64
  br label %if.end

sw.bb83.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr84.i = getelementptr i32, ptr %in, i32 5
  %41 = ptrtoint ptr %add.ptr84.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr84.i, align 4
  %and86.i = and i32 %42, 16777215
  %conv1.i316.i = zext i32 %and86.i to i64
  br label %if.end

sw.bb88.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr89.i = getelementptr i32, ptr %in, i32 5
  %43 = ptrtoint ptr %add.ptr89.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr89.i, align 4
  %and91.i = and i32 %44, 16777215
  %conv1.i318.i = zext i32 %and91.i to i64
  br label %if.end

sw.bb93.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr94.i = getelementptr i32, ptr %in, i32 6
  %45 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr94.i, align 4
  %conv1.i320.i = zext i32 %46 to i64
  br label %if.end

sw.bb98.i:                                        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr99.i = getelementptr i32, ptr %in, i32 8
  %47 = ptrtoint ptr %add.ptr99.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr99.i, align 4
  %conv1.i322.i = zext i32 %48 to i64
  br label %if.end

sw.bb103.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr104.i = getelementptr i32, ptr %in, i32 8
  %49 = ptrtoint ptr %add.ptr104.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr104.i, align 4
  %conv1.i324.i = zext i32 %50 to i64
  br label %if.end

sw.bb108.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr109.i = getelementptr i32, ptr %in, i32 7
  %51 = ptrtoint ptr %add.ptr109.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr109.i, align 4
  %and111.i = and i32 %52, 255
  %conv1.i326.i = zext i32 %and111.i to i64
  br label %if.end

sw.bb113.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr114.i = getelementptr i32, ptr %in, i32 7
  %53 = ptrtoint ptr %add.ptr114.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr114.i, align 4
  %conv1.i328.i = zext i32 %54 to i64
  br label %if.end

sw.bb118.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr119.i = getelementptr i32, ptr %in, i32 2
  %55 = ptrtoint ptr %add.ptr119.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr119.i, align 4
  %conv1.i330.i = zext i32 %56 to i64
  br label %if.end

sw.bb123.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr124.i = getelementptr i32, ptr %in, i32 3
  %57 = ptrtoint ptr %add.ptr124.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr124.i, align 4
  %conv1.i332.i = zext i32 %58 to i64
  br label %if.end

sw.bb128.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr129.i = getelementptr i32, ptr %in, i32 3
  %59 = ptrtoint ptr %add.ptr129.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr129.i, align 4
  %conv1.i334.i = zext i32 %60 to i64
  br label %if.end

sw.bb133.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr134.i = getelementptr i32, ptr %in, i32 3
  %61 = ptrtoint ptr %add.ptr134.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr134.i, align 4
  %and136.i = and i32 %62, 65535
  %conv1.i336.i = zext i32 %and136.i to i64
  br label %if.end

sw.bb138.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr139.i = getelementptr i32, ptr %in, i32 5
  %63 = ptrtoint ptr %add.ptr139.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr139.i, align 4
  %and141.i = and i32 %64, 16777215
  %conv1.i338.i = zext i32 %and141.i to i64
  br label %if.end

sw.bb143.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr144.i = getelementptr i32, ptr %in, i32 5
  %65 = ptrtoint ptr %add.ptr144.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr144.i, align 4
  %and146.i = and i32 %66, 16777215
  %conv1.i340.i = zext i32 %and146.i to i64
  br label %if.end

sw.bb148.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr149.i = getelementptr i32, ptr %in, i32 2
  %67 = ptrtoint ptr %add.ptr149.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr149.i, align 4
  %and151.i = and i32 %68, 16777215
  %conv1.i342.i = zext i32 %and151.i to i64
  br label %if.end

sw.bb153.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr154.i = getelementptr i32, ptr %in, i32 2
  %69 = ptrtoint ptr %add.ptr154.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr154.i, align 4
  %and156.i = and i32 %70, 16777215
  %conv1.i344.i = zext i32 %and156.i to i64
  br label %if.end

sw.bb158.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr159.i = getelementptr i32, ptr %in, i32 2
  %71 = ptrtoint ptr %add.ptr159.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr159.i, align 4
  %and161.i = and i32 %72, 16777215
  %conv1.i346.i = zext i32 %and161.i to i64
  br label %if.end

sw.bb163.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr164.i = getelementptr i32, ptr %in, i32 2
  %73 = ptrtoint ptr %add.ptr164.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr164.i, align 4
  %and166.i = and i32 %74, 16777215
  %conv1.i348.i = zext i32 %and166.i to i64
  br label %if.end

sw.bb168.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr169.i = getelementptr i32, ptr %in, i32 2
  %75 = ptrtoint ptr %add.ptr169.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr169.i, align 4
  %and171.i = and i32 %76, 16777215
  %conv1.i350.i = zext i32 %and171.i to i64
  br label %if.end

sw.bb173.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr174.i = getelementptr i32, ptr %in, i32 2
  %77 = ptrtoint ptr %add.ptr174.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr174.i, align 4
  %and176.i = and i32 %78, 16777215
  %conv1.i352.i = zext i32 %and176.i to i64
  br label %if.end

sw.bb178.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr179.i = getelementptr i32, ptr %in, i32 2
  %79 = ptrtoint ptr %add.ptr179.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr179.i, align 4
  %and181.i = and i32 %80, 16777215
  %conv1.i354.i = zext i32 %and181.i to i64
  br label %if.end

sw.bb183.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr184.i = getelementptr i32, ptr %in, i32 2
  %81 = ptrtoint ptr %add.ptr184.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr184.i, align 4
  %and186.i = and i32 %82, 16777215
  %conv1.i356.i = zext i32 %and186.i to i64
  br label %if.end

sw.bb188.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr189.i = getelementptr i32, ptr %in, i32 2
  %83 = ptrtoint ptr %add.ptr189.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr189.i, align 4
  %and191.i = and i32 %84, 16777215
  %conv1.i358.i = zext i32 %and191.i to i64
  br label %if.end

sw.bb193.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr194.i = getelementptr i32, ptr %in, i32 2
  %85 = ptrtoint ptr %add.ptr194.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr194.i, align 4
  %and196.i = and i32 %86, 16777215
  %conv1.i360.i = zext i32 %and196.i to i64
  br label %if.end

sw.bb198.i:                                       ; preds = %mlx5_udata_to_mdev.exit.sw.bb198.i_crit_edge, %mlx5_udata_to_mdev.exit.sw.bb198.i_crit_edge130, %mlx5_udata_to_mdev.exit.sw.bb198.i_crit_edge131
  %add.ptr199.i = getelementptr i32, ptr %in, i32 2
  %87 = ptrtoint ptr %add.ptr199.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr199.i, align 4
  %and201.i = and i32 %88, 16777215
  %conv1.i362.i = zext i32 %and201.i to i64
  br label %if.end

sw.bb203.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr204.i = getelementptr i32, ptr %in, i32 2
  %89 = ptrtoint ptr %add.ptr204.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr204.i, align 4
  %and206.i = and i32 %90, 16777215
  %conv1.i364.i = zext i32 %and206.i to i64
  br label %if.end

sw.bb208.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr209.i = getelementptr i32, ptr %in, i32 2
  %91 = ptrtoint ptr %add.ptr209.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr209.i, align 4
  %and211.i = and i32 %92, 16777215
  %conv1.i366.i = zext i32 %and211.i to i64
  br label %if.end

sw.bb213.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr214.i = getelementptr i32, ptr %in, i32 2
  %93 = ptrtoint ptr %add.ptr214.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr214.i, align 4
  %and216.i = and i32 %94, 16777215
  %conv1.i368.i = zext i32 %and216.i to i64
  br label %if.end

sw.bb218.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr219.i = getelementptr i32, ptr %in, i32 2
  %95 = ptrtoint ptr %add.ptr219.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr219.i, align 4
  %and221.i = and i32 %96, 16777215
  %conv1.i370.i = zext i32 %and221.i to i64
  br label %if.end

sw.bb223.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr224.i = getelementptr i32, ptr %in, i32 2
  %97 = ptrtoint ptr %add.ptr224.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr224.i, align 4
  %and226.i = and i32 %98, 16777215
  %conv1.i372.i = zext i32 %and226.i to i64
  br label %if.end

sw.bb228.i:                                       ; preds = %mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge, %mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge132, %mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge133, %mlx5_udata_to_mdev.exit.sw.bb228.i_crit_edge134
  %add.ptr229.i = getelementptr i32, ptr %in, i32 2
  %99 = ptrtoint ptr %add.ptr229.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr229.i, align 4
  %and231.i = and i32 %100, 16777215
  %conv1.i374.i = zext i32 %and231.i to i64
  br label %if.end

sw.bb233.i:                                       ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr234.i = getelementptr i32, ptr %in, i32 2
  %101 = ptrtoint ptr %add.ptr234.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr234.i, align 4
  %conv1.i376.i = zext i32 %102 to i64
  br label %if.end

if.end:                                           ; preds = %sw.bb233.i, %sw.bb228.i, %sw.bb223.i, %sw.bb218.i, %sw.bb213.i, %sw.bb208.i, %sw.bb203.i, %sw.bb198.i, %sw.bb193.i, %sw.bb188.i, %sw.bb183.i, %sw.bb178.i, %sw.bb173.i, %sw.bb168.i, %sw.bb163.i, %sw.bb158.i, %sw.bb153.i, %sw.bb148.i, %sw.bb143.i, %sw.bb138.i, %sw.bb133.i, %sw.bb128.i, %sw.bb123.i, %sw.bb118.i, %sw.bb113.i, %sw.bb108.i, %sw.bb103.i, %sw.bb98.i, %sw.bb93.i, %sw.bb88.i, %sw.bb83.i, %sw.bb78.i, %sw.bb73.i, %sw.bb68.i, %sw.bb63.i, %sw.bb58.i, %sw.bb53.i, %sw.bb48.i, %sw.bb43.i, %sw.bb38.i, %sw.bb33.i, %sw.bb28.i, %sw.bb23.i, %sw.bb18.i, %sw.bb13.i, %sw.bb8.i, %sw.bb.i
  %.sink = phi i64 [ 10157597655040, %sw.bb233.i ], [ 7795365642240, %sw.bb228.i ], [ 7765300871168, %sw.bb223.i ], [ 9929964388352, %sw.bb218.i ], [ 7696581394432, %sw.bb213.i ], [ 7718056230912, %sw.bb208.i ], [ 7718056230912, %sw.bb203.i ], [ 7795365642240, %sw.bb198.i ], [ 7765300871168, %sw.bb193.i ], [ 5497558138880, %sw.bb188.i ], [ 5497558138880, %sw.bb183.i ], [ 5497558138880, %sw.bb178.i ], [ 5497558138880, %sw.bb173.i ], [ 5497558138880, %sw.bb168.i ], [ 5497558138880, %sw.bb163.i ], [ 5497558138880, %sw.bb158.i ], [ 5497558138880, %sw.bb153.i ], [ 5497558138880, %sw.bb148.i ], [ 8972186681344, %sw.bb143.i ], [ 8972186681344, %sw.bb138.i ], [ 8963596746752, %sw.bb133.i ], [ 8254927142912, %sw.bb128.i ], [ 8254927142912, %sw.bb123.i ], [ 10170482556928, %sw.bb118.i ], [ 10140417785856, %sw.bb113.i ], [ 8181912698880, %sw.bb108.i ], [ 10127532883968, %sw.bb103.i ], [ 10127532883968, %sw.bb98.i ], [ 10114647982080, %sw.bb93.i ], [ 10101763080192, %sw.bb88.i ], [ 10101763080192, %sw.bb83.i ], [ 9972914061312, %sw.bb78.i ], [ 9972914061312, %sw.bb73.i ], [ 9895604649984, %sw.bb68.i ], [ 9895604649984, %sw.bb63.i ], [ 9990093930496, %sw.bb58.i ], [ 9990093930496, %sw.bb53.i ], [ 9947144257536, %sw.bb48.i ], [ 9947144257536, %sw.bb43.i ], [ 9929964388352, %sw.bb38.i ], [ 9929964388352, %sw.bb33.i ], [ 9912784519168, %sw.bb28.i ], [ 9912784519168, %sw.bb23.i ], [ 4398046511104, %sw.bb18.i ], [ 4398046511104, %sw.bb13.i ], [ 2199023255552, %sw.bb8.i ], [ %conv1.i.i, %sw.bb.i ]
  %conv1.i376.i.sink = phi i64 [ %conv1.i376.i, %sw.bb233.i ], [ %conv1.i374.i, %sw.bb228.i ], [ %conv1.i372.i, %sw.bb223.i ], [ %conv1.i370.i, %sw.bb218.i ], [ %conv1.i368.i, %sw.bb213.i ], [ %conv1.i366.i, %sw.bb208.i ], [ %conv1.i364.i, %sw.bb203.i ], [ %conv1.i362.i, %sw.bb198.i ], [ %conv1.i360.i, %sw.bb193.i ], [ %conv1.i358.i, %sw.bb188.i ], [ %conv1.i356.i, %sw.bb183.i ], [ %conv1.i354.i, %sw.bb178.i ], [ %conv1.i352.i, %sw.bb173.i ], [ %conv1.i350.i, %sw.bb168.i ], [ %conv1.i348.i, %sw.bb163.i ], [ %conv1.i346.i, %sw.bb158.i ], [ %conv1.i344.i, %sw.bb153.i ], [ %conv1.i342.i, %sw.bb148.i ], [ %conv1.i340.i, %sw.bb143.i ], [ %conv1.i338.i, %sw.bb138.i ], [ %conv1.i336.i, %sw.bb133.i ], [ %conv1.i334.i, %sw.bb128.i ], [ %conv1.i332.i, %sw.bb123.i ], [ %conv1.i330.i, %sw.bb118.i ], [ %conv1.i328.i, %sw.bb113.i ], [ %conv1.i326.i, %sw.bb108.i ], [ %conv1.i324.i, %sw.bb103.i ], [ %conv1.i322.i, %sw.bb98.i ], [ %conv1.i320.i, %sw.bb93.i ], [ %conv1.i318.i, %sw.bb88.i ], [ %conv1.i316.i, %sw.bb83.i ], [ %conv1.i314.i, %sw.bb78.i ], [ %conv1.i312.i, %sw.bb73.i ], [ %conv1.i310.i, %sw.bb68.i ], [ %conv1.i308.i, %sw.bb63.i ], [ %conv1.i306.i, %sw.bb58.i ], [ %conv1.i304.i, %sw.bb53.i ], [ %conv1.i302.i, %sw.bb48.i ], [ %conv1.i300.i, %sw.bb43.i ], [ %conv1.i298.i, %sw.bb38.i ], [ %conv1.i296.i, %sw.bb33.i ], [ %conv1.i294.i, %sw.bb28.i ], [ %conv1.i292.i, %sw.bb23.i ], [ %conv1.i290.i, %sw.bb18.i ], [ %conv1.i288.i, %sw.bb13.i ], [ %conv1.i286.i, %sw.bb8.i ], [ %shl.i.i, %sw.bb.i ]
  %or.i377.i = or i64 %conv1.i376.i.sink, %.sink
  %uapi_object.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %103 = ptrtoint ptr %uapi_object.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %uapi_object.i, align 4
  %id.i = getelementptr inbounds %struct.uverbs_api_object, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %id.i, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %106, label %if.end.cleanup78_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb5
    i32 4, label %sw.bb19
    i32 12, label %sw.bb59
    i32 11, label %sw.bb66
    i32 4097, label %sw.bb72
  ]

if.end.cleanup78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %108 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %object, align 8
  %mcq = getelementptr inbounds %struct.mlx5_ib_cq, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mcq, align 8
  %conv1.i = zext i32 %111 to i64
  %or.i106 = or i64 %conv1.i, 4398046511104
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i106, i64 %or.i377.i)
  %cmp = icmp eq i64 %or.i106, %or.i377.i
  br label %cleanup78

sw.bb5:                                           ; preds = %if.end
  %object6 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %112 = ptrtoint ptr %object6 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %object6, align 8
  %msrq = getelementptr inbounds %struct.mlx5_ib_srq, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %msrq to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %msrq, align 4
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %115, label %sw.default [
    i32 4, label %sw.bb5.sw.epilog_crit_edge
    i32 5, label %sw.bb9
  ]

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb9:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 1
  %117 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mdev, align 8
  %issi = getelementptr inbounds %struct.mlx5_core_dev, ptr %118, i32 0, i32 19
  %119 = ptrtoint ptr %issi to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %issi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool10.not = icmp eq i32 %120, 0
  %. = select i1 %tobool10.not, i32 1792, i32 2316
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb5.sw.epilog_crit_edge
  %opcode.0 = phi i32 [ 1815, %sw.bb9 ], [ 1797, %sw.bb5.sw.epilog_crit_edge ], [ %., %sw.default ]
  %srqn = getelementptr inbounds %struct.mlx5_ib_srq, ptr %113, i32 0, i32 1, i32 1
  %121 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %srqn, align 4
  %conv.i = zext i32 %opcode.0 to i64
  %shl.i107 = shl nuw nsw i64 %conv.i, 32
  %conv1.i108 = zext i32 %122 to i64
  %or.i109 = or i64 %shl.i107, %conv1.i108
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i109, i64 %or.i377.i)
  %cmp17 = icmp eq i64 %or.i109, %or.i377.i
  br label %cleanup78

sw.bb19:                                          ; preds = %if.end
  %object20 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %123 = ptrtoint ptr %object20 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %object20, align 8
  %type = getelementptr inbounds %struct.mlx5_ib_qp, ptr %124, i32 0, i32 22
  %125 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %126)
  %cmp22 = icmp eq i32 %126, 8
  br i1 %cmp22, label %sw.bb19.if.then25_crit_edge, label %lor.lhs.false

sw.bb19.if.then25_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false:                                    ; preds = %sw.bb19
  %flags = getelementptr inbounds %struct.mlx5_ib_qp, ptr %124, i32 0, i32 9
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags, align 8
  %and = and i32 %128, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end45, label %lor.lhs.false.if.then25_crit_edge

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %sw.bb19.if.then25_crit_edge
  %qpn = getelementptr inbounds %struct.mlx5_ib_qp, ptr %124, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 2
  %129 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %qpn, align 4
  %conv1.i110 = zext i32 %130 to i64
  %or.i111 = or i64 %conv1.i110, 9929964388352
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i111, i64 %or.i377.i)
  %cmp29 = icmp eq i64 %or.i111, %or.i377.i
  br i1 %cmp29, label %if.then25.cleanup78_crit_edge, label %lor.lhs.false31

if.then25.cleanup78_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

lor.lhs.false31:                                  ; preds = %if.then25
  %qpn34 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %124, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 2
  %131 = ptrtoint ptr %qpn34 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %qpn34, align 4
  %conv1.i112 = zext i32 %132 to i64
  %or.i113 = or i64 %conv1.i112, 9912784519168
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i113, i64 %or.i377.i)
  %cmp36 = icmp eq i64 %or.i113, %or.i377.i
  br i1 %cmp36, label %lor.lhs.false31.cleanup78_crit_edge, label %lor.lhs.false38

lor.lhs.false31.cleanup78_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

lor.lhs.false38:                                  ; preds = %lor.lhs.false31
  %tirn = getelementptr inbounds %struct.mlx5_ib_qp, ptr %124, i32 0, i32 1, i32 0, i32 1, i32 4
  %133 = ptrtoint ptr %tirn to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tirn, align 4
  %conv1.i114 = zext i32 %134 to i64
  %or.i115 = or i64 %conv1.i114, 9895604649984
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i115, i64 %or.i377.i)
  %cmp40 = icmp eq i64 %or.i115, %or.i377.i
  br i1 %cmp40, label %lor.lhs.false38.cleanup78_crit_edge, label %lor.rhs

lor.lhs.false38.cleanup78_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

lor.rhs:                                          ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #13
  %tisn = getelementptr inbounds %struct.mlx5_ib_qp, ptr %124, i32 0, i32 1, i32 0, i32 0, i32 5
  %135 = ptrtoint ptr %tisn to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tisn, align 8
  %conv1.i116 = zext i32 %136 to i64
  %or.i117 = or i64 %conv1.i116, 9972914061312
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i117, i64 %or.i377.i)
  %cmp43 = icmp eq i64 %or.i117, %or.i377.i
  br label %cleanup78

if.end45:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4099, i32 %126)
  %cmp47 = icmp eq i32 %126, 4099
  br i1 %cmp47, label %if.then49, label %if.end55

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %qpn51 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %124, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1
  %137 = ptrtoint ptr %qpn51 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %qpn51, align 4
  %conv1.i118 = zext i32 %138 to i64
  %or.i119 = or i64 %conv1.i118, 7765300871168
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i119, i64 %or.i377.i)
  %cmp53 = icmp eq i64 %or.i119, %or.i377.i
  br label %cleanup78

if.end55:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %124, i32 0, i32 19
  %139 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %qp_num, align 4
  %conv1.i120 = zext i32 %140 to i64
  %or.i121 = or i64 %conv1.i120, 5497558138880
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i121, i64 %or.i377.i)
  %cmp57 = icmp eq i64 %or.i121, %or.i377.i
  br label %cleanup78

sw.bb59:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %object60 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %141 = ptrtoint ptr %object60 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %object60, align 8
  %qpn62 = getelementptr inbounds %struct.mlx5_ib_rwq, ptr %142, i32 0, i32 1, i32 2
  %143 = ptrtoint ptr %qpn62 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %qpn62, align 4
  %conv1.i122 = zext i32 %144 to i64
  %or.i123 = or i64 %conv1.i122, 9929964388352
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i123, i64 %or.i377.i)
  %cmp64 = icmp eq i64 %or.i123, %or.i377.i
  br label %cleanup78

sw.bb66:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %object67 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %145 = ptrtoint ptr %object67 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %object67, align 8
  %rqtn = getelementptr inbounds %struct.mlx5_ib_rwq_ind_table, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %rqtn to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rqtn, align 4
  %conv1.i124 = zext i32 %148 to i64
  %or.i125 = or i64 %conv1.i124, 9990093930496
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i125, i64 %or.i377.i)
  %cmp70 = icmp eq i64 %or.i125, %or.i377.i
  br label %cleanup78

sw.bb72:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %object73 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %149 = ptrtoint ptr %object73 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %object73, align 8
  %obj_id74 = getelementptr inbounds %struct.devx_obj, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %obj_id74 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %obj_id74, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %152, i64 %or.i377.i)
  %cmp75 = icmp eq i64 %152, %or.i377.i
  br label %cleanup78

cleanup78:                                        ; preds = %sw.bb72, %sw.bb66, %sw.bb59, %if.end55, %if.then49, %lor.rhs, %lor.lhs.false38.cleanup78_crit_edge, %lor.lhs.false31.cleanup78_crit_edge, %if.then25.cleanup78_crit_edge, %sw.epilog, %sw.bb, %if.end.cleanup78_crit_edge, %mlx5_udata_to_mdev.exit.cleanup78_crit_edge
  %retval.1 = phi i1 [ %cmp75, %sw.bb72 ], [ %cmp70, %sw.bb66 ], [ %cmp64, %sw.bb59 ], [ %cmp17, %sw.epilog ], [ %cmp, %sw.bb ], [ %cmp53, %if.then49 ], [ %cmp57, %if.end55 ], [ true, %lor.lhs.false38.cleanup78_crit_edge ], [ true, %lor.lhs.false31.cleanup78_crit_edge ], [ true, %if.then25.cleanup78_crit_edge ], [ %cmp43, %lor.rhs ], [ false, %if.end.cleanup78_crit_edge ], [ false, %mlx5_udata_to_mdev.exit.cleanup78_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OBJ_QUERY(ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i.i

entry.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i:                                         ; preds = %if.end.i.i
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %4)
  %cmp.i7.i = icmp ult i16 %4, 9
  br i1 %cmp.i7.i, label %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %6, %cond.false.i ], [ %arrayidx.i.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %7 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i67 = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i67, label %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge, label %if.end.i.i68

uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge: ; preds = %uverbs_attr_get_alloced_ptr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.i.i68:                                     ; preds = %uverbs_attr_get_alloced_ptr.exit
  %arrayidx.i.i69 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 5
  %cmp.i.i70 = icmp ugt ptr %arrayidx.i.i69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i70, label %if.end.i.i68.if.then.i_crit_edge, label %if.end.i71

if.end.i.i68.if.then.i_crit_edge:                 ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i68.if.then.i_crit_edge, %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge
  %retval.0.i7.i = phi ptr [ %arrayidx.i.i69, %if.end.i.i68.if.then.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i7.i to i32
  br label %uverbs_attr_get_len.exit

if.end.i71:                                       ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len.i, align 8
  %conv.i = zext i16 %12 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i71, %if.then.i
  %retval.0.i72 = phi i32 [ %10, %if.then.i ], [ %conv.i, %if.end.i71 ]
  %13 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i74 = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i74, label %uverbs_attr_get_len.exit.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i.i75

uverbs_attr_get_len.exit.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i.i75:                                     ; preds = %uverbs_attr_get_len.exit
  %arrayidx.i.i76 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i77 = icmp ugt ptr %arrayidx.i.i76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i77, label %if.end.i.i75.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i78

if.end.i.i75.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i78:                                       ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i76, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i78, %if.end.i.i75.uverbs_attr_get_uobject.exit_crit_edge, %uverbs_attr_get_len.exit.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i79 = phi ptr [ %17, %if.end.i78 ], [ %arrayidx.i.i76, %if.end.i.i75.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_len.exit.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not = icmp eq ptr %attrs, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cond.end_crit_edge, label %cond.true

uverbs_attr_get_uobject.exit.cond.end_crit_edge:  ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %uverbs_attr_get_uobject.exit.cond.end_crit_edge
  %cond = phi ptr [ %19, %cond.true ], [ null, %uverbs_attr_get_uobject.exit.cond.end_crit_edge ]
  %20 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cond, align 8
  %add.ptr6 = getelementptr i32, ptr %retval.0.i, i32 1
  %22 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %23)
  %tobool7.not = icmp ult i32 %23, 65536
  br i1 %tobool7.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i, align 4
  %shr.i.i = lshr i32 %25, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %26 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %trunc.i.i, label %if.end9.i [
    i16 256, label %if.end.if.then.i80_crit_edge
    i16 1890, label %if.end.if.then.i80_crit_edge99
    i16 1874, label %if.end.if.then.i80_crit_edge100
  ]

if.end.if.then.i80_crit_edge100:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80

if.end.if.then.i80_crit_edge99:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80

if.end.if.then.i80_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i80

if.then.i80:                                      ; preds = %if.end.if.then.i80_crit_edge, %if.end.if.then.i80_crit_edge99, %if.end.if.then.i80_crit_edge100
  %devx_uid.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %27 = ptrtoint ptr %devx_uid.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %devx_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i, label %if.end.i82, label %if.then.i80.if.end10_crit_edge

if.then.i80.if.end10_crit_edge:                   ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.i82:                                       ; preds = %if.then.i80
  %devx_whitelist_uid.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %21, i32 0, i32 33
  %29 = ptrtoint ptr %devx_whitelist_uid.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %devx_whitelist_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool4.not.i = icmp eq i16 %30, 0
  br i1 %tobool4.not.i, label %if.end.i82.cleanup_crit_edge, label %if.end.i82.if.end10_crit_edge

if.end.i82.if.end10_crit_edge:                    ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.i82.cleanup_crit_edge:                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end
  %devx_uid10.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %31 = ptrtoint ptr %devx_uid10.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %devx_uid10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool11.not.i = icmp eq i16 %32, 0
  br i1 %tobool11.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end9.i.if.end10_crit_edge

if.end9.i.if.end10_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end9.i.if.end10_crit_edge, %if.end.i82.if.end10_crit_edge, %if.then.i80.if.end10_crit_edge
  %retval.1.i.ph.in = phi i16 [ %32, %if.end9.i.if.end10_crit_edge ], [ %30, %if.end.i82.if.end10_crit_edge ], [ %28, %if.then.i80.if.end10_crit_edge ]
  %retval.1.i.ph = zext i16 %retval.1.i.ph.in to i32
  %call11 = tail call fastcc zeroext i1 @devx_is_obj_query_cmd(ptr noundef %retval.0.i)
  br i1 %call11, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call14 = tail call fastcc zeroext i1 @devx_is_valid_obj_id(ptr noundef %attrs, ptr noundef %retval.0.i79, ptr noundef %retval.0.i)
  br i1 %call14, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %call.i = tail call noalias ptr @_uverbs_alloc(ptr noundef %attrs, i32 noundef %retval.0.i72, i32 noundef 3520) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %do.body

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call.i to i32
  br label %cleanup

do.body:                                          ; preds = %if.end16
  %34 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %retval.0.i, align 4
  %and24 = and i32 %35, -65536
  %or = or i32 %and24, %retval.1.i.ph
  store i32 %or, ptr %retval.0.i, align 4
  %mdev29 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %21, i32 0, i32 1
  %36 = ptrtoint ptr %mdev29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdev29, align 8
  %38 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i84 = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i.i84, label %do.body.if.then.i89_crit_edge, label %if.end.i.i85

do.body.if.then.i89_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i89

if.end.i.i85:                                     ; preds = %do.body
  %arrayidx.i.i86 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i87 = icmp ugt ptr %arrayidx.i.i86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i87, label %if.end.i.i85.if.then.i89_crit_edge, label %if.end.i92

if.end.i.i85.if.then.i89_crit_edge:               ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i89

if.then.i89:                                      ; preds = %if.end.i.i85.if.then.i89_crit_edge, %do.body.if.then.i89_crit_edge
  %retval.0.i7.i88 = phi ptr [ %arrayidx.i.i86, %if.end.i.i85.if.then.i89_crit_edge ], [ inttoptr (i32 -2 to ptr), %do.body.if.then.i89_crit_edge ]
  %41 = ptrtoint ptr %retval.0.i7.i88 to i32
  br label %uverbs_attr_get_len.exit94

if.end.i92:                                       ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  %len.i90 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %42 = ptrtoint ptr %len.i90 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len.i90, align 8
  %conv.i91 = zext i16 %43 to i32
  br label %uverbs_attr_get_len.exit94

uverbs_attr_get_len.exit94:                       ; preds = %if.end.i92, %if.then.i89
  %retval.0.i93 = phi i32 [ %41, %if.then.i89 ], [ %conv.i91, %if.end.i92 ]
  %call31 = tail call i32 @mlx5_cmd_exec(ptr noundef %37, ptr noundef %retval.0.i, i32 noundef %retval.0.i93, ptr noundef %call.i, i32 noundef %retval.0.i72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %uverbs_attr_get_len.exit94.cleanup_crit_edge

uverbs_attr_get_len.exit94.cleanup_crit_edge:     ; preds = %uverbs_attr_get_len.exit94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %uverbs_attr_get_len.exit94
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4098, ptr noundef %call.i, i32 noundef %retval.0.i72) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %uverbs_attr_get_len.exit94.cleanup_crit_edge, %if.then19, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end.i82.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.then19 ], [ %call35, %if.end34 ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %call31, %uverbs_attr_get_len.exit94.cleanup_crit_edge ], [ -95, %if.end.i82.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @devx_is_obj_query_cmd(ptr nocapture noundef readonly %in) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %shr = lshr i32 %1, 16
  %trunc = trunc i32 %shr to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %trunc, label %sw.default [
    i16 2562, label %entry.cleanup_crit_edge
    i16 513, label %entry.cleanup_crit_edge2
    i16 1026, label %entry.cleanup_crit_edge3
    i16 2319, label %entry.cleanup_crit_edge4
    i16 2311, label %entry.cleanup_crit_edge5
    i16 2315, label %entry.cleanup_crit_edge6
    i16 2329, label %entry.cleanup_crit_edge7
    i16 2307, label %entry.cleanup_crit_edge8
    i16 2325, label %entry.cleanup_crit_edge9
    i16 1907, label %entry.cleanup_crit_edge10
    i16 2354, label %entry.cleanup_crit_edge11
    i16 2357, label %entry.cleanup_crit_edge12
    i16 2359, label %entry.cleanup_crit_edge13
    i16 2363, label %entry.cleanup_crit_edge14
    i16 2370, label %entry.cleanup_crit_edge15
    i16 1924, label %entry.cleanup_crit_edge16
    i16 2090, label %entry.cleanup_crit_edge17
    i16 1291, label %entry.cleanup_crit_edge18
    i16 1794, label %entry.cleanup_crit_edge19
    i16 1799, label %entry.cleanup_crit_edge20
    i16 1811, label %entry.cleanup_crit_edge21
    i16 1817, label %entry.cleanup_crit_edge22
    i16 1829, label %entry.cleanup_crit_edge23
    i16 1831, label %entry.cleanup_crit_edge24
    i16 2367, label %entry.cleanup_crit_edge25
  ]

entry.cleanup_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge20:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge4:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge3:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge2, %entry.cleanup_crit_edge3, %entry.cleanup_crit_edge4, %entry.cleanup_crit_edge5, %entry.cleanup_crit_edge6, %entry.cleanup_crit_edge7, %entry.cleanup_crit_edge8, %entry.cleanup_crit_edge9, %entry.cleanup_crit_edge10, %entry.cleanup_crit_edge11, %entry.cleanup_crit_edge12, %entry.cleanup_crit_edge13, %entry.cleanup_crit_edge14, %entry.cleanup_crit_edge15, %entry.cleanup_crit_edge16, %entry.cleanup_crit_edge17, %entry.cleanup_crit_edge18, %entry.cleanup_crit_edge19, %entry.cleanup_crit_edge20, %entry.cleanup_crit_edge21, %entry.cleanup_crit_edge22, %entry.cleanup_crit_edge23, %entry.cleanup_crit_edge24, %entry.cleanup_crit_edge25
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge2 ], [ true, %entry.cleanup_crit_edge3 ], [ true, %entry.cleanup_crit_edge4 ], [ true, %entry.cleanup_crit_edge5 ], [ true, %entry.cleanup_crit_edge6 ], [ true, %entry.cleanup_crit_edge7 ], [ true, %entry.cleanup_crit_edge8 ], [ true, %entry.cleanup_crit_edge9 ], [ true, %entry.cleanup_crit_edge10 ], [ true, %entry.cleanup_crit_edge11 ], [ true, %entry.cleanup_crit_edge12 ], [ true, %entry.cleanup_crit_edge13 ], [ true, %entry.cleanup_crit_edge14 ], [ true, %entry.cleanup_crit_edge15 ], [ true, %entry.cleanup_crit_edge16 ], [ true, %entry.cleanup_crit_edge17 ], [ true, %entry.cleanup_crit_edge18 ], [ true, %entry.cleanup_crit_edge19 ], [ true, %entry.cleanup_crit_edge20 ], [ true, %entry.cleanup_crit_edge21 ], [ true, %entry.cleanup_crit_edge22 ], [ true, %entry.cleanup_crit_edge23 ], [ true, %entry.cleanup_crit_edge24 ], [ true, %entry.cleanup_crit_edge25 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY(ptr noundef %attrs) #0 align 64 {
entry:
  %_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i.i

entry.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i:                                         ; preds = %if.end.i.i
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %4)
  %cmp.i7.i = icmp ult i16 %4, 9
  br i1 %cmp.i7.i, label %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %6, %cond.false.i ], [ %arrayidx.i.i, %if.end.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %7 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i120 = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i120, label %uverbs_attr_get_alloced_ptr.exit.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i.i121

uverbs_attr_get_alloced_ptr.exit.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get_alloced_ptr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i.i121:                                    ; preds = %uverbs_attr_get_alloced_ptr.exit
  %arrayidx.i.i122 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i123 = icmp ugt ptr %arrayidx.i.i122, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i123, label %if.end.i.i121.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i124

if.end.i.i121.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i124:                                      ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %arrayidx.i.i122 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i122, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i124, %if.end.i.i121.uverbs_attr_get_uobject.exit_crit_edge, %uverbs_attr_get_alloced_ptr.exit.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i125 = phi ptr [ %11, %if.end.i124 ], [ %arrayidx.i.i122, %if.end.i.i121.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_alloced_ptr.exit.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not = icmp eq ptr %attrs, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cond.end_crit_edge, label %cond.true

uverbs_attr_get_uobject.exit.cond.end_crit_edge:  ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %uverbs_attr_get_uobject.exit.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ null, %uverbs_attr_get_uobject.exit.cond.end_crit_edge ]
  %14 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cond, align 8
  %add.ptr5 = getelementptr i32, ptr %retval.0.i, i32 1
  %16 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %tobool6.not = icmp ult i32 %17, 65536
  br i1 %tobool6.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %18 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retval.0.i, align 4
  %shr.i.i = lshr i32 %19, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %20 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %trunc.i.i, label %if.end9.i [
    i16 256, label %if.end.if.then.i_crit_edge
    i16 1890, label %if.end.if.then.i_crit_edge154
    i16 1874, label %if.end.if.then.i_crit_edge155
  ]

if.end.if.then.i_crit_edge155:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.if.then.i_crit_edge154:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge154, %if.end.if.then.i_crit_edge155
  %devx_uid.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %21 = ptrtoint ptr %devx_uid.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %devx_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %if.end.i126, label %if.then.i.if.end9_crit_edge

if.then.i.if.end9_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i126:                                      ; preds = %if.then.i
  %devx_whitelist_uid.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %15, i32 0, i32 33
  %23 = ptrtoint ptr %devx_whitelist_uid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %devx_whitelist_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool4.not.i = icmp eq i16 %24, 0
  br i1 %tobool4.not.i, label %if.end.i126.cleanup_crit_edge, label %if.end.i126.if.end9_crit_edge

if.end.i126.if.end9_crit_edge:                    ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i126.cleanup_crit_edge:                    ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end
  %devx_uid10.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %25 = ptrtoint ptr %devx_uid10.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %devx_uid10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool11.not.i = icmp eq i16 %26, 0
  br i1 %tobool11.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end9.i.if.end9_crit_edge

if.end9.i.if.end9_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end9.i.if.end9_crit_edge, %if.end.i126.if.end9_crit_edge, %if.then.i.if.end9_crit_edge
  %retval.1.i.ph.in = phi i16 [ %26, %if.end9.i.if.end9_crit_edge ], [ %24, %if.end.i126.if.end9_crit_edge ], [ %22, %if.then.i.if.end9_crit_edge ]
  %retval.1.i.ph = zext i16 %retval.1.i.ph.in to i32
  %call10 = tail call fastcc zeroext i1 @devx_is_obj_query_cmd(ptr noundef %retval.0.i)
  br i1 %call10, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #11
  %27 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -1, ptr %_val, align 8, !annotation !117
  %call13 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 4100, i64 noundef 65535, ptr noundef null) #11
  %28 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %_val, align 8
  %conv = trunc i64 %29 to i16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = call fastcc zeroext i1 @devx_is_valid_obj_id(ptr noundef %attrs, ptr noundef %retval.0.i125, ptr noundef %retval.0.i)
  br i1 %call18, label %if.end20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %30 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %32 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i128 = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i.i128, label %if.end20.if.then23_crit_edge, label %if.end.i.i129

if.end20.if.then23_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.end.i.i129:                                    ; preds = %if.end20
  %arrayidx.i.i130 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 5
  %cmp.i.i131 = icmp ugt ptr %arrayidx.i.i130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i131, label %if.end.i.i129.uverbs_attr_get_uobject.exit134_crit_edge, label %if.end.i132

if.end.i.i129.uverbs_attr_get_uobject.exit134_crit_edge: ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit134

if.end.i132:                                      ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %arrayidx.i.i130 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i130, align 8
  br label %uverbs_attr_get_uobject.exit134

uverbs_attr_get_uobject.exit134:                  ; preds = %if.end.i132, %if.end.i.i129.uverbs_attr_get_uobject.exit134_crit_edge
  %retval.0.i133 = phi ptr [ %34, %if.end.i132 ], [ %arrayidx.i.i130, %if.end.i.i129.uverbs_attr_get_uobject.exit134_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %uverbs_attr_get_uobject.exit134.if.then23_crit_edge, label %if.end25

uverbs_attr_get_uobject.exit134.if.then23_crit_edge: ; preds = %uverbs_attr_get_uobject.exit134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.then23:                                        ; preds = %uverbs_attr_get_uobject.exit134.if.then23_crit_edge, %if.end20.if.then23_crit_edge
  %retval.0.i133152 = phi ptr [ %retval.0.i133, %uverbs_attr_get_uobject.exit134.if.then23_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end20.if.then23_crit_edge ]
  %35 = ptrtoint ptr %retval.0.i133152 to i32
  br label %cleanup

if.end25:                                         ; preds = %uverbs_attr_get_uobject.exit134
  %36 = trunc i64 %29 to i32
  %conv29 = and i32 %36, 65535
  %bytes_in_use = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %retval.0.i133, i32 0, i32 1, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_in_use, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @llvm.prefetch.p0(ptr %bytes_in_use, i32 1, i32 3, i32 1) #11
  %37 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_in_use, ptr %bytes_in_use, i32 %conv29, ptr elementtype(i32) %bytes_in_use) #11, !srcloc !129
  %asmresult.i.i.i = extractvalue { i32, i32 } %37, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %asmresult.i.i.i)
  %cmp31 = icmp sgt i32 %asmresult.i.i.i, 1048576
  br i1 %cmp31, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i117 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_in_use, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %bytes_in_use, i32 1, i32 3, i32 1) #11
  %38 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_in_use, ptr %bytes_in_use, i32 %conv29, ptr elementtype(i32) %bytes_in_use) #11, !srcloc !131
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %spec.select.i135153 = add nuw nsw i32 %conv29, 40
  %call.i.i136 = call noalias ptr @kvmalloc_node(i32 noundef %spec.select.i135153, i32 noundef 3520, i32 noundef -1) #16
  %tobool41.not = icmp eq ptr %call.i.i136, null
  br i1 %tobool41.not, label %if.end37.sub_bytes_crit_edge, label %if.end43

if.end37.sub_bytes_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %sub_bytes

if.end43:                                         ; preds = %if.end37
  %hdr = getelementptr inbounds %struct.devx_async_data, ptr %call.i.i136, i32 0, i32 5
  %call44 = call fastcc i32 @_uverbs_copy_from(ptr noundef %hdr, ptr noundef %attrs, i32 noundef 4099, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.free_async_crit_edge

if.end43.free_async_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_async

if.end47:                                         ; preds = %if.end43
  %cmd_out_len48 = getelementptr inbounds %struct.devx_async_data, ptr %call.i.i136, i32 0, i32 4
  %39 = ptrtoint ptr %cmd_out_len48 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv, ptr %cmd_out_len48, align 8
  %40 = ptrtoint ptr %call.i.i136 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %15, ptr %call.i.i136, align 8
  %ev_file50 = getelementptr inbounds %struct.devx_async_data, ptr %call.i.i136, i32 0, i32 2
  %41 = ptrtoint ptr %ev_file50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i133, ptr %ev_file50, align 4
  %42 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retval.0.i, align 4
  %and53 = and i32 %43, -65536
  %or = or i32 %and53, %retval.1.i.ph
  store i32 %or, ptr %retval.0.i, align 4
  %async_ctx = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %retval.0.i133, i32 0, i32 2
  %44 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %46 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i.i138 = icmp eq i32 %46, 0
  br i1 %tobool.i.not.i.i138, label %if.end47.if.then.i142_crit_edge, label %if.end.i.i139

if.end47.if.then.i142_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i142

if.end.i.i139:                                    ; preds = %if.end47
  %arrayidx.i.i140 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i141 = icmp ugt ptr %arrayidx.i.i140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i141, label %if.end.i.i139.if.then.i142_crit_edge, label %if.end.i144

if.end.i.i139.if.then.i142_crit_edge:             ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i142

if.then.i142:                                     ; preds = %if.end.i.i139.if.then.i142_crit_edge, %if.end47.if.then.i142_crit_edge
  %retval.0.i7.i = phi ptr [ %arrayidx.i.i140, %if.end.i.i139.if.then.i142_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end47.if.then.i142_crit_edge ]
  %47 = ptrtoint ptr %retval.0.i7.i to i32
  br label %uverbs_attr_get_len.exit

if.end.i144:                                      ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len.i, align 8
  %conv.i143 = zext i16 %49 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i144, %if.then.i142
  %retval.0.i145 = phi i32 [ %47, %if.then.i142 ], [ %conv.i143, %if.end.i144 ]
  %out_data = getelementptr inbounds %struct.devx_async_data, ptr %call.i.i136, i32 1
  %50 = ptrtoint ptr %cmd_out_len48 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %cmd_out_len48, align 8
  %conv61 = zext i16 %51 to i32
  %cb_work = getelementptr inbounds %struct.devx_async_data, ptr %call.i.i136, i32 0, i32 3
  %call62 = call i32 @mlx5_cmd_exec_cb(ptr noundef %async_ctx, ptr noundef %retval.0.i, i32 noundef %retval.0.i145, ptr noundef %out_data, i32 noundef %conv61, ptr noundef nonnull @devx_query_callback, ptr noundef %cb_work) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %uverbs_attr_get_len.exit.cleanup_crit_edge, label %uverbs_attr_get_len.exit.free_async_crit_edge

uverbs_attr_get_len.exit.free_async_crit_edge:    ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_async

uverbs_attr_get_len.exit.cleanup_crit_edge:       ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

free_async:                                       ; preds = %uverbs_attr_get_len.exit.free_async_crit_edge, %if.end43.free_async_crit_edge
  %err.0 = phi i32 [ %call44, %if.end43.free_async_crit_edge ], [ %call62, %uverbs_attr_get_len.exit.free_async_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i136) #11
  br label %sub_bytes

sub_bytes:                                        ; preds = %free_async, %if.end37.sub_bytes_crit_edge
  %err.1 = phi i32 [ %err.0, %free_async ], [ -12, %if.end37.sub_bytes_crit_edge ]
  %call.i.i118 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_in_use, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %bytes_in_use, i32 1, i32 3, i32 1) #11
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_in_use, ptr %bytes_in_use, i32 %conv29, ptr elementtype(i32) %bytes_in_use) #11, !srcloc !131
  br label %cleanup

cleanup:                                          ; preds = %sub_bytes, %uverbs_attr_get_len.exit.cleanup_crit_edge, %if.then33, %if.then23, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end.i126.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %if.then23 ], [ -11, %if.then33 ], [ %err.1, %sub_bytes ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ 0, %uverbs_attr_get_len.exit.cleanup_crit_edge ], [ -95, %if.end.i126.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_uverbs_get_const_unsigned(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devx_query_callback(i32 noundef %status, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ev_file1 = getelementptr i8, ptr %context, i32 -4
  %0 = ptrtoint ptr %ev_file1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_file1, align 4
  %ev_queue2 = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ev_queue2) #11
  %list = getelementptr i8, ptr %context, i32 -12
  %event_list = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 2
  %prev.i = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %3, ptr noundef %event_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %event_list, ptr %list, align 4
  %prev3.i.i = getelementptr i8, ptr %context, i32 -8
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ev_queue2, i32 noundef %call5) #11
  %poll_wait = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 1
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devx_umem_cleanup(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #11
  %2 = call ptr @memset(ptr %out, i32 255, i32 16)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dinbox = getelementptr inbounds %struct.devx_umem, ptr %1, i32 0, i32 3
  %dinlen = getelementptr inbounds %struct.devx_umem, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dinlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dinlen, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef %dinbox, i32 noundef %6, ptr noundef nonnull %out, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %umem = getelementptr inbounds %struct.devx_umem, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %umem, align 4
  call void @ib_umem_release(ptr noundef %8) #11
  call void @kfree(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_UMEM_REG(ptr noundef %attrs) #0 align 64 {
entry:
  %_val.i = alloca i64, align 8
  %_def_val.i = alloca i64, align 8
  %addr.i = alloca i64, align 8
  %size.i = alloca i32, align 4
  %access.i = alloca i32, align 4
  %cmd = alloca %struct.devx_umem_reg_cmd, align 4
  %obj_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.devx_umem_reg_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.devx_umem_reg_cmd, ptr %cmd, i32 0, i32 2
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  %3 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obj_id) #11
  %8 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %obj_id, align 4, !annotation !117
  %tobool.not = icmp eq ptr %attrs, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cond.end_crit_edge, label %cond.true

uverbs_attr_get_uobject.exit.cond.end_crit_edge:  ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %uverbs_attr_get_uobject.exit.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.true ], [ null, %uverbs_attr_get_uobject.exit.cond.end_crit_edge ]
  %11 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond, align 8
  %devx_uid = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %13 = ptrtoint ptr %devx_uid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %devx_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool4.not = icmp eq i16 %14, 0
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 28) #14
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.i) #11
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %addr.i, align 8, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #11
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %size.i, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %access.i) #11
  %18 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %access.i, align 4, !annotation !117
  %call.i = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %addr.i, ptr noundef %attrs, i32 noundef 4097, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end8.devx_umem_get.exit.thread_crit_edge

if.end8.devx_umem_get.exit.thread_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %devx_umem_get.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end8
  %call1.i = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %size.i, ptr noundef %attrs, i32 noundef 4098, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i69, label %lor.lhs.false.i.devx_umem_get.exit.thread_crit_edge

lor.lhs.false.i.devx_umem_get.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %devx_umem_get.exit.thread

if.end.i69:                                       ; preds = %lor.lhs.false.i
  %call3.i = call i32 @uverbs_get_flags32(ptr noundef nonnull %access.i, ptr noundef %attrs, i32 noundef 4099, i64 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i69.devx_umem_get.exit.thread_crit_edge

if.end.i69.devx_umem_get.exit.thread_crit_edge:   ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %devx_umem_get.exit.thread

if.end6.i:                                        ; preds = %if.end.i69
  %19 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %access.i, align 4
  %and.i.i = and i32 %20, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp ne i32 %and1.i.i, 0
  %or.cond.not.i.i = or i1 %tobool.not.i.i, %tobool2.not.i.i
  %and3.i.i = and i32 %20, -1072693504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %or.cond17.i.i = and i1 %tobool4.not.i.i, %or.cond.not.i.i
  br i1 %or.cond17.i.i, label %if.end6.i.i, label %if.end6.i.devx_umem_get.exit.thread_crit_edge

if.end6.i.devx_umem_get.exit.thread_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %devx_umem_get.exit.thread

if.end6.i.i:                                      ; preds = %if.end6.i
  %and7.i.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end10.i_crit_edge, label %land.lhs.true9.i.i

if.end6.i.i.if.end10.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true9.i.i:                               ; preds = %if.end6.i.i
  %device_cap_flags.i.i = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 22, i32 9
  %21 = ptrtoint ptr %device_cap_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %device_cap_flags.i.i, align 8
  %and10.i.i = and i64 %22, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %tobool11.not.i.i = icmp eq i64 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true9.i.i.devx_umem_get.exit.thread_crit_edge, label %land.lhs.true9.i.i.if.end10.i_crit_edge

land.lhs.true9.i.i.if.end10.i_crit_edge:          ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true9.i.i.devx_umem_get.exit.thread_crit_edge: ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %devx_umem_get.exit.thread

if.end10.i:                                       ; preds = %land.lhs.true9.i.i.if.end10.i_crit_edge, %if.end6.i.i.if.end10.i_crit_edge
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %addr.i, align 8
  %conv.i = trunc i64 %24 to i32
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  %call12.i = call ptr @ib_umem_get(ptr noundef %12, i32 noundef %conv.i, i32 noundef %26, i32 noundef %20) #11
  %umem.i = getelementptr inbounds %struct.devx_umem, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %umem.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call12.i, ptr %umem.i, align 4
  %cmp.i.i70 = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i70, label %devx_umem_get.exit, label %devx_umem_get.exit.thread84

devx_umem_get.exit.thread84:                      ; preds = %if.end10.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val.i) #11
  %28 = ptrtoint ptr %_val.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %_val.i, align 8, !annotation !117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_def_val.i) #11
  %29 = ptrtoint ptr %_def_val.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -4096, ptr %_def_val.i, align 8
  %call.i72 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val.i, ptr noundef %attrs, i32 noundef 4101, i64 noundef 4294967295, ptr noundef nonnull %_def_val.i) #11
  %30 = ptrtoint ptr %_val.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %_val.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_def_val.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %if.end.i75, label %devx_umem_get.exit.thread84.err_umem_release_crit_edge

devx_umem_get.exit.thread84.err_umem_release_crit_edge: ; preds = %devx_umem_get.exit.thread84
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_umem_release

devx_umem_get.exit.thread:                        ; preds = %land.lhs.true9.i.i.devx_umem_get.exit.thread_crit_edge, %if.end6.i.devx_umem_get.exit.thread_crit_edge, %if.end.i69.devx_umem_get.exit.thread_crit_edge, %lor.lhs.false.i.devx_umem_get.exit.thread_crit_edge, %if.end8.devx_umem_get.exit.thread_crit_edge
  %retval.0.i71.ph = phi i32 [ -22, %land.lhs.true9.i.i.devx_umem_get.exit.thread_crit_edge ], [ -22, %if.end6.i.devx_umem_get.exit.thread_crit_edge ], [ %call3.i, %if.end.i69.devx_umem_get.exit.thread_crit_edge ], [ -14, %if.end8.devx_umem_get.exit.thread_crit_edge ], [ -14, %lor.lhs.false.i.devx_umem_get.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #11
  br label %err_obj_free

devx_umem_get.exit:                               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %call12.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #11
  br label %err_obj_free

if.end.i75:                                       ; preds = %devx_umem_get.exit.thread84
  %conv.i74 = trunc i64 %31 to i32
  %33 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %umem.i, align 4
  %length.i.i = getelementptr inbounds %struct.ib_umem, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i.i.i = icmp ugt i32 %36, 1
  br i1 %cmp.i.i.i, label %cond.end25.i.i, label %if.end.i75.cond.end25.thread.i.i_crit_edge

if.end.i75.cond.end25.thread.i.i_crit_edge:       ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end25.thread.i.i

cond.end25.i.i:                                   ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i72.i.i = add i32 %36, -1
  %37 = call i32 @llvm.ctlz.i32(i32 %sub.i72.i.i, i1 false) #11, !range !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub.i72.i.i)
  %cmp28.i.i = icmp ugt i32 %sub.i72.i.i, 4095
  %narrow.i.i = add nuw nsw i32 %37, 31
  %narrow83.i.i = select i1 %cmp28.i.i, i32 %narrow.i.i, i32 51
  %spec.select.i.i = zext i32 %narrow83.i.i to i64
  br label %cond.end25.thread.i.i

cond.end25.thread.i.i:                            ; preds = %cond.end25.i.i, %if.end.i75.cond.end25.thread.i.i_crit_edge
  %38 = phi i64 [ 51, %if.end.i75.cond.end25.thread.i.i_crit_edge ], [ %spec.select.i.i, %cond.end25.i.i ]
  %shr.i.i = lshr i64 -1, %38
  %39 = trunc i64 %shr.i.i to i32
  %40 = and i32 %conv.i74, -4096
  %conv38.i.i = and i32 %40, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv38.i.i)
  %tobool.not.i.i76 = icmp eq i32 %conv38.i.i, 0
  br i1 %tobool.not.i.i76, label %cond.end25.thread.i.i.err_umem_release_crit_edge, label %if.end.i.i77

cond.end25.thread.i.i.err_umem_release_crit_edge: ; preds = %cond.end25.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_umem_release

if.end.i.i77:                                     ; preds = %cond.end25.thread.i.i
  %sgt_append.i.i.i = getelementptr inbounds %struct.ib_umem, ptr %34, i32 0, i32 7
  %41 = ptrtoint ptr %sgt_append.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sgt_append.i.i.i, align 8
  %dma_address.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_address.i.i.i, align 4
  %address.i.i.i = getelementptr inbounds %struct.ib_umem, ptr %34, i32 0, i32 4
  %45 = ptrtoint ptr %address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %address.i.i.i, align 4
  %and.i.i.i = and i32 %46, 4095
  %add.i73.i.i = add i32 %and.i.i.i, %44
  %call.i.i.i = call i32 @ib_umem_find_best_pgsz(ptr noundef %34, i32 noundef %conv38.i.i, i32 noundef %add.i73.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool40.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool40.not.i.i, label %if.end.i.i77.err_umem_release_crit_edge, label %while.cond.preheader.i.i

if.end.i.i77.err_umem_release_crit_edge:          ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_umem_release

while.cond.preheader.i.i:                         ; preds = %if.end.i.i77
  %47 = ptrtoint ptr %sgt_append.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sgt_append.i.i.i, align 8
  %dma_address.i75.i.i = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %dma_address.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_address.i75.i.i, align 4
  %51 = ptrtoint ptr %address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %address.i.i.i, align 4
  %and.i.i.i.i = and i32 %52, 4095
  %add.i76.i.i = add i32 %and.i.i.i.i, %50
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %while.cond.preheader.i.i
  %page_size.0.i.i = phi i32 [ %div71.i.i, %while.body.i.i ], [ %call.i.i.i, %while.cond.preheader.i.i ]
  %sub.i77.i.i = add i32 %page_size.0.i.i, -1
  %and.i78.i.i = and i32 %sub.i77.i.i, %add.i76.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i.i)
  %cmp44.not.i.i = icmp eq i32 %and.i78.i.i, 0
  br i1 %cmp44.not.i.i, label %lor.lhs.false46.i.i, label %land.rhs.i.i

lor.lhs.false46.i.i:                              ; preds = %while.cond.i.i
  %53 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length.i.i, align 8
  %rem.i.i = urem i32 %54, %page_size.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp48.not.i.i = icmp ne i32 %rem.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %page_size.0.i.i)
  %cmp50.i.i = icmp ugt i32 %page_size.0.i.i, 4096
  %or.cond.i.i = and i1 %cmp50.i.i, %cmp48.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false46.i.i.while.body.i.i_crit_edge, label %lor.lhs.false46.i.i.devx_umem_find_best_pgsize.exit.i_crit_edge

lor.lhs.false46.i.i.devx_umem_find_best_pgsize.exit.i_crit_edge: ; preds = %lor.lhs.false46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %devx_umem_find_best_pgsize.exit.i

lor.lhs.false46.i.i.while.body.i.i_crit_edge:     ; preds = %lor.lhs.false46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %page_size.0.i.i)
  %cmp50.old.i.i = icmp ugt i32 %page_size.0.i.i, 4096
  br i1 %cmp50.old.i.i, label %land.rhs.i.i.while.body.i.i_crit_edge, label %land.rhs.i.i.devx_umem_find_best_pgsize.exit.i_crit_edge

land.rhs.i.i.devx_umem_find_best_pgsize.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %devx_umem_find_best_pgsize.exit.i

land.rhs.i.i.while.body.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i.while.body.i.i_crit_edge, %lor.lhs.false46.i.i.while.body.i.i_crit_edge
  %div71.i.i = lshr i32 %page_size.0.i.i, 1
  br label %while.cond.i.i

devx_umem_find_best_pgsize.exit.i:                ; preds = %land.rhs.i.i.devx_umem_find_best_pgsize.exit.i_crit_edge, %lor.lhs.false46.i.i.devx_umem_find_best_pgsize.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_size.0.i.i)
  %tobool3.not.i = icmp eq i32 %page_size.0.i.i, 0
  br i1 %tobool3.not.i, label %devx_umem_find_best_pgsize.exit.i.err_umem_release_crit_edge, label %if.end5.i

devx_umem_find_best_pgsize.exit.i.err_umem_release_crit_edge: ; preds = %devx_umem_find_best_pgsize.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_umem_release

if.end5.i:                                        ; preds = %devx_umem_find_best_pgsize.exit.i
  %55 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %umem.i, align 4
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %iova.i.i, align 8
  %length.i1.i = getelementptr inbounds %struct.ib_umem, ptr %56, i32 0, i32 3
  %59 = ptrtoint ptr %length.i1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length.i1.i, align 8
  %conv.i.i = zext i32 %60 to i64
  %conv1.i.i = zext i32 %page_size.0.i.i to i64
  %sub.i2.i = add nsw i64 %conv1.i.i, -1
  %add.i.i = add i64 %58, %sub.i2.i
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %neg.i.i = sub nsw i64 0, %conv1.i.i
  %and.i.i78 = and i64 %add2.i.i, %neg.i.i
  %conv7.i.i = zext i32 %sub.i77.i.i to i64
  %sub8.i.i = sub nsw i64 %sub.i2.i, %conv7.i.i
  %add11.i.i = add i64 %58, %sub8.i.i
  %and15.i.i = and i64 %add11.i.i, %neg.i.i
  %sub16.i.i = sub i64 %and.i.i78, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div.i.i = udiv i32 %conv17.i.i, %page_size.0.i.i
  %mul.i = shl i32 %div.i.i, 3
  %add.i = add i32 %mul.i, 48
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.i, ptr %0, align 4
  %call.i.i = call noalias ptr @_uverbs_alloc(ptr noundef %attrs, i32 noundef %add.i, i32 noundef 3520) #11
  %62 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i, ptr %cmd, align 4
  %cmp.i.i79 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i79, label %devx_umem_reg_cmd_alloc.exit, label %if.end15.i

if.end15.i:                                       ; preds = %if.end5.i
  %add.ptr17.i = getelementptr i8, ptr %call.i.i, i32 48
  %63 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call.i.i, align 4
  %and.i = and i32 %64, 65535
  %or.i = or i32 %and.i, 168296448
  store i32 %or.i, ptr %call.i.i, align 4
  %65 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %umem.i, align 4
  %iova.i3.i = getelementptr inbounds %struct.ib_umem, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %iova.i3.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %iova.i3.i, align 8
  %length.i4.i = getelementptr inbounds %struct.ib_umem, ptr %66, i32 0, i32 3
  %69 = ptrtoint ptr %length.i4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length.i4.i, align 8
  %conv.i5.i = zext i32 %70 to i64
  %add.i8.i = add i64 %68, %sub.i2.i
  %add2.i9.i = add i64 %add.i8.i, %conv.i5.i
  %and.i11.i = and i64 %add2.i9.i, %neg.i.i
  %add11.i15.i = add i64 %68, %sub8.i.i
  %and15.i16.i = and i64 %add11.i15.i, %neg.i.i
  %sub16.i17.i = sub i64 %and.i11.i, %and15.i16.i
  %conv17.i18.i = trunc i64 %sub16.i17.i to i32
  %div.i19.i = udiv i32 %conv17.i18.i, %page_size.0.i.i
  %conv36.i = zext i32 %div.i19.i to i64
  %add.ptr37.i = getelementptr i8, ptr %call.i.i, i32 40
  %71 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv36.i, ptr %add.ptr37.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %page_size.0.i.i)
  %cmp.i21.i = icmp ugt i32 %page_size.0.i.i, 1
  %72 = call i32 @llvm.ctlz.i32(i32 %sub.i77.i.i, i1 false) #11, !range !132
  %phi.bo = sub nsw i32 20, %72
  %phi.bo92 = and i32 %phi.bo, 31
  %cond68.i = select i1 %cmp.i21.i, i32 %phi.bo92, i32 20
  %add.ptr73.i = getelementptr i8, ptr %call.i.i, i32 32
  %73 = ptrtoint ptr %add.ptr73.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr73.i, align 4
  %and74.i = and i32 %74, -32
  %or77.i = or i32 %and74.i, %cond68.i
  store i32 %or77.i, ptr %add.ptr73.i, align 4
  %sgt_append.i.i = getelementptr inbounds %struct.ib_umem, ptr %66, i32 0, i32 7
  %75 = ptrtoint ptr %sgt_append.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sgt_append.i.i, align 8
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_address.i.i, align 4
  %address.i.i28.i = getelementptr inbounds %struct.ib_umem, ptr %66, i32 0, i32 4
  %79 = ptrtoint ptr %address.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %address.i.i28.i, align 4
  %and.i.i29.i = and i32 %80, 4095
  %add.i30.i = add i32 %and.i.i29.i, %78
  %and.i32.i = and i32 %add.i30.i, %sub.i77.i.i
  %add.ptr88.i = getelementptr i8, ptr %call.i.i, i32 36
  %81 = ptrtoint ptr %add.ptr88.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and.i32.i, ptr %add.ptr88.i, align 4
  %writable.i = getelementptr inbounds %struct.ib_umem, ptr %66, i32 0, i32 5
  %82 = ptrtoint ptr %writable.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i = load i8, ptr %writable.i, align 8
  %83 = lshr i8 %bf.load.i, 6
  %84 = or i8 %83, 1
  %conv101.i = zext i8 %84 to i64
  call void @mlx5_ib_populate_pas(ptr noundef %66, i32 noundef %page_size.0.i.i, ptr noundef %add.ptr17.i, i64 noundef %conv101.i) #11
  %85 = ptrtoint ptr %devx_uid to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %devx_uid, align 8
  %conv = zext i16 %86 to i32
  %87 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmd, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %and = and i32 %90, -65536
  %or = or i32 %and, %conv
  store i32 %or, ptr %88, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %12, i32 0, i32 1
  %91 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mdev, align 8
  %93 = load ptr, ptr %cmd, align 4
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %0, align 4
  %call27 = call i32 @mlx5_cmd_exec(ptr noundef %92, ptr noundef %93, i32 noundef %95, ptr noundef %1, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end15.i.err_umem_release_crit_edge

if.end15.i.err_umem_release_crit_edge:            ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_umem_release

devx_umem_reg_cmd_alloc.exit:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %call.i.i to i32
  br label %err_umem_release

if.end30:                                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mdev, align 8
  %99 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %call7.i.i, align 8
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %100 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i, ptr %object, align 8
  %101 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cmd, align 4
  %dinbox = getelementptr inbounds %struct.devx_umem, ptr %call7.i.i, i32 0, i32 3
  %dinlen = getelementptr inbounds %struct.devx_umem, ptr %call7.i.i, i32 0, i32 2
  call fastcc void @devx_obj_build_destroy_cmd(ptr noundef %102, ptr noundef %1, ptr noundef %dinbox, ptr noundef %dinlen, ptr noundef nonnull %obj_id)
  call void @uverbs_finalize_uobj_create(ptr noundef %attrs, i16 noundef zeroext 4096) #11
  %call37 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4100, ptr noundef nonnull %obj_id, i32 noundef 4) #11
  br label %cleanup

err_umem_release:                                 ; preds = %devx_umem_reg_cmd_alloc.exit, %if.end15.i.err_umem_release_crit_edge, %devx_umem_find_best_pgsize.exit.i.err_umem_release_crit_edge, %if.end.i.i77.err_umem_release_crit_edge, %cond.end25.thread.i.i.err_umem_release_crit_edge, %devx_umem_get.exit.thread84.err_umem_release_crit_edge
  %err.0 = phi i32 [ %96, %devx_umem_reg_cmd_alloc.exit ], [ %call27, %if.end15.i.err_umem_release_crit_edge ], [ -22, %if.end.i.i77.err_umem_release_crit_edge ], [ -22, %cond.end25.thread.i.i.err_umem_release_crit_edge ], [ -22, %devx_umem_find_best_pgsize.exit.i.err_umem_release_crit_edge ], [ %call.i72, %devx_umem_get.exit.thread84.err_umem_release_crit_edge ]
  %103 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %umem.i, align 4
  call void @ib_umem_release(ptr noundef %104) #11
  br label %err_obj_free

err_obj_free:                                     ; preds = %err_umem_release, %devx_umem_get.exit, %devx_umem_get.exit.thread
  %err.1 = phi i32 [ %32, %devx_umem_get.exit ], [ %err.0, %err_umem_release ], [ %retval.0.i71.ph, %devx_umem_get.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_obj_free, %if.end30, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_obj_free ], [ %call37, %if.end30 ], [ -22, %cond.end.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obj_id) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_finalize_uobj_create(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_get_flags32(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_populate_pas(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_umem_find_best_pgsz(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devx_async_cmd_event_destroy_uobj(ptr noundef %uobj, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ev_queue1 = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %uobj, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue1) #11
  %is_destroyed = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %uobj, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %is_destroyed to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_destroyed, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %is_destroyed, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %ev_queue1) #11
  %poll_wait = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %uobj, i32 0, i32 1, i32 1
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %async_ctx = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %uobj, i32 0, i32 2
  tail call void @mlx5_cmd_cleanup_async_ctx(ptr noundef %async_ctx) #11
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue1) #11
  %event_list = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %uobj, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %event_list, align 8
  %cmp.not39 = icmp eq ptr %2, %event_list
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in40 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %entry2.0 = getelementptr i8, ptr %.pn.in40, i32 -4
  %3 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in40, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in40) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in40, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in40, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kvfree(ptr noundef %entry2.0) #11
  %cmp.not = icmp eq ptr %.pn, %event_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ev_queue1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmd_cleanup_async_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devx_async_cmd_event_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ev_queue1 = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue1) #11
  %event_list = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 2
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %is_destroyed = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 4
  %poll_wait = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end33.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %3, %event_list
  br i1 %cmp.i.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_raw_spin_unlock_irq(ptr noundef %ev_queue1) #11
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %while.body.cleanup58_crit_edge

while.body.cleanup58_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup58

if.end:                                           ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2565) #11
  %6 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %event_list, align 4
  %cmp.i87.not = icmp eq ptr %7, %event_list
  br i1 %cmp.i87.not, label %lor.lhs.false, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

lor.lhs.false:                                    ; preds = %if.end
  %8 = ptrtoint ptr %is_destroyed to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %is_destroyed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %if.then11, label %lor.lhs.false.if.end33_crit_edge

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then11:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call13109 = call i32 @prepare_to_wait_event(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %10 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %event_list, align 4
  %cmp.i89.not110 = icmp eq ptr %11, %event_list
  br i1 %cmp.i89.not110, label %if.then11.lor.lhs.false17_crit_edge, label %if.then11.if.end29.thread102_crit_edge

if.then11.if.end29.thread102_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.thread102

if.then11.lor.lhs.false17_crit_edge:              ; preds = %if.then11
  br label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %cleanup.lor.lhs.false17_crit_edge, %if.then11.lor.lhs.false17_crit_edge
  %call13111 = phi i32 [ %call13, %cleanup.lor.lhs.false17_crit_edge ], [ %call13109, %if.then11.lor.lhs.false17_crit_edge ]
  %12 = ptrtoint ptr %is_destroyed to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load19 = load i8, ptr %is_destroyed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %tobool22.not = icmp sgt i8 %bf.load19, -1
  br i1 %tobool22.not, label %if.end24, label %lor.lhs.false17.if.end29.thread102_crit_edge

lor.lhs.false17.if.end29.thread102_crit_edge:     ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.thread102

if.end24:                                         ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13111)
  %tobool25.not = icmp eq i32 %call13111, 0
  br i1 %tobool25.not, label %cleanup, label %if.end29

cleanup:                                          ; preds = %if.end24
  call void @schedule() #11
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %13 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %event_list, align 4
  %cmp.i89.not = icmp eq ptr %14, %event_list
  br i1 %cmp.i89.not, label %cleanup.lor.lhs.false17_crit_edge, label %cleanup.if.end29.thread102_crit_edge

cleanup.if.end29.thread102_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.thread102

cleanup.lor.lhs.false17_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false17

if.end29.thread102:                               ; preds = %cleanup.if.end29.thread102_crit_edge, %lor.lhs.false17.if.end29.thread102_crit_edge, %if.then11.if.end29.thread102_crit_edge
  call void @finish_wait(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end33

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup58

if.end33:                                         ; preds = %if.end29.thread102, %lor.lhs.false.if.end33_crit_edge, %if.end.if.end33_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %ev_queue1) #11
  %15 = ptrtoint ptr %is_destroyed to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load36 = load i8, ptr %is_destroyed, align 4
  %tobool38.not = icmp sgt i8 %bf.load36, -1
  br i1 %tobool38.not, label %if.end33.while.cond_crit_edge, label %if.then39

if.end33.while.cond_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef %ev_queue1) #11
  br label %cleanup58

while.end:                                        ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %cmd_out_len = getelementptr i8, ptr %3, i32 20
  %16 = ptrtoint ptr %cmd_out_len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cmd_out_len, align 8
  %conv44 = zext i16 %17 to i32
  %add = add nuw nsw i32 %conv44, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp = icmp ugt i32 %add, %count
  br i1 %cmp, label %if.then46, label %if.end48

if.then46:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef %ev_queue1) #11
  br label %cleanup58

if.end48:                                         ; preds = %while.end
  %call.i.i91 = call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #11
  br i1 %call.i.i91, label %if.end.i.i92, label %if.end48.list_del.exit_crit_edge

if.end48.list_del.exit_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i92:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i92, %if.end48.list_del.exit_crit_edge
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %ev_queue1) #11
  %hdr = getelementptr i8, ptr %3, i32 28
  call void @__check_object_size(ptr noundef %hdr, i32 noundef %add, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %list_del.exit.copy_to_user.exit_crit_edge, label %if.end.i.i

list_del.exit.copy_to_user.exit_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %list_del.exit
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %add, i32 -1226833920) #15, !srcloc !133
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hdr, i32 noundef %add) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %hdr, i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %add, i32 -14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %list_del.exit.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ -14, %list_del.exit.copy_to_user.exit_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i.copy_to_user.exit_crit_edge ]
  %27 = ptrtoint ptr %cmd_out_len to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cmd_out_len, align 8
  %conv57 = zext i16 %28 to i32
  %bytes_in_use = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 3
  %call.i.i86 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_in_use, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %bytes_in_use, i32 1, i32 3, i32 1) #11
  %29 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_in_use, ptr %bytes_in_use, i32 %conv57, ptr elementtype(i32) %bytes_in_use) #11, !srcloc !131
  call void @kvfree(ptr noundef %add.ptr) #11
  br label %cleanup58

cleanup58:                                        ; preds = %copy_to_user.exit, %if.then46, %if.then39, %if.end29, %while.body.cleanup58_crit_edge
  %retval.0 = phi i32 [ -5, %if.then39 ], [ -28, %if.then46 ], [ %n.addr.0.i, %copy_to_user.exit ], [ -512, %if.end29 ], [ -11, %while.body.cleanup58_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devx_async_cmd_event_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ev_queue1 = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1
  %poll_wait = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 1
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %poll_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %poll_wait, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %ev_queue1) #11
  %is_destroyed = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %is_destroyed to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_destroyed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %poll_wait.exit.if.end4_crit_edge

poll_wait.exit.if.end4_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.else:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  %event_list = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %6, %event_list
  %spec.select = select i1 %cmp.i.not, i32 0, i32 65
  br label %if.end4

if.end4:                                          ; preds = %if.else, %poll_wait.exit.if.end4_crit_edge
  %pollflags.0 = phi i32 [ 8257, %poll_wait.exit.if.end4_crit_edge ], [ %spec.select, %if.else ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %ev_queue1) #11
  ret i32 %pollflags.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_uobject_fd_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC(ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_uobject.exit_crit_edge ]
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
  %ev_queue = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %retval.0.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ev_queue, ptr noundef nonnull @.str.49, ptr noundef nonnull @devx_init_event_queue.__key, i16 noundef signext 3) #11
  %event_list.i = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %retval.0.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %event_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %event_list.i, ptr %event_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %retval.0.i, i32 0, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %event_list.i, ptr %prev.i.i, align 4
  %poll_wait.i = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %retval.0.i, i32 0, i32 1, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %poll_wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @devx_init_event_queue.__key.50) #11
  %bytes_in_use.i = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %retval.0.i, i32 0, i32 1, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bytes_in_use.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %bytes_in_use.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %bytes_in_use.i, align 4
  %is_destroyed.i = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %retval.0.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %is_destroyed.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %is_destroyed.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %is_destroyed.i, align 4
  %mdev2 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev2, align 8
  %async_ctx = getelementptr inbounds %struct.devx_async_cmd_event_file, ptr %retval.0.i, i32 0, i32 2
  tail call void @mlx5_cmd_init_async_ctx(ptr noundef %14, ptr noundef %async_ctx) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmd_init_async_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devx_async_event_destroy_uobj(ptr noundef %uobj, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.devx_async_event_file, ptr %uobj, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %lock = getelementptr inbounds %struct.devx_async_event_file, ptr %uobj, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %is_destroyed = getelementptr inbounds %struct.devx_async_event_file, ptr %uobj, i32 0, i32 6
  %2 = ptrtoint ptr %is_destroyed to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_destroyed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %is_destroyed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %event_list24 = getelementptr inbounds %struct.devx_async_event_file, ptr %uobj, i32 0, i32 4
  %3 = ptrtoint ptr %event_list24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event_list24, align 8
  %cmp35.not108 = icmp eq ptr %4, %event_list24
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp35.not108, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %5 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %4, %if.then.for.body_crit_edge ]
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %5, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %prev.i3.i, align 4
  %cmp.not = icmp eq ptr %.pn, %event_list24
  br i1 %cmp.not, label %list_del_init.exit.if.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp35.not108, label %if.else.if.end_crit_edge, label %if.else.for.body37_crit_edge

if.else.for.body37_crit_edge:                     ; preds = %if.else
  br label %for.body37

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body37:                                       ; preds = %list_del.exit.for.body37_crit_edge, %if.else.for.body37_crit_edge
  %entry21.0109 = phi ptr [ %tmp22.0, %list_del.exit.for.body37_crit_edge ], [ %4, %if.else.for.body37_crit_edge ]
  %15 = ptrtoint ptr %entry21.0109 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp22.0 = load ptr, ptr %entry21.0109, align 8
  %call.i.i97 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry21.0109) #11
  br i1 %call.i.i97, label %if.end.i.i100, label %for.body37.list_del.exit_crit_edge

for.body37.list_del.exit_crit_edge:               ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i100:                                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i98 = getelementptr inbounds %struct.list_head, ptr %entry21.0109, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i98, align 4
  %18 = ptrtoint ptr %entry21.0109 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entry21.0109, align 4
  %prev1.i.i.i99 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i99, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i100, %for.body37.list_del.exit_crit_edge
  %22 = ptrtoint ptr %entry21.0109 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %entry21.0109, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry21.0109, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry21.0109) #11
  %cmp35.not = icmp eq ptr %tmp22.0, %event_list24
  br i1 %cmp35.not, label %list_del.exit.if.end_crit_edge, label %list_del.exit.for.body37_crit_edge

list_del.exit.for.body37_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body37

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %list_del.exit.if.end_crit_edge, %if.else.if.end_crit_edge, %list_del_init.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %poll_wait = getelementptr inbounds %struct.devx_async_event_file, ptr %uobj, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %event_xa_lock = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 37, i32 1
  tail call void @mutex_lock_nested(ptr noundef %event_xa_lock, i32 noundef 0) #11
  %subscribed_events_list = getelementptr inbounds %struct.devx_async_event_file, ptr %uobj, i32 0, i32 1
  %24 = ptrtoint ptr %subscribed_events_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %subscribed_events_list, align 8
  %cmp58.not111 = icmp eq ptr %25, %subscribed_events_list
  br i1 %cmp58.not111, label %if.end.for.end68_crit_edge, label %if.end.for.body60_crit_edge

if.end.for.body60_crit_edge:                      ; preds = %if.end
  br label %for.body60

if.end.for.end68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end68

for.body60:                                       ; preds = %list_del_rcu.exit.for.body60_crit_edge, %if.end.for.body60_crit_edge
  %event_sub.0112 = phi ptr [ %event_sub_tmp.0, %list_del_rcu.exit.for.body60_crit_edge ], [ %25, %if.end.for.body60_crit_edge ]
  %26 = ptrtoint ptr %event_sub.0112 to i32
  call void @__asan_load4_noabort(i32 %26)
  %event_sub_tmp.0 = load ptr, ptr %event_sub.0112, align 8
  tail call fastcc void @devx_cleanup_subscription(ptr noundef %1, ptr noundef %event_sub.0112)
  %call.i.i101 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %event_sub.0112) #11
  br i1 %call.i.i101, label %if.end.i.i104, label %for.body60.list_del_rcu.exit_crit_edge

for.body60.list_del_rcu.exit_crit_edge:           ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i104:                                    ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i102 = getelementptr inbounds %struct.list_head, ptr %event_sub.0112, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i102, align 4
  %29 = ptrtoint ptr %event_sub.0112 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %event_sub.0112, align 4
  %prev1.i.i.i103 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i103, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i104, %for.body60.list_del_rcu.exit_crit_edge
  %prev.i105 = getelementptr inbounds %struct.list_head, ptr %event_sub.0112, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i105, align 4
  %rcu = getelementptr inbounds %struct.devx_event_subscription, ptr %event_sub.0112, i32 0, i32 7
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @devx_free_subscription) #11
  %cmp58.not = icmp eq ptr %event_sub_tmp.0, %subscribed_events_list
  br i1 %cmp58.not, label %list_del_rcu.exit.for.end68_crit_edge, label %list_del_rcu.exit.for.body60_crit_edge

list_del_rcu.exit.for.body60_crit_edge:           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body60

list_del_rcu.exit.for.end68_crit_edge:            ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end68

for.end68:                                        ; preds = %list_del_rcu.exit.for.end68_crit_edge, %if.end.for.end68_crit_edge
  tail call void @mutex_unlock(ptr noundef %event_xa_lock) #11
  %34 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  tail call void @put_device(ptr noundef %34) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devx_free_subscription(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %eventfd = getelementptr i8, ptr %rcu, i32 24
  %0 = ptrtoint ptr %eventfd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eventfd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @eventfd_ctx_put(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -44
  %ev_file = getelementptr i8, ptr %rcu, i32 20
  %2 = ptrtoint ptr %ev_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ev_file, align 8
  tail call void @uverbs_uobject_put(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devx_async_event_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %omit_data1 = getelementptr inbounds %struct.devx_async_event_file, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %omit_data1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %omit_data1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %lock = getelementptr inbounds %struct.devx_async_event_file, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %3 = ptrtoint ptr %omit_data1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %omit_data1, align 4
  %4 = and i8 %bf.load2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %event_list = getelementptr inbounds %struct.devx_async_event_file, ptr %1, i32 0, i32 4
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %poll_wait = getelementptr inbounds %struct.devx_async_event_file, ptr %1, i32 0, i32 3
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear7 = and i8 %bf.load2, -65
  %5 = ptrtoint ptr %omit_data1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.clear7, ptr %omit_data1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %cleanup85

while.cond:                                       ; preds = %if.end47.while.cond_crit_edge, %while.cond.preheader
  %6 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %7, %event_list
  br i1 %cmp.i.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end13, label %while.body.cleanup85_crit_edge

while.body.cleanup85_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

if.end13:                                         ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2656) #11
  %10 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %event_list, align 4
  %cmp.i120.not = icmp eq ptr %11, %event_list
  br i1 %cmp.i120.not, label %lor.lhs.false, label %if.end13.if.end47_crit_edge

if.end13.if.end47_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

lor.lhs.false:                                    ; preds = %if.end13
  %12 = ptrtoint ptr %omit_data1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load20 = load i8, ptr %omit_data1, align 4
  %13 = and i8 %bf.load20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not = icmp eq i8 %13, 0
  br i1 %tobool23.not, label %if.then24, label %lor.lhs.false.if.end47_crit_edge

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then24:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call26167 = call i32 @prepare_to_wait_event(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %15 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %event_list, align 4
  %cmp.i122.not168 = icmp eq ptr %16, %event_list
  br i1 %cmp.i122.not168, label %if.then24.lor.lhs.false30_crit_edge, label %if.then24.if.end43.thread139_crit_edge

if.then24.if.end43.thread139_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.thread139

if.then24.lor.lhs.false30_crit_edge:              ; preds = %if.then24
  br label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %cleanup.lor.lhs.false30_crit_edge, %if.then24.lor.lhs.false30_crit_edge
  %call26169 = phi i32 [ %call26, %cleanup.lor.lhs.false30_crit_edge ], [ %call26167, %if.then24.lor.lhs.false30_crit_edge ]
  %17 = ptrtoint ptr %omit_data1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load32 = load i8, ptr %omit_data1, align 4
  %18 = and i8 %bf.load32, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool36.not = icmp eq i8 %18, 0
  br i1 %tobool36.not, label %if.end38, label %lor.lhs.false30.if.end43.thread139_crit_edge

lor.lhs.false30.if.end43.thread139_crit_edge:     ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.thread139

if.end38:                                         ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26169)
  %tobool39.not = icmp eq i32 %call26169, 0
  br i1 %tobool39.not, label %cleanup, label %if.end43

cleanup:                                          ; preds = %if.end38
  call void @schedule() #11
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %19 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %event_list, align 4
  %cmp.i122.not = icmp eq ptr %20, %event_list
  br i1 %cmp.i122.not, label %cleanup.lor.lhs.false30_crit_edge, label %cleanup.if.end43.thread139_crit_edge

cleanup.if.end43.thread139_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.thread139

cleanup.lor.lhs.false30_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false30

if.end43.thread139:                               ; preds = %cleanup.if.end43.thread139_crit_edge, %lor.lhs.false30.if.end43.thread139_crit_edge, %if.then24.if.end43.thread139_crit_edge
  call void @finish_wait(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end47

if.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup85

if.end47:                                         ; preds = %if.end43.thread139, %lor.lhs.false.if.end47_crit_edge, %if.end13.if.end47_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %21 = ptrtoint ptr %omit_data1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load50 = load i8, ptr %omit_data1, align 4
  %22 = and i8 %bf.load50, 32
  %tobool53.not = icmp eq i8 %22, 0
  br i1 %tobool53.not, label %if.end47.while.cond_crit_edge, label %if.then54

if.end47.while.cond_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %cleanup85

while.end:                                        ; preds = %while.cond
  br i1 %tobool.not, label %if.end66, label %if.end66.thread

if.end66:                                         ; preds = %while.end
  %hdr = getelementptr inbounds %struct.devx_async_event_data, ptr %7, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %count)
  %cmp = icmp ult i32 %count, 72
  br i1 %cmp, label %if.end66.if.then68_crit_edge, label %if.else74

if.end66.if.then68_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

if.end66.thread:                                  ; preds = %while.end
  %cookie = getelementptr i8, ptr %7, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp146 = icmp ult i32 %count, 8
  br i1 %cmp146, label %if.end66.thread.if.then68_crit_edge, label %if.then72

if.end66.thread.if.then68_crit_edge:              ; preds = %if.end66.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

if.then68:                                        ; preds = %if.end66.thread.if.then68_crit_edge, %if.end66.if.then68_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %cleanup85

if.then72:                                        ; preds = %if.end66.thread
  %call.i.i124 = call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #11
  br i1 %call.i.i124, label %if.end.i.i125, label %if.then72.list_del_init.exit_crit_edge

if.then72.list_del_init.exit_crit_edge:           ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i125:                                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i125, %if.then72.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %7, ptr %7, align 4
  br label %if.end75

if.else74:                                        ; preds = %if.end66
  %call.i.i126 = call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #11
  br i1 %call.i.i126, label %if.end.i.i129, label %if.else74.list_del.exit_crit_edge

if.else74.list_del.exit_crit_edge:                ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i129:                                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i127 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i127 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i127, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %7, align 4
  %prev1.i.i.i128 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i128, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i129, %if.else74.list_del.exit_crit_edge
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  br label %if.end75

if.end75:                                         ; preds = %list_del.exit, %list_del_init.exit
  %.sink = phi ptr [ inttoptr (i32 290 to ptr), %list_del.exit ], [ %7, %list_del_init.exit ]
  %event_data.0147161 = phi ptr [ %hdr, %list_del.exit ], [ %cookie, %list_del_init.exit ]
  %eventsz.0149159 = phi i32 [ 72, %list_del.exit ], [ 8, %list_del_init.exit ]
  %event.0150157 = phi ptr [ %7, %list_del.exit ], [ inttoptr (i32 -1 to ptr), %list_del_init.exit ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %.sink, ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  call void @__check_object_size(ptr noundef %event_data.0147161, i32 noundef %eventsz.0149159, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end75.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end75.copy_to_user.exit_crit_edge:             ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end75
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %eventsz.0149159, i32 -1226833920) #15, !srcloc !133
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %event_data.0147161, i32 noundef %eventsz.0149159) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %event_data.0147161, i32 noundef %eventsz.0149159) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %eventsz.0149159, i32 -14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end75.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ -14, %if.end75.copy_to_user.exit_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i.copy_to_user.exit_crit_edge ]
  br i1 %tobool.not, label %if.then83, label %copy_to_user.exit.cleanup85_crit_edge

copy_to_user.exit.cleanup85_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

if.then83:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %event.0150157) #11
  br label %cleanup85

cleanup85:                                        ; preds = %if.then83, %copy_to_user.exit.cleanup85_crit_edge, %if.then68, %if.then54, %if.end43, %while.body.cleanup85_crit_edge, %if.then
  %retval.0 = phi i32 [ -75, %if.then ], [ -5, %if.then54 ], [ -22, %if.then68 ], [ -512, %if.end43 ], [ %n.addr.0.i, %if.then83 ], [ %n.addr.0.i, %copy_to_user.exit.cleanup85_crit_edge ], [ -11, %while.body.cleanup85_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devx_async_event_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %poll_wait = getelementptr inbounds %struct.devx_async_event_file, ptr %1, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %poll_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %poll_wait, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %lock = getelementptr inbounds %struct.devx_async_event_file, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %is_destroyed = getelementptr inbounds %struct.devx_async_event_file, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %is_destroyed to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_destroyed, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %poll_wait.exit.if.end3_crit_edge

poll_wait.exit.if.end3_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.else:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  %event_list = getelementptr inbounds %struct.devx_async_event_file, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %7, %event_list
  %spec.select = select i1 %cmp.i.not, i32 0, i32 65
  br label %if.end3

if.end3:                                          ; preds = %if.else, %poll_wait.exit.if.end3_crit_edge
  %pollflags.0 = phi i32 [ 8257, %poll_wait.exit.if.end3_crit_edge ], [ %spec.select, %if.else ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret i32 %pollflags.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC(ptr noundef %attrs) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not = icmp eq ptr %attrs, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cond.end_crit_edge, label %cond.true

uverbs_attr_get_uobject.exit.cond.end_crit_edge:  ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %uverbs_attr_get_uobject.exit.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ null, %uverbs_attr_get_uobject.exit.cond.end_crit_edge ]
  %7 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cond, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %flags, align 4, !annotation !117
  %call4 = call i32 @uverbs_get_flags32(ptr noundef nonnull %flags, ptr noundef %attrs, i32 noundef 4097, i64 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %lock = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.56, ptr noundef nonnull @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key, i16 noundef signext 3) #11
  %event_list = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i, i32 0, i32 4
  %10 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %event_list, ptr %prev.i, align 4
  %poll_wait = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %poll_wait, ptr noundef nonnull @.str.58, ptr noundef nonnull @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key.57) #11
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %omit_data = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i, i32 0, i32 6
  %14 = ptrtoint ptr %omit_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %omit_data, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %omit_data, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %subscribed_events_list = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %subscribed_events_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %subscribed_events_list, ptr %subscribed_events_list, align 4
  %prev.i33 = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %subscribed_events_list, ptr %prev.i33, align 4
  %dev16 = getelementptr inbounds %struct.devx_async_event_file, ptr %retval.0.i, i32 0, i32 5
  %17 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %dev16, align 8
  %18 = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 13
  %call17 = call ptr @get_device(ptr noundef %18) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %cond.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38, !39, !41, !42, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103}
!llvm.named.register.sp = !{!104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @mlx5_ib_devx_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2512, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx5_ib_devx_defs, !4, !"mlx5_ib_devx_defs", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 3027, i32 30}
!5 = !{ptr @xa_init_flags.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2348, i32 2}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2446, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX, !21, !"mlx5_ib_object_MLX5_IB_OBJECT_DEVX", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2967, i32 1}
!22 = !{ptr @_object_methods_MLX5_IB_OBJECT_DEVX2971, !21, !"_object_methods_MLX5_IB_OBJECT_DEVX2971", i1 false, i1 false}
!23 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OTHER, !24, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OTHER", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2858, i32 1}
!25 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OTHER, !24, !"_method_attrs_MLX5_IB_METHOD_DEVX_OTHER", i1 false, i1 false}
!26 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_UAR, !27, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_UAR", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2849, i32 1}
!28 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_UAR, !27, !"_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_UAR", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!36 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_EQN, !37, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_QUERY_EQN", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2840, i32 1}
!38 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_EQN, !37, !"_method_attrs_MLX5_IB_METHOD_DEVX_QUERY_EQN", i1 false, i1 false}
!39 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT, !40, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2946, i32 1}
!41 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT, !40, !"_method_attrs_MLX5_IB_METHOD_DEVX_SUBSCRIBE_EVENT", i1 false, i1 false}
!42 = !{ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_OBJ, !43, !"mlx5_ib_object_MLX5_IB_OBJECT_DEVX_OBJ", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2973, i32 1}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/mlx5/mlx5_ib.h", i32 1627, i32 2}
!46 = !{ptr @_object_methods_MLX5_IB_OBJECT_DEVX_OBJ2979, !43, !"_object_methods_MLX5_IB_OBJECT_DEVX_OBJ2979", i1 false, i1 false}
!47 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_CREATE, !48, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_CREATE", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2870, i32 1}
!49 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_CREATE, !48, !"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_CREATE", i1 false, i1 false}
!50 = !{ptr @devx_handle_mkey_indirect.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 1305, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_DESTROY, !54, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_DESTROY", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2886, i32 1}
!55 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_DESTROY, !54, !"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_DESTROY", i1 false, i1 false}
!56 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_MODIFY, !57, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_MODIFY", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2893, i32 1}
!58 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_MODIFY, !57, !"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_MODIFY", i1 false, i1 false}
!59 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_QUERY, !60, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_QUERY", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2909, i32 1}
!61 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_QUERY, !60, !"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_QUERY", i1 false, i1 false}
!62 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY, !63, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2925, i32 1}
!64 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY, !63, !"_method_attrs_MLX5_IB_METHOD_DEVX_OBJ_ASYNC_QUERY", i1 false, i1 false}
!65 = !{ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_UMEM, !66, !"mlx5_ib_object_MLX5_IB_OBJECT_DEVX_UMEM", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2981, i32 1}
!67 = !{ptr @_object_methods_MLX5_IB_OBJECT_DEVX_UMEM2984, !66, !"_object_methods_MLX5_IB_OBJECT_DEVX_UMEM2984", i1 false, i1 false}
!68 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_REG, !69, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_REG", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2813, i32 1}
!70 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_REG, !69, !"_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_REG", i1 false, i1 false}
!71 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_DEREG, !72, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_UMEM_DEREG", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2833, i32 1}
!73 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_DEREG, !72, !"_method_attrs_MLX5_IB_METHOD_DEVX_UMEM_DEREG", i1 false, i1 false}
!74 = !{ptr @.str.46, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2994, i32 1}
!76 = !{ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD, !75, !"mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD", i1 false, i1 false}
!77 = !{ptr @devx_async_cmd_event_fops, !78, !"devx_async_cmd_event_fops", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2618, i32 37}
!79 = !{ptr @_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD3000, !75, !"_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_CMD_FD3000", i1 false, i1 false}
!80 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC, !81, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2987, i32 1}
!82 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC, !81, !"_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_CMD_FD_ALLOC", i1 false, i1 false}
!83 = !{ptr @devx_init_event_queue.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 1658, i32 2}
!85 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @devx_init_event_queue.__key.50, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 1660, i32 2}
!88 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 3012, i32 1}
!91 = !{ptr @mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD, !90, !"mlx5_ib_object_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD", i1 false, i1 false}
!92 = !{ptr @devx_async_event_fops, !93, !"devx_async_event_fops", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 2733, i32 37}
!94 = !{ptr @_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD3018, !90, !"_object_methods_MLX5_IB_OBJECT_DEVX_ASYNC_EVENT_FD3018", i1 false, i1 false}
!95 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC, !96, !"mlx5_ib_method_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 3002, i32 1}
!97 = !{ptr @_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC, !96, !"_method_attrs_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC", i1 false, i1 false}
!98 = !{ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 1702, i32 2}
!100 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mlx5_ib_handler_MLX5_IB_METHOD_DEVX_ASYNC_EVENT_FD_ALLOC.__key.57, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/hw/mlx5/devx.c", i32 1704, i32 2}
!103 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!104 = !{!"sp"}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i64 2149694822}
!116 = !{i64 2149695088}
!117 = !{!"auto-init"}
!118 = !{i64 2152554853, i64 2152554878}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 5050408}
!121 = !{i64 5050605}
!122 = !{i64 2152535838}
!123 = !{i64 2148477110, i64 2148477142, i64 2148477171, i64 2148477205, i64 2148477236, i64 2148477259}
!124 = !{i64 2150580866}
!125 = !{i64 2148565111}
!126 = !{i64 2148479575, i64 2148479607, i64 2148479636, i64 2148479670, i64 2148479701, i64 2148479724}
!127 = !{i64 2149731237}
!128 = !{i64 2148560991}
!129 = !{i64 2148476300, i64 2148476332, i64 2148476361, i64 2148476395, i64 2148476426, i64 2148476449}
!130 = !{i64 2148561220}
!131 = !{i64 2148478045, i64 2148478071, i64 2148478100, i64 2148478134, i64 2148478165, i64 2148478188}
!132 = !{i32 0, i32 33}
!133 = !{i64 2152555534, i64 2152555559}
