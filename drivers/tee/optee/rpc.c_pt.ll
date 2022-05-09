; ModuleID = '/llk/IR_all_yes/drivers/tee/optee/rpc.c_pt.bc'
source_filename = "../drivers/tee/optee/rpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tee_param = type { i64, %union.anon.84 }
%union.anon.84 = type { %struct.tee_param_value }
%struct.tee_param_value = type { i64, i64, i64 }
%struct.optee = type { ptr, ptr, ptr, ptr, %union.anon.86, %struct.optee_call_queue, %struct.optee_notif, %struct.optee_supp, ptr, i32, i8, ptr, %struct.work_struct }
%union.anon.86 = type { %struct.optee_ffa }
%struct.optee_ffa = type { ptr, ptr, %struct.mutex, %struct.rhashtable }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.optee_call_queue = type { %struct.mutex, %struct.list_head }
%struct.optee_notif = type { i32, %struct.spinlock, %struct.list_head, ptr }
%struct.optee_supp = type { %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.completion }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tee_shm = type { ptr, i32, ptr, i32, i32, ptr, i32, %struct.refcount_struct, i32, i32, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.optee_msg_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.optee_msg_param] }
%struct.optee_msg_param = type { i64, %union.anon.85 }
%union.anon.85 = type { %struct.optee_msg_param_tmem }
%struct.optee_msg_param_tmem = type { i64, i64, i64 }
%struct.optee_ops = type { ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tee_param_memref = type { i32, i32, ptr }

@__const.handle_rpc_func_cmd_i2c_transfer.attr = private unnamed_addr constant [4 x i8] c"\01\01\07\02", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 21]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @optee_rpc_cmd_alloc_suppl(ptr noundef %ctx, i32 noundef %sz) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca %struct.tee_param, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %param) #6
  %0 = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %4) #6
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 3, ptr %param, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %0, align 8
  %conv = zext i32 %sz to i64
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %1, align 8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %2, align 8
  %call3 = call i32 @optee_supp_thrd_req(ptr noundef %ctx, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %param) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %supp = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %supp, i32 noundef 0) #6
  %ctx6 = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx6, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %2, align 8
  %conv9 = trunc i64 %12 to i32
  %call10 = call ptr @tee_shm_get_from_id(ptr noundef %10, i32 noundef %conv9) #6
  call void @mutex_unlock(ptr noundef %supp) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %param) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_supp_thrd_req(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_rpc_cmd_free_suppl(ptr noundef %ctx, ptr noundef %shm) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca %struct.tee_param, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %param) #6
  %0 = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 3, ptr %param, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %0, align 8
  %id.i = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 9
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  %conv = sext i32 %6 to i64
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %1, align 8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %2, align 8
  tail call void @tee_shm_put(ptr noundef %shm) #6
  %call3 = call i32 @optee_supp_thrd_req(ptr noundef %ctx, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %param) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %param) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_rpc_cmd(ptr noundef %ctx, ptr noundef %optee, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 5, label %sw.bb2
    i32 21, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #6
  %3 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %num_params.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 7
  %4 = ptrtoint ptr %num_params.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.handle_rpc_func_cmd_get_time.exit_crit_edge

sw.bb.handle_rpc_func_cmd_get_time.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_rpc_func_cmd_get_time.exit

if.end.i:                                         ; preds = %sw.bb
  %params.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 8
  %6 = ptrtoint ptr %params.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %params.i, align 8
  %and.i = and i64 %7, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and.i)
  %cmp1.not.i = icmp eq i64 %and.i, 2
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.handle_rpc_func_cmd_get_time.exit_crit_edge

if.end.i.handle_rpc_func_cmd_get_time.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_rpc_func_cmd_get_time.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #6
  %8 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ts.i, align 8
  %u.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 1, i32 2
  %10 = ptrtoint ptr %u.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %u.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %11 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %12 to i64
  %b.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 1, i32 4
  %13 = ptrtoint ptr %b.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %b.i, align 8
  br label %handle_rpc_func_cmd_get_time.exit

handle_rpc_func_cmd_get_time.exit:                ; preds = %if.end3.i, %if.end.i.handle_rpc_func_cmd_get_time.exit_crit_edge, %sw.bb.handle_rpc_func_cmd_get_time.exit_crit_edge
  %.sink.i = phi i32 [ 0, %if.end3.i ], [ -65530, %if.end.i.handle_rpc_func_cmd_get_time.exit_crit_edge ], [ -65530, %sw.bb.handle_rpc_func_cmd_get_time.exit_crit_edge ]
  %ret9.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  %14 = ptrtoint ptr %ret9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink.i, ptr %ret9.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %num_params.i11 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 7
  %15 = ptrtoint ptr %num_params.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_params.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.not.i12 = icmp eq i32 %16, 1
  br i1 %cmp.not.i12, label %if.end.i16, label %sw.bb1.bad.i_crit_edge

sw.bb1.bad.i_crit_edge:                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.i

if.end.i16:                                       ; preds = %sw.bb1
  %params.i13 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 8
  %17 = ptrtoint ptr %params.i13 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %params.i13, align 8
  %and.i14 = and i64 %18, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and.i14)
  %cmp1.not.i15 = icmp eq i64 %and.i14, 1
  br i1 %cmp1.not.i15, label %if.end3.i18, label %if.end.i16.bad.i_crit_edge

if.end.i16.bad.i_crit_edge:                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.i

if.end3.i18:                                      ; preds = %if.end.i16
  %u.i17 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 1, i32 2
  %19 = ptrtoint ptr %u.i17 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %u.i17, align 8
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.1)
  switch i64 %20, label %if.end3.i18.bad.i_crit_edge [
    i64 0, label %sw.bb.i
    i64 1, label %sw.bb11.i
  ]

if.end3.i18.bad.i_crit_edge:                      ; preds = %if.end3.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.i

sw.bb.i:                                          ; preds = %if.end3.i18
  %b.i19 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 1, i32 4
  %21 = ptrtoint ptr %b.i19 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %b.i19, align 8
  %conv.i20 = trunc i64 %22 to i32
  %call.i = tail call i32 @optee_notif_wait(ptr noundef %optee, i32 noundef %conv.i20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.handle_rpc_func_cmd_wq.exit_crit_edge, label %sw.bb.i.bad.i_crit_edge

sw.bb.i.bad.i_crit_edge:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.i

sw.bb.i.handle_rpc_func_cmd_wq.exit_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_rpc_func_cmd_wq.exit

sw.bb11.i:                                        ; preds = %if.end3.i18
  %b15.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 1, i32 4
  %23 = ptrtoint ptr %b15.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %b15.i, align 8
  %conv16.i = trunc i64 %24 to i32
  %call17.i = tail call i32 @optee_notif_send(ptr noundef %optee, i32 noundef %conv16.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %sw.bb11.i.handle_rpc_func_cmd_wq.exit_crit_edge, label %sw.bb11.i.bad.i_crit_edge

sw.bb11.i.bad.i_crit_edge:                        ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.i

sw.bb11.i.handle_rpc_func_cmd_wq.exit_crit_edge:  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_rpc_func_cmd_wq.exit

bad.i:                                            ; preds = %sw.bb11.i.bad.i_crit_edge, %sw.bb.i.bad.i_crit_edge, %if.end3.i18.bad.i_crit_edge, %if.end.i16.bad.i_crit_edge, %sw.bb1.bad.i_crit_edge
  br label %handle_rpc_func_cmd_wq.exit

handle_rpc_func_cmd_wq.exit:                      ; preds = %bad.i, %sw.bb11.i.handle_rpc_func_cmd_wq.exit_crit_edge, %sw.bb.i.handle_rpc_func_cmd_wq.exit_crit_edge
  %.sink.i21 = phi i32 [ -65530, %bad.i ], [ 0, %sw.bb11.i.handle_rpc_func_cmd_wq.exit_crit_edge ], [ 0, %sw.bb.i.handle_rpc_func_cmd_wq.exit_crit_edge ]
  %ret21.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  %25 = ptrtoint ptr %ret21.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i21, ptr %ret21.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %num_params.i22 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 7
  %26 = ptrtoint ptr %num_params.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_params.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.not.i23 = icmp eq i32 %27, 1
  br i1 %cmp.not.i23, label %if.end.i27, label %sw.bb2.handle_rpc_func_cmd_wait.exit_crit_edge

sw.bb2.handle_rpc_func_cmd_wait.exit_crit_edge:   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_rpc_func_cmd_wait.exit

if.end.i27:                                       ; preds = %sw.bb2
  %params.i24 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 8
  %28 = ptrtoint ptr %params.i24 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %params.i24, align 8
  %and.i25 = and i64 %29, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and.i25)
  %cmp1.not.i26 = icmp eq i64 %and.i25, 1
  br i1 %cmp1.not.i26, label %if.end3.i31, label %if.end.i27.handle_rpc_func_cmd_wait.exit_crit_edge

if.end.i27.handle_rpc_func_cmd_wait.exit_crit_edge: ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_rpc_func_cmd_wait.exit

if.end3.i31:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  %u.i28 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 1, i32 2
  %30 = ptrtoint ptr %u.i28 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %u.i28, align 8
  %conv.i29 = trunc i64 %31 to i32
  %call.i30 = tail call i32 @msleep_interruptible(i32 noundef %conv.i29) #6
  br label %handle_rpc_func_cmd_wait.exit

handle_rpc_func_cmd_wait.exit:                    ; preds = %if.end3.i31, %if.end.i27.handle_rpc_func_cmd_wait.exit_crit_edge, %sw.bb2.handle_rpc_func_cmd_wait.exit_crit_edge
  %.sink.i32 = phi i32 [ 0, %if.end3.i31 ], [ -65530, %if.end.i27.handle_rpc_func_cmd_wait.exit_crit_edge ], [ -65530, %sw.bb2.handle_rpc_func_cmd_wait.exit_crit_edge ]
  %ret6.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  %32 = ptrtoint ptr %ret6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink.i32, ptr %ret6.i, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %call.i33 = tail call ptr @tee_get_drvdata(ptr noundef %34) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %35 = ptrtoint ptr %msg.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %msg.i, align 8
  %num_params.i34 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 7
  %36 = ptrtoint ptr %num_params.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_params.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp.not.i35 = icmp eq i32 %37, 4
  br i1 %cmp.not.i35, label %if.end.i37, label %if.then.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %ret1.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  %38 = ptrtoint ptr %ret1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -65530, ptr %ret1.i, align 4
  br label %handle_rpc_func_cmd_i2c_transfer.exit

if.end.i37:                                       ; preds = %sw.bb3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 128) #9
  %tobool.not.i36 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i36, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  %ret5.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  %40 = ptrtoint ptr %ret5.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -65524, ptr %ret5.i, align 4
  br label %handle_rpc_func_cmd_i2c_transfer.exit

if.end6.i:                                        ; preds = %if.end.i37
  %ops.i = getelementptr inbounds %struct.optee, ptr %call.i33, i32 0, i32 2
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %from_msg_param.i = getelementptr inbounds %struct.optee_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %from_msg_param.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %from_msg_param.i, align 4
  %45 = ptrtoint ptr %num_params.i34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_params.i34, align 4
  %params8.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 8
  %call9.i = tail call i32 %44(ptr noundef %call.i33, ptr noundef nonnull %call7.i.i.i, i32 noundef %46, ptr noundef %params8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.cond.preheader.i, label %if.end6.i.bad.i43_crit_edge

if.end6.i.bad.i43_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.i43

for.cond.preheader.i:                             ; preds = %if.end6.i
  %47 = ptrtoint ptr %num_params.i34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_params.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp14114.not.i = icmp eq i32 %48, 0
  br i1 %cmp14114.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0115.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %48
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0115.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tee_param, ptr %call7.i.i.i, i32 %i.0115.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.i, align 8
  %arrayidx16.i = getelementptr [4 x i8], ptr @__const.handle_rpc_func_cmd_i2c_transfer.attr, i32 0, i32 %i.0115.i
  %51 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx16.i, align 1
  %conv.i38 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %conv.i38)
  %cmp17.not.i = icmp eq i64 %50, %conv.i38
  br i1 %cmp17.not.i, label %for.cond.i, label %for.body.i.bad.i43_crit_edge

for.body.i.bad.i43_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.i43

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %u.i39 = getelementptr inbounds %struct.tee_param, ptr %call7.i.i.i, i32 0, i32 1
  %b.i40 = getelementptr inbounds %struct.tee_param, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %b.i40 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %b.i40, align 8
  %conv22.i = trunc i64 %54 to i32
  %call23.i = tail call ptr @i2c_get_adapter(i32 noundef %conv22.i) #6
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %for.end.i.bad.i43_crit_edge, label %if.end26.i

for.end.i.bad.i43_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.i43

if.end26.i:                                       ; preds = %for.end.i
  %u28.i = getelementptr %struct.tee_param, ptr %call7.i.i.i, i32 1, i32 1
  %55 = ptrtoint ptr %u28.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %u28.i, align 8
  %and.i41 = and i64 %56, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i41)
  %tobool29.not.i = icmp eq i64 %and.i41, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end35.i_crit_edge, label %if.then30.i

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end26.i
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call23.i, i32 0, i32 2
  %57 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i.i = tail call i32 %60(ptr noundef nonnull %call23.i) #6
  %61 = and i32 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool32.not.i = icmp eq i32 %61, 0
  br i1 %tobool32.not.i, label %if.then30.i.bad.sink.split.i_crit_edge, label %if.end34.i

if.then30.i.bad.sink.split.i_crit_edge:           ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.sink.split.i

if.end34.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 16, ptr %flags.i, align 2
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end34.i, %if.end26.i.if.end35.i_crit_edge
  %c.i = getelementptr inbounds %struct.tee_param, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %c.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %c.i, align 8
  %conv38.i = trunc i64 %64 to i16
  %65 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv38.i, ptr %msg.i, align 8
  %u40.i = getelementptr %struct.tee_param, ptr %call7.i.i.i, i32 2, i32 1
  %shm.i = getelementptr %struct.tee_param, ptr %call7.i.i.i, i32 2, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %shm.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %shm.i, align 8
  %kaddr.i = getelementptr inbounds %struct.tee_shm, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %kaddr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %kaddr.i, align 8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %70 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %buf.i, align 8
  %size.i = getelementptr inbounds %struct.tee_param_memref, ptr %u40.i, i32 0, i32 1
  %71 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size.i, align 4
  %conv43.i = trunc i32 %72 to i16
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 2
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv43.i, ptr %len.i, align 4
  %74 = ptrtoint ptr %u.i39 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %u.i39, align 8
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.2)
  switch i64 %75, label %if.end35.i.bad.sink.split.i_crit_edge [
    i64 0, label %sw.bb.i42
    i64 1, label %if.end35.i.sw.epilog.i_crit_edge
  ]

if.end35.i.sw.epilog.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end35.i.bad.sink.split.i_crit_edge:            ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bad.sink.split.i

sw.bb.i42:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags47.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %76 = ptrtoint ptr %flags47.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags47.i, align 2
  %78 = or i16 %77, 1
  store i16 %78, ptr %flags47.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i42, %if.end35.i.sw.epilog.i_crit_edge
  %call50.i = call i32 @i2c_transfer(ptr noundef nonnull %call23.i, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i

if.then53.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %ret54.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  %79 = ptrtoint ptr %ret54.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -65522, ptr %ret54.i, align 4
  br label %if.end71.i

if.else.i:                                        ; preds = %sw.epilog.i
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %len.i, align 4
  %conv56.i = zext i16 %81 to i64
  %u58.i = getelementptr %struct.tee_param, ptr %call7.i.i.i, i32 3, i32 1
  %82 = ptrtoint ptr %u58.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv56.i, ptr %u58.i, align 8
  %83 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i, align 4
  %to_msg_param.i = getelementptr inbounds %struct.optee_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %to_msg_param.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %to_msg_param.i, align 4
  %87 = ptrtoint ptr %num_params.i34 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_params.i34, align 4
  %call64.i = call i32 %86(ptr noundef %call.i33, ptr noundef %params8.i, i32 noundef %88, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  %ret69.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  br i1 %tobool65.not.i, label %if.else68.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %ret69.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -65530, ptr %ret69.i, align 4
  br label %if.end71.i

if.else68.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %ret69.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %ret69.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else68.i, %if.then66.i, %if.then53.i
  call void @i2c_put_adapter(ptr noundef nonnull %call23.i) #6
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %handle_rpc_func_cmd_i2c_transfer.exit

bad.sink.split.i:                                 ; preds = %if.end35.i.bad.sink.split.i_crit_edge, %if.then30.i.bad.sink.split.i_crit_edge
  tail call void @i2c_put_adapter(ptr noundef nonnull %call23.i) #6
  br label %bad.i43

bad.i43:                                          ; preds = %bad.sink.split.i, %for.end.i.bad.i43_crit_edge, %for.body.i.bad.i43_crit_edge, %if.end6.i.bad.i43_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  %ret72.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  %91 = ptrtoint ptr %ret72.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -65530, ptr %ret72.i, align 4
  br label %handle_rpc_func_cmd_i2c_transfer.exit

handle_rpc_func_cmd_i2c_transfer.exit:            ; preds = %bad.i43, %if.end71.i, %if.then4.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %ret_origin.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 6
  %92 = ptrtoint ptr %ret_origin.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %ret_origin.i, align 8
  %num_params.i44 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 7
  %93 = ptrtoint ptr %num_params.i44 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_params.i44, align 4
  %95 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %94, i32 32) #6
  %96 = extractvalue { i32, i1 } %95, 1
  br i1 %96, label %sw.default.if.then.i47_crit_edge, label %if.end7.i.i, !prof !9

sw.default.if.then.i47_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i47

if.end7.i.i:                                      ; preds = %sw.default
  %97 = extractvalue { i32, i1 } %95, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %97, i32 noundef 3264) #10
  %tobool.not.i46 = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i46, label %if.end7.i.i.if.then.i47_crit_edge, label %if.end.i50

if.end7.i.i.if.then.i47_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i47

if.then.i47:                                      ; preds = %if.end7.i.i.if.then.i47_crit_edge, %sw.default.if.then.i47_crit_edge
  %ret.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  %98 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -65524, ptr %ret.i, align 4
  br label %sw.epilog

if.end.i50:                                       ; preds = %if.end7.i.i
  %ops.i48 = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 2
  %99 = ptrtoint ptr %ops.i48 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i48, align 4
  %from_msg_param.i49 = getelementptr inbounds %struct.optee_ops, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %from_msg_param.i49 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %from_msg_param.i49, align 4
  %103 = ptrtoint ptr %num_params.i44 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_params.i44, align 4
  %params2.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 8
  %call3.i = tail call i32 %102(ptr noundef %optee, ptr noundef nonnull %call8.i.i, i32 noundef %104, ptr noundef %params2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  %ret6.i51 = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  br label %out.sink.split.i

if.end7.i:                                        ; preds = %if.end.i50
  %105 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arg, align 8
  %107 = ptrtoint ptr %num_params.i44 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_params.i44, align 4
  %call9.i52 = tail call i32 @optee_supp_thrd_req(ptr noundef %ctx, i32 noundef %106, i32 noundef %108, ptr noundef nonnull %call8.i.i) #6
  %ret10.i = getelementptr inbounds %struct.optee_msg_arg, ptr %arg, i32 0, i32 5
  %109 = ptrtoint ptr %ret10.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call9.i52, ptr %ret10.i, align 4
  %110 = ptrtoint ptr %ops.i48 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i48, align 4
  %to_msg_param.i53 = getelementptr inbounds %struct.optee_ops, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %to_msg_param.i53 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %to_msg_param.i53, align 4
  %114 = ptrtoint ptr %num_params.i44 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_params.i44, align 4
  %call15.i = tail call i32 %113(ptr noundef %optee, ptr noundef %params2.i, i32 noundef %115, ptr noundef nonnull %call8.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end7.i.out.i_crit_edge, label %if.end7.i.out.sink.split.i_crit_edge

if.end7.i.out.sink.split.i_crit_edge:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

if.end7.i.out.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

out.sink.split.i:                                 ; preds = %if.end7.i.out.sink.split.i_crit_edge, %if.then5.i
  %ret10.sink.i = phi ptr [ %ret6.i51, %if.then5.i ], [ %ret10.i, %if.end7.i.out.sink.split.i_crit_edge ]
  %116 = ptrtoint ptr %ret10.sink.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -65530, ptr %ret10.sink.i, align 4
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end7.i.out.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %out.i, %if.then.i47, %handle_rpc_func_cmd_i2c_transfer.exit, %handle_rpc_func_cmd_wait.exit, %handle_rpc_func_cmd_wq.exit, %handle_rpc_func_cmd_get_time.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_notif_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_notif_send(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
