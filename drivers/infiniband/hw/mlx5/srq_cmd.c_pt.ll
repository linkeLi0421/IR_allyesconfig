; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/srq_cmd.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/srq_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.ib_odp_caps = type { i64, %struct.anon.165 }
%struct.anon.165 = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
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
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.mlx5_srq_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i16 }
%struct.mlx5_core_srq = type { %struct.mlx5_core_rsc_common, i32, i32, i32, i32, i32, ptr, i16 }
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/infiniband/hw/mlx5/srq_cmd.c\00", [59 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 20]
@___asan_gen_.8 = private constant [40 x i8] c"../drivers/infiniband/hw/mlx5/srq_cmd.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 673, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 87, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 378, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @init_completion.__key, ptr @.str.1, ptr @xa_init_flags.__key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_cmd_get_srq(ptr noundef %dev, i32 noundef %srqn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %array = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 34, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %array) #6
  %call = tail call ptr @xa_load(ptr noundef %array, i32 noundef %srqn) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !17
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !18

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !19

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #6
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %array) #6
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_create_srq(ptr noundef %dev, ptr noundef %srq, ptr noundef %in) local_unnamed_addr #0 align 64 {
entry:
  %create_out.i94.i = alloca [4 x i32], align 4
  %create_out.i16.i = alloca [4 x i32], align 4
  %create_out.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 2
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.selectcmp33 = icmp eq i32 %1, 1
  %switch.select34 = select i1 %switch.selectcmp33, i32 4, i32 %switch.select
  %2 = ptrtoint ptr %srq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %switch.select34, ptr %srq, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev.i, align 8
  %issi.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %issi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %issi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %create_out.i.i) #6
  %7 = call ptr @memset(ptr %create_out.i.i, i32 0, i32 16)
  %umem.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 15
  %8 = ptrtoint ptr %umem.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %umem.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end6.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end6.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %page_offset.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 8
  %call2.i.i = tail call i32 @__mlx5_umem_find_best_quantized_pgoff(ptr noundef nonnull %9, i32 noundef -4096, i32 noundef 6, i64 noundef 4294967232, i32 noundef 64, ptr noundef %page_offset.i.i) #6
  %call3.i.i = tail call fastcc i32 @__set_srq_page_size(ptr noundef %in, i32 noundef %call2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.end6.i.i_crit_edge, label %if.then.i.i.create_srq_cmd.exit.i_crit_edge

if.then.i.i.create_srq_cmd.exit.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_srq_cmd.exit.i

if.then.i.i.if.end6.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then.i.i.if.end6.i.i_crit_edge, %if.then.i.if.end6.i.i_crit_edge
  %log_page_size1.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 4
  %10 = ptrtoint ptr %log_page_size1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %log_page_size1.i.i.i, align 8
  %add.i.i.i = add i32 %11, 12
  %log_size.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 2
  %12 = ptrtoint ptr %log_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %log_size.i.i.i, align 8
  %wqe_shift.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 3
  %14 = ptrtoint ptr %wqe_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wqe_shift.i.i.i, align 4
  %page_offset2.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 8
  %16 = ptrtoint ptr %page_offset2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_offset2.i.i.i, align 8
  %sub.i.i.i = add i32 %11, 6
  %add3.i.i.i = add i32 %13, 4
  %add4.i.i.i = add i32 %add3.i.i.i, %15
  %shl5.i.i.i = shl nuw i32 1, %add4.i.i.i
  %mul.i.i.i = shl i32 %17, %sub.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %add.i.i.i
  %add7.i.i.i = xor i32 %notmask.i.i.i, -1
  %add8.i.i.i = add i32 %mul.i.i.i, %add7.i.i.i
  %sub9.i.i.i = add i32 %add8.i.i.i, %shl5.i.i.i
  %div16.i.i.i = lshr i32 %sub9.i.i.i, %add.i.i.i
  %mul10.i.i.i = shl i32 %div16.i.i.i, 3
  %add.i.i = add i32 %mul10.i.i.i, 272
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i.i, i32 noundef 3520, i32 noundef -1) #9
  %tobool9.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool9.not.i.i, label %if.end6.i.i.create_srq_cmd.exit.i_crit_edge, label %do.body.i.i

if.end6.i.i.create_srq_cmd.exit.i_crit_edge:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_srq_cmd.exit.i

do.body.i.i:                                      ; preds = %if.end6.i.i
  %uid.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 20
  %18 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %uid.i.i, align 8
  %conv.i.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i.i.i.i, align 4
  %and.i.i = and i32 %21, -65536
  %or.i.i = or i32 %and.i.i, %conv.i.i
  store i32 %or.i.i, ptr %call.i.i.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 16
  %add.ptr18.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 272
  %flags.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 20
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i.i, align 4
  %and3.i.i.i = and i32 %25, 2013265920
  %26 = shl i32 %23, 30
  %shl.i.i.i = and i32 %26, -2147483648
  %or.i.i.i = or i32 %and3.i.i.i, %shl.i.i.i
  %27 = ptrtoint ptr %log_page_size1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %log_page_size1.i.i.i, align 8
  %add.ptr13.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 32
  %29 = ptrtoint ptr %add.ptr13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr13.i.i.i, align 4
  %and14.i.i.i = and i32 %30, -1056964609
  %and15.i.i.i = shl i32 %28, 24
  %shl16.i.i.i = and i32 %and15.i.i.i, 1056964608
  %or17.i.i.i = or i32 %and14.i.i.i, %shl16.i.i.i
  store i32 %or17.i.i.i, ptr %add.ptr13.i.i.i, align 4
  %31 = ptrtoint ptr %wqe_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wqe_shift.i.i.i, align 4
  %and28.i.i.i = shl i32 %32, 24
  %shl29.i.i.i = and i32 %and28.i.i.i, 117440512
  %or30.i.i.i = or i32 %or.i.i.i, %shl29.i.i.i
  %33 = ptrtoint ptr %log_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %log_size.i.i.i, align 8
  %35 = ptrtoint ptr %add.ptr17.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr17.i.i, align 4
  %and40.i.i.i = and i32 %36, -251658241
  %and41.i.i.i = shl i32 %34, 24
  %shl42.i.i.i = and i32 %and41.i.i.i, 251658240
  %or43.i.i.i = or i32 %and40.i.i.i, %shl42.i.i.i
  store i32 %or43.i.i.i, ptr %add.ptr17.i.i, align 4
  %37 = ptrtoint ptr %page_offset2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %page_offset2.i.i.i, align 8
  %add.ptr52.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 24
  %39 = ptrtoint ptr %add.ptr52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr52.i.i.i, align 4
  %and53.i.i.i = and i32 %40, 50331648
  %shl55.i.i.i = shl i32 %38, 26
  %or56.i.i.i = or i32 %and53.i.i.i, %shl55.i.i.i
  %lwm.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 11
  %41 = ptrtoint ptr %lwm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lwm.i.i.i, align 4
  %add.ptr65.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 44
  %43 = ptrtoint ptr %add.ptr65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr65.i.i.i, align 4
  %and66.i.i.i = and i32 %44, 65535
  %shl68.i.i.i = shl i32 %42, 16
  %or69.i.i.i = or i32 %and66.i.i.i, %shl68.i.i.i
  store i32 %or69.i.i.i, ptr %add.ptr65.i.i.i, align 4
  %pd.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 10
  %45 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pd.i.i.i, align 8
  %add.ptr78.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 40
  %47 = ptrtoint ptr %add.ptr78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr78.i.i.i, align 4
  %and79.i.i.i = and i32 %48, -16777216
  %and80.i.i.i = and i32 %46, 16777215
  %or82.i.i.i = or i32 %and79.i.i.i, %and80.i.i.i
  store i32 %or82.i.i.i, ptr %add.ptr78.i.i.i, align 4
  %db_record.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 13
  %49 = ptrtoint ptr %db_record.i.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %db_record.i.i.i, align 8
  %add.ptr94.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 56
  %51 = ptrtoint ptr %add.ptr94.i.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %add.ptr94.i.i.i, align 8
  %xrcd.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 7
  %52 = ptrtoint ptr %xrcd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xrcd.i.i.i, align 4
  %and106.i.i.i = and i32 %53, 16777215
  %or108.i.i.i = or i32 %or30.i.i.i, %and106.i.i.i
  store i32 %or108.i.i.i, ptr %add.ptr.i.i.i, align 4
  %cqn.i.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 9
  %54 = ptrtoint ptr %cqn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cqn.i.i.i, align 4
  %and119.i.i.i = and i32 %55, 16777215
  %or121.i.i.i = or i32 %and119.i.i.i, %or56.i.i.i
  store i32 %or121.i.i.i, ptr %add.ptr52.i.i.i, align 4
  %56 = ptrtoint ptr %umem.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %umem.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %57, null
  br i1 %tobool20.not.i.i, label %if.else.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i.i = add i32 %28, 12
  %shl24.i.i = shl nuw i32 1, %add23.i.i
  tail call void @mlx5_ib_populate_pas(ptr noundef nonnull %57, i32 noundef %shl24.i.i, ptr noundef %add.ptr18.i.i, i64 noundef 0) #6
  br label %do.body27.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pas25.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 14
  %58 = ptrtoint ptr %pas25.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pas25.i.i, align 8
  %60 = call ptr @memcpy(ptr %add.ptr18.i.i, ptr %59, i32 %mul10.i.i.i)
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %if.else.i.i, %if.then21.i.i
  %61 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call.i.i.i.i, align 4
  %and33.i.i = and i32 %62, 65535
  %or36.i.i = or i32 %and33.i.i, 117440512
  store i32 %or36.i.i, ptr %call.i.i.i.i, align 4
  %63 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev.i, align 8
  %call40.i.i = call i32 @mlx5_cmd_exec(ptr noundef %64, ptr noundef nonnull %call.i.i.i.i, i32 noundef %add.i.i, ptr noundef nonnull %create_out.i.i, i32 noundef 16) #6
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.then42.i.i, label %do.body27.i.i.create_srq_cmd.exit.i_crit_edge

do.body27.i.i.create_srq_cmd.exit.i_crit_edge:    ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_srq_cmd.exit.i

if.then42.i.i:                                    ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr44.i.i = getelementptr inbounds i32, ptr %create_out.i.i, i32 2
  %65 = ptrtoint ptr %add.ptr44.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr44.i.i, align 4
  %and45.i.i = and i32 %66, 16777215
  %srqn.i.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %67 = ptrtoint ptr %srqn.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and45.i.i, ptr %srqn.i.i, align 4
  %68 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %uid.i.i, align 8
  %uid47.i.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %70 = ptrtoint ptr %uid47.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %uid47.i.i, align 4
  br label %create_srq_cmd.exit.i

create_srq_cmd.exit.i:                            ; preds = %if.then42.i.i, %do.body27.i.i.create_srq_cmd.exit.i_crit_edge, %if.end6.i.i.create_srq_cmd.exit.i_crit_edge, %if.then.i.i.create_srq_cmd.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.create_srq_cmd.exit.i_crit_edge ], [ -12, %if.end6.i.i.create_srq_cmd.exit.i_crit_edge ], [ 0, %if.then42.i.i ], [ %call40.i.i, %do.body27.i.i.create_srq_cmd.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %create_out.i.i) #6
  br label %create_srq_split.exit

if.end.i:                                         ; preds = %entry
  %71 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %srq, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %72, label %sw.default.i [
    i32 4, label %sw.bb.i
    i32 5, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %create_out.i16.i) #6
  %74 = getelementptr inbounds [4 x i32], ptr %create_out.i16.i, i32 0, i32 2
  %umem.i17.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 15
  %75 = ptrtoint ptr %umem.i17.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %umem.i17.i, align 4
  %tobool.not.i18.i = icmp eq ptr %76, null
  br i1 %tobool.not.i18.i, label %sw.bb.i.if.end6.i43.i_crit_edge, label %if.then.i23.i

sw.bb.i.if.end6.i43.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i43.i

if.then.i23.i:                                    ; preds = %sw.bb.i
  %page_offset.i19.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 8
  %call2.i20.i = tail call i32 @__mlx5_umem_find_best_quantized_pgoff(ptr noundef nonnull %76, i32 noundef -4096, i32 noundef 6, i64 noundef 4294967232, i32 noundef 64, ptr noundef %page_offset.i19.i) #6
  %call3.i21.i = tail call fastcc i32 @__set_srq_page_size(ptr noundef %in, i32 noundef %call2.i20.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i21.i)
  %tobool4.not.i22.i = icmp eq i32 %call3.i21.i, 0
  br i1 %tobool4.not.i22.i, label %if.then.i23.i.if.end6.i43.i_crit_edge, label %if.then.i23.i.create_xrc_srq_cmd.exit.i_crit_edge

if.then.i23.i.create_xrc_srq_cmd.exit.i_crit_edge: ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_xrc_srq_cmd.exit.i

if.then.i23.i.if.end6.i43.i_crit_edge:            ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i43.i

if.end6.i43.i:                                    ; preds = %if.then.i23.i.if.end6.i43.i_crit_edge, %sw.bb.i.if.end6.i43.i_crit_edge
  %log_page_size1.i.i24.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 4
  %77 = ptrtoint ptr %log_page_size1.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %log_page_size1.i.i24.i, align 8
  %add.i.i25.i = add i32 %78, 12
  %log_size.i.i26.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 2
  %79 = ptrtoint ptr %log_size.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %log_size.i.i26.i, align 8
  %wqe_shift.i.i27.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 3
  %81 = ptrtoint ptr %wqe_shift.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %wqe_shift.i.i27.i, align 4
  %page_offset2.i.i28.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 8
  %83 = ptrtoint ptr %page_offset2.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page_offset2.i.i28.i, align 8
  %sub.i.i29.i = add i32 %78, 6
  %add3.i.i30.i = add i32 %80, 4
  %add4.i.i31.i = add i32 %add3.i.i30.i, %82
  %shl5.i.i32.i = shl nuw i32 1, %add4.i.i31.i
  %mul.i.i33.i = shl i32 %84, %sub.i.i29.i
  %notmask.i.i34.i = shl nsw i32 -1, %add.i.i25.i
  %add7.i.i35.i = xor i32 %notmask.i.i34.i, -1
  %add8.i.i36.i = add i32 %mul.i.i33.i, %add7.i.i35.i
  %sub9.i.i37.i = add i32 %add8.i.i36.i, %shl5.i.i32.i
  %div16.i.i38.i = lshr i32 %sub9.i.i37.i, %add.i.i25.i
  %mul10.i.i39.i = shl i32 %div16.i.i38.i, 3
  %add.i40.i = add i32 %mul10.i.i39.i, 272
  %call.i.i.i41.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i40.i, i32 noundef 3520, i32 noundef -1) #9
  %tobool9.not.i42.i = icmp eq ptr %call.i.i.i41.i, null
  br i1 %tobool9.not.i42.i, label %if.end6.i43.i.create_xrc_srq_cmd.exit.i_crit_edge, label %do.body.i89.i

if.end6.i43.i.create_xrc_srq_cmd.exit.i_crit_edge: ; preds = %if.end6.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_xrc_srq_cmd.exit.i

do.body.i89.i:                                    ; preds = %if.end6.i43.i
  %uid.i44.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 20
  %85 = ptrtoint ptr %uid.i44.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %uid.i44.i, align 8
  %conv.i45.i = zext i16 %86 to i32
  %87 = ptrtoint ptr %call.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call.i.i.i41.i, align 4
  %and.i46.i = and i32 %88, -65536
  %or.i47.i = or i32 %and.i46.i, %conv.i45.i
  store i32 %or.i47.i, ptr %call.i.i.i41.i, align 4
  %add.ptr17.i48.i = getelementptr i8, ptr %call.i.i.i41.i, i32 16
  %add.ptr18.i49.i = getelementptr i8, ptr %call.i.i.i41.i, i32 272
  %flags.i.i50.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i.i50.i, align 4
  %add.ptr.i.i51.i = getelementptr i8, ptr %call.i.i.i41.i, i32 20
  %91 = ptrtoint ptr %add.ptr.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i.i51.i, align 4
  %and3.i.i52.i = and i32 %92, 2013265920
  %93 = shl i32 %90, 30
  %shl.i.i53.i = and i32 %93, -2147483648
  %or.i.i54.i = or i32 %and3.i.i52.i, %shl.i.i53.i
  %94 = ptrtoint ptr %log_page_size1.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %log_page_size1.i.i24.i, align 8
  %add.ptr13.i.i55.i = getelementptr i8, ptr %call.i.i.i41.i, i32 32
  %96 = ptrtoint ptr %add.ptr13.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr13.i.i55.i, align 4
  %and14.i.i56.i = and i32 %97, -1073741824
  %and15.i.i57.i = shl i32 %95, 24
  %shl16.i.i58.i = and i32 %and15.i.i57.i, 1056964608
  %or17.i.i59.i = or i32 %and14.i.i56.i, %shl16.i.i58.i
  %98 = ptrtoint ptr %wqe_shift.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %wqe_shift.i.i27.i, align 4
  %and28.i.i60.i = shl i32 %99, 24
  %shl29.i.i61.i = and i32 %and28.i.i60.i, 117440512
  %or30.i.i62.i = or i32 %or.i.i54.i, %shl29.i.i61.i
  %100 = ptrtoint ptr %log_size.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %log_size.i.i26.i, align 8
  %102 = ptrtoint ptr %add.ptr17.i48.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr17.i48.i, align 4
  %and40.i.i63.i = and i32 %103, -251658241
  %and41.i.i64.i = shl i32 %101, 24
  %shl42.i.i65.i = and i32 %and41.i.i64.i, 251658240
  %or43.i.i66.i = or i32 %and40.i.i63.i, %shl42.i.i65.i
  store i32 %or43.i.i66.i, ptr %add.ptr17.i48.i, align 4
  %104 = ptrtoint ptr %page_offset2.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %page_offset2.i.i28.i, align 8
  %add.ptr52.i.i67.i = getelementptr i8, ptr %call.i.i.i41.i, i32 24
  %106 = ptrtoint ptr %add.ptr52.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr52.i.i67.i, align 4
  %and53.i.i68.i = and i32 %107, 50331648
  %shl55.i.i69.i = shl i32 %105, 26
  %or56.i.i70.i = or i32 %and53.i.i68.i, %shl55.i.i69.i
  %lwm.i.i71.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 11
  %108 = ptrtoint ptr %lwm.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lwm.i.i71.i, align 4
  %add.ptr65.i.i72.i = getelementptr i8, ptr %call.i.i.i41.i, i32 44
  %110 = ptrtoint ptr %add.ptr65.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr65.i.i72.i, align 4
  %and66.i.i73.i = and i32 %111, 65535
  %shl68.i.i74.i = shl i32 %109, 16
  %or69.i.i75.i = or i32 %and66.i.i73.i, %shl68.i.i74.i
  store i32 %or69.i.i75.i, ptr %add.ptr65.i.i72.i, align 4
  %pd.i.i76.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 10
  %112 = ptrtoint ptr %pd.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pd.i.i76.i, align 8
  %add.ptr78.i.i77.i = getelementptr i8, ptr %call.i.i.i41.i, i32 40
  %114 = ptrtoint ptr %add.ptr78.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr78.i.i77.i, align 4
  %and79.i.i78.i = and i32 %115, -16777216
  %and80.i.i79.i = and i32 %113, 16777215
  %or82.i.i80.i = or i32 %and79.i.i78.i, %and80.i.i79.i
  store i32 %or82.i.i80.i, ptr %add.ptr78.i.i77.i, align 4
  %db_record.i.i81.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 13
  %116 = ptrtoint ptr %db_record.i.i81.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %db_record.i.i81.i, align 8
  %add.ptr94.i.i82.i = getelementptr i8, ptr %call.i.i.i41.i, i32 56
  %118 = ptrtoint ptr %add.ptr94.i.i82.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %add.ptr94.i.i82.i, align 8
  %xrcd.i.i83.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 7
  %119 = ptrtoint ptr %xrcd.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %xrcd.i.i83.i, align 4
  %and106.i.i84.i = and i32 %120, 16777215
  %or108.i.i85.i = or i32 %or30.i.i62.i, %and106.i.i84.i
  store i32 %or108.i.i85.i, ptr %add.ptr.i.i51.i, align 4
  %cqn.i.i86.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 9
  %121 = ptrtoint ptr %cqn.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cqn.i.i86.i, align 4
  %and119.i.i87.i = and i32 %122, 16777215
  %or121.i.i88.i = or i32 %and119.i.i87.i, %or56.i.i70.i
  store i32 %or121.i.i88.i, ptr %add.ptr52.i.i67.i, align 4
  %user_index.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 12
  %123 = ptrtoint ptr %user_index.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %user_index.i.i, align 8
  %and26.i.i = and i32 %124, 16777215
  %or28.i.i = or i32 %or17.i.i59.i, %and26.i.i
  store i32 %or28.i.i, ptr %add.ptr13.i.i55.i, align 4
  %125 = ptrtoint ptr %umem.i17.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %umem.i17.i, align 4
  %tobool33.not.i.i = icmp eq ptr %126, null
  br i1 %tobool33.not.i.i, label %if.else.i90.i, label %if.then34.i.i

if.then34.i.i:                                    ; preds = %do.body.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  %add36.i.i = add i32 %95, 12
  %shl37.i.i = shl nuw i32 1, %add36.i.i
  tail call void @mlx5_ib_populate_pas(ptr noundef nonnull %126, i32 noundef %shl37.i.i, ptr noundef %add.ptr18.i49.i, i64 noundef 0) #6
  br label %do.body40.i.i

if.else.i90.i:                                    ; preds = %do.body.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  %pas38.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 14
  %127 = ptrtoint ptr %pas38.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pas38.i.i, align 8
  %129 = call ptr @memcpy(ptr %add.ptr18.i49.i, ptr %128, i32 %mul10.i.i39.i)
  br label %do.body40.i.i

do.body40.i.i:                                    ; preds = %if.else.i90.i, %if.then34.i.i
  %130 = ptrtoint ptr %call.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %call.i.i.i41.i, align 4
  %and46.i.i = and i32 %131, 65535
  %or49.i.i = or i32 %and46.i.i, 117768192
  store i32 %or49.i.i, ptr %call.i.i.i41.i, align 4
  %132 = call ptr @memset(ptr %create_out.i16.i, i32 0, i32 16)
  %133 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mdev.i, align 8
  %call54.i.i = call i32 @mlx5_cmd_exec(ptr noundef %134, ptr noundef nonnull %call.i.i.i41.i, i32 noundef %add.i40.i, ptr noundef nonnull %create_out.i16.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %tobool55.not.i.i = icmp eq i32 %call54.i.i, 0
  br i1 %tobool55.not.i.i, label %if.end57.i.i, label %do.body40.i.i.out.i.i_crit_edge

do.body40.i.i.out.i.i_crit_edge:                  ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

if.end57.i.i:                                     ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %74, align 4
  %and60.i.i = and i32 %136, 16777215
  %srqn.i92.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %137 = ptrtoint ptr %srqn.i92.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %and60.i.i, ptr %srqn.i92.i, align 4
  %138 = ptrtoint ptr %uid.i44.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %uid.i44.i, align 8
  %uid62.i.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %140 = ptrtoint ptr %uid62.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %uid62.i.i, align 4
  br label %out.i.i

out.i.i:                                          ; preds = %if.end57.i.i, %do.body40.i.i.out.i.i_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i41.i) #6
  br label %create_xrc_srq_cmd.exit.i

create_xrc_srq_cmd.exit.i:                        ; preds = %out.i.i, %if.end6.i43.i.create_xrc_srq_cmd.exit.i_crit_edge, %if.then.i23.i.create_xrc_srq_cmd.exit.i_crit_edge
  %retval.0.i93.i = phi i32 [ %call54.i.i, %out.i.i ], [ %call3.i21.i, %if.then.i23.i.create_xrc_srq_cmd.exit.i_crit_edge ], [ -12, %if.end6.i43.i.create_xrc_srq_cmd.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %create_out.i16.i) #6
  br label %create_srq_split.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %create_out.i94.i) #6
  %141 = call ptr @memset(ptr %create_out.i94.i, i32 0, i32 16)
  %umem.i95.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 15
  %142 = ptrtoint ptr %umem.i95.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %umem.i95.i, align 4
  %tobool.not.i96.i = icmp eq ptr %143, null
  br i1 %tobool.not.i96.i, label %sw.bb2.i.if.end6.i121.i_crit_edge, label %if.then.i101.i

sw.bb2.i.if.end6.i121.i_crit_edge:                ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i121.i

if.then.i101.i:                                   ; preds = %sw.bb2.i
  %page_offset.i97.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 8
  %call2.i98.i = tail call i32 @__mlx5_umem_find_best_quantized_pgoff(ptr noundef nonnull %143, i32 noundef -4096, i32 noundef 5, i64 noundef 4294967232, i32 noundef 64, ptr noundef %page_offset.i97.i) #6
  %call3.i99.i = tail call fastcc i32 @__set_srq_page_size(ptr noundef %in, i32 noundef %call2.i98.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i99.i)
  %tobool4.not.i100.i = icmp eq i32 %call3.i99.i, 0
  br i1 %tobool4.not.i100.i, label %if.then.i101.i.if.end6.i121.i_crit_edge, label %if.then.i101.i.create_xrq_cmd.exit.i_crit_edge

if.then.i101.i.create_xrq_cmd.exit.i_crit_edge:   ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_xrq_cmd.exit.i

if.then.i101.i.if.end6.i121.i_crit_edge:          ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i121.i

if.end6.i121.i:                                   ; preds = %if.then.i101.i.if.end6.i121.i_crit_edge, %sw.bb2.i.if.end6.i121.i_crit_edge
  %log_page_size1.i.i102.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 4
  %144 = ptrtoint ptr %log_page_size1.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %log_page_size1.i.i102.i, align 8
  %add.i.i103.i = add i32 %145, 12
  %log_size.i.i104.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 2
  %146 = ptrtoint ptr %log_size.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %log_size.i.i104.i, align 8
  %wqe_shift.i.i105.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 3
  %148 = ptrtoint ptr %wqe_shift.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %wqe_shift.i.i105.i, align 4
  %page_offset2.i.i106.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 8
  %150 = ptrtoint ptr %page_offset2.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %page_offset2.i.i106.i, align 8
  %sub.i.i107.i = add i32 %145, 6
  %add3.i.i108.i = add i32 %147, 4
  %add4.i.i109.i = add i32 %add3.i.i108.i, %149
  %shl5.i.i110.i = shl nuw i32 1, %add4.i.i109.i
  %mul.i.i111.i = shl i32 %151, %sub.i.i107.i
  %notmask.i.i112.i = shl nsw i32 -1, %add.i.i103.i
  %add7.i.i113.i = xor i32 %notmask.i.i112.i, -1
  %add8.i.i114.i = add i32 %mul.i.i111.i, %add7.i.i113.i
  %sub9.i.i115.i = add i32 %add8.i.i114.i, %shl5.i.i110.i
  %div16.i.i116.i = lshr i32 %sub9.i.i115.i, %add.i.i103.i
  %mul10.i.i117.i = shl i32 %div16.i.i116.i, 3
  %add.i118.i = add i32 %mul10.i.i117.i, 336
  %call.i.i.i119.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i118.i, i32 noundef 3520, i32 noundef -1) #9
  %tobool9.not.i120.i = icmp eq ptr %call.i.i.i119.i, null
  br i1 %tobool9.not.i120.i, label %if.end6.i121.i.create_xrq_cmd.exit.i_crit_edge, label %if.end11.i.i

if.end6.i121.i.create_xrq_cmd.exit.i_crit_edge:   ; preds = %if.end6.i121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_xrq_cmd.exit.i

if.end11.i.i:                                     ; preds = %if.end6.i121.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i119.i, i32 16
  %add.ptr12.i.i = getelementptr i8, ptr %call.i.i.i119.i, i32 144
  %add.ptr13.i.i = getelementptr i8, ptr %call.i.i.i119.i, i32 336
  %flags.i.i122.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 1
  %152 = ptrtoint ptr %flags.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags.i.i122.i, align 4
  %154 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr12.i.i, align 4
  %and3.i.i123.i = and i32 %155, -134217729
  %156 = shl i32 %153, 26
  %shl.i.i124.i = and i32 %156, 134217728
  %or.i.i125.i = or i32 %and3.i.i123.i, %shl.i.i124.i
  store i32 %or.i.i125.i, ptr %add.ptr12.i.i, align 4
  %157 = ptrtoint ptr %log_page_size1.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %log_page_size1.i.i102.i, align 8
  %add.ptr13.i.i126.i = getelementptr i8, ptr %call.i.i.i119.i, i32 176
  %159 = ptrtoint ptr %add.ptr13.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %add.ptr13.i.i126.i, align 4
  %and14.i.i127.i = and i32 %160, -991008
  %and15.i.i128.i = shl i32 %158, 8
  %shl16.i.i129.i = and i32 %and15.i.i128.i, 7936
  %or17.i.i130.i = or i32 %and14.i.i127.i, %shl16.i.i129.i
  %161 = ptrtoint ptr %wqe_shift.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %wqe_shift.i.i105.i, align 4
  %add.i171.i.i = shl i32 %162, 16
  %and28.i.i131.i = add i32 %add.i171.i.i, 262144
  %shl29.i.i132.i = and i32 %and28.i.i131.i, 983040
  %163 = ptrtoint ptr %log_size.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %log_size.i.i104.i, align 8
  %and41.i.i134.i = and i32 %164, 31
  %or30.i.i133.i = or i32 %or17.i.i130.i, %and41.i.i134.i
  %or43.i.i135.i = or i32 %or30.i.i133.i, %shl29.i.i132.i
  store i32 %or43.i.i135.i, ptr %add.ptr13.i.i126.i, align 4
  %165 = ptrtoint ptr %page_offset2.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %page_offset2.i.i106.i, align 8
  %add.ptr52.i.i136.i = getelementptr i8, ptr %call.i.i.i119.i, i32 148
  %167 = ptrtoint ptr %add.ptr52.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr52.i.i136.i, align 4
  %and53.i.i137.i = and i32 %168, -2097152
  %and54.i.i.i = shl i32 %166, 16
  %shl55.i.i138.i = and i32 %and54.i.i.i, 2031616
  %or56.i.i139.i = or i32 %and53.i.i137.i, %shl55.i.i138.i
  %lwm.i.i140.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 11
  %169 = ptrtoint ptr %lwm.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %lwm.i.i140.i, align 4
  %and67.i.i.i = and i32 %170, 65535
  %or69.i.i141.i = or i32 %or56.i.i139.i, %and67.i.i.i
  store i32 %or69.i.i141.i, ptr %add.ptr52.i.i136.i, align 4
  %pd.i.i142.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 10
  %171 = ptrtoint ptr %pd.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %pd.i.i142.i, align 8
  %add.ptr78.i.i143.i = getelementptr i8, ptr %call.i.i.i119.i, i32 152
  %173 = ptrtoint ptr %add.ptr78.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %add.ptr78.i.i143.i, align 4
  %and79.i.i144.i = and i32 %174, -16777216
  %and80.i.i145.i = and i32 %172, 16777215
  %or82.i.i146.i = or i32 %and79.i.i144.i, %and80.i.i145.i
  store i32 %or82.i.i146.i, ptr %add.ptr78.i.i143.i, align 4
  %db_record.i.i147.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 13
  %175 = ptrtoint ptr %db_record.i.i147.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %db_record.i.i147.i, align 8
  %add.ptr94.i.i148.i = getelementptr i8, ptr %call.i.i.i119.i, i32 160
  %177 = ptrtoint ptr %add.ptr94.i.i148.i to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %176, ptr %add.ptr94.i.i148.i, align 8
  %178 = ptrtoint ptr %umem.i95.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %umem.i95.i, align 4
  %tobool15.not.i.i = icmp eq ptr %179, null
  br i1 %tobool15.not.i.i, label %if.else.i149.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add18.i.i = add i32 %158, 12
  %shl.i.i = shl nuw i32 1, %add18.i.i
  tail call void @mlx5_ib_populate_pas(ptr noundef nonnull %179, i32 noundef %shl.i.i, ptr noundef %add.ptr13.i.i, i64 noundef 0) #6
  br label %if.end20.i.i

if.else.i149.i:                                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pas19.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 14
  %180 = ptrtoint ptr %pas19.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pas19.i.i, align 8
  %182 = call ptr @memcpy(ptr %add.ptr13.i.i, ptr %181, i32 %mul10.i.i117.i)
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i149.i, %if.then16.i.i
  %183 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp.i.i = icmp eq i32 %184, 2
  br i1 %cmp.i.i, label %do.body.i152.i, label %if.end20.i.i.do.body60.i.i_crit_edge

if.end20.i.i.do.body60.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body60.i.i

do.body.i152.i:                                   ; preds = %if.end20.i.i
  %185 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %add.ptr.i.i, align 4
  %and.i150.i = and i32 %186, -3841
  %or.i151.i = or i32 %and.i150.i, 256
  store i32 %or.i151.i, ptr %add.ptr.i.i, align 4
  %187 = ptrtoint ptr %flags.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %flags.i.i122.i, align 4
  %and29.i.i = and i32 %188, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %do.body.i152.i.do.body46.i.i_crit_edge, label %do.body32.i.i

do.body.i152.i.do.body46.i.i_crit_edge:           ; preds = %do.body.i152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46.i.i

do.body32.i.i:                                    ; preds = %do.body.i152.i
  call void @__sanitizer_cov_trace_pc() #8
  %and38.i.i = and i32 %or.i151.i, -3600
  %or41.i.i = or i32 %and38.i.i, 1
  %189 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %or41.i.i, ptr %add.ptr.i.i, align 4
  br label %do.body46.i.i

do.body46.i.i:                                    ; preds = %do.body32.i.i, %do.body.i152.i.do.body46.i.i_crit_edge
  %tm_log_list_size.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 16
  %190 = ptrtoint ptr %tm_log_list_size.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tm_log_list_size.i.i, align 8
  %add.ptr51.i.i = getelementptr i8, ptr %call.i.i.i119.i, i32 48
  %192 = ptrtoint ptr %add.ptr51.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %add.ptr51.i.i, align 4
  %and52.i.i = and i32 %193, 268435455
  %shl54.i.i = shl i32 %191, 28
  %or55.i.i = or i32 %and52.i.i, %shl54.i.i
  store i32 %or55.i.i, ptr %add.ptr51.i.i, align 4
  br label %do.body60.i.i

do.body60.i.i:                                    ; preds = %do.body46.i.i, %if.end20.i.i.do.body60.i.i_crit_edge
  %user_index.i153.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 12
  %194 = ptrtoint ptr %user_index.i153.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %user_index.i153.i, align 8
  %add.ptr65.i.i = getelementptr i8, ptr %call.i.i.i119.i, i32 20
  %196 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %add.ptr65.i.i, align 4
  %and66.i.i = and i32 %197, -16777216
  %and67.i.i = and i32 %195, 16777215
  %or69.i.i = or i32 %and66.i.i, %and67.i.i
  store i32 %or69.i.i, ptr %add.ptr65.i.i, align 4
  %cqn.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 9
  %198 = ptrtoint ptr %cqn.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cqn.i.i, align 4
  %add.ptr78.i.i = getelementptr i8, ptr %call.i.i.i119.i, i32 24
  %200 = ptrtoint ptr %add.ptr78.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %add.ptr78.i.i, align 4
  %and79.i.i = and i32 %201, -16777216
  %and80.i.i = and i32 %199, 16777215
  %or82.i.i = or i32 %and79.i.i, %and80.i.i
  store i32 %or82.i.i, ptr %add.ptr78.i.i, align 4
  %uid.i154.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 20
  %202 = ptrtoint ptr %uid.i154.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %uid.i154.i, align 8
  %conv.i155.i = zext i16 %203 to i32
  %or108.i.i = or i32 %conv.i155.i, 118947840
  %204 = ptrtoint ptr %call.i.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or108.i.i, ptr %call.i.i.i119.i, align 4
  %205 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mdev.i, align 8
  %call112.i.i = call i32 @mlx5_cmd_exec(ptr noundef %206, ptr noundef nonnull %call.i.i.i119.i, i32 noundef %add.i118.i, ptr noundef nonnull %create_out.i94.i, i32 noundef 16) #6
  call void @kvfree(ptr noundef nonnull %call.i.i.i119.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i.i)
  %tobool113.not.i.i = icmp eq i32 %call112.i.i, 0
  br i1 %tobool113.not.i.i, label %if.then114.i.i, label %do.body60.i.i.create_xrq_cmd.exit.i_crit_edge

do.body60.i.i.create_xrq_cmd.exit.i_crit_edge:    ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_xrq_cmd.exit.i

if.then114.i.i:                                   ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr116.i.i = getelementptr inbounds i32, ptr %create_out.i94.i, i32 2
  %207 = ptrtoint ptr %add.ptr116.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %add.ptr116.i.i, align 4
  %and117.i.i = and i32 %208, 16777215
  %srqn.i157.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %209 = ptrtoint ptr %srqn.i157.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %and117.i.i, ptr %srqn.i157.i, align 4
  %210 = ptrtoint ptr %uid.i154.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %uid.i154.i, align 8
  %uid119.i.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %212 = ptrtoint ptr %uid119.i.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %211, ptr %uid119.i.i, align 4
  br label %create_xrq_cmd.exit.i

create_xrq_cmd.exit.i:                            ; preds = %if.then114.i.i, %do.body60.i.i.create_xrq_cmd.exit.i_crit_edge, %if.end6.i121.i.create_xrq_cmd.exit.i_crit_edge, %if.then.i101.i.create_xrq_cmd.exit.i_crit_edge
  %retval.0.i158.i = phi i32 [ %call3.i99.i, %if.then.i101.i.create_xrq_cmd.exit.i_crit_edge ], [ -12, %if.end6.i121.i.create_xrq_cmd.exit.i_crit_edge ], [ 0, %if.then114.i.i ], [ %call112.i.i, %do.body60.i.i.create_xrq_cmd.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %create_out.i94.i) #6
  br label %create_srq_split.exit

sw.default.i:                                     ; preds = %if.end.i
  %umem.i159.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 15
  %213 = ptrtoint ptr %umem.i159.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %umem.i159.i, align 4
  %tobool.not.i160.i = icmp eq ptr %214, null
  br i1 %tobool.not.i160.i, label %sw.default.i.if.end6.i184.i_crit_edge, label %if.then.i165.i

sw.default.i.if.end6.i184.i_crit_edge:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i184.i

if.then.i165.i:                                   ; preds = %sw.default.i
  %page_offset.i161.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 8
  %call2.i162.i = tail call i32 @__mlx5_umem_find_best_quantized_pgoff(ptr noundef nonnull %214, i32 noundef -4096, i32 noundef 5, i64 noundef 4294967232, i32 noundef 64, ptr noundef %page_offset.i161.i) #6
  %call3.i163.i = tail call fastcc i32 @__set_srq_page_size(ptr noundef %in, i32 noundef %call2.i162.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i163.i)
  %tobool4.not.i164.i = icmp eq i32 %call3.i163.i, 0
  br i1 %tobool4.not.i164.i, label %if.then.i165.i.if.end6.i184.i_crit_edge, label %if.then.i165.i.cleanup_crit_edge

if.then.i165.i.cleanup_crit_edge:                 ; preds = %if.then.i165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i165.i.if.end6.i184.i_crit_edge:          ; preds = %if.then.i165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i184.i

if.end6.i184.i:                                   ; preds = %if.then.i165.i.if.end6.i184.i_crit_edge, %sw.default.i.if.end6.i184.i_crit_edge
  %log_page_size1.i.i166.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 4
  %215 = ptrtoint ptr %log_page_size1.i.i166.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %log_page_size1.i.i166.i, align 8
  %add.i.i167.i = add i32 %216, 12
  %log_size.i.i168.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 2
  %217 = ptrtoint ptr %log_size.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %log_size.i.i168.i, align 8
  %wqe_shift.i.i169.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 3
  %219 = ptrtoint ptr %wqe_shift.i.i169.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %wqe_shift.i.i169.i, align 4
  %page_offset2.i.i170.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 8
  %221 = ptrtoint ptr %page_offset2.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %page_offset2.i.i170.i, align 8
  %sub.i.i171.i = add i32 %216, 6
  %add3.i.i172.i = add i32 %218, 4
  %add4.i.i173.i = add i32 %add3.i.i172.i, %220
  %shl5.i.i174.i = shl nuw i32 1, %add4.i.i173.i
  %mul.i.i175.i = shl i32 %222, %sub.i.i171.i
  %notmask.i.i176.i = shl nsw i32 -1, %add.i.i167.i
  %add7.i.i177.i = xor i32 %notmask.i.i176.i, -1
  %add8.i.i178.i = add i32 %mul.i.i175.i, %add7.i.i177.i
  %sub9.i.i179.i = add i32 %add8.i.i178.i, %shl5.i.i174.i
  %div16.i.i180.i = lshr i32 %sub9.i.i179.i, %add.i.i167.i
  %mul10.i.i181.i = shl i32 %div16.i.i180.i, 3
  %add.i182.i = add i32 %mul10.i.i181.i, 272
  %call.i.i.i183.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i182.i, i32 noundef 3520, i32 noundef -1) #9
  %call.i.i105.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 16, i32 noundef 3520, i32 noundef -1) #9
  %tobool10.not.i.i = icmp eq ptr %call.i.i.i183.i, null
  %tobool11.not.i.i = icmp eq ptr %call.i.i105.i.i, null
  %or.cond.i.i = select i1 %tobool10.not.i.i, i1 true, i1 %tobool11.not.i.i
  br i1 %or.cond.i.i, label %if.end6.i184.i.out.i224.i_crit_edge, label %if.end13.i.i

if.end6.i184.i.out.i224.i_crit_edge:              ; preds = %if.end6.i184.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i224.i

if.end13.i.i:                                     ; preds = %if.end6.i184.i
  %add.ptr.i185.i = getelementptr i8, ptr %call.i.i.i183.i, i32 32
  %add.ptr14.i.i = getelementptr i8, ptr %call.i.i.i183.i, i32 80
  %223 = ptrtoint ptr %add.ptr.i185.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %add.ptr.i185.i, align 4
  %and.i186.i = and i32 %224, -15728641
  %or.i187.i = or i32 %and.i186.i, 1048576
  store i32 %or.i187.i, ptr %add.ptr.i185.i, align 4
  %uid.i188.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 20
  %225 = ptrtoint ptr %uid.i188.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %uid.i188.i, align 8
  %conv.i189.i = zext i16 %226 to i32
  %227 = ptrtoint ptr %call.i.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %call.i.i.i183.i, align 4
  %and27.i.i = and i32 %228, -65536
  %or30.i.i = or i32 %and27.i.i, %conv.i189.i
  store i32 %or30.i.i, ptr %call.i.i.i183.i, align 4
  %add.ptr34.i.i = getelementptr i8, ptr %call.i.i.i183.i, i32 272
  %flags.i.i190.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 1
  %229 = ptrtoint ptr %flags.i.i190.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %flags.i.i190.i, align 4
  %231 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %add.ptr14.i.i, align 4
  %and3.i.i191.i = and i32 %232, -134217729
  %233 = shl i32 %230, 26
  %shl.i.i192.i = and i32 %233, 134217728
  %or.i.i193.i = or i32 %and3.i.i191.i, %shl.i.i192.i
  store i32 %or.i.i193.i, ptr %add.ptr14.i.i, align 4
  %234 = ptrtoint ptr %log_page_size1.i.i166.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %log_page_size1.i.i166.i, align 8
  %add.ptr13.i.i194.i = getelementptr i8, ptr %call.i.i.i183.i, i32 112
  %236 = ptrtoint ptr %add.ptr13.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %add.ptr13.i.i194.i, align 4
  %and14.i.i195.i = and i32 %237, -991008
  %and15.i.i196.i = shl i32 %235, 8
  %shl16.i.i197.i = and i32 %and15.i.i196.i, 7936
  %or17.i.i198.i = or i32 %and14.i.i195.i, %shl16.i.i197.i
  %238 = ptrtoint ptr %wqe_shift.i.i169.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %wqe_shift.i.i169.i, align 4
  %add.i107.i.i = shl i32 %239, 16
  %and28.i.i199.i = add i32 %add.i107.i.i, 262144
  %shl29.i.i200.i = and i32 %and28.i.i199.i, 983040
  %240 = ptrtoint ptr %log_size.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %log_size.i.i168.i, align 8
  %and41.i.i202.i = and i32 %241, 31
  %or30.i.i201.i = or i32 %or17.i.i198.i, %and41.i.i202.i
  %or43.i.i203.i = or i32 %or30.i.i201.i, %shl29.i.i200.i
  store i32 %or43.i.i203.i, ptr %add.ptr13.i.i194.i, align 4
  %242 = ptrtoint ptr %page_offset2.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %page_offset2.i.i170.i, align 8
  %add.ptr52.i.i204.i = getelementptr i8, ptr %call.i.i.i183.i, i32 84
  %244 = ptrtoint ptr %add.ptr52.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %add.ptr52.i.i204.i, align 4
  %and53.i.i205.i = and i32 %245, -2097152
  %and54.i.i206.i = shl i32 %243, 16
  %shl55.i.i207.i = and i32 %and54.i.i206.i, 2031616
  %or56.i.i208.i = or i32 %and53.i.i205.i, %shl55.i.i207.i
  %lwm.i.i209.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 11
  %246 = ptrtoint ptr %lwm.i.i209.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %lwm.i.i209.i, align 4
  %and67.i.i210.i = and i32 %247, 65535
  %or69.i.i211.i = or i32 %or56.i.i208.i, %and67.i.i210.i
  store i32 %or69.i.i211.i, ptr %add.ptr52.i.i204.i, align 4
  %pd.i.i212.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 10
  %248 = ptrtoint ptr %pd.i.i212.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %pd.i.i212.i, align 8
  %add.ptr78.i.i213.i = getelementptr i8, ptr %call.i.i.i183.i, i32 88
  %250 = ptrtoint ptr %add.ptr78.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %add.ptr78.i.i213.i, align 4
  %and79.i.i214.i = and i32 %251, -16777216
  %and80.i.i215.i = and i32 %249, 16777215
  %or82.i.i216.i = or i32 %and79.i.i214.i, %and80.i.i215.i
  store i32 %or82.i.i216.i, ptr %add.ptr78.i.i213.i, align 4
  %db_record.i.i217.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 13
  %252 = ptrtoint ptr %db_record.i.i217.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %db_record.i.i217.i, align 8
  %add.ptr94.i.i218.i = getelementptr i8, ptr %call.i.i.i183.i, i32 96
  %254 = ptrtoint ptr %add.ptr94.i.i218.i to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 %253, ptr %add.ptr94.i.i218.i, align 8
  %255 = ptrtoint ptr %umem.i159.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %umem.i159.i, align 4
  %tobool36.not.i.i = icmp eq ptr %256, null
  br i1 %tobool36.not.i.i, label %if.else.i219.i, label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add39.i.i = add i32 %235, 12
  %shl40.i.i = shl nuw i32 1, %add39.i.i
  tail call void @mlx5_ib_populate_pas(ptr noundef nonnull %256, i32 noundef %shl40.i.i, ptr noundef %add.ptr34.i.i, i64 noundef 0) #6
  br label %do.body43.i.i

if.else.i219.i:                                   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pas41.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 14
  %257 = ptrtoint ptr %pas41.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %pas41.i.i, align 8
  %259 = call ptr @memcpy(ptr %add.ptr34.i.i, ptr %258, i32 %mul10.i.i181.i)
  br label %do.body43.i.i

do.body43.i.i:                                    ; preds = %if.else.i219.i, %if.then37.i.i
  %260 = ptrtoint ptr %call.i.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %call.i.i.i183.i, align 4
  %and49.i.i = and i32 %261, 65535
  %or52.i.i = or i32 %and49.i.i, 151781376
  store i32 %or52.i.i, ptr %call.i.i.i183.i, align 4
  %262 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mdev.i, align 8
  %call56.i.i = tail call i32 @mlx5_cmd_exec(ptr noundef %263, ptr noundef nonnull %call.i.i.i183.i, i32 noundef %add.i182.i, ptr noundef nonnull %call.i.i105.i.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i.i)
  %tobool57.not.i.i = icmp eq i32 %call56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.then58.i.i, label %do.body43.i.i.out.i224.i_crit_edge

do.body43.i.i.out.i224.i_crit_edge:               ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i224.i

if.then58.i.i:                                    ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr59.i.i = getelementptr i32, ptr %call.i.i105.i.i, i32 2
  %264 = ptrtoint ptr %add.ptr59.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %add.ptr59.i.i, align 4
  %and60.i221.i = and i32 %265, 16777215
  %srqn.i222.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %266 = ptrtoint ptr %srqn.i222.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %and60.i221.i, ptr %srqn.i222.i, align 4
  %267 = ptrtoint ptr %uid.i188.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %uid.i188.i, align 8
  %uid62.i223.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %269 = ptrtoint ptr %uid62.i223.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %268, ptr %uid62.i223.i, align 4
  br label %out.i224.i

out.i224.i:                                       ; preds = %if.then58.i.i, %do.body43.i.i.out.i224.i_crit_edge, %if.end6.i184.i.out.i224.i_crit_edge
  %err.0.i.i = phi i32 [ %call56.i.i, %do.body43.i.i.out.i224.i_crit_edge ], [ 0, %if.then58.i.i ], [ -12, %if.end6.i184.i.out.i224.i_crit_edge ]
  tail call void @kvfree(ptr noundef %call.i.i.i183.i) #6
  tail call void @kvfree(ptr noundef %call.i.i105.i.i) #6
  br label %create_srq_split.exit

create_srq_split.exit:                            ; preds = %out.i224.i, %create_xrq_cmd.exit.i, %create_xrc_srq_cmd.exit.i, %create_srq_cmd.exit.i
  %retval.0.i = phi i32 [ %retval.0.i158.i, %create_xrq_cmd.exit.i ], [ %retval.0.i93.i, %create_xrc_srq_cmd.exit.i ], [ %retval.0.i.i, %create_srq_cmd.exit.i ], [ %err.0.i.i, %out.i224.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %create_srq_split.exit.cleanup_crit_edge

create_srq_split.exit.cleanup_crit_edge:          ; preds = %create_srq_split.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %create_srq_split.exit
  %refcount = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %srq, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  %270 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %270)
  store volatile i32 1, ptr %refcount, align 4
  %free = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %srq, i32 0, i32 2
  %271 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %free, align 4
  %wait.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %srq, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #6
  %array = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 34, i32 1
  %srqn = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %272 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %srqn, align 4
  call void @_raw_spin_lock_irq(ptr noundef %array) #6
  %call.i = call ptr @__xa_store(ptr noundef %array, i32 noundef %273, ptr noundef %srq, i32 noundef 3264) #6
  call void @_raw_spin_unlock_irq(ptr noundef %array) #6
  %274 = ptrtoint ptr %call.i to i32
  %and.i.i.i = and i32 %274, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 2
  %cmp.i.i29 = icmp uge ptr %call.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i = and i1 %cmp.i.i29, %cmp.i.i.i
  %shr.i = ashr i32 %274, 2
  %retval.0.i30 = select i1 %spec.select.i.i, i32 %shr.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i30)
  %tobool10.not = icmp eq i32 %retval.0.i30, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %err_destroy_srq_split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_destroy_srq_split:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = call fastcc i32 @destroy_srq_split(ptr noundef %dev, ptr noundef %srq)
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_srq_split, %if.end.cleanup_crit_edge, %create_srq_split.exit.cleanup_crit_edge, %if.then.i165.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i30, %err_destroy_srq_split ], [ %retval.0.i, %create_srq_split.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call3.i163.i, %if.then.i165.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @destroy_srq_split(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %srq) unnamed_addr #0 align 64 {
entry:
  %in.i33 = alloca [4 x i32], align 4
  %_out.i34 = alloca [4 x i32], align 4
  %in.i23 = alloca [4 x i32], align 4
  %_out.i24 = alloca [4 x i32], align 4
  %in.i13 = alloca [4 x i32], align 4
  %_out.i14 = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %issi = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %issi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %issi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %4 = getelementptr inbounds i8, ptr %in.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %srqn.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %6 = ptrtoint ptr %srqn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srqn.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and15.i = and i32 %7, 16777215
  %8 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  %uid.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %9 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %uid.i, align 4
  %conv.i = zext i16 %10 to i32
  %or32.i = or i32 %conv.i, 117506048
  %11 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or32.i, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %12 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  br label %return

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %srq, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %14, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i13) #6
  %16 = getelementptr inbounds i8, ptr %in.i13, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 12)
  %srqn.i15 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %18 = ptrtoint ptr %srqn.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srqn.i15, align 4
  %add.ptr13.i16 = getelementptr inbounds i32, ptr %in.i13, i32 2
  %and15.i17 = and i32 %19, 16777215
  %20 = ptrtoint ptr %add.ptr13.i16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and15.i17, ptr %add.ptr13.i16, align 4
  %uid.i18 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %21 = ptrtoint ptr %uid.i18 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %uid.i18, align 4
  %conv.i19 = zext i16 %22 to i32
  %or32.i20 = or i32 %conv.i19, 117833728
  %23 = ptrtoint ptr %in.i13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or32.i20, ptr %in.i13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i14) #6
  %24 = call ptr @memset(ptr %_out.i14, i32 0, i32 16)
  %call.i22 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i13, i32 noundef 16, ptr noundef nonnull %_out.i14, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i14) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i13) #6
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i23) #6
  %25 = getelementptr inbounds i8, ptr %in.i23, i32 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 12)
  %srqn.i25 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %27 = ptrtoint ptr %srqn.i25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %srqn.i25, align 4
  %add.ptr13.i26 = getelementptr inbounds i32, ptr %in.i23, i32 2
  %and15.i27 = and i32 %28, 16777215
  %29 = ptrtoint ptr %add.ptr13.i26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and15.i27, ptr %add.ptr13.i26, align 4
  %uid.i28 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %30 = ptrtoint ptr %uid.i28 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %uid.i28, align 4
  %conv.i29 = zext i16 %31 to i32
  %or32.i30 = or i32 %conv.i29, 119013376
  %32 = ptrtoint ptr %in.i23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or32.i30, ptr %in.i23, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i24) #6
  %33 = call ptr @memset(ptr %_out.i24, i32 0, i32 16)
  %call.i32 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i23, i32 noundef 16, ptr noundef nonnull %_out.i24, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i24) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i23) #6
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i33) #6
  %34 = getelementptr inbounds i8, ptr %in.i33, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 12)
  %srqn.i35 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %36 = ptrtoint ptr %srqn.i35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %srqn.i35, align 4
  %add.ptr13.i36 = getelementptr inbounds i32, ptr %in.i33, i32 2
  %and15.i37 = and i32 %37, 16777215
  %38 = ptrtoint ptr %add.ptr13.i36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and15.i37, ptr %add.ptr13.i36, align 4
  %uid.i38 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %39 = ptrtoint ptr %uid.i38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %uid.i38, align 4
  %conv.i39 = zext i16 %40 to i32
  %or32.i40 = or i32 %conv.i39, 151912448
  %41 = ptrtoint ptr %in.i33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or32.i40, ptr %in.i33, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i34) #6
  %42 = call ptr @memset(ptr %_out.i34, i32 0, i32 16)
  %call.i42 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i33, i32 noundef 16, ptr noundef nonnull %_out.i34, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i34) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i33) #6
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb, %if.then
  %retval.0 = phi i32 [ %call.i42, %sw.default ], [ %call.i32, %sw.bb2 ], [ %call.i22, %sw.bb ], [ %call.i, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_destroy_srq(ptr noundef %dev, ptr noundef %srq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %array = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 34, i32 1
  %srqn = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %0 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srqn, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %array) #6
  %call.i = tail call ptr @__xa_cmpxchg(ptr noundef %array, i32 noundef %1, ptr noundef %srq, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %array) #6
  %cmp.not = icmp eq ptr %call.i, %srq
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 673, i32 noundef 9, ptr noundef null) #6
  %2 = ptrtoint ptr %call.i to i32
  %and.i.i.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 2
  %cmp.i.i = icmp uge ptr %call.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i = and i1 %cmp.i.i, %cmp.i.i.i
  %shr.i = ashr i32 %2, 2
  %retval.0.i = select i1 %spec.select.i.i, i32 %shr.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool24.not = icmp eq i32 %retval.0.i, 0
  %call23. = select i1 %tobool24.not, i32 -22, i32 %retval.0.i
  br label %cleanup

if.end25:                                         ; preds = %entry
  %call26 = tail call fastcc i32 @destroy_srq_split(ptr noundef %dev, ptr noundef %srq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %3 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %srqn, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %array) #6
  br i1 %tobool27.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call.i54 = tail call ptr @__xa_cmpxchg(ptr noundef %array, i32 noundef %4, ptr noundef nonnull inttoptr (i32 1030 to ptr), ptr noundef %srq, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %array) #6
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call.i55 = tail call ptr @__xa_erase(ptr noundef %array, i32 noundef %4) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %array) #6
  tail call void @mlx5_core_res_put(ptr noundef %srq) #6
  %free = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %srq, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %free) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then28, %do.end
  %retval.0 = phi i32 [ %call23., %do.end ], [ %call26, %if.then28 ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_core_res_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_query_srq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %srq, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  %in.i65 = alloca [4 x i32], align 4
  %in.i16 = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %issi = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %issi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %issi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %4 = call ptr @memset(ptr %in.i, i32 0, i32 16)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.then.query_srq_cmd.exit_crit_edge, label %do.body.i

if.then.query_srq_cmd.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %query_srq_cmd.exit

do.body.i:                                        ; preds = %if.then
  %5 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in.i, align 4
  %and.i = and i32 %6, 65535
  %or.i = or i32 %and.i, 117571584
  store i32 %or.i, ptr %in.i, align 4
  %srqn.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %7 = ptrtoint ptr %srqn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %srqn.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %9 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr13.i, align 4
  %and14.i = and i32 %10, -16777216
  %and15.i = and i32 %8, 16777215
  %or17.i = or i32 %and14.i, %and15.i
  store i32 %or17.i, ptr %add.ptr13.i, align 4
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 8
  %call23.i = call i32 @mlx5_cmd_exec(ptr noundef %12, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %call.i.i.i, i32 noundef 272) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %do.body.i.out33.i_crit_edge

do.body.i.out33.i_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out33.i

if.end26.i:                                       ; preds = %do.body.i
  %add.ptr27.i = getelementptr i8, ptr %call.i.i.i, i32 16
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 20
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool.not.i.i = icmp sgt i32 %14, -1
  br i1 %tobool.not.i.i, label %if.end26.i.get_srqc.exit.i_crit_edge, label %if.then.i.i

if.end26.i.get_srqc.exit.i_crit_edge:             ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_srqc.exit.i

if.then.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and1.i.i = and i32 %16, 2
  store i32 %and1.i.i, ptr %flags.i.i, align 4
  br label %get_srqc.exit.i

get_srqc.exit.i:                                  ; preds = %if.then.i.i, %if.end26.i.get_srqc.exit.i_crit_edge
  %add.ptr2.i.i = getelementptr i8, ptr %call.i.i.i, i32 32
  %17 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr2.i.i, align 4
  %shr3.i.i = lshr i32 %18, 24
  %and4.i.i = and i32 %shr3.i.i, 63
  %log_page_size.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 4
  %19 = ptrtoint ptr %log_page_size.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and4.i.i, ptr %log_page_size.i.i, align 8
  %shr6.i.i = lshr i32 %14, 24
  %and7.i.i = and i32 %shr6.i.i, 7
  %wqe_shift.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 3
  %20 = ptrtoint ptr %wqe_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and7.i.i, ptr %wqe_shift.i.i, align 4
  %21 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr27.i, align 4
  %shr9.i.i = lshr i32 %22, 24
  %and10.i.i = and i32 %shr9.i.i, 15
  %log_size.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 2
  %23 = ptrtoint ptr %log_size.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and10.i.i, ptr %log_size.i.i, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %call.i.i.i, i32 24
  %24 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr11.i.i, align 4
  %shr12.i.i = lshr i32 %25, 26
  %page_offset.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 8
  %26 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr12.i.i, ptr %page_offset.i.i, align 8
  %add.ptr14.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %27 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr14.i.i, align 4
  %shr15.i.i = lshr i32 %28, 16
  %lwm.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 11
  %29 = ptrtoint ptr %lwm.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr15.i.i, ptr %lwm.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %call.i.i.i, i32 40
  %30 = ptrtoint ptr %add.ptr17.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr17.i.i, align 4
  %and19.i.i = and i32 %31, 16777215
  %pd.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 10
  %32 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and19.i.i, ptr %pd.i.i, align 8
  %add.ptr20.i.i = getelementptr i8, ptr %call.i.i.i, i32 56
  %33 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr20.i.i, align 8
  %db_record.i.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 13
  %35 = ptrtoint ptr %db_record.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %db_record.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %22)
  %cmp.not.i = icmp ult i32 %22, 268435456
  br i1 %cmp.not.i, label %get_srqc.exit.i.out33.i_crit_edge, label %if.then30.i

get_srqc.exit.i.out33.i_crit_edge:                ; preds = %get_srqc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out33.i

if.then30.i:                                      ; preds = %get_srqc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %or31.i = or i32 %37, 1
  store i32 %or31.i, ptr %flags.i, align 4
  br label %out33.i

out33.i:                                          ; preds = %if.then30.i, %get_srqc.exit.i.out33.i_crit_edge, %do.body.i.out33.i_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %query_srq_cmd.exit

query_srq_cmd.exit:                               ; preds = %out33.i, %if.then.query_srq_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call23.i, %out33.i ], [ -12, %if.then.query_srq_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  br label %return

if.end:                                           ; preds = %entry
  %38 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %srq, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %39, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i16) #6
  %41 = call ptr @memset(ptr %in.i16, i32 0, i32 16)
  %call.i.i.i17 = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i18 = icmp eq ptr %call.i.i.i17, null
  br i1 %tobool.not.i18, label %sw.bb.query_xrc_srq_cmd.exit_crit_edge, label %do.body.i29

sw.bb.query_xrc_srq_cmd.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %query_xrc_srq_cmd.exit

do.body.i29:                                      ; preds = %sw.bb
  %42 = ptrtoint ptr %in.i16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %in.i16, align 4
  %and.i19 = and i32 %43, 65535
  %or.i20 = or i32 %and.i19, 117899264
  store i32 %or.i20, ptr %in.i16, align 4
  %srqn.i21 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %44 = ptrtoint ptr %srqn.i21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %srqn.i21, align 4
  %add.ptr13.i22 = getelementptr inbounds i32, ptr %in.i16, i32 2
  %46 = ptrtoint ptr %add.ptr13.i22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr13.i22, align 4
  %and14.i23 = and i32 %47, -16777216
  %and15.i24 = and i32 %45, 16777215
  %or17.i25 = or i32 %and14.i23, %and15.i24
  store i32 %or17.i25, ptr %add.ptr13.i22, align 4
  %48 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdev, align 8
  %call23.i27 = call i32 @mlx5_cmd_exec(ptr noundef %49, ptr noundef nonnull %in.i16, i32 noundef 16, ptr noundef nonnull %call.i.i.i17, i32 noundef 272) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i27)
  %tobool24.not.i28 = icmp eq i32 %call23.i27, 0
  br i1 %tobool24.not.i28, label %if.end26.i33, label %do.body.i29.out33.i63_crit_edge

do.body.i29.out33.i63_crit_edge:                  ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out33.i63

if.end26.i33:                                     ; preds = %do.body.i29
  %add.ptr27.i30 = getelementptr i8, ptr %call.i.i.i17, i32 16
  %add.ptr.i.i31 = getelementptr i8, ptr %call.i.i.i17, i32 20
  %50 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %tobool.not.i.i32 = icmp sgt i32 %51, -1
  br i1 %tobool.not.i.i32, label %if.end26.i33.get_srqc.exit.i59_crit_edge, label %if.then.i.i36

if.end26.i33.get_srqc.exit.i59_crit_edge:         ; preds = %if.end26.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_srqc.exit.i59

if.then.i.i36:                                    ; preds = %if.end26.i33
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i.i34 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i.i34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i34, align 4
  %and1.i.i35 = and i32 %53, 2
  store i32 %and1.i.i35, ptr %flags.i.i34, align 4
  br label %get_srqc.exit.i59

get_srqc.exit.i59:                                ; preds = %if.then.i.i36, %if.end26.i33.get_srqc.exit.i59_crit_edge
  %add.ptr2.i.i37 = getelementptr i8, ptr %call.i.i.i17, i32 32
  %54 = ptrtoint ptr %add.ptr2.i.i37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr2.i.i37, align 4
  %shr3.i.i38 = lshr i32 %55, 24
  %and4.i.i39 = and i32 %shr3.i.i38, 63
  %log_page_size.i.i40 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 4
  %56 = ptrtoint ptr %log_page_size.i.i40 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and4.i.i39, ptr %log_page_size.i.i40, align 8
  %shr6.i.i41 = lshr i32 %51, 24
  %and7.i.i42 = and i32 %shr6.i.i41, 7
  %wqe_shift.i.i43 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 3
  %57 = ptrtoint ptr %wqe_shift.i.i43 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and7.i.i42, ptr %wqe_shift.i.i43, align 4
  %58 = ptrtoint ptr %add.ptr27.i30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr27.i30, align 4
  %shr9.i.i44 = lshr i32 %59, 24
  %and10.i.i45 = and i32 %shr9.i.i44, 15
  %log_size.i.i46 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 2
  %60 = ptrtoint ptr %log_size.i.i46 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and10.i.i45, ptr %log_size.i.i46, align 8
  %add.ptr11.i.i47 = getelementptr i8, ptr %call.i.i.i17, i32 24
  %61 = ptrtoint ptr %add.ptr11.i.i47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr11.i.i47, align 4
  %shr12.i.i48 = lshr i32 %62, 26
  %page_offset.i.i49 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 8
  %63 = ptrtoint ptr %page_offset.i.i49 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shr12.i.i48, ptr %page_offset.i.i49, align 8
  %add.ptr14.i.i50 = getelementptr i8, ptr %call.i.i.i17, i32 44
  %64 = ptrtoint ptr %add.ptr14.i.i50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr14.i.i50, align 4
  %shr15.i.i51 = lshr i32 %65, 16
  %lwm.i.i52 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 11
  %66 = ptrtoint ptr %lwm.i.i52 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shr15.i.i51, ptr %lwm.i.i52, align 4
  %add.ptr17.i.i53 = getelementptr i8, ptr %call.i.i.i17, i32 40
  %67 = ptrtoint ptr %add.ptr17.i.i53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr17.i.i53, align 4
  %and19.i.i54 = and i32 %68, 16777215
  %pd.i.i55 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 10
  %69 = ptrtoint ptr %pd.i.i55 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and19.i.i54, ptr %pd.i.i55, align 8
  %add.ptr20.i.i56 = getelementptr i8, ptr %call.i.i.i17, i32 56
  %70 = ptrtoint ptr %add.ptr20.i.i56 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr20.i.i56, align 8
  %db_record.i.i57 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 13
  %72 = ptrtoint ptr %db_record.i.i57 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %db_record.i.i57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %59)
  %cmp.not.i58 = icmp ult i32 %59, 268435456
  br i1 %cmp.not.i58, label %get_srqc.exit.i59.out33.i63_crit_edge, label %if.then30.i62

get_srqc.exit.i59.out33.i63_crit_edge:            ; preds = %get_srqc.exit.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %out33.i63

if.then30.i62:                                    ; preds = %get_srqc.exit.i59
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i60 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i60, align 4
  %or31.i61 = or i32 %74, 1
  store i32 %or31.i61, ptr %flags.i60, align 4
  br label %out33.i63

out33.i63:                                        ; preds = %if.then30.i62, %get_srqc.exit.i59.out33.i63_crit_edge, %do.body.i29.out33.i63_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i17) #6
  br label %query_xrc_srq_cmd.exit

query_xrc_srq_cmd.exit:                           ; preds = %out33.i63, %sw.bb.query_xrc_srq_cmd.exit_crit_edge
  %retval.0.i64 = phi i32 [ %call23.i27, %out33.i63 ], [ -12, %sw.bb.query_xrc_srq_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i16) #6
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i65) #6
  %75 = call ptr @memset(ptr %in.i65, i32 0, i32 16)
  %call.i.i.i66 = tail call noalias ptr @kvmalloc_node(i32 noundef 336, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i67 = icmp eq ptr %call.i.i.i66, null
  br i1 %tobool.not.i67, label %sw.bb2.query_xrq_cmd.exit_crit_edge, label %do.body.i78

sw.bb2.query_xrq_cmd.exit_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %query_xrq_cmd.exit

do.body.i78:                                      ; preds = %sw.bb2
  %76 = ptrtoint ptr %in.i65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %in.i65, align 4
  %and.i68 = and i32 %77, 65535
  %or.i69 = or i32 %and.i68, 119078912
  store i32 %or.i69, ptr %in.i65, align 4
  %srqn.i70 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %78 = ptrtoint ptr %srqn.i70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %srqn.i70, align 4
  %add.ptr13.i71 = getelementptr inbounds i32, ptr %in.i65, i32 2
  %80 = ptrtoint ptr %add.ptr13.i71 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr13.i71, align 4
  %and14.i72 = and i32 %81, -16777216
  %and15.i73 = and i32 %79, 16777215
  %or17.i74 = or i32 %and14.i72, %and15.i73
  store i32 %or17.i74, ptr %add.ptr13.i71, align 4
  %82 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mdev, align 8
  %call23.i76 = call i32 @mlx5_cmd_exec(ptr noundef %83, ptr noundef nonnull %in.i65, i32 noundef 16, ptr noundef nonnull %call.i.i.i66, i32 noundef 336) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i76)
  %tobool24.not.i77 = icmp eq i32 %call23.i76, 0
  br i1 %tobool24.not.i77, label %if.end26.i81, label %do.body.i78.out43.i_crit_edge

do.body.i78.out43.i_crit_edge:                    ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %out43.i

if.end26.i81:                                     ; preds = %do.body.i78
  %add.ptr27.i79 = getelementptr i8, ptr %call.i.i.i66, i32 16
  %add.ptr28.i = getelementptr i8, ptr %call.i.i.i66, i32 144
  %84 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr28.i, align 4
  %86 = and i32 %85, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i80 = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i80, label %if.end26.i81.get_wq.exit.i_crit_edge, label %if.then.i.i84

if.end26.i81.get_wq.exit.i_crit_edge:             ; preds = %if.end26.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_wq.exit.i

if.then.i.i84:                                    ; preds = %if.end26.i81
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i.i82 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i.i82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i.i82, align 4
  %and1.i.i83 = and i32 %88, 2
  store i32 %and1.i.i83, ptr %flags.i.i82, align 4
  br label %get_wq.exit.i

get_wq.exit.i:                                    ; preds = %if.then.i.i84, %if.end26.i81.get_wq.exit.i_crit_edge
  %add.ptr2.i.i85 = getelementptr i8, ptr %call.i.i.i66, i32 176
  %89 = ptrtoint ptr %add.ptr2.i.i85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr2.i.i85, align 4
  %shr3.i.i86 = lshr i32 %90, 8
  %and4.i.i87 = and i32 %shr3.i.i86, 31
  %log_page_size.i.i88 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 4
  %91 = ptrtoint ptr %log_page_size.i.i88 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and4.i.i87, ptr %log_page_size.i.i88, align 8
  %shr6.i.i89 = lshr i32 %90, 16
  %and7.i.i90 = and i32 %shr6.i.i89, 15
  %sub.i.i = add nsw i32 %and7.i.i90, -4
  %wqe_shift.i.i91 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 3
  %92 = ptrtoint ptr %wqe_shift.i.i91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub.i.i, ptr %wqe_shift.i.i91, align 4
  %and10.i.i92 = and i32 %90, 31
  %log_size.i.i93 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 2
  %93 = ptrtoint ptr %log_size.i.i93 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and10.i.i92, ptr %log_size.i.i93, align 8
  %add.ptr11.i.i94 = getelementptr i8, ptr %call.i.i.i66, i32 148
  %94 = ptrtoint ptr %add.ptr11.i.i94 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr11.i.i94, align 4
  %shr12.i.i95 = lshr i32 %95, 16
  %and13.i.i = and i32 %shr12.i.i95, 31
  %page_offset.i.i96 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 8
  %96 = ptrtoint ptr %page_offset.i.i96 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and13.i.i, ptr %page_offset.i.i96, align 8
  %and16.i.i = and i32 %95, 65535
  %lwm.i.i97 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 11
  %97 = ptrtoint ptr %lwm.i.i97 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and16.i.i, ptr %lwm.i.i97, align 4
  %add.ptr17.i.i98 = getelementptr i8, ptr %call.i.i.i66, i32 152
  %98 = ptrtoint ptr %add.ptr17.i.i98 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr17.i.i98, align 4
  %and19.i.i99 = and i32 %99, 16777215
  %pd.i.i100 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 10
  %100 = ptrtoint ptr %pd.i.i100 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and19.i.i99, ptr %pd.i.i100, align 8
  %add.ptr20.i.i101 = getelementptr i8, ptr %call.i.i.i66, i32 160
  %101 = ptrtoint ptr %add.ptr20.i.i101 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %add.ptr20.i.i101, align 8
  %db_record.i.i102 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 13
  %103 = ptrtoint ptr %db_record.i.i102 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %db_record.i.i102, align 8
  %104 = ptrtoint ptr %add.ptr27.i79 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr27.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %105)
  %cmp.not.i103 = icmp ult i32 %105, 268435456
  br i1 %cmp.not.i103, label %get_wq.exit.i.if.end33.i_crit_edge, label %if.then31.i

get_wq.exit.i.if.end33.i_crit_edge:               ; preds = %get_wq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then31.i:                                      ; preds = %get_wq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i104 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags.i104, align 4
  %or32.i = or i32 %107, 1
  store i32 %or32.i, ptr %flags.i104, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %get_wq.exit.i.if.end33.i_crit_edge
  %add.ptr34.i = getelementptr i8, ptr %call.i.i.i66, i32 48
  %108 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr34.i, align 4
  %and36.i = and i32 %109, 65535
  %tm_next_tag.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 17
  %110 = ptrtoint ptr %tm_next_tag.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and36.i, ptr %tm_next_tag.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %call.i.i.i66, i32 52
  %111 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr37.i, align 4
  %and39.i = and i32 %112, 65535
  %tm_hw_phase_cnt.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 18
  %113 = ptrtoint ptr %tm_hw_phase_cnt.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and39.i, ptr %tm_hw_phase_cnt.i, align 8
  %shr41.i = lshr i32 %112, 16
  %tm_sw_phase_cnt.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 19
  %114 = ptrtoint ptr %tm_sw_phase_cnt.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %shr41.i, ptr %tm_sw_phase_cnt.i, align 4
  br label %out43.i

out43.i:                                          ; preds = %if.end33.i, %do.body.i78.out43.i_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i66) #6
  br label %query_xrq_cmd.exit

query_xrq_cmd.exit:                               ; preds = %out43.i, %sw.bb2.query_xrq_cmd.exit_crit_edge
  %retval.0.i105 = phi i32 [ %call23.i76, %out43.i ], [ -12, %sw.bb2.query_xrq_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i65) #6
  br label %return

sw.default:                                       ; preds = %if.end
  %call.i.i.i106 = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #9
  %call.i.i45.i = tail call noalias ptr @kvmalloc_node(i32 noundef 16, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i107 = icmp eq ptr %call.i.i.i106, null
  %tobool2.not.i = icmp eq ptr %call.i.i45.i, null
  %or.cond.i = select i1 %tobool.not.i107, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %sw.default.query_rmp_cmd.exit_crit_edge, label %do.body.i116

sw.default.query_rmp_cmd.exit_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %query_rmp_cmd.exit

do.body.i116:                                     ; preds = %sw.default
  %115 = ptrtoint ptr %call.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %call.i.i45.i, align 4
  %and.i108 = and i32 %116, 65535
  %or.i109 = or i32 %and.i108, 151977984
  store i32 %or.i109, ptr %call.i.i45.i, align 4
  %srqn.i110 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %117 = ptrtoint ptr %srqn.i110 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %srqn.i110, align 4
  %add.ptr13.i111 = getelementptr i32, ptr %call.i.i45.i, i32 2
  %119 = ptrtoint ptr %add.ptr13.i111 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr13.i111, align 4
  %and14.i112 = and i32 %120, -16777216
  %and15.i113 = and i32 %118, 16777215
  %or17.i114 = or i32 %and14.i112, %and15.i113
  store i32 %or17.i114, ptr %add.ptr13.i111, align 4
  %121 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mdev, align 8
  %call21.i = tail call i32 @mlx5_cmd_exec(ptr noundef %122, ptr noundef nonnull %call.i.i45.i, i32 noundef 16, ptr noundef nonnull %call.i.i.i106, i32 noundef 272) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %do.body.i116.query_rmp_cmd.exit_crit_edge

do.body.i116.query_rmp_cmd.exit_crit_edge:        ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %query_rmp_cmd.exit

if.end24.i:                                       ; preds = %do.body.i116
  %add.ptr25.i = getelementptr i8, ptr %call.i.i.i106, i32 32
  %add.ptr26.i = getelementptr i8, ptr %call.i.i.i106, i32 80
  %123 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr26.i, align 4
  %125 = and i32 %124, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i.i117 = icmp eq i32 %125, 0
  br i1 %tobool.not.i.i117, label %if.end24.i.get_wq.exit.i143_crit_edge, label %if.then.i.i120

if.end24.i.get_wq.exit.i143_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_wq.exit.i143

if.then.i.i120:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i.i118 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 1
  %126 = ptrtoint ptr %flags.i.i118 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags.i.i118, align 4
  %and1.i.i119 = and i32 %127, 2
  store i32 %and1.i.i119, ptr %flags.i.i118, align 4
  br label %get_wq.exit.i143

get_wq.exit.i143:                                 ; preds = %if.then.i.i120, %if.end24.i.get_wq.exit.i143_crit_edge
  %add.ptr2.i.i121 = getelementptr i8, ptr %call.i.i.i106, i32 112
  %128 = ptrtoint ptr %add.ptr2.i.i121 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr2.i.i121, align 4
  %shr3.i.i122 = lshr i32 %129, 8
  %and4.i.i123 = and i32 %shr3.i.i122, 31
  %log_page_size.i.i124 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 4
  %130 = ptrtoint ptr %log_page_size.i.i124 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %and4.i.i123, ptr %log_page_size.i.i124, align 8
  %shr6.i.i125 = lshr i32 %129, 16
  %and7.i.i126 = and i32 %shr6.i.i125, 15
  %sub.i.i127 = add nsw i32 %and7.i.i126, -4
  %wqe_shift.i.i128 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 3
  %131 = ptrtoint ptr %wqe_shift.i.i128 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %sub.i.i127, ptr %wqe_shift.i.i128, align 4
  %and10.i.i129 = and i32 %129, 31
  %log_size.i.i130 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 2
  %132 = ptrtoint ptr %log_size.i.i130 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %and10.i.i129, ptr %log_size.i.i130, align 8
  %add.ptr11.i.i131 = getelementptr i8, ptr %call.i.i.i106, i32 84
  %133 = ptrtoint ptr %add.ptr11.i.i131 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr11.i.i131, align 4
  %shr12.i.i132 = lshr i32 %134, 16
  %and13.i.i133 = and i32 %shr12.i.i132, 31
  %page_offset.i.i134 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 8
  %135 = ptrtoint ptr %page_offset.i.i134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %and13.i.i133, ptr %page_offset.i.i134, align 8
  %and16.i.i135 = and i32 %134, 65535
  %lwm.i.i136 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 11
  %136 = ptrtoint ptr %lwm.i.i136 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %and16.i.i135, ptr %lwm.i.i136, align 4
  %add.ptr17.i.i137 = getelementptr i8, ptr %call.i.i.i106, i32 88
  %137 = ptrtoint ptr %add.ptr17.i.i137 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr17.i.i137, align 4
  %and19.i.i138 = and i32 %138, 16777215
  %pd.i.i139 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 10
  %139 = ptrtoint ptr %pd.i.i139 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %and19.i.i138, ptr %pd.i.i139, align 8
  %add.ptr20.i.i140 = getelementptr i8, ptr %call.i.i.i106, i32 96
  %140 = ptrtoint ptr %add.ptr20.i.i140 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %add.ptr20.i.i140, align 8
  %db_record.i.i141 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 13
  %142 = ptrtoint ptr %db_record.i.i141 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %141, ptr %db_record.i.i141, align 8
  %143 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %add.ptr25.i, align 4
  %145 = and i32 %144, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %145)
  %cmp.not.i142 = icmp eq i32 %145, 1048576
  br i1 %cmp.not.i142, label %get_wq.exit.i143.query_rmp_cmd.exit_crit_edge, label %if.then29.i

get_wq.exit.i143.query_rmp_cmd.exit_crit_edge:    ; preds = %get_wq.exit.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %query_rmp_cmd.exit

if.then29.i:                                      ; preds = %get_wq.exit.i143
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i144 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %out, i32 0, i32 1
  %146 = ptrtoint ptr %flags.i144 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flags.i144, align 4
  %or30.i = or i32 %147, 1
  store i32 %or30.i, ptr %flags.i144, align 4
  br label %query_rmp_cmd.exit

query_rmp_cmd.exit:                               ; preds = %if.then29.i, %get_wq.exit.i143.query_rmp_cmd.exit_crit_edge, %do.body.i116.query_rmp_cmd.exit_crit_edge, %sw.default.query_rmp_cmd.exit_crit_edge
  %err.0.i = phi i32 [ %call21.i, %do.body.i116.query_rmp_cmd.exit_crit_edge ], [ 0, %if.then29.i ], [ 0, %get_wq.exit.i143.query_rmp_cmd.exit_crit_edge ], [ -12, %sw.default.query_rmp_cmd.exit_crit_edge ]
  tail call void @kvfree(ptr noundef %call.i.i.i106) #6
  tail call void @kvfree(ptr noundef %call.i.i45.i) #6
  br label %return

return:                                           ; preds = %query_rmp_cmd.exit, %query_xrq_cmd.exit, %query_xrc_srq_cmd.exit, %query_srq_cmd.exit
  %retval.0 = phi i32 [ %err.0.i, %query_rmp_cmd.exit ], [ %retval.0.i105, %query_xrq_cmd.exit ], [ %retval.0.i64, %query_xrc_srq_cmd.exit ], [ %retval.0.i, %query_srq_cmd.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_arm_srq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %srq, i16 noundef zeroext %lwm, i32 noundef %is_srq) local_unnamed_addr #0 align 64 {
entry:
  %in.i29 = alloca [4 x i32], align 4
  %_out.i30 = alloca [4 x i32], align 4
  %in.i16 = alloca [4 x i32], align 4
  %_out.i17 = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %issi = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %issi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %issi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %4 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %add.ptr13.i, align 4
  %srqn.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %5 = ptrtoint ptr %srqn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %srqn.i, align 4
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and30.i = and i32 %6, 16777215
  %7 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and30.i, ptr %add.ptr28.i, align 4
  %conv.i = zext i16 %lwm to i32
  %add.ptr43.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %8 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %add.ptr43.i, align 4
  %uid.i = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %9 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %uid.i, align 4
  %conv54.i = zext i16 %10 to i32
  %or63.i = or i32 %conv54.i, 117637120
  %11 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or63.i, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %12 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  br label %return

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %srq, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %14, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i16) #6
  %add.ptr13.i18 = getelementptr inbounds i32, ptr %in.i16, i32 1
  %16 = ptrtoint ptr %add.ptr13.i18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %add.ptr13.i18, align 4
  %srqn.i19 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %17 = ptrtoint ptr %srqn.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %srqn.i19, align 4
  %add.ptr28.i20 = getelementptr inbounds i32, ptr %in.i16, i32 2
  %and30.i21 = and i32 %18, 16777215
  %19 = ptrtoint ptr %add.ptr28.i20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and30.i21, ptr %add.ptr28.i20, align 4
  %conv.i22 = zext i16 %lwm to i32
  %add.ptr43.i23 = getelementptr inbounds i32, ptr %in.i16, i32 3
  %20 = ptrtoint ptr %add.ptr43.i23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i22, ptr %add.ptr43.i23, align 4
  %uid.i24 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %21 = ptrtoint ptr %uid.i24 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %uid.i24, align 4
  %conv54.i25 = zext i16 %22 to i32
  %or63.i26 = or i32 %conv54.i25, 117964800
  %23 = ptrtoint ptr %in.i16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or63.i26, ptr %in.i16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i17) #6
  %24 = call ptr @memset(ptr %_out.i17, i32 0, i32 16)
  %call.i28 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i16, i32 noundef 16, ptr noundef nonnull %_out.i17, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i17) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i16) #6
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i29) #6
  %add.ptr13.i31 = getelementptr inbounds i32, ptr %in.i29, i32 1
  %25 = ptrtoint ptr %add.ptr13.i31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %add.ptr13.i31, align 4
  %srqn.i32 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %26 = ptrtoint ptr %srqn.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %srqn.i32, align 4
  %add.ptr28.i33 = getelementptr inbounds i32, ptr %in.i29, i32 2
  %and30.i34 = and i32 %27, 16777215
  %28 = ptrtoint ptr %add.ptr28.i33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and30.i34, ptr %add.ptr28.i33, align 4
  %conv.i35 = zext i16 %lwm to i32
  %add.ptr43.i36 = getelementptr inbounds i32, ptr %in.i29, i32 3
  %29 = ptrtoint ptr %add.ptr43.i36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i35, ptr %add.ptr43.i36, align 4
  %uid.i37 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %30 = ptrtoint ptr %uid.i37 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %uid.i37, align 4
  %conv54.i38 = zext i16 %31 to i32
  %or63.i39 = or i32 %conv54.i38, 117637120
  %32 = ptrtoint ptr %in.i29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or63.i39, ptr %in.i29, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i30) #6
  %33 = call ptr @memset(ptr %_out.i30, i32 0, i32 16)
  %call.i41 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i29, i32 noundef 16, ptr noundef nonnull %_out.i30, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i30) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i29) #6
  br label %return

sw.default:                                       ; preds = %if.end
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #9
  %call.i.i111.i = tail call noalias ptr @kvmalloc_node(i32 noundef 16, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  %tobool2.not.i = icmp eq ptr %call.i.i111.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %sw.default.arm_rmp_cmd.exit_crit_edge, label %if.end.i

sw.default.arm_rmp_cmd.exit_crit_edge:            ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %arm_rmp_cmd.exit

if.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 32
  %add.ptr6.i = getelementptr i32, ptr %call.i.i.i, i32 2
  %34 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr6.i, align 4
  %srqn.i42 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %36 = ptrtoint ptr %srqn.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %srqn.i42, align 4
  %or.i = and i32 %35, 251658240
  %and18.i = and i32 %37, 16777215
  %and17.i = or i32 %or.i, %and18.i
  %or20.i = or i32 %and17.i, 268435456
  store i32 %or20.i, ptr %add.ptr6.i, align 4
  %uid.i43 = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 7
  %38 = ptrtoint ptr %uid.i43 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %uid.i43, align 4
  %conv.i44 = zext i16 %39 to i32
  %conv39.i = zext i16 %lwm to i32
  %add.ptr43.i45 = getelementptr i8, ptr %call.i.i.i, i32 84
  %40 = ptrtoint ptr %add.ptr43.i45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr43.i45, align 4
  %and44.i = and i32 %41, -65536
  %or47.i = or i32 %and44.i, %conv39.i
  store i32 %or47.i, ptr %add.ptr43.i45, align 4
  %add.ptr56.i = getelementptr i8, ptr %call.i.i.i, i32 20
  %42 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr56.i, align 4
  %or60.i = or i32 %43, 1
  store i32 %or60.i, ptr %add.ptr56.i, align 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %and70.i = and i32 %45, -15728641
  %or73.i = or i32 %and70.i, 1048576
  store i32 %or73.i, ptr %add.ptr.i, align 4
  %or86.i = or i32 %conv.i44, 151846912
  %46 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or86.i, ptr %call.i.i.i, align 4
  %47 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdev, align 8
  %call90.i = tail call i32 @mlx5_cmd_exec(ptr noundef %48, ptr noundef nonnull %call.i.i.i, i32 noundef 272, ptr noundef nonnull %call.i.i111.i, i32 noundef 16) #6
  br label %arm_rmp_cmd.exit

arm_rmp_cmd.exit:                                 ; preds = %if.end.i, %sw.default.arm_rmp_cmd.exit_crit_edge
  %err.0.i = phi i32 [ %call90.i, %if.end.i ], [ -12, %sw.default.arm_rmp_cmd.exit_crit_edge ]
  tail call void @kvfree(ptr noundef %call.i.i.i) #6
  tail call void @kvfree(ptr noundef %call.i.i111.i) #6
  br label %return

return:                                           ; preds = %arm_rmp_cmd.exit, %sw.bb2, %sw.bb, %if.then
  %retval.0 = phi i32 [ %err.0.i, %arm_rmp_cmd.exit ], [ %call.i41, %sw.bb2 ], [ %call.i28, %sw.bb ], [ %call.i, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_init_srq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %srq_table = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 34
  %0 = call ptr @memset(ptr %srq_table, i32 0, i32 64)
  %array = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 34, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %array, ptr noundef nonnull @.str.2, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #6
  %xa_flags.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 34, i32 1, i32 1
  %1 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 34, i32 1, i32 2
  %2 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa_head.i, align 4
  %3 = ptrtoint ptr %srq_table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @srq_event_notifier, ptr %srq_table, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %call = tail call i32 @mlx5_notifier_register(ptr noundef %5, ptr noundef %srq_table) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srq_event_notifier(ptr noundef %nb, i32 noundef %type, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 18, label %entry.if.end_crit_edge
    i32 20, label %entry.if.end_crit_edge25
  ]

entry.if.end_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge25
  %qp_srq_n = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 1, i32 8
  %1 = ptrtoint ptr %qp_srq_n to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %qp_srq_n, align 1
  %and = and i32 %2, 16777215
  %array = getelementptr inbounds %struct.mlx5_srq_table, ptr %nb, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %array) #6
  %call = tail call ptr @xa_load(ptr noundef %array, i32 noundef %and) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then9.critedge, label %if.then4

if.then4:                                         ; preds = %if.end
  %refcount = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !17
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then4.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !18

if.then4.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then4
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !19

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then4.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then4.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #6
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %array) #6
  %event = getelementptr inbounds %struct.mlx5_core_srq, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %event, align 4
  %type11 = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %type11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type11, align 1
  %conv = zext i8 %8 to i32
  tail call void %6(ptr noundef nonnull %call, i32 noundef %conv) #6
  tail call void @mlx5_core_res_put(ptr noundef nonnull %call) #6
  br label %cleanup

if.then9.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %array) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9.critedge, %refcount_inc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %refcount_inc.exit ], [ 1, %if.then9.critedge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cleanup_srq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %srq_table = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 34
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %call = tail call i32 @mlx5_notifier_unregister(ptr noundef %1, ptr noundef %srq_table) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__set_srq_page_size(ptr nocapture noundef %in, i32 noundef %page_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_size)
  %tobool.not = icmp eq i32 %page_size, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %cond.false16

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.false16:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %page_size)
  %cmp.i.not = icmp eq i32 %page_size, 1
  %sub.i61 = add i32 %page_size, -1
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i61, i1 false) #6, !range !20
  %add.i = sub nuw nsw i32 32, %0
  %cond19 = select i1 %cmp.i.not, i32 0, i32 %add.i
  %sub20 = add nsw i32 %cond19, -12
  %log_page_size = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 4
  %1 = ptrtoint ptr %log_page_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub20, ptr %log_page_size, align 8
  %log_size.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 2
  %2 = ptrtoint ptr %log_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %log_size.i, align 8
  %wqe_shift.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 3
  %4 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wqe_shift.i, align 4
  %page_offset2.i = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 8
  %6 = ptrtoint ptr %page_offset2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_offset2.i, align 8
  %sub.i63 = add nsw i32 %cond19, -6
  %add3.i = add i32 %3, 4
  %add4.i = add i32 %add3.i, %5
  %shl5.i = shl nuw i32 1, %add4.i
  %mul.i = shl i32 %7, %sub.i63
  %notmask.i = shl nsw i32 -1, %cond19
  %add7.i = xor i32 %notmask.i, -1
  %add8.i = add i32 %mul.i, %add7.i
  %sub9.i = add i32 %add8.i, %shl5.i
  %div16.i = lshr i32 %sub9.i, %cond19
  %umem = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 15
  %8 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %umem, align 4
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %13 to i64
  %conv1.i = zext i32 %page_size to i64
  %sub.i64 = add nsw i64 %conv1.i, -1
  %add.i65 = add i64 %11, %sub.i64
  %add2.i = add i64 %add.i65, %conv.i
  %neg.i = sub nsw i64 0, %conv1.i
  %and.i = and i64 %add2.i, %neg.i
  %sub6.i66 = add i32 %page_size, -1
  %conv7.i = zext i32 %sub6.i66 to i64
  %sub8.i = sub nsw i64 %sub.i64, %conv7.i
  %add11.i = add i64 %sub8.i, %11
  %and15.i = and i64 %add11.i, %neg.i
  %sub16.i = sub i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div.i = udiv i32 %conv17.i, %page_size
  %cmp23.not.unshifted = xor i32 %div16.i, %div.i
  %cmp23.not.mask = and i32 %cmp23.not.unshifted, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp23.not.mask)
  %cmp23.not = icmp eq i32 %cmp23.not.mask, 0
  br i1 %cmp23.not, label %cond.false16.return_crit_edge, label %do.end, !prof !19

cond.false16.return_crit_edge:                    ; preds = %cond.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %cond.false16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #6
  br label %return

return:                                           ; preds = %do.end, %cond.false16.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %do.end ], [ 0, %cond.false16.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx5_umem_find_best_quantized_pgoff(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_populate_pas(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/srq_cmd.c", i32 673, i32 6}
!2 = !{ptr @init_completion.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../include/linux/completion.h", i32 87, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xa_init_flags.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2148229792, i64 2148229824, i64 2148229853, i64 2148229887, i64 2148229918, i64 2148229941}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i32 0, i32 33}
