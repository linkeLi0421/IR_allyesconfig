; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/sdio_ops.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mmc/core/sdio_ops.c\00", [36 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [31 x i8] c"../drivers/mmc/core/sdio_ops.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 126, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_send_io_op_cond(ptr noundef %host, i32 noundef %ocr, ptr noundef writeonly %rocr) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ocr, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 737, ptr %flags, align 4
  %arrayidx = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %resp10 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ocr)
  %cmp = icmp eq i32 %ocr, 0
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 100, %entry ], [ %dec, %if.end16.for.body_crit_edge ]
  %call = call i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef nonnull %cmd, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp ne i32 %call, 0
  %brmerge = or i1 %tobool1.not, %cmp
  br i1 %brmerge, label %for.body.for.end_crit_edge, label %if.end3

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end3:                                          ; preds = %for.body
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps, align 32
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool7.not = icmp sgt i32 %8, -1
  br i1 %tobool7.not, label %if.then5.if.end16_crit_edge, label %if.then5.for.end_crit_edge

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.else:                                          ; preds = %if.end3
  %9 = ptrtoint ptr %resp10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resp10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool13.not = icmp sgt i32 %10, -1
  br i1 %tobool13.not, label %if.else.if.end16_crit_edge, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.then5.if.end16_crit_edge
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12500, i32 noundef 2) #4
  %dec = add nsw i32 %i.031, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %if.else.for.end_crit_edge, %if.then5.for.end_crit_edge, %for.body.for.end_crit_edge
  %err.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %if.then5.for.end_crit_edge ], [ 0, %if.else.for.end_crit_edge ], [ -110, %if.end16.for.end_crit_edge ]
  %tobool17.not = icmp eq ptr %rocr, null
  br i1 %tobool17.not, label %for.end.if.end24_crit_edge, label %if.then18

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps, align 32
  %and21 = lshr i32 %12, 4
  %and21.lobit = and i32 %and21, 1
  %arrayidx23 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 %and21.lobit
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx23, align 4
  %15 = ptrtoint ptr %rocr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rocr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %for.end.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #4
  ret i32 %err.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_io_rw_direct(ptr nocapture noundef readonly %card, i32 noundef %write, i32 noundef %fn, i32 noundef %addr, i8 noundef zeroext %in, ptr noundef writeonly %out) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #4
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %fn)
  %cmp.i = icmp ult i32 %fn, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %addr)
  %tobool.not.i = icmp ult i32 %addr, 131072
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end2.i, label %entry.mmc_io_rw_direct_host.exit_crit_edge

entry.mmc_io_rw_direct_host.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit

if.end2.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 52, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool3.not.i = icmp eq i32 %write, 0
  %cond.i = select i1 %tobool3.not.i, i32 0, i32 -2147483648
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %shl.i = shl nuw nsw i32 %fn, 28
  %or.i = or i32 %cond.i, %shl.i
  %tobool6.not.i = icmp eq ptr %out, null
  %5 = or i1 %tobool3.not.i, %tobool6.not.i
  %6 = select i1 %5, i32 0, i32 134217728
  %shl10.i = shl nuw nsw i32 %addr, 9
  %conv.i = zext i8 %in to i32
  %or9.i = or i32 %or.i, %shl10.i
  %or12.i = or i32 %or9.i, %conv.i
  %or14.i = or i32 %or12.i, %6
  %7 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or14.i, ptr %arg.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 405, ptr %flags.i, align 4
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %1, ptr noundef nonnull %cmd.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end2.i.mmc_io_rw_direct_host.exit_crit_edge

if.end2.i.mmc_io_rw_direct_host.exit_crit_edge:   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit

if.end17.i:                                       ; preds = %if.end2.i
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps.i, align 32
  %and18.i = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.end37.thread.i

if.else.i:                                        ; preds = %if.end17.i
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %and21.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.else.i.mmc_io_rw_direct_host.exit_crit_edge

if.else.i.mmc_io_rw_direct_host.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit

if.end24.i:                                       ; preds = %if.else.i
  %and27.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end24.i.mmc_io_rw_direct_host.exit_crit_edge

if.end24.i.mmc_io_rw_direct_host.exit_crit_edge:  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit

if.end30.i:                                       ; preds = %if.end24.i
  %and33.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp ne i32 %and33.i, 0
  %brmerge.i = or i1 %tobool6.not.i, %tobool34.not.i
  %.mux.i = select i1 %tobool34.not.i, i32 -34, i32 0
  br i1 %brmerge.i, label %if.end30.i.mmc_io_rw_direct_host.exit_crit_edge, label %if.end30.i.cleanup.sink.split.i_crit_edge

if.end30.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end30.i.mmc_io_rw_direct_host.exit_crit_edge:  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit

if.end37.thread.i:                                ; preds = %if.end17.i
  br i1 %tobool6.not.i, label %if.end37.thread.i.mmc_io_rw_direct_host.exit_crit_edge, label %if.then43.i

if.end37.thread.i.mmc_io_rw_direct_host.exit_crit_edge: ; preds = %if.end37.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit

if.then43.i:                                      ; preds = %if.end37.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 4
  %shr.i = lshr i32 %14, 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then43.i, %if.end30.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %shr.i, %if.then43.i ], [ %12, %if.end30.i.cleanup.sink.split.i_crit_edge ]
  %conv52.i = trunc i32 %.sink.i to i8
  %15 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv52.i, ptr %out, align 1
  br label %mmc_io_rw_direct_host.exit

mmc_io_rw_direct_host.exit:                       ; preds = %cleanup.sink.split.i, %if.end37.thread.i.mmc_io_rw_direct_host.exit_crit_edge, %if.end30.i.mmc_io_rw_direct_host.exit_crit_edge, %if.end24.i.mmc_io_rw_direct_host.exit_crit_edge, %if.else.i.mmc_io_rw_direct_host.exit_crit_edge, %if.end2.i.mmc_io_rw_direct_host.exit_crit_edge, %entry.mmc_io_rw_direct_host.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.mmc_io_rw_direct_host.exit_crit_edge ], [ %call.i, %if.end2.i.mmc_io_rw_direct_host.exit_crit_edge ], [ -5, %if.else.i.mmc_io_rw_direct_host.exit_crit_edge ], [ -22, %if.end24.i.mmc_io_rw_direct_host.exit_crit_edge ], [ %.mux.i, %if.end30.i.mmc_io_rw_direct_host.exit_crit_edge ], [ 0, %if.end37.thread.i.mmc_io_rw_direct_host.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_io_rw_extended(ptr noundef %card, i32 noundef %write, i32 noundef %fn, i32 noundef %addr, i32 noundef %incr_addr, ptr noundef %buf, i32 noundef %blocks, i32 noundef %blksz) local_unnamed_addr #0 align 64 {
entry:
  %mrq = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  %data = alloca %struct.mmc_data, align 4
  %sg = alloca %struct.scatterlist, align 4
  %sgtable = alloca %struct.sg_table, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq) #4
  %0 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #4
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data) #4
  %3 = call ptr @memset(ptr %data, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #4
  %4 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sgtable) #4
  %5 = ptrtoint ptr %sgtable to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgtable, align 4, !annotation !11
  %6 = getelementptr inbounds %struct.sg_table, ptr %sgtable, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !11
  %8 = getelementptr inbounds %struct.sg_table, ptr %sgtable, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !11
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_seg_size, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blksz)
  %cmp = icmp eq i32 %blksz, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !12

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %addr)
  %tobool19.not = icmp ult i32 %addr, 131072
  br i1 %tobool19.not, label %if.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmd22 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %14 = ptrtoint ptr %cmd22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd, ptr %cmd22, align 4
  %data23 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %15 = ptrtoint ptr %data23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data, ptr %data23, align 4
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 53, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool24.not = icmp eq i32 %write, 0
  %cond = select i1 %tobool24.not, i32 0, i32 -2147483648
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %shl = shl i32 %fn, 28
  %or = or i32 %cond, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %incr_addr)
  %tobool26.not = icmp eq i32 %incr_addr, 0
  %cond27 = select i1 %tobool26.not, i32 0, i32 67108864
  %shl30 = shl nuw nsw i32 %addr, 9
  %or29 = or i32 %or, %shl30
  %or32 = or i32 %or29, %cond27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocks)
  %cmp33 = icmp eq i32 %blocks, 0
  %or39 = or i32 %blocks, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %blksz)
  %cmp35 = icmp eq i32 %blksz, 512
  %spec.select = select i1 %cmp35, i32 0, i32 %blksz
  %spec.select162 = select i1 %cmp33, i32 1, i32 %blocks
  %or39.pn = select i1 %cmp33, i32 %spec.select, i32 %or39
  %storemerge = or i32 %or39.pn, %or32
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 437, ptr %flags, align 4
  %blksz43 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %blksz43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %blksz, ptr %blksz43, align 4
  %blocks49 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %blocks49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select162, ptr %blocks49, align 4
  %cond51 = select i1 %tobool24.not, i32 512, i32 256
  %flags52 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %21 = ptrtoint ptr %flags52 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond51, ptr %flags52, align 4
  %mul = mul i32 %spec.select162, %blksz
  %add = add i32 %mul, -1
  %sub = add i32 %add, %13
  %div = udiv i32 %sub, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div)
  %cmp55 = icmp ugt i32 %div, 1
  br i1 %cmp55, label %if.then56, label %if.else73

if.then56:                                        ; preds = %if.end21
  %call = call i32 @sg_alloc_table(ptr noundef nonnull %sgtable, i32 noundef %div, i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool57.not = icmp eq i32 %call, 0
  br i1 %tobool57.not, label %for.body.preheader, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %if.then56
  %22 = ptrtoint ptr %sgtable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgtable, align 4
  %sg60 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %24 = ptrtoint ptr %sg60 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %sg60, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %25 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div, ptr %sg_len, align 4
  br label %for.body

for.body:                                         ; preds = %sg_set_buf.exit.for.body_crit_edge, %for.body.preheader
  %sg_ptr.0169 = phi ptr [ %call72, %sg_set_buf.exit.for.body_crit_edge ], [ %23, %for.body.preheader ]
  %i.0168 = phi i32 [ %inc, %sg_set_buf.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %left_size.0167 = phi i32 [ %sub71, %sg_set_buf.exit.for.body_crit_edge ], [ %mul, %for.body.preheader ]
  %mul64 = mul i32 %i.0168, %13
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul64
  %26 = call i32 @llvm.umin.i32(i32 %left_size.0167, i32 %13)
  %27 = ptrtoint ptr %add.ptr to i32
  %cmp.i = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.do.body5.i_crit_edge, !prof !13

for.body.do.body5.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %28 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %28, %add.ptr
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !13

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %29 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %29, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !12

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %for.body.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %30, i32 %shr.i
  %31 = ptrtoint ptr %sg_ptr.0169 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sg_ptr.0169, align 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !13

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !13

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !16
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %27, 4095
  %and.i.i.i = and i32 %32, 3
  %or.i.i.i = or i32 %and.i.i.i, %33
  %34 = ptrtoint ptr %sg_ptr.0169 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i.i, ptr %sg_ptr.0169, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.0169, i32 0, i32 1
  %35 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.0169, i32 0, i32 2
  %36 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %26, ptr %length.i.i, align 4
  %sub71 = sub i32 %left_size.0167, %13
  %inc = add nuw i32 %i.0168, 1
  %call72 = call ptr @sg_next(ptr noundef %sg_ptr.0169) #4
  %37 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sg_len, align 4
  %cmp63 = icmp ult i32 %inc, %38
  br i1 %cmp63, label %sg_set_buf.exit.for.body_crit_edge, label %sg_set_buf.exit.if.end76_crit_edge

sg_set_buf.exit.if.end76_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

sg_set_buf.exit.for.body_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.else73:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %sg74 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %39 = ptrtoint ptr %sg74 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %sg, ptr %sg74, align 4
  %sg_len75 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %40 = ptrtoint ptr %sg_len75 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %sg_len75, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %buf, i32 noundef %mul) #4
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %sg_set_buf.exit.if.end76_crit_edge
  call void @mmc_set_data_timeout(ptr noundef nonnull %data, ptr noundef %card) #4
  %41 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card, align 8
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %pre_req.i = getelementptr inbounds %struct.mmc_host_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %pre_req.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pre_req.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end76.mmc_pre_req.exit_crit_edge, label %if.then.i

if.end76.mmc_pre_req.exit_crit_edge:              ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_pre_req.exit

if.then.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  call void %46(ptr noundef %42, ptr noundef nonnull %mrq) #4
  br label %mmc_pre_req.exit

mmc_pre_req.exit:                                 ; preds = %if.then.i, %if.end76.mmc_pre_req.exit_crit_edge
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 8
  call void @mmc_wait_for_req(ptr noundef %48, ptr noundef nonnull %mrq) #4
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %49 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool79.not = icmp eq i32 %50, 0
  br i1 %tobool79.not, label %if.else82, label %mmc_pre_req.exit.if.end114_crit_edge

mmc_pre_req.exit.if.end114_crit_edge:             ; preds = %mmc_pre_req.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

if.else82:                                        ; preds = %mmc_pre_req.exit
  %error83 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %51 = ptrtoint ptr %error83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %error83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool84.not = icmp eq i32 %52, 0
  br i1 %tobool84.not, label %if.else87, label %if.else82.if.end114_crit_edge

if.else82.if.end114_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

if.else87:                                        ; preds = %if.else82
  %53 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %card, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %caps, align 32
  %and89 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else92, label %if.else87.if.end114_crit_edge

if.else87.if.end114_crit_edge:                    ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

if.else92:                                        ; preds = %if.else87
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %57 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %resp, align 4
  %and93 = and i32 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.else96, label %if.else92.if.end114_crit_edge

if.else92.if.end114_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

if.else96:                                        ; preds = %if.else92
  %and99 = and i32 %58, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.else102, label %if.else96.if.end114_crit_edge

if.else96.if.end114_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

if.else102:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #6
  %and105 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  %. = select i1 %tobool106.not, i32 0, i32 -34
  br label %if.end114

if.end114:                                        ; preds = %if.else102, %if.else96.if.end114_crit_edge, %if.else92.if.end114_crit_edge, %if.else87.if.end114_crit_edge, %if.else82.if.end114_crit_edge, %mmc_pre_req.exit.if.end114_crit_edge
  %err.0 = phi i32 [ %50, %mmc_pre_req.exit.if.end114_crit_edge ], [ %52, %if.else82.if.end114_crit_edge ], [ 0, %if.else87.if.end114_crit_edge ], [ -5, %if.else92.if.end114_crit_edge ], [ -22, %if.else96.if.end114_crit_edge ], [ %., %if.else102 ]
  %59 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card, align 8
  %ops.i163 = getelementptr inbounds %struct.mmc_host, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %ops.i163 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i163, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool.not.i164 = icmp eq ptr %64, null
  br i1 %tobool.not.i164, label %if.end114.mmc_post_req.exit_crit_edge, label %if.then.i165

if.end114.mmc_post_req.exit_crit_edge:            ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_post_req.exit

if.then.i165:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  call void %64(ptr noundef %60, ptr noundef nonnull %mrq, i32 noundef %err.0) #4
  br label %mmc_post_req.exit

mmc_post_req.exit:                                ; preds = %if.then.i165, %if.end114.mmc_post_req.exit_crit_edge
  br i1 %cmp55, label %if.then117, label %mmc_post_req.exit.cleanup_crit_edge

mmc_post_req.exit.cleanup_crit_edge:              ; preds = %mmc_post_req.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then117:                                       ; preds = %mmc_post_req.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @sg_free_table(ptr noundef nonnull %sgtable) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %mmc_post_req.exit.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.then56.cleanup_crit_edge ], [ %err.0, %if.then117 ], [ %err.0, %mmc_post_req.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgtable) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #4
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_reset(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i4 = alloca %struct.mmc_command, align 4
  %cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #4
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 52, ptr %cmd.i, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %3 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3072, ptr %arg.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 405, ptr %flags.i, align 4
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef nonnull %cmd.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %entry.mmc_io_rw_direct_host.exit.thread_crit_edge

entry.mmc_io_rw_direct_host.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit.thread

if.end17.i:                                       ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %5 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps.i, align 32
  %and18.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  br i1 %tobool19.not.i, label %if.else.i, label %if.end37.thread.i

if.else.i:                                        ; preds = %if.end17.i
  %9 = and i32 %8, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end30.i, label %if.else.i.mmc_io_rw_direct_host.exit.thread_crit_edge

if.else.i.mmc_io_rw_direct_host.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit.thread

if.end30.i:                                       ; preds = %if.else.i
  %and33.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i.not = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i.not, label %if.end30.i.mmc_io_rw_direct_host.exit.thread30_crit_edge, label %mmc_io_rw_direct_host.exit

if.end30.i.mmc_io_rw_direct_host.exit.thread30_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit.thread30

if.end37.thread.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = lshr i32 %8, 8
  br label %mmc_io_rw_direct_host.exit.thread30

mmc_io_rw_direct_host.exit.thread30:              ; preds = %if.end37.thread.i, %if.end30.i.mmc_io_rw_direct_host.exit.thread30_crit_edge
  %.sink.i = phi i32 [ %shr.i, %if.end37.thread.i ], [ %8, %if.end30.i.mmc_io_rw_direct_host.exit.thread30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #4
  %11 = and i32 %.sink.i, 247
  %phi.bo = or i32 %11, -2147480568
  br label %if.end

mmc_io_rw_direct_host.exit.thread:                ; preds = %if.else.i.mmc_io_rw_direct_host.exit.thread_crit_edge, %entry.mmc_io_rw_direct_host.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #4
  br label %if.end

mmc_io_rw_direct_host.exit:                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #4
  br label %if.end

if.end:                                           ; preds = %mmc_io_rw_direct_host.exit, %mmc_io_rw_direct_host.exit.thread, %mmc_io_rw_direct_host.exit.thread30
  %storemerge = phi i32 [ %phi.bo, %mmc_io_rw_direct_host.exit.thread30 ], [ -2147480568, %mmc_io_rw_direct_host.exit ], [ -2147480568, %mmc_io_rw_direct_host.exit.thread ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i4) #4
  %12 = getelementptr inbounds i8, ptr %cmd.i4, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %cmd.i4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 52, ptr %cmd.i4, align 4
  %arg.i5 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i4, i32 0, i32 1
  %15 = ptrtoint ptr %arg.i5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %arg.i5, align 4
  %flags.i6 = getelementptr inbounds %struct.mmc_command, ptr %cmd.i4, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 405, ptr %flags.i6, align 4
  %call.i7 = call i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef nonnull %cmd.i4, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool15.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool15.not.i8, label %if.end17.i12, label %if.end.mmc_io_rw_direct_host.exit26_crit_edge

if.end.mmc_io_rw_direct_host.exit26_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit26

if.end17.i12:                                     ; preds = %if.end
  %caps.i9 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %17 = ptrtoint ptr %caps.i9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps.i9, align 32
  %and18.i10 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i10)
  %tobool19.not.i11 = icmp eq i32 %and18.i10, 0
  br i1 %tobool19.not.i11, label %if.else.i16, label %if.end17.i12.mmc_io_rw_direct_host.exit26_crit_edge

if.end17.i12.mmc_io_rw_direct_host.exit26_crit_edge: ; preds = %if.end17.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit26

if.else.i16:                                      ; preds = %if.end17.i12
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %12, align 4
  %and21.i14 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i14)
  %tobool22.not.i15 = icmp eq i32 %and21.i14, 0
  br i1 %tobool22.not.i15, label %if.end24.i19, label %if.else.i16.mmc_io_rw_direct_host.exit26_crit_edge

if.else.i16.mmc_io_rw_direct_host.exit26_crit_edge: ; preds = %if.else.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit26

if.end24.i19:                                     ; preds = %if.else.i16
  %and27.i17 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i17)
  %tobool28.not.i18 = icmp eq i32 %and27.i17, 0
  br i1 %tobool28.not.i18, label %if.end30.i23, label %if.end24.i19.mmc_io_rw_direct_host.exit26_crit_edge

if.end24.i19.mmc_io_rw_direct_host.exit26_crit_edge: ; preds = %if.end24.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_io_rw_direct_host.exit26

if.end30.i23:                                     ; preds = %if.end24.i19
  call void @__sanitizer_cov_trace_pc() #6
  %and33.i20 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i20)
  %tobool34.not.i21.not = icmp eq i32 %and33.i20, 0
  %.mux.i22 = select i1 %tobool34.not.i21.not, i32 0, i32 -34
  br label %mmc_io_rw_direct_host.exit26

mmc_io_rw_direct_host.exit26:                     ; preds = %if.end30.i23, %if.end24.i19.mmc_io_rw_direct_host.exit26_crit_edge, %if.else.i16.mmc_io_rw_direct_host.exit26_crit_edge, %if.end17.i12.mmc_io_rw_direct_host.exit26_crit_edge, %if.end.mmc_io_rw_direct_host.exit26_crit_edge
  %retval.0.i25 = phi i32 [ %call.i7, %if.end.mmc_io_rw_direct_host.exit26_crit_edge ], [ -5, %if.else.i16.mmc_io_rw_direct_host.exit26_crit_edge ], [ -22, %if.end24.i19.mmc_io_rw_direct_host.exit26_crit_edge ], [ %.mux.i22, %if.end30.i23 ], [ 0, %if.end17.i12.mmc_io_rw_direct_host.exit26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i4) #4
  ret i32 %retval.0.i25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/sdio_ops.c", i32 126, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153355537, i64 2153356029, i64 2153355574, i64 2153355630, i64 2153355664, i64 2153355688, i64 2153355729, i64 2153355750, i64 2153355778, i64 2153355812}
!15 = !{i64 2153345157, i64 2153345649, i64 2153345194, i64 2153345250, i64 2153345284, i64 2153345308, i64 2153345349, i64 2153345370, i64 2153345398, i64 2153345432}
!16 = !{i64 2153346767, i64 2153347259, i64 2153346804, i64 2153346860, i64 2153346894, i64 2153346918, i64 2153346959, i64 2153346980, i64 2153347008, i64 2153347042}
