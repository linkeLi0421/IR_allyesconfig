; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/ah.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/ah.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5_ib_create_ah_resp = type { i32, [6 x i8], [6 x i8] }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.166 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.161 }
%struct.anon.161 = type { i64, i64 }
%union.anon.166 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.mlx5_ib_ah = type { %struct.ib_ah, %struct.mlx5_av, i8 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.mlx5_av = type { %union.anon.188, i32, i8, i8, %union.anon.190, [4 x i8], [6 x i8], i8, i8, i32, [16 x i8] }
%union.anon.188 = type { i64 }
%union.anon.190 = type { i16 }
%struct.rdma_ah_init_attr = type { ptr, i32, ptr }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_odp_caps = type { i64, %struct.anon.165 }
%struct.anon.165 = type { i32, i32, i32, i32 }
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
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.ib_ah_attr = type { i16, i8 }

@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_ = private constant [35 x i8] c"../drivers/infiniband/hw/mlx5/ah.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 174, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str.2], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_create_ah(ptr nocapture noundef %ibah, ptr nocapture noundef readonly %init_attr, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.mlx5_ib_create_ah_resp, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %init_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_attr, align 4
  %2 = ptrtoint ptr %ibah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibah, align 4
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

land.lhs.true:                                    ; preds = %entry
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ah_flags.i, align 8
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup21_crit_edge, label %land.lhs.true5.critedge

land.lhs.true.cleanup21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup21

land.lhs.true5.critedge:                          ; preds = %land.lhs.true
  %tobool6.not = icmp eq ptr %udata, null
  br i1 %tobool6.not, label %land.lhs.true5.critedge.if.end20_crit_edge, label %if.then7

land.lhs.true5.critedge.if.end20_crit_edge:       ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then7:                                         ; preds = %land.lhs.true5.critedge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #4
  %9 = getelementptr inbounds i8, ptr %resp, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %9, align 4
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %11 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %cmp8 = icmp ult i32 %12, 10
  br i1 %cmp8, label %cleanup.thread, label %if.end10

cleanup.thread:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #4
  br label %cleanup21

if.end10:                                         ; preds = %if.then7
  %13 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %resp, align 4
  %dmac = getelementptr inbounds %struct.mlx5_ib_create_ah_resp, ptr %resp, i32 0, i32 1
  %14 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %dmac, ptr %14, i32 6)
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %16 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %outbuf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #4
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #4
  br i1 %call.i.i.i, label %if.end10.cleanup.thread40_crit_edge, label %if.end.i.i.i

if.end10.cleanup.thread40_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread40

if.end.i.i.i:                                     ; preds = %if.end10
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 10, i32 -1226833920) #7, !srcloc !16
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.cleanup.thread40_crit_edge

if.end.i.i.i.cleanup.thread40_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread40

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 10) #4
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %resp, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %cleanup, label %copy_to_user.exit.i.cleanup.thread40_crit_edge

copy_to_user.exit.i.cleanup.thread40_crit_edge:   ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread40

cleanup.thread40:                                 ; preds = %copy_to_user.exit.i.cleanup.thread40_crit_edge, %if.end.i.i.i.cleanup.thread40_crit_edge, %if.end10.cleanup.thread40_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #4
  br label %cleanup21

cleanup:                                          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #4
  br label %if.end20

if.end20:                                         ; preds = %cleanup, %land.lhs.true5.critedge.if.end20_crit_edge, %entry.if.end20_crit_edge
  %19 = ptrtoint ptr %init_attr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_attr, align 4
  %ah_flags.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ah_flags.i.i, align 8
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i34 = icmp eq i8 %23, 0
  br i1 %tobool.not.i34, label %if.end20.if.end.i_crit_edge, label %if.then.i

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %rgid.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 10
  %dgid.i = getelementptr inbounds %struct.ib_global_route, ptr %20, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %rgid.i, ptr %dgid.i, i32 16)
  %flow_label.i = getelementptr inbounds %struct.ib_global_route, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flow_label.i, align 8
  %sgid_index.i = getelementptr inbounds %struct.ib_global_route, ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sgid_index.i, align 4
  %conv.i35 = zext i8 %28 to i32
  %shl.i = shl nuw nsw i32 %conv.i35, 20
  %or.i = or i32 %26, %shl.i
  %or3.i = or i32 %or.i, 1073741824
  %grh_gid_fl.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 9
  %29 = ptrtoint ptr %grh_gid_fl.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or3.i, ptr %grh_gid_fl.i, align 4
  %hop_limit.i = getelementptr inbounds %struct.ib_global_route, ptr %20, i32 0, i32 4
  %30 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hop_limit.i, align 1
  %hop_limit6.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 8
  %32 = ptrtoint ptr %hop_limit6.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %hop_limit6.i, align 1
  %traffic_class.i = getelementptr inbounds %struct.ib_global_route, ptr %20, i32 0, i32 5
  %33 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %traffic_class.i, align 2
  %tclass.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 7
  %35 = ptrtoint ptr %tclass.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tclass.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end20.if.end.i_crit_edge
  %static_rate.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 2
  %36 = ptrtoint ptr %static_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %static_rate.i.i, align 1
  %shl10.i = shl i8 %37, 4
  %stat_rate_sl.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %stat_rate_sl.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %shl10.i, ptr %stat_rate_sl.i, align 4
  %type.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 5
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %if.end.i.rdma_ah_get_dlid.exit.i_crit_edge [
    i32 2, label %if.then14.i
    i32 1, label %if.then.i94.i
    i32 3, label %if.then4.i.i
  ]

if.end.i.rdma_ah_get_dlid.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_ah_get_dlid.exit.i

if.then14.i:                                      ; preds = %if.end.i
  %xmit_slave.i = getelementptr inbounds %struct.rdma_ah_init_attr, ptr %init_attr, i32 0, i32 2
  %42 = ptrtoint ptr %xmit_slave.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xmit_slave.i, align 4
  %tobool15.not.i = icmp eq ptr %43, null
  br i1 %tobool15.not.i, label %if.then14.i.if.end19.i_crit_edge, label %if.then16.i

if.then14.i.if.end19.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdev.i, align 8
  %call18.i = call zeroext i8 @mlx5_lag_get_slave_port(ptr noundef %45, ptr noundef nonnull %43) #4
  %xmit_port.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 2
  %46 = ptrtoint ptr %xmit_port.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %call18.i, ptr %xmit_port.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.then14.i.if.end19.i_crit_edge
  %47 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %20, align 8
  %gid_type21.i = getelementptr inbounds %struct.ib_gid_attr, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %gid_type21.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gid_type21.i, align 8
  %rmac.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 6
  %51 = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 6
  %52 = call ptr @memcpy(ptr %rmac.i, ptr %51, i32 6)
  %53 = load ptr, ptr %20, align 8
  %gid_type1.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %gid_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gid_type1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i.i = icmp eq i32 %55, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end19.i.if.else.i.i_crit_edge

if.end19.i.if.else.i.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end19.i
  %56 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ah_flags.i.i, align 8
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %flow_label.i.i = getelementptr inbounds %struct.ib_global_route, ptr %20, i32 0, i32 2
  %59 = ptrtoint ptr %flow_label.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flow_label.i.i, align 8
  %and4.i.i = and i32 %60, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true2.i.i.if.else.i.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and1.i.i.i = lshr i32 %60, 14
  %shr.i.i.i = and i32 %and1.i.i.i, 63
  %xor.i.i.i = xor i32 %shr.i.i.i, %60
  %61 = trunc i32 %xor.i.i.i to i16
  %conv.i16.i.i = or i16 %61, -16384
  br label %mlx5_ah_get_udp_sport.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true2.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end19.i.if.else.i.i_crit_edge
  %call11.i.i = call zeroext i16 @mlx5_get_roce_udp_sport_min(ptr noundef %3, ptr noundef %53) #4
  br label %mlx5_ah_get_udp_sport.exit.i

mlx5_ah_get_udp_sport.exit.i:                     ; preds = %if.else.i.i, %if.then.i.i
  %sport.0.i.i = phi i16 [ %conv.i16.i.i, %if.then.i.i ], [ %call11.i.i, %if.else.i.i ]
  %62 = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %sport.0.i.i, ptr %62, align 2
  %sl.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 1
  %64 = ptrtoint ptr %sl.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sl.i.i, align 8
  %66 = shl i8 %65, 1
  %67 = and i8 %66, 14
  %68 = ptrtoint ptr %stat_rate_sl.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %stat_rate_sl.i, align 4
  %or3492.i = or i8 %67, %69
  store i8 %or3492.i, ptr %stat_rate_sl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp36.i = icmp eq i32 %50, 2
  br i1 %cmp36.i, label %if.then38.i, label %mlx5_ah_get_udp_sport.exit.i.cleanup21_crit_edge

mlx5_ah_get_udp_sport.exit.i.cleanup21_crit_edge: ; preds = %mlx5_ah_get_udp_sport.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup21

if.then38.i:                                      ; preds = %mlx5_ah_get_udp_sport.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %tclass40.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 7
  %70 = ptrtoint ptr %tclass40.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %tclass40.i, align 2
  %72 = or i8 %71, 2
  store i8 %72, ptr %tclass40.i, align 2
  br label %cleanup21

if.then.i94.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %73 = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 6
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %73, align 8
  %conv.i93.i = zext i16 %75 to i32
  br label %rdma_ah_get_dlid.exit.i

if.then4.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %76 = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 6
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  br label %rdma_ah_get_dlid.exit.i

rdma_ah_get_dlid.exit.i:                          ; preds = %if.then4.i.i, %if.then.i94.i, %if.end.i.rdma_ah_get_dlid.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i93.i, %if.then.i94.i ], [ %78, %if.then4.i.i ], [ 0, %if.end.i.rdma_ah_get_dlid.exit.i_crit_edge ]
  %conv46.i = trunc i32 %retval.0.i.i to i16
  %79 = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv46.i, ptr %79, align 2
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %82, label %rdma_ah_get_dlid.exit.i.rdma_ah_get_path_bits.exit.i_crit_edge [
    i32 1, label %if.then.i96.i
    i32 3, label %if.then3.i.i
  ]

rdma_ah_get_dlid.exit.i.rdma_ah_get_path_bits.exit.i_crit_edge: ; preds = %rdma_ah_get_dlid.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_ah_get_path_bits.exit.i

if.then.i96.i:                                    ; preds = %rdma_ah_get_dlid.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 6
  %src_path_bits.i.i = getelementptr inbounds %struct.ib_ah_attr, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %src_path_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %src_path_bits.i.i, align 2
  br label %rdma_ah_get_path_bits.exit.i

if.then3.i.i:                                     ; preds = %rdma_ah_get_dlid.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %src_path_bits4.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 6, i32 0, i32 1
  %87 = ptrtoint ptr %src_path_bits4.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %src_path_bits4.i.i, align 4
  br label %rdma_ah_get_path_bits.exit.i

rdma_ah_get_path_bits.exit.i:                     ; preds = %if.then3.i.i, %if.then.i96.i, %rdma_ah_get_dlid.exit.i.rdma_ah_get_path_bits.exit.i_crit_edge
  %retval.0.i97.i = phi i8 [ %86, %if.then.i96.i ], [ %88, %if.then3.i.i ], [ 0, %rdma_ah_get_dlid.exit.i.rdma_ah_get_path_bits.exit.i_crit_edge ]
  %89 = and i8 %retval.0.i97.i, 127
  %fl_mlid.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 3
  %90 = ptrtoint ptr %fl_mlid.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %fl_mlid.i, align 1
  %sl.i98.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %20, i32 0, i32 1
  %91 = ptrtoint ptr %sl.i98.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sl.i98.i, align 8
  %93 = and i8 %92, 15
  %or5991.i = or i8 %93, %shl10.i
  %94 = ptrtoint ptr %stat_rate_sl.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %or5991.i, ptr %stat_rate_sl.i, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %rdma_ah_get_path_bits.exit.i, %if.then38.i, %mlx5_ah_get_udp_sport.exit.i.cleanup21_crit_edge, %cleanup.thread40, %cleanup.thread, %land.lhs.true.cleanup21_crit_edge
  %retval.1 = phi i32 [ -22, %land.lhs.true.cleanup21_crit_edge ], [ -22, %cleanup.thread ], [ -14, %cleanup.thread40 ], [ 0, %mlx5_ah_get_udp_sport.exit.i.cleanup21_crit_edge ], [ 0, %if.then38.i ], [ 0, %rdma_ah_get_path_bits.exit.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_ib_query_ah(ptr nocapture noundef readonly %ibah, ptr nocapture noundef %ah_attr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ah_attr, i32 0, i32 56)
  %type = getelementptr inbounds %struct.ib_ah, ptr %ibah, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %type1 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %3 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %type1, align 4
  %grh_gid_fl = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 9
  %4 = ptrtoint ptr %grh_gid_fl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grh_gid_fl, align 4
  %and = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and2 = and i32 %5, 1048575
  %shr = lshr i32 %5, 20
  %conv = trunc i32 %shr to i8
  %hop_limit = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hop_limit, align 1
  %tclass = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 7
  %8 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tclass, align 2
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %10 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ah_flags.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %11 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and2, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %12 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %13 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 5
  %14 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %traffic_class5.i, align 2
  %15 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ah_attr, align 8
  %rgid = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 10
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %dgid1.i, ptr %rgid, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  %20 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %2, label %if.end.rdma_ah_set_dlid.exit_crit_edge [
    i32 1, label %if.then.i
    i32 3, label %if.then5.i
  ]

if.end.rdma_ah_set_dlid.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_ah_set_dlid.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %21 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %19, ptr %21, align 8
  br label %rdma_ah_set_dlid.exit

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv8 = zext i16 %19 to i32
  %23 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv8, ptr %23, align 8
  br label %rdma_ah_set_dlid.exit

rdma_ah_set_dlid.exit:                            ; preds = %if.then5.i, %if.then.i, %if.end.rdma_ah_set_dlid.exit_crit_edge
  %stat_rate_sl = getelementptr inbounds %struct.mlx5_ib_ah, ptr %ibah, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %stat_rate_sl to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %stat_rate_sl, align 4
  %27 = lshr i8 %26, 4
  %static_rate1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 2
  %28 = ptrtoint ptr %static_rate1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %static_rate1.i, align 1
  %29 = load i8, ptr %stat_rate_sl, align 4
  %30 = and i8 %29, 15
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %31 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %sl1.i, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5_lag_get_slave_port(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx5_get_roce_udp_sport_min(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 2152490194, i64 2152490219}
