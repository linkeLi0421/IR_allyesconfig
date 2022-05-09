; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/std_types.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/std_types.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon = type { i16 }
%union.anon.180 = type { ptr }
%struct.uapi_definition = type { i8, i8, %union.anon, %union.anon.180 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i16, i8, i8, i8 }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.anon.183 = type { i16, i8 }
%union.anon.185 = type { %struct.anon.186, [4 x i8] }
%struct.anon.186 = type { ptr }
%struct.uverbs_attr_def = type { i16, %struct.uverbs_attr_spec }
%struct.uverbs_attr_spec = type { i8, i8, %union.anon.181, %union.anon.185 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i16, i16 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.174 }
%union.anon.174 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.175, i16, i16, i8 }
%union.anon.175 = type { i64 }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.mlx5_ib_pd = type { %struct.ib_pd, i32, i16 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5_ib_uapi_query_port = type { i64, i16, i16, i16, i16, i64, i64, %struct.mlx5_ib_uapi_reg }
%struct.mlx5_ib_uapi_reg = type { i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.179, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.179 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ib_odp_caps = type { i64, %struct.anon.168 }
%struct.anon.168 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.umr_common = type { ptr, ptr, ptr, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_ib_resources = type { ptr, i32, i32, ptr, ptr, ptr, [2 x %struct.mlx5_ib_port_resources] }
%struct.mlx5_ib_port_resources = type { ptr, %struct.work_struct }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.mlx5_ib_delay_drop = type { ptr, %struct.work_struct, %struct.mutex, i32, i8, %struct.atomic_t, %struct.atomic_t, ptr }
%struct.mlx5_ib_lb_state = type { %struct.mutex, i32, i32, i8 }
%struct.mlx5_dm = type { ptr, %struct.spinlock, [8 x i32] }
%struct.mlx5_srq_table = type { %struct.notifier_block, %struct.xarray }
%struct.mlx5_qp_table = type { %struct.notifier_block, %struct.spinlock, %struct.xarray }
%struct.mlx5_async_ctx = type { ptr, %struct.atomic_t, %struct.wait_queue_head }
%struct.mlx5_devx_event_table = type { %struct.mlx5_nb, %struct.mutex, %struct.xarray }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.mlx5_var_table = type { %struct.mutex, ptr, i64, i32, i64 }
%struct.mlx5_port_caps = type { i8, i8 }
%struct.mlx5_ib_port = type { %struct.mlx5_ib_counters, %struct.mlx5_ib_multiport, ptr, %struct.mlx5_roce, ptr }
%struct.mlx5_ib_counters = type { ptr, ptr, i32, i32, i32, i32, i16, [3 x %struct.mlx5_ib_op_fc] }
%struct.mlx5_ib_op_fc = type { ptr, [2 x ptr] }
%struct.mlx5_ib_multiport = type { ptr, %struct.spinlock }
%struct.mlx5_roce = type { %struct.rwlock_t, ptr, %struct.notifier_block, %struct.atomic_t, i32, ptr, i32 }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }
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
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.152 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.152 = type { %struct.devlink_port_pci_vf_attrs }
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

@mlx5_ib_pd = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 1, ptr null, i32 1, ptr @_object_methods_UVERBS_OBJECT_PD212 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_device = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 0, ptr null, i32 1, ptr @_object_methods_UVERBS_OBJECT_DEVICE198 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_std_types_defs = dso_local constant { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.180 }, { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.180 }, { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon, [4 x i8] } { %struct.anon { i16 1 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_pd } }, { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon, [4 x i8] } { %struct.anon zeroinitializer, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_device } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_PD212 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_PD_QUERY], [28 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_PD_QUERY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 2, ptr @_method_attrs_MLX5_IB_METHOD_PD_QUERY, ptr @mlx5_ib_handler_MLX5_IB_METHOD_PD_QUERY }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_PD_QUERY = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.1], [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 1, i8 0 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.181 { %struct.anon.182 { i16 4, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_DEVICE198 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_QUERY_PORT], [28 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_QUERY_PORT = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 2, ptr @_method_attrs_MLX5_IB_METHOD_QUERY_PORT, ptr @mlx5_ib_handler_MLX5_IB_METHOD_QUERY_PORT }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_QUERY_PORT = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.2, ptr @.compoundliteral.3], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 4, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 -96, %union.anon.181 { %struct.anon.182 { i16 40, i16 40 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"mlx5_ib_pd\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"mlx5_ib_device\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"mlx5_ib_std_types_defs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 214, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant [36 x i8] c"_object_methods_UVERBS_OBJECT_PD212\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 210, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [39 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_PD_QUERY\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [38 x i8] c"_method_attrs_MLX5_IB_METHOD_PD_QUERY\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 200, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [40 x i8] c"_object_methods_UVERBS_OBJECT_DEVICE198\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 196, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [41 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_QUERY_PORT\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [40 x i8] c"_method_attrs_MLX5_IB_METHOD_QUERY_PORT\00", align 1
@___asan_gen_.33 = private constant [42 x i8] c"../drivers/infiniband/hw/mlx5/std_types.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 186, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @mlx5_ib_pd, ptr @mlx5_ib_device, ptr @mlx5_ib_std_types_defs, ptr @_object_methods_UVERBS_OBJECT_PD212, ptr @mlx5_ib_method_MLX5_IB_METHOD_PD_QUERY, ptr @_method_attrs_MLX5_IB_METHOD_PD_QUERY, ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @_object_methods_UVERBS_OBJECT_DEVICE198, ptr @mlx5_ib_method_MLX5_IB_METHOD_QUERY_PORT, ptr @_method_attrs_MLX5_IB_METHOD_QUERY_PORT, ptr @.compoundliteral.2, ptr @.compoundliteral.3], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_pd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_device to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_std_types_defs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_PD212 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_PD_QUERY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_PD_QUERY to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_DEVICE198 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_QUERY_PORT to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_QUERY_PORT to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_PD_QUERY(ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 1, i32 1
  %retval.0.i.i = select i1 %tobool.i.not.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i

entry.uverbs_attr_get_obj.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %uverbs_attr_get_obj.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i.i, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i, %entry.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_obj.exit_crit_edge ]
  %pdn = getelementptr inbounds %struct.mlx5_ib_pd, ptr %retval.0.i, i32 0, i32 1
  %call2 = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4097, ptr noundef %pdn, i32 noundef 4) #4
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_QUERY_PORT(ptr noundef %attrs) #0 align 64 {
entry:
  %out.i.i = alloca [68 x i32], align 4
  %in.i59.i = alloca [4 x i32], align 4
  %in.i.i = alloca [4 x i32], align 4
  %info = alloca %struct.mlx5_ib_uapi_query_port, align 8
  %port_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #4
  %0 = call ptr @memset(ptr %info, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_num)
  %1 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %port_num, align 4
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %2 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i.i = icmp eq i32 %4, 0
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 1, i32 1
  %retval.0.i.i = select i1 %tobool.i.not.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %len.i = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %cmp.i = icmp ugt i16 %6, 4
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %_uverbs_copy_from.exit.thread, !prof !31

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

_uverbs_copy_from.exit.thread:                    ; preds = %if.end.i
  %conv11.i = zext i16 %6 to i32
  %7 = call ptr @memcpy(ptr %port_num, ptr %retval.0.i.i, i32 %conv11.i)
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %8 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufile.i, align 8
  %call.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %9) #4
  %cmp.i32 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.then4, label %if.end6

if.then4:                                         ; preds = %_uverbs_copy_from.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end6:                                          ; preds = %_uverbs_copy_from.exit.thread
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 8
  %13 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %port_num.0.port_num.0. = load i32, ptr %port_num, align 4
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 19
  %14 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  %15 = xor i8 %bf.load.i.i.i, -1
  %16 = lshr i8 %15, 7
  %.not.i.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %port_num.0.port_num.0., i32 %.not.i.i)
  %cmp.not.i = icmp ult i32 %port_num.0.port_num.0., %.not.i.i
  br i1 %cmp.not.i, label %if.end6.cleanup_crit_edge, label %land.rhs.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.rdma_is_port_valid.exit_crit_edge, label %cond.false.i.i

land.rhs.i.rdma_is_port_valid.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_is_port_valid.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 21
  %17 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys_port_cnt.i.i, align 8
  br label %rdma_is_port_valid.exit

rdma_is_port_valid.exit:                          ; preds = %cond.false.i.i, %land.rhs.i.rdma_is_port_valid.exit_crit_edge
  %cond.i.i = phi i32 [ %18, %cond.false.i.i ], [ 0, %land.rhs.i.rdma_is_port_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %port_num.0.port_num.0.)
  %cmp2.i.not = icmp ult i32 %cond.i.i, %port_num.0.port_num.0.
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.cleanup_crit_edge, label %if.end11

rdma_is_port_valid.exit.cleanup_crit_edge:        ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %rdma_is_port_valid.exit
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 8
  %call12 = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call12)
  %cmp = icmp eq i8 %call12, 2
  br i1 %cmp, label %if.then14, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  %port.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %12, i32 0, i32 22
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port.i, align 8
  %sub.i = add i32 %port_num.0.port_num.0., -1
  %rep1.i = getelementptr %struct.mlx5_ib_port, ptr %22, i32 %sub.i, i32 4
  %23 = ptrtoint ptr %rep1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rep1.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.then14.cleanup_crit_edge, label %if.end.i34

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i34:                                       ; preds = %if.then14
  %esw.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %esw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %esw.i, align 4
  %call.i33 = tail call ptr @mlx5_eswitch_get_core_dev(ptr noundef %26) #4
  %tobool2.not.i = icmp eq ptr %call.i33, null
  br i1 %tobool2.not.i, label %if.end.i34.cleanup_crit_edge, label %if.end4.i

if.end.i34.cleanup_crit_edge:                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i34
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vport.i, align 4
  %vport5.i = getelementptr inbounds %struct.mlx5_ib_uapi_query_port, ptr %info, i32 0, i32 1
  %29 = ptrtoint ptr %vport5.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vport5.i, align 8
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %info, align 8
  %or.i = or i64 %31, 1
  store i64 %or.i, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp.not.i35 = icmp eq i16 %28, -1
  br i1 %cmp.not.i35, label %if.end4.i.if.end14.i_crit_edge, label %if.then8.i

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #4
  %32 = call ptr @memset(ptr %in.i.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 4112) #7
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %fill_vport_vhca_id.exit.thread.i, label %do.body.i.i

fill_vport_vhca_id.exit.thread.i:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #4
  br label %cleanup

do.body.i.i:                                      ; preds = %if.then8.i
  %34 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %in.i.i, align 4
  %and.i.i = and i32 %35, 65535
  %or.i.i = or i32 %and.i.i, 16777216
  store i32 %or.i.i, ptr %in.i.i, align 4
  %add.ptr13.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  %36 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr13.i.i, align 4
  %conv.i.i = zext i16 %28 to i32
  %or17.i.i = and i32 %37, 2147418112
  %and29.i.i = or i32 %or17.i.i, %conv.i.i
  %or32.i.i = or i32 %and29.i.i, -2147483648
  store i32 %or32.i.i, ptr %add.ptr13.i.i, align 4
  %add.ptr43.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 1
  %38 = ptrtoint ptr %add.ptr43.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr43.i.i, align 4
  %and44.i.i = and i32 %39, -65536
  %or47.i.i = or i32 %and44.i.i, 1
  store i32 %or47.i.i, ptr %add.ptr43.i.i, align 4
  %call53.i.i = call i32 @mlx5_cmd_exec(ptr noundef nonnull %call.i33, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4112) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %fill_vport_vhca_id.exit.thread66.i, label %fill_vport_vhca_id.exit.i

fill_vport_vhca_id.exit.thread66.i:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr57.i.i = getelementptr i32, ptr %call7.i.i.i.i, i32 5
  %40 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr57.i.i, align 4
  %conv59.i.i = trunc i32 %41 to i16
  %vport_vhca_id.i.i = getelementptr inbounds %struct.mlx5_ib_uapi_query_port, ptr %info, i32 0, i32 2
  %42 = ptrtoint ptr %vport_vhca_id.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv59.i.i, ptr %vport_vhca_id.i.i, align 2
  %43 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %info, align 8
  %or60.i.i = or i64 %44, 2
  store i64 %or60.i.i, ptr %info, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #4
  br label %if.end14.i

fill_vport_vhca_id.exit.i:                        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #4
  br label %cleanup

if.end14.i:                                       ; preds = %fill_vport_vhca_id.exit.thread66.i, %if.end4.i.if.end14.i_crit_edge
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call.i33, i32 0, i32 8
  %45 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %46, i32 1
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i, align 4
  %conv16.i = trunc i32 %48 to i16
  %esw_owner_vhca_id.i = getelementptr inbounds %struct.mlx5_ib_uapi_query_port, ptr %info, i32 0, i32 3
  %49 = ptrtoint ptr %esw_owner_vhca_id.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv16.i, ptr %esw_owner_vhca_id.i, align 4
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %info, align 8
  %or18.i = or i64 %51, 32
  store i64 %or18.i, ptr %info, align 8
  %52 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vport.i, align 4
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %out.i.i) #4
  %54 = call ptr @memset(ptr %out.i.i, i32 0, i32 272)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i59.i) #4
  %55 = call ptr @memset(ptr %in.i59.i, i32 0, i32 16)
  %arrayidx.i.i36 = getelementptr %struct.mlx5_core_dev, ptr %call.i33, i32 0, i32 8, i32 0, i32 8
  %56 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i36, align 8
  %add.ptr.i.i = getelementptr i32, ptr %57, i32 16
  %58 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i, align 4
  %60 = and i32 %59, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %.not105.i.i = icmp eq i32 %60, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %53)
  %cmp.i.i37 = icmp eq i16 %53, -1
  br i1 %cmp.i.i37, label %if.then.i.i, label %do.body.i62.i

if.then.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i.i = getelementptr i64, ptr %57, i32 98
  %61 = ptrtoint ptr %add.ptr16.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %add.ptr16.i.i, align 8
  %add.ptr22.i.i = getelementptr i64, ptr %57, i32 99
  br label %if.end71.i.i

do.body.i62.i:                                    ; preds = %if.end14.i
  %conv.i60.i = zext i16 %53 to i32
  %63 = ptrtoint ptr %in.i59.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %in.i59.i, align 4
  %and26.i.i = and i32 %64, 65535
  %or.i61.i = or i32 %and26.i.i, 122814464
  store i32 %or.i61.i, ptr %in.i59.i, align 4
  %add.ptr39.i.i = getelementptr inbounds i32, ptr %in.i59.i, i32 2
  %65 = ptrtoint ptr %add.ptr39.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr39.i.i, align 4
  %and40.i.i = and i32 %66, 2147418112
  %or43.i.i = or i32 %and40.i.i, %conv.i60.i
  %or58.i.i = or i32 %or43.i.i, -2147483648
  store i32 %or58.i.i, ptr %add.ptr39.i.i, align 4
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef nonnull %call.i33, ptr noundef nonnull %in.i59.i, i32 noundef 16, ptr noundef nonnull %out.i.i, i32 noundef 272) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool65.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool65.not.i.i, label %if.end.i.i, label %fill_vport_icm_addr.exit.i

if.end.i.i:                                       ; preds = %do.body.i62.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr68.i.i = getelementptr inbounds i64, ptr %out.i.i, i32 32
  %67 = ptrtoint ptr %add.ptr68.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %add.ptr68.i.i, align 8
  %add.ptr70.i.i = getelementptr inbounds i64, ptr %out.i.i, i32 33
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %if.end.i.i, %if.then.i.i
  %add.ptr70.sink.i.i = phi ptr [ %add.ptr70.i.i, %if.end.i.i ], [ %add.ptr22.i.i, %if.then.i.i ]
  %icm_rx.0.i.i = phi i64 [ %68, %if.end.i.i ], [ %62, %if.then.i.i ]
  %69 = ptrtoint ptr %add.ptr70.sink.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %add.ptr70.sink.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %icm_rx.0.i.i)
  %tobool74.not.i.i = icmp eq i64 %icm_rx.0.i.i, 0
  %or.cond.i.i = select i1 %.not105.i.i, i1 true, i1 %tobool74.not.i.i
  br i1 %or.cond.i.i, label %if.end71.i.i.if.end77.i.i_crit_edge, label %if.then75.i.i

if.end71.i.i.if.end77.i.i_crit_edge:              ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77.i.i

if.then75.i.i:                                    ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %vport_steering_icm_rx.i.i = getelementptr inbounds %struct.mlx5_ib_uapi_query_port, ptr %info, i32 0, i32 5
  %71 = ptrtoint ptr %vport_steering_icm_rx.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %icm_rx.0.i.i, ptr %vport_steering_icm_rx.i.i, align 8
  %72 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %info, align 8
  %or76.i.i = or i64 %73, 4
  store i64 %or76.i.i, ptr %info, align 8
  br label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.then75.i.i, %if.end71.i.i.if.end77.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %tobool81.not.i.i = icmp eq i64 %70, 0
  %or.cond104.i.i = select i1 %.not105.i.i, i1 true, i1 %tobool81.not.i.i
  br i1 %or.cond104.i.i, label %if.end77.i.i.if.end23.i_crit_edge, label %if.then82.i.i

if.end77.i.i.if.end23.i_crit_edge:                ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then82.i.i:                                    ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %vport_steering_icm_tx.i.i = getelementptr inbounds %struct.mlx5_ib_uapi_query_port, ptr %info, i32 0, i32 6
  %74 = ptrtoint ptr %vport_steering_icm_tx.i.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %70, ptr %vport_steering_icm_tx.i.i, align 8
  %75 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %info, align 8
  %or84.i.i = or i64 %76, 8
  store i64 %or84.i.i, ptr %info, align 8
  br label %if.end23.i

fill_vport_icm_addr.exit.i:                       ; preds = %do.body.i62.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i59.i) #4
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out.i.i) #4
  br label %cleanup

if.end23.i:                                       ; preds = %if.then82.i.i, %if.end77.i.i.if.end23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i59.i) #4
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out.i.i) #4
  %77 = ptrtoint ptr %esw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %esw.i, align 4
  %call25.i = call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef %78) #4
  br i1 %call25.i, label %if.then26.i, label %if.end23.i.if.end19_crit_edge

if.end23.i.if.end19_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %79 = ptrtoint ptr %esw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %esw.i, align 4
  %81 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vport.i, align 4
  %call29.i = call i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef %80, i16 noundef zeroext %82) #4
  %reg_c0.i = getelementptr inbounds %struct.mlx5_ib_uapi_query_port, ptr %info, i32 0, i32 7
  %83 = ptrtoint ptr %reg_c0.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call29.i, ptr %reg_c0.i, align 8
  %mask.i = getelementptr inbounds %struct.mlx5_ib_uapi_query_port, ptr %info, i32 0, i32 7, i32 1
  %84 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -65536, ptr %mask.i, align 4
  %85 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %info, align 8
  %or33.i = or i64 %86, 16
  store i64 %or33.i, ptr %info, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then26.i, %if.end23.i.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %call20 = call i32 @uverbs_copy_to_struct_or_zero(ptr noundef %attrs, i32 noundef 4097, ptr noundef nonnull %info, i32 noundef 40) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %fill_vport_icm_addr.exit.i, %fill_vport_vhca_id.exit.i, %fill_vport_vhca_id.exit.thread.i, %if.end.i34.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %rdma_is_port_valid.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then4 ], [ %call20, %if.end19 ], [ -22, %rdma_is_port_valid.exit.cleanup_crit_edge ], [ -14, %if.end.i.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -12, %fill_vport_vhca_id.exit.thread.i ], [ %call.i.i, %fill_vport_icm_addr.exit.i ], [ %call53.i.i, %fill_vport_vhca_id.exit.i ], [ -22, %if.end.i34.cleanup_crit_edge ], [ -95, %if.then14.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_num)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5_eswitch_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to_struct_or_zero(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_uverbs_get_ucontext_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_core_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @mlx5_ib_std_types_defs, !1, !"mlx5_ib_std_types_defs", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/std_types.c", i32 214, i32 30}
!2 = !{ptr @mlx5_ib_pd, !3, !"mlx5_ib_pd", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mlx5/std_types.c", i32 210, i32 1}
!4 = !{ptr @_object_methods_UVERBS_OBJECT_PD212, !3, !"_object_methods_UVERBS_OBJECT_PD212", i1 false, i1 false}
!5 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_PD_QUERY, !6, !"mlx5_ib_method_MLX5_IB_METHOD_PD_QUERY", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/mlx5/std_types.c", i32 200, i32 1}
!7 = !{ptr @_method_attrs_MLX5_IB_METHOD_PD_QUERY, !6, !"_method_attrs_MLX5_IB_METHOD_PD_QUERY", i1 false, i1 false}
!8 = !{ptr @mlx5_ib_device, !9, !"mlx5_ib_device", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx5/std_types.c", i32 196, i32 1}
!10 = !{ptr @_object_methods_UVERBS_OBJECT_DEVICE198, !9, !"_object_methods_UVERBS_OBJECT_DEVICE198", i1 false, i1 false}
!11 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_QUERY_PORT, !12, !"mlx5_ib_method_MLX5_IB_METHOD_QUERY_PORT", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/mlx5/std_types.c", i32 186, i32 1}
!13 = !{ptr @_method_attrs_MLX5_IB_METHOD_QUERY_PORT, !12, !"_method_attrs_MLX5_IB_METHOD_QUERY_PORT", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!16 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
