; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/qos.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/qos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon = type { i16 }
%union.anon.180 = type { ptr }
%struct.uapi_definition = type { i8, i8, %union.anon, %union.anon.180 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i16, i8, i8, i8 }
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
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.179, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.179 = type { %struct.ib_core_device }
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
%struct.hlist_node = type { ptr, ptr }
%struct.ib_odp_caps = type { i64, %struct.anon.168 }
%struct.anon.168 = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.mlx5_ib_pp = type { i16, ptr }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.174 }
%union.anon.174 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.175, i16, i16, i8 }
%union.anon.175 = type { i64 }
%struct.mlx5_ib_ucontext = type { %struct.ib_ucontext, %struct.list_head, %struct.mutex, %struct.mlx5_bfreg_info, i8, i32, i64, i16, %struct.atomic_t }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx5_bfreg_info = type { ptr, i32, ptr, %struct.mutex, i32, i8, i32, i32, i32, i32 }

@mlx5_ib_object_MLX5_IB_OBJECT_PP = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 4103, ptr @.compoundliteral, i32 2, ptr @_object_methods_MLX5_IB_OBJECT_PP125 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_qos_defs = dso_local constant { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon, [4 x i8] } { %struct.anon { i16 4103 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_object_MLX5_IB_OBJECT_PP } }, %struct.uapi_definition { i8 5, i8 1, %union.anon zeroinitializer, %union.anon.180 { ptr @pp_is_supported } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @pp_obj_cleanup }, [20 x i8] zeroinitializer }, align 32
@_object_methods_MLX5_IB_OBJECT_PP125 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_ALLOC, ptr @mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_DESTROY], [24 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_ALLOC = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 4, ptr @_method_attrs_MLX5_IB_METHOD_PP_OBJ_ALLOC, ptr @mlx5_ib_handler_MLX5_IB_METHOD_PP_OBJ_ALLOC }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4097, i32 0, i32 1, ptr @_method_attrs_MLX5_IB_METHOD_PP_OBJ_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_PP_OBJ_ALLOC = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4103, i8 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.181 { %struct.anon.182 { i16 48, i16 1 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 8, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4099, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.181 { %struct.anon.182 { i16 2, i16 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_method_attrs_MLX5_IB_METHOD_PP_OBJ_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.5], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4103, i8 3 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [33 x i8] c"mlx5_ib_object_MLX5_IB_OBJECT_PP\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"mlx5_ib_qos_defs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 128, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [37 x i8] c"_object_methods_MLX5_IB_OBJECT_PP125\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 122, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [43 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_ALLOC\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [45 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_DESTROY\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [42 x i8] c"_method_attrs_MLX5_IB_METHOD_PP_OBJ_ALLOC\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 96, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [44 x i8] c"_method_attrs_MLX5_IB_METHOD_PP_OBJ_DESTROY\00", align 1
@___asan_gen_.30 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx5/qos.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 115, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @mlx5_ib_object_MLX5_IB_OBJECT_PP, ptr @mlx5_ib_qos_defs, ptr @.compoundliteral, ptr @_object_methods_MLX5_IB_OBJECT_PP125, ptr @mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_ALLOC, ptr @mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_DESTROY, ptr @_method_attrs_MLX5_IB_METHOD_PP_OBJ_ALLOC, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @_method_attrs_MLX5_IB_METHOD_PP_OBJ_DESTROY, ptr @.compoundliteral.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_object_MLX5_IB_OBJECT_PP to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_qos_defs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_MLX5_IB_OBJECT_PP125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_ALLOC to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_PP_OBJ_ALLOC to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_PP_OBJ_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pp_is_supported(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx4 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 12
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool10.not = icmp sgt i32 %10, -1
  br i1 %tobool10.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %11 = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20 = icmp ne i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool20, %land.rhs ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_obj_cleanup(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr nocapture noundef readnone %attrs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_pp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  tail call void @mlx5_rl_remove_rate_raw(ptr noundef %3, i16 noundef zeroext %5) #5
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_rl_remove_rate_raw(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_PP_OBJ_ALLOC(ptr noundef %attrs) #1 align 64 {
entry:
  %rl_raw = alloca [48 x i8], align 1
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rl_raw) #5
  %0 = call ptr @memset(ptr %rl_raw, i32 0, i32 48)
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %1 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %uverbs_attr_get.exit.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get.exit.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %arrayidx.i.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %flags, align 4, !annotation !20
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %7 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ufile.i, align 8
  %call.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %8) #5
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_uobject.exit
  %devx_uid = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %devx_uid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %devx_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 8) #8
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i.i62 = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i.i62, label %if.end11.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %uverbs_attr_get.exit.i65

if.end11.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get.exit.i65:                         ; preds = %if.end11
  %arrayidx.i.i63 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i64 = icmp ugt ptr %arrayidx.i.i63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i64, label %uverbs_attr_get.exit.i65.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i66

uverbs_attr_get.exit.i65.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %uverbs_attr_get.exit.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i66:                                       ; preds = %uverbs_attr_get.exit.i65
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %19)
  %cmp.i1.i = icmp ult i16 %19, 9
  br i1 %cmp.i1.i, label %if.end.i66.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i66.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i63, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i66.uverbs_attr_get_alloced_ptr.exit_crit_edge, %uverbs_attr_get.exit.i65.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end11.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i67 = phi ptr [ %arrayidx.i.i63, %uverbs_attr_get.exit.i65.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %21, %cond.false.i ], [ %arrayidx.i.i63, %if.end.i66.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end11.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %22 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i69 = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i69, label %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge, label %uverbs_attr_get.exit.i72

uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge: ; preds = %uverbs_attr_get_alloced_ptr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

uverbs_attr_get.exit.i72:                         ; preds = %uverbs_attr_get_alloced_ptr.exit
  %arrayidx.i.i70 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i71 = icmp ugt ptr %arrayidx.i.i70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i71, label %uverbs_attr_get.exit.i72.if.then.i_crit_edge, label %if.end.i73

uverbs_attr_get.exit.i72.if.then.i_crit_edge:     ; preds = %uverbs_attr_get.exit.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %uverbs_attr_get.exit.i72.if.then.i_crit_edge, %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge
  %retval.0.i3.i = phi ptr [ %arrayidx.i.i70, %uverbs_attr_get.exit.i72.if.then.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_alloced_ptr.exit.if.then.i_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i3.i to i32
  br label %uverbs_attr_get_len.exit

if.end.i73:                                       ; preds = %uverbs_attr_get.exit.i72
  call void @__sanitizer_cov_trace_pc() #7
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len.i, align 8
  %conv.i = zext i16 %27 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i73, %if.then.i
  %retval.0.i74 = phi i32 [ %25, %if.then.i ], [ %conv.i, %if.end.i73 ]
  %28 = call ptr @memcpy(ptr %rl_raw, ptr %retval.0.i67, i32 %retval.0.i74)
  %call14 = call i32 @uverbs_get_flags32(ptr noundef nonnull %flags, ptr noundef %attrs, i32 noundef 4098, i64 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %uverbs_attr_get_len.exit.err32_crit_edge

uverbs_attr_get_len.exit.err32_crit_edge:         ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err32

if.end17:                                         ; preds = %uverbs_attr_get_len.exit
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.cond.end_crit_edge, label %cond.true

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %devx_uid to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %devx_uid, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end17.cond.end_crit_edge
  %cond = phi i16 [ %32, %cond.true ], [ -1, %if.end17.cond.end_crit_edge ]
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %13, i32 0, i32 1
  %33 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23 = icmp ne i32 %and, 0
  %call24 = call i32 @mlx5_rl_add_rate_raw(ptr noundef %34, ptr noundef nonnull %rl_raw, i16 noundef zeroext %cond, i1 noundef zeroext %tobool23, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cond.end.err32_crit_edge

cond.end.err32_crit_edge:                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err32

if.end27:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev, align 8
  %mdev29 = getelementptr inbounds %struct.mlx5_ib_pp, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %mdev29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %mdev29, align 4
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %38 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %object, align 8
  call void @uverbs_finalize_uobj_create(ptr noundef %attrs, i16 noundef zeroext 4096) #5
  %call31 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4099, ptr noundef nonnull %call7.i.i, i32 noundef 2) #5
  br label %cleanup

err32:                                            ; preds = %cond.end.err32_crit_edge, %uverbs_attr_get_len.exit.err32_crit_edge
  %err.0 = phi i32 [ %call14, %uverbs_attr_get_len.exit.err32_crit_edge ], [ %call24, %cond.end.err32_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err32, %if.end27, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %err.0, %err32 ], [ %call31, %if.end27 ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rl_raw) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_get_flags32(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_rl_add_rate_raw(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_finalize_uobj_create(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_uverbs_get_ucontext_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_destroy_def_handler(ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @mlx5_ib_qos_defs, !1, !"mlx5_ib_qos_defs", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/qos.c", i32 128, i32 30}
!2 = !{ptr @mlx5_ib_object_MLX5_IB_OBJECT_PP, !3, !"mlx5_ib_object_MLX5_IB_OBJECT_PP", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mlx5/qos.c", i32 122, i32 1}
!4 = !{ptr @_object_methods_MLX5_IB_OBJECT_PP125, !3, !"_object_methods_MLX5_IB_OBJECT_PP125", i1 false, i1 false}
!5 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_ALLOC, !6, !"mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_ALLOC", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/mlx5/qos.c", i32 96, i32 1}
!7 = !{ptr @_method_attrs_MLX5_IB_METHOD_PP_OBJ_ALLOC, !6, !"_method_attrs_MLX5_IB_METHOD_PP_OBJ_ALLOC", i1 false, i1 false}
!8 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_DESTROY, !9, !"mlx5_ib_method_MLX5_IB_METHOD_PP_OBJ_DESTROY", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx5/qos.c", i32 115, i32 1}
!10 = !{ptr @_method_attrs_MLX5_IB_METHOD_PP_OBJ_DESTROY, !9, !"_method_attrs_MLX5_IB_METHOD_PP_OBJ_DESTROY", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"auto-init"}
