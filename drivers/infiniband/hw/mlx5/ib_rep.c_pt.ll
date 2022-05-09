; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/ib_rep.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/ib_rep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.auxiliary_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.auxiliary_device_id = type { [32 x i8], i32 }
%struct.mlx5_eswitch_rep_ops = type { ptr, ptr, ptr, ptr }
%struct.mlx5_ib_profile = type { [20 x %struct.mlx5_ib_stage] }
%struct.mlx5_ib_stage = type { ptr, ptr }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_odp_caps = type { i64, %struct.anon.165 }
%struct.anon.165 = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.mlx5_ib_port = type { %struct.mlx5_ib_counters, %struct.mlx5_ib_multiport, ptr, %struct.mlx5_roce, ptr }
%struct.mlx5_ib_counters = type { ptr, ptr, i32, i32, i32, i32, i16, [3 x %struct.mlx5_ib_op_fc] }
%struct.mlx5_ib_op_fc = type { ptr, [2 x ptr] }
%struct.mlx5_ib_multiport = type { ptr, %struct.spinlock }
%struct.mlx5_roce = type { %struct.rwlock_t, ptr, %struct.notifier_block, %struct.atomic_t, i32, ptr, i32 }
%struct.mlx5_ib_qp_base = type { ptr, %struct.mlx5_core_qp, %struct.mlx5_ib_ubuffer }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.mlx5_ib_ubuffer = type { ptr, i32, i64 }
%struct.mlx5_adev = type { %struct.auxiliary_device, ptr, i32 }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }

@mlx5r_rep_driver = internal global { %struct.auxiliary_driver, [56 x i8] } { %struct.auxiliary_driver { ptr @mlx5r_rep_probe, ptr @mlx5r_rep_remove, ptr null, ptr null, ptr null, ptr @.str.1, %struct.device_driver zeroinitializer, ptr @mlx5r_rep_id_table }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rep\00", [28 x i8] zeroinitializer }, align 32
@mlx5r_rep_id_table = internal constant { [2 x %struct.auxiliary_device_id], [56 x i8] } { [2 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [32 x i8] c"mlx5_core.rdma-rep\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rep_ops = internal constant { %struct.mlx5_eswitch_rep_ops, [16 x i8] } { %struct.mlx5_eswitch_rep_ops { ptr @mlx5_ib_vport_rep_load, ptr @mlx5_ib_vport_rep_unload, ptr @mlx5_ib_rep_to_dev, ptr null }, [16 x i8] zeroinitializer }, align 32
@raw_eth_profile = external dso_local constant %struct.mlx5_ib_profile, align 4
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/infiniband/hw/mlx5/ib_rep.c\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"mlx5r_rep_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 221, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 230, i32 9 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 222, i32 10 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"mlx5r_rep_id_table\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 214, i32 41 }
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"rep_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 150, i32 42 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [39 x i8] c"../drivers/infiniband/hw/mlx5/ib_rep.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 114, i32 6 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @mlx5r_rep_driver, ptr @.str, ptr @.str.1, ptr @mlx5r_rep_id_table, ptr @rep_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5r_rep_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5r_rep_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_get_rep_netdev(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_eswitch_get_proto_dev(ptr noundef %esw, i16 noundef zeroext %vport_num, i8 noundef zeroext 0) #5
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_proto_dev(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @create_flow_rule_vport_sq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %sq, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %is_rep = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %is_rep to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_rep, align 8
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool1.not = icmp eq i32 %port, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %port2 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 22
  %6 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port2, align 8
  %sub = add i32 %port, -1
  %rep3 = getelementptr %struct.mlx5_ib_port, ptr %7, i32 %sub, i32 4
  %8 = ptrtoint ptr %rep3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rep3, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %qpn = getelementptr inbounds %struct.mlx5_ib_qp_base, ptr %sq, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qpn, align 4
  %call11 = tail call ptr @mlx5_eswitch_add_send_to_vport_rule(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call11, %if.end6 ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_add_send_to_vport_rule(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5r_rep_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__auxiliary_driver_register(ptr noundef nonnull @mlx5r_rep_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5r_rep_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @mlx5r_rep_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @auxiliary_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5r_rep_probe(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5_adev, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  tail call void @mlx5_eswitch_register_vport_reps(ptr noundef %3, ptr noundef nonnull @rep_ops, i8 noundef zeroext 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5r_rep_remove(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5_adev, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  tail call void @mlx5_eswitch_unregister_vport_reps(ptr noundef %3, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_register_vport_reps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_vport_rep_load(ptr noundef %dev, ptr noundef %rep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @mlx5_eswitch_get_total_vports(ptr noundef %dev) #5
  %conv = zext i16 %call to i32
  %vport_index1 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 3
  %0 = ptrtoint ptr %vport_index1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vport_index1, align 4
  %conv2 = zext i16 %1 to i32
  %call3 = tail call zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef %dev) #5
  br i1 %call3, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @mlx5_lag_get_peer_mdev(ptr noundef %dev) #5
  %call5 = tail call zeroext i16 @mlx5_eswitch_get_total_vports(ptr noundef %call4) #5
  %conv6 = zext i16 %call5 to i32
  %call7 = tail call zeroext i1 @mlx5_lag_is_master(ptr noundef %dev) #5
  br i1 %call7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %conv, -1
  %add = add nsw i32 %sub, %conv6
  br label %if.end14

if.else:                                          ; preds = %if.then
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 1
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp = icmp eq i16 %3, -1
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %add12 = add nuw nsw i32 %conv6, %conv2
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then8, %entry.if.end14_crit_edge
  %num_ports.0 = phi i32 [ %add, %if.then8 ], [ %conv, %if.end ], [ %conv, %entry.if.end14_crit_edge ]
  %vport_index.0 = phi i32 [ %conv2, %if.then8 ], [ %add12, %if.end ], [ %conv2, %entry.if.end14_crit_edge ]
  %dev.addr.0 = phi ptr [ %dev, %if.then8 ], [ %call4, %if.end ], [ %dev, %entry.if.end14_crit_edge ]
  %vport15 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 1
  %4 = ptrtoint ptr %vport15 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vport15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp17 = icmp eq i16 %5, -1
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end14
  %call23 = tail call ptr @_ib_alloc_device(i32 noundef 10224) #5
  %tobool.not = icmp eq ptr %call23, null
  br i1 %tobool.not, label %if.then19.cleanup_crit_edge, label %if.end25

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else20:                                        ; preds = %if.end14
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev.addr.0, i32 0, i32 17, i32 28
  %6 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eswitch.i, align 4
  %call.i = tail call ptr @mlx5_eswitch_uplink_get_proto_dev(ptr noundef %7, i8 noundef zeroext 1) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else20.cleanup_crit_edge, label %if.end.i

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  %port.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %call.i, i32 0, i32 22
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 8
  %rep1.i = getelementptr %struct.mlx5_ib_port, ptr %9, i32 %vport_index.0, i32 4
  %10 = ptrtoint ptr %rep1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rep, ptr %rep1.i, align 4
  %arrayidx2.i = getelementptr [2 x %struct.mlx5_eswitch_rep_data], ptr %rep, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %arrayidx2.i, align 4
  %12 = load ptr, ptr %port.i, align 8
  %roce.i = getelementptr %struct.mlx5_ib_port, ptr %12, i32 %vport_index.0, i32 3
  tail call void @_raw_write_lock(ptr noundef %roce.i) #5
  %esw.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 5
  %13 = ptrtoint ptr %esw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %esw.i, align 4
  %15 = ptrtoint ptr %vport15 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vport15, align 4
  %call.i.i = tail call ptr @mlx5_eswitch_get_proto_dev(ptr noundef %14, i16 noundef zeroext %16, i8 noundef zeroext 0) #5
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port.i, align 8
  %netdev.i = getelementptr %struct.mlx5_ib_port, ptr %18, i32 %vport_index.0, i32 3, i32 1
  %19 = ptrtoint ptr %netdev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %netdev.i, align 4
  %20 = load ptr, ptr %port.i, align 8
  %roce12.i = getelementptr %struct.mlx5_ib_port, ptr %20, i32 %vport_index.0, i32 3
  tail call void @_raw_write_unlock(ptr noundef %roce12.i) #5
  br label %cleanup

if.end25:                                         ; preds = %if.then19
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_ports.0, i32 196) #5
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !21

kcalloc.exit.thread:                              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %port96 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %call23, i32 0, i32 22
  %23 = ptrtoint ptr %port96 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %port96, align 8
  br label %fail_port

if.end7.i.i:                                      ; preds = %if.end25
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #8
  %port = getelementptr inbounds %struct.mlx5_ib_dev, ptr %call23, i32 0, i32 22
  %25 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i, ptr %port, align 8
  %tobool28.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool28.not, label %if.end7.i.i.fail_port_crit_edge, label %if.end30

if.end7.i.i.fail_port_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_port

if.end30:                                         ; preds = %if.end7.i.i
  %is_rep = getelementptr inbounds %struct.mlx5_ib_dev, ptr %call23, i32 0, i32 5
  %26 = ptrtoint ptr %is_rep to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %is_rep, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %is_rep, align 8
  %27 = ptrtoint ptr %vport_index1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vport_index1, align 4
  %conv32 = zext i16 %28 to i32
  %rep34 = getelementptr %struct.mlx5_ib_port, ptr %call8.i.i, i32 %conv32, i32 4
  %29 = ptrtoint ptr %rep34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rep, ptr %rep34, align 4
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev.addr.0, i32 0, i32 17, i32 28
  %30 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %eswitch, align 4
  %32 = ptrtoint ptr %vport15 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vport15, align 4
  %call.i90 = tail call ptr @mlx5_eswitch_get_proto_dev(ptr noundef %31, i16 noundef zeroext %33, i8 noundef zeroext 0) #5
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port, align 8
  %netdev = getelementptr %struct.mlx5_ib_port, ptr %35, i32 %conv32, i32 3, i32 1
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i90, ptr %netdev, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %call23, i32 0, i32 1
  %37 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev.addr.0, ptr %mdev, align 8
  %num_ports39 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %call23, i32 0, i32 3
  %38 = ptrtoint ptr %num_ports39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %num_ports.0, ptr %num_ports39, align 8
  %call40 = tail call i32 @__mlx5_ib_add(ptr noundef nonnull %call23, ptr noundef nonnull @raw_eth_profile) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %fail_add

if.end43:                                         ; preds = %if.end30
  %arrayidx44 = getelementptr [2 x %struct.mlx5_eswitch_rep_data], ptr %rep, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call23, ptr %arrayidx44, align 4
  %call46 = tail call zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef %dev.addr.0) #5
  br i1 %call46, label %if.then47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47:                                        ; preds = %if.end43
  %call.i91 = tail call ptr @mlx5_lag_get_peer_mdev(ptr noundef %dev.addr.0) #5
  %tobool.not.i92 = icmp eq ptr %call.i91, null
  br i1 %tobool.not.i92, label %if.then47.cleanup_crit_edge, label %if.end.i94

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i94:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %eswitch.i93 = getelementptr inbounds %struct.mlx5_core_dev, ptr %call.i91, i32 0, i32 17, i32 28
  %40 = ptrtoint ptr %eswitch.i93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eswitch.i93, align 4
  tail call void @mlx5_eswitch_register_vport_reps(ptr noundef %41, ptr noundef nonnull @rep_ops, i8 noundef zeroext 1) #5
  br label %cleanup

fail_add:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 8
  tail call void @kfree(ptr noundef %43) #5
  br label %fail_port

fail_port:                                        ; preds = %fail_add, %if.end7.i.i.fail_port_crit_edge, %kcalloc.exit.thread
  %ret.0 = phi i32 [ %call40, %fail_add ], [ -12, %if.end7.i.i.fail_port_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @ib_dealloc_device(ptr noundef nonnull %call23) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_port, %if.end.i94, %if.then47.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end.i, %if.else20.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail_port ], [ 0, %if.else.cleanup_crit_edge ], [ -12, %if.then19.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %if.else20.cleanup_crit_edge ], [ 0, %if.then47.cleanup_crit_edge ], [ 0, %if.end.i94 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ib_vport_rep_unload(ptr nocapture noundef %rep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %esw = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 5
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 4
  %call = tail call ptr @mlx5_eswitch_get_core_dev(ptr noundef %1) #5
  %arrayidx.i = getelementptr [2 x %struct.mlx5_eswitch_rep_data], ptr %rep, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %vport_index2 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 3
  %4 = ptrtoint ptr %vport_index2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vport_index2, align 4
  %conv = zext i16 %5 to i32
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 114, i32 noundef 9, ptr noundef null) #5
  br label %cleanup60

if.end25:                                         ; preds = %entry
  %call26 = tail call zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef nonnull %call) #5
  br i1 %call26, label %land.lhs.true, label %if.end25.if.end37_crit_edge

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end25
  %call28 = tail call zeroext i1 @mlx5_lag_is_master(ptr noundef nonnull %call) #5
  br i1 %call28, label %land.lhs.true.if.end37_crit_edge, label %if.then29

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then29:                                        ; preds = %land.lhs.true
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 1
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  br i1 %cmp, label %if.then29.cleanup60_crit_edge, label %cleanup

if.then29.cleanup60_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

cleanup:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call ptr @mlx5_lag_get_peer_mdev(ptr noundef nonnull %call) #5
  %call35 = tail call zeroext i16 @mlx5_eswitch_get_total_vports(ptr noundef %call34) #5
  %conv36 = zext i16 %call35 to i32
  %add = add nuw nsw i32 %conv36, %conv
  br label %if.end37

if.end37:                                         ; preds = %cleanup, %land.lhs.true.if.end37_crit_edge, %if.end25.if.end37_crit_edge
  %vport_index.1 = phi i32 [ %conv, %land.lhs.true.if.end37_crit_edge ], [ %add, %cleanup ], [ %conv, %if.end25.if.end37_crit_edge ]
  %tobool38.not = icmp eq ptr %3, null
  br i1 %tobool38.not, label %if.end37.cleanup60_crit_edge, label %if.end40

if.end37.cleanup60_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

if.end40:                                         ; preds = %if.end37
  %port41 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %port41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port41, align 8
  %roce = getelementptr %struct.mlx5_ib_port, ptr %9, i32 %vport_index.1, i32 3
  tail call void @_raw_write_lock(ptr noundef %roce) #5
  %netdev = getelementptr %struct.mlx5_ib_port, ptr %9, i32 %vport_index.1, i32 3, i32 1
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %netdev, align 4
  tail call void @_raw_write_unlock(ptr noundef %roce) #5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.i, align 4
  %rep46 = getelementptr %struct.mlx5_ib_port, ptr %9, i32 %vport_index.1, i32 4
  %12 = ptrtoint ptr %rep46 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rep46, align 4
  %vport47 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 1
  %13 = ptrtoint ptr %vport47 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vport47, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %cmp49 = icmp eq i16 %14, -1
  br i1 %cmp49, label %if.then51, label %if.end40.cleanup60_crit_edge

if.end40.cleanup60_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

if.then51:                                        ; preds = %if.end40
  %call54 = tail call zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef nonnull %call) #5
  br i1 %call54, label %if.then55, label %if.then51.if.end58_crit_edge

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  %call56 = tail call ptr @mlx5_lag_get_peer_mdev(ptr noundef nonnull %call) #5
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %call56, i32 0, i32 17, i32 28
  %15 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eswitch, align 4
  tail call void @mlx5_eswitch_unregister_vport_reps(ptr noundef %16, i8 noundef zeroext 1) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.then51.if.end58_crit_edge
  %profile = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 27
  %17 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %profile, align 8
  tail call void @__mlx5_ib_remove(ptr noundef nonnull %3, ptr noundef %18, i32 noundef 20) #5
  br label %cleanup60

cleanup60:                                        ; preds = %if.end58, %if.end40.cleanup60_crit_edge, %if.end37.cleanup60_crit_edge, %if.then29.cleanup60_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mlx5_ib_rep_to_dev(ptr nocapture noundef readonly %rep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x %struct.mlx5_eswitch_rep_data], ptr %rep, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx5_eswitch_get_total_vports(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_lag_get_peer_mdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_lag_is_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ib_alloc_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx5_ib_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dealloc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_uplink_get_proto_dev(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_core_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_unregister_vport_reps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlx5_ib_remove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/ib_rep.c", i32 230, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mlx5/ib_rep.c", i32 222, i32 10}
!4 = !{ptr @mlx5r_rep_driver, !5, !"mlx5r_rep_driver", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/mlx5/ib_rep.c", i32 221, i32 32}
!6 = !{ptr @rep_ops, !7, !"rep_ops", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mlx5/ib_rep.c", i32 150, i32 42}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx5/ib_rep.c", i32 114, i32 6}
!10 = !{ptr @mlx5r_rep_id_table, !11, !"mlx5r_rep_id_table", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/mlx5/ib_rep.c", i32 214, i32 41}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
