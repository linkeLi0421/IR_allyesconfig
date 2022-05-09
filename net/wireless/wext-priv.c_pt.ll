; ModuleID = '/llk/IR_all_yes/net/wireless/wext-priv.c_pt.bc'
source_filename = "../net/wireless/wext-priv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.iwreq = type { %union.anon.118, %union.iwreq_data }
%union.anon.118 = type { [16 x i8] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@iw_priv_type_size = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\01\00\04\08\10\00", [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"iw_priv_type_size\00", align 1
@___asan_gen_.4 = private constant [28 x i8] c"../net/wireless/wext-priv.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 46, i32 19 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 230, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 214, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 156, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @iw_priv_type_size, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iw_priv_type_size to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iw_handler_get_private(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef writeonly %extra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wireless_handlers, align 8
  %num_private_args = getelementptr inbounds %struct.iw_handler_def, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_private_args to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_private_args, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %private_args = getelementptr inbounds %struct.iw_handler_def, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_args, align 4
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %3)
  %cmp9 = icmp ult i16 %7, %3
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %3, ptr %length, align 4
  br i1 %cmp9, label %if.end.return_crit_edge, label %if.end15

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wireless_handlers, align 8
  %private_args20 = getelementptr inbounds %struct.iw_handler_def, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %private_args20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_args20, align 4
  %mul = mul nuw nsw i32 %conv, 24
  %13 = call ptr @memcpy(ptr %extra, ptr %12, i32 %mul)
  br label %return

return:                                           ; preds = %if.end15, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -95, %lor.lhs.false.return_crit_edge ], [ -95, %entry.return_crit_edge ], [ -7, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ioctl_private_call(ptr noundef %dev, ptr noundef %iwr, i32 noundef %cmd, ptr noundef %info, ptr nocapture noundef readonly %handler) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_handlers.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %wireless_handlers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wireless_handlers.i, align 8
  %num_private_args.i = getelementptr inbounds %struct.iw_handler_def, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_private_args.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_private_args.i, align 4
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp64.not.i = icmp eq i16 %3, 0
  br i1 %cmp64.not.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %private_args.i = getelementptr inbounds %struct.iw_handler_def, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_args.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iw_priv_args, ptr %5, i32 %i.065.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cmd)
  %cmp4.i = icmp eq i32 %7, %cmd
  br i1 %cmp4.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %for.end.i.if.then_crit_edge, label %if.then9.i

for.end.i.if.then_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then9.i:                                       ; preds = %for.end.i
  %and.i = and i32 %cmd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.then9.i
  %set_args.i = getelementptr %struct.iw_priv_args, ptr %5, i32 %i.065.i, i32 1
  %8 = ptrtoint ptr %set_args.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %set_args.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %and.i.i = and i32 %conv.i.i, 2047
  %and2.i.i = lshr i32 %conv.i.i, 12
  %10 = and i32 %and2.i.i, 7
  %arrayidx.i.i = getelementptr [8 x i8], ptr @iw_priv_type_size, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv3.i.i = zext i8 %12 to i32
  %mul.i.i = mul nuw nsw i32 %and.i.i, %conv3.i.i
  %13 = and i16 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool21.not.i = icmp eq i16 %13, 0
  br i1 %tobool21.not.i, label %get_priv_descr_and_size.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then11.i
  %name.i = getelementptr %struct.iw_priv_args, ptr %5, i32 %i.065.i, i32 3
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp14.i = icmp eq i8 %15, 0
  %spec.store.select.i = select i1 %cmp14.i, i32 4, i32 0
  %add.i = add nuw nsw i32 %spec.store.select.i, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add.i)
  %cmp22.i = icmp ult i32 %add.i, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp = icmp eq i32 %mul.i.i, 0
  %or.cond = or i1 %cmp22.i, %cmp
  br i1 %or.cond, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.else.i:                                        ; preds = %if.then9.i
  %get_args.i = getelementptr %struct.iw_priv_args, ptr %5, i32 %i.065.i, i32 2
  %16 = ptrtoint ptr %get_args.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %get_args.i, align 2
  %conv.i54.i = zext i16 %17 to i32
  %and.i55.i = and i32 %conv.i54.i, 2047
  %and2.i56.i = lshr i32 %conv.i54.i, 12
  %18 = and i32 %and2.i56.i, 7
  %arrayidx.i57.i = getelementptr [8 x i8], ptr @iw_priv_type_size, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i57.i, align 1
  %conv3.i58.i = zext i8 %20 to i32
  %mul.i59.i = mul nuw nsw i32 %and.i55.i, %conv3.i58.i
  %21 = and i16 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool30.not.i = icmp eq i16 %21, 0
  br i1 %tobool30.not.i, label %get_priv_descr_and_size.exit.thread, label %land.lhs.true31.i

land.lhs.true31.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %mul.i59.i)
  %cmp32.i = icmp ult i32 %mul.i59.i, 17
  br i1 %cmp32.i, label %land.lhs.true31.i.if.then_crit_edge, label %if.else.thread

land.lhs.true31.i.if.then_crit_edge:              ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.else.thread:                                   ; preds = %land.lhs.true31.i
  %u355 = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1
  %22 = ptrtoint ptr %u355 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %u355, align 4
  %tobool1.not.i56 = icmp eq ptr %23, null
  br i1 %tobool1.not.i56, label %if.else.thread.if.end8_crit_edge, label %if.else.thread.if.end8.i.i.i_crit_edge

if.else.thread.if.end8.i.i.i_crit_edge:           ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i.i

if.else.thread.if.end8_crit_edge:                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

get_priv_descr_and_size.exit:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp.old = icmp eq i32 %mul.i.i, 0
  br i1 %cmp.old, label %get_priv_descr_and_size.exit.if.then_crit_edge, label %get_priv_descr_and_size.exit.if.else_crit_edge

get_priv_descr_and_size.exit.if.else_crit_edge:   ; preds = %get_priv_descr_and_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

get_priv_descr_and_size.exit.if.then_crit_edge:   ; preds = %get_priv_descr_and_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

get_priv_descr_and_size.exit.thread:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i59.i)
  %cmp68 = icmp eq i32 %mul.i59.i, 0
  br i1 %cmp68, label %get_priv_descr_and_size.exit.thread.if.then_crit_edge, label %if.else.thread69

get_priv_descr_and_size.exit.thread.if.then_crit_edge: ; preds = %get_priv_descr_and_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.else.thread69:                                 ; preds = %get_priv_descr_and_size.exit.thread
  %u371 = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1
  %24 = ptrtoint ptr %u371 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %u371, align 4
  %tobool1.not.i72 = icmp eq ptr %25, null
  br i1 %tobool1.not.i72, label %if.else.thread69.if.end8_crit_edge, label %if.else.thread69.if.end8.i.i.i_crit_edge

if.else.thread69.if.end8.i.i.i_crit_edge:         ; preds = %if.else.thread69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i.i

if.else.thread69.if.end8_crit_edge:               ; preds = %if.else.thread69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %get_priv_descr_and_size.exit.thread.if.then_crit_edge, %get_priv_descr_and_size.exit.if.then_crit_edge, %land.lhs.true31.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %for.end.i.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %u = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1
  %call2 = tail call i32 %handler(ptr noundef %dev, ptr noundef %info, ptr noundef %u, ptr noundef %u) #6
  br label %if.end

if.else:                                          ; preds = %get_priv_descr_and_size.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge
  %u3 = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1
  %26 = ptrtoint ptr %u3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %u3, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool10.not.i, label %if.then.i, label %if.else.i23

if.then.i:                                        ; preds = %if.else
  br i1 %tobool1.not.i, label %land.lhs.true.i21, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i21:                                ; preds = %if.then.i
  %length.i = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i = icmp eq i16 %29, 0
  br i1 %cmp.not.i, label %land.lhs.true.i21.if.end.i_crit_edge, label %land.lhs.true.i21.if.end8_crit_edge

land.lhs.true.i21.if.end8_crit_edge:              ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true.i21.if.end.i_crit_edge:             ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i21.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %length4.i = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %length4.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %length4.i, align 4
  %set_args.i22 = getelementptr %struct.iw_priv_args, ptr %5, i32 %i.065.i, i32 1
  %32 = ptrtoint ptr %set_args.i22 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %set_args.i22, align 4
  %34 = and i16 %33, 2047
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %34)
  %cmp8.i = icmp ugt i16 %31, %34
  br i1 %cmp8.i, label %if.end.i.if.end8_crit_edge, label %if.end.i.if.end8.i.i.i_crit_edge

if.end.i.if.end8.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else.i23:                                      ; preds = %if.else
  br i1 %tobool1.not.i, label %if.else.i23.if.end8_crit_edge, label %if.else.i23.if.end8.i.i.i_crit_edge

if.else.i23.if.end8.i.i.i_crit_edge:              ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i.i

if.else.i23.if.end8_crit_edge:                    ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8.i.i.i:                                    ; preds = %if.else.i23.if.end8.i.i.i_crit_edge, %if.end.i.if.end8.i.i.i_crit_edge, %if.else.thread69.if.end8.i.i.i_crit_edge, %if.else.thread.if.end8.i.i.i_crit_edge
  %u363 = phi ptr [ %u3, %if.else.i23.if.end8.i.i.i_crit_edge ], [ %u3, %if.end.i.if.end8.i.i.i_crit_edge ], [ %u355, %if.else.thread.if.end8.i.i.i_crit_edge ], [ %u371, %if.else.thread69.if.end8.i.i.i_crit_edge ]
  %extra_size.1.i4157 = phi i32 [ %mul.i.i, %if.else.i23.if.end8.i.i.i_crit_edge ], [ %mul.i.i, %if.end.i.if.end8.i.i.i_crit_edge ], [ %mul.i59.i, %if.else.thread.if.end8.i.i.i_crit_edge ], [ %mul.i59.i, %if.else.thread69.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %extra_size.1.i4157, i32 noundef 3520) #9
  %tobool17.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool17.not.i, label %if.end8.i.i.i.if.end8_crit_edge, label %if.end19.i

if.end8.i.i.i.if.end8_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end19.i:                                       ; preds = %if.end8.i.i.i
  br i1 %tobool10.not.i, label %land.lhs.true22.i, label %if.end33.i

land.lhs.true22.i:                                ; preds = %if.end19.i
  %length23.i = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %length23.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %length23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp25.not.i = icmp eq i16 %36, 0
  br i1 %cmp25.not.i, label %land.lhs.true22.i.if.end33.thread.i_crit_edge, label %if.then27.i

land.lhs.true22.i.if.end33.thread.i_crit_edge:    ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.thread.i

if.then27.i:                                      ; preds = %land.lhs.true22.i
  %37 = ptrtoint ptr %u363 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %u363, align 4
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %extra_size.1.i4157, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #6
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i, label %if.then27.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then27.i.if.then11.i.i.i_crit_edge:            ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then27.i
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 %extra_size.1.i4157, i32 -1226833920) #10, !srcloc !19
  %asmresult.i.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !20

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef %extra_size.1.i4157) #6
  %40 = tail call i32 @llvm.read_register.i32(metadata !9) #6
  %and.i.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !21
  %and.i.i.i.i.i = and i32 %42, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i.i, ptr noundef %38, i32 noundef %extra_size.1.i4157) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end33.thread.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !20

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.end.i.i.i.if.end33.thread.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.thread.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then27.i.if.then11.i.i.i_crit_edge
  %res.0.i.i.i46 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ %extra_size.1.i4157, %if.then27.i.if.then11.i.i.i_crit_edge ], [ %extra_size.1.i4157, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %extra_size.1.i4157, %res.0.i.i.i46
  %add.ptr.i.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %sub.i.i.i
  %43 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i46)
  br label %out.i

if.end33.thread.i:                                ; preds = %if.end.i.i.i.if.end33.thread.i_crit_edge, %land.lhs.true22.i.if.end33.thread.i_crit_edge
  %call3494.i = tail call i32 %handler(ptr noundef %dev, ptr noundef %info, ptr noundef %u363, ptr noundef nonnull %call9.i.i.i) #6
  br label %out.i

if.end33.i:                                       ; preds = %if.end19.i
  %call34.i = tail call i32 %handler(ptr noundef %dev, ptr noundef %info, ptr noundef %u363, ptr noundef nonnull %call9.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i.not = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i.not, label %if.then39.i, label %if.end33.i.out.i_crit_edge

if.end33.i.out.i_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then39.i:                                      ; preds = %if.end33.i
  %get_args.i24 = getelementptr %struct.iw_priv_args, ptr %5, i32 %i.065.i, i32 2
  %44 = ptrtoint ptr %get_args.i24 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %get_args.i24, align 2
  %46 = and i16 %45, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool42.not.i = icmp eq i16 %46, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.then39.i.if.end46.i_crit_edge

if.then39.i.if.end46.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then43.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  %length.i.i = getelementptr inbounds %struct.iwreq, ptr %iwr, i32 0, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %length.i.i, align 4
  %conv.i.i25 = zext i16 %48 to i32
  %conv1.i.i = zext i16 %45 to i32
  %and.i.i26 = and i32 %conv1.i.i, 2047
  %49 = tail call i32 @llvm.umin.i32(i32 %and.i.i26, i32 %conv.i.i25) #6
  %and3.i.i = lshr i32 %conv1.i.i, 12
  %50 = and i32 %and3.i.i, 7
  %arrayidx.i.i27 = getelementptr [8 x i8], ptr @iw_priv_type_size, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i27, align 1
  %conv5.i.i = zext i8 %52 to i32
  %mul.i.i28 = mul nuw nsw i32 %49, %conv5.i.i
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %if.then39.i.if.end46.i_crit_edge
  %extra_size.addr.0.i = phi i32 [ %extra_size.1.i4157, %if.then39.i.if.end46.i_crit_edge ], [ %mul.i.i28, %if.then43.i ]
  %53 = ptrtoint ptr %u363 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %u363, align 4
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %extra_size.addr.0.i, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #6
  %call.i.i81.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i81.i, label %if.end46.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i85.i

if.end46.i.copy_to_user.exit.i_crit_edge:         ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.i

if.end.i.i85.i:                                   ; preds = %if.end46.i
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %54, i32 %extra_size.addr.0.i, i32 -1226833920) #10, !srcloc !24
  %asmresult.i.i83.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i83.i)
  %cmp.i6.i84.i = icmp eq i32 %asmresult.i.i83.i, 0
  br i1 %cmp.i6.i84.i, label %if.then2.i.i.i, label %if.end.i.i85.i.copy_to_user.exit.i_crit_edge

if.end.i.i85.i.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i86.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i, i32 noundef %extra_size.addr.0.i) #6
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %54, ptr noundef nonnull %call9.i.i.i, i32 noundef %extra_size.addr.0.i) #6
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i85.i.copy_to_user.exit.i_crit_edge, %if.end46.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i87.i = phi i32 [ %extra_size.addr.0.i, %if.end46.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %extra_size.addr.0.i, %if.end.i.i85.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i87.i)
  %tobool49.not.i = icmp eq i32 %n.addr.0.i87.i, 0
  %spec.select.i = select i1 %tobool49.not.i, i32 0, i32 -14
  br label %out.i

out.i:                                            ; preds = %copy_to_user.exit.i, %if.end33.i.out.i_crit_edge, %if.end33.thread.i, %if.then11.i.i.i
  %err.0.i = phi i32 [ %call34.i, %if.end33.i.out.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ %call3494.i, %if.end33.thread.i ], [ %spec.select.i, %copy_to_user.exit.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #6
  br label %if.end

if.end:                                           ; preds = %out.i, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %err.0.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %ret.0)
  %cmp5 = icmp eq i32 %ret.0, -115
  br i1 %cmp5, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @call_commit_handler(ptr noundef %dev) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge, %if.end8.i.i.i.if.end8_crit_edge, %if.else.i23.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %land.lhs.true.i21.if.end8_crit_edge, %if.else.thread69.if.end8_crit_edge, %if.else.thread.if.end8_crit_edge
  %ret.1 = phi i32 [ %call7, %if.then6 ], [ %ret.0, %if.end.if.end8_crit_edge ], [ -12, %if.end8.i.i.i.if.end8_crit_edge ], [ -14, %if.else.i23.if.end8_crit_edge ], [ -7, %if.end.i.if.end8_crit_edge ], [ -14, %land.lhs.true.i21.if.end8_crit_edge ], [ -14, %if.else.thread.if.end8_crit_edge ], [ -14, %if.else.thread69.if.end8_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_commit_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @iw_priv_type_size, !1, !"iw_priv_type_size", i1 false, i1 false}
!1 = !{!"../net/wireless/wext-priv.c", i32 46, i32 19}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2153335862, i64 2153335887}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 5831417}
!22 = !{i64 5831614}
!23 = !{i64 2153316847}
!24 = !{i64 2153336543, i64 2153336568}
