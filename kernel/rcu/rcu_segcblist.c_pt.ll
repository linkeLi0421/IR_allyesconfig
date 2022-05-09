; ModuleID = '/llk/IR_all_yes/kernel/rcu/rcu_segcblist.c_pt.bc'
source_filename = "../kernel/rcu/rcu_segcblist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcu_cblist = type { ptr, ptr, i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.atomic_t = type { i32 }

@rcu_segcblist_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/rcu/rcu_segcblist.c\00", [37 x i8] zeroinitializer }, align 32
@rcu_segcblist_disable.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_segcblist_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_segcblist_accelerate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [30 x i8] c"../kernel/rcu/rcu_segcblist.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 258, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rcu_cblist_init(ptr noundef %rclp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rclp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rclp, align 4
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 1
  %1 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rclp, ptr %tail, align 4
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %len, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_cblist_enqueue(ptr noundef %rclp, ptr noundef %rhp) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 1
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rhp, ptr %1, align 4
  store ptr %rhp, ptr %tail, align 4
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %add = add i32 %4, 1
  store volatile i32 %add, ptr %len, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_cblist_flush_enqueue(ptr noundef %drclp, ptr noundef %srclp, ptr noundef %rhp) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srclp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srclp, align 4
  %2 = ptrtoint ptr %drclp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %drclp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %srclp, i32 0, i32 1
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.sink = phi ptr [ %4, %if.then ], [ %drclp, %entry ]
  %5 = getelementptr inbounds %struct.rcu_cblist, ptr %drclp, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %.sink, ptr %5, align 4
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %srclp, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %len6 = getelementptr inbounds %struct.rcu_cblist, ptr %drclp, i32 0, i32 2
  %9 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %len6, align 4
  %tobool7.not = icmp eq ptr %rhp, null
  br i1 %tobool7.not, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end
  %10 = ptrtoint ptr %srclp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %srclp, align 4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %len, align 4
  br label %if.end18

if.else9:                                         ; preds = %if.end
  %12 = ptrtoint ptr %rhp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rhp, align 4
  %13 = ptrtoint ptr %srclp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rhp, ptr %srclp, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %len, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else9, %if.then8
  %rhp.sink = phi ptr [ %srclp, %if.then8 ], [ %rhp, %if.else9 ]
  %15 = getelementptr inbounds %struct.rcu_cblist, ptr %srclp, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rhp.sink, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rcu_cblist_dequeue(ptr noundef %rclp) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rclp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rclp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %len, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %rclp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %rclp, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 1
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rclp, ptr %tail, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end, %entry
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcu_segcblist_n_segment_cbs(ptr noundef %rsclp) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %arrayidx.i.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.1, align 4
  %add.1 = add i32 %3, %1
  %arrayidx.i.2 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.2, align 4
  %add.2 = add i32 %5, %add.1
  %arrayidx.i.3 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.3, align 4
  %add.3 = add i32 %7, %add.2
  ret i32 %add.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_add_len(ptr noundef %rsclp, i32 noundef %v) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %len = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %len, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %len, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %len, ptr %len, i32 %v, ptr elementtype(i32) %len) #11, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_inc_len(ptr noundef %rsclp) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %len.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %len.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %len.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %len.i, ptr %len.i, i32 1, ptr elementtype(i32) %len.i) #11, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_init(ptr noundef %rsclp) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsclp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rsclp, align 4
  %arrayidx = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rsclp, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %arrayidx.i, align 4
  %arrayidx.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rsclp, ptr %arrayidx.1, align 4
  %arrayidx.i.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %arrayidx.i.1, align 4
  %arrayidx.2 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rsclp, ptr %arrayidx.2, align 4
  %arrayidx.i.2 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %arrayidx.i.2, align 4
  %arrayidx.3 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rsclp, ptr %arrayidx.3, align 4
  %arrayidx.i.3 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %arrayidx.i.3, align 4
  %len.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %len.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %len.i, align 4
  %flags1.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %10 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags1.i, align 4
  %conv2.i = or i8 %11, 1
  store i8 %conv2.i, ptr %flags1.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_disable(ptr noundef %rsclp) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsclp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rsclp, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end28, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b99 = load i1, ptr @rcu_segcblist_disable.__already_done, align 1
  br i1 %.b99, label %if.end28, label %if.then, !prof !21

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @rcu_segcblist_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef null) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs, %entry
  %len.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %len.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %len.i, align 4
  %tobool38.not = icmp eq i32 %3, 0
  br i1 %tobool38.not, label %if.end83, label %land.rhs45

land.rhs45:                                       ; preds = %if.end28
  %.b9798 = load i1, ptr @rcu_segcblist_disable.__already_done.1, align 1
  br i1 %.b9798, label %if.end83, label %if.then56, !prof !21

if.then56:                                        ; preds = %land.rhs45
  store i1 true, ptr @rcu_segcblist_disable.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef null) #11
  br label %if.end83

if.end83:                                         ; preds = %if.then56, %land.rhs45, %if.end28
  %flags1.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags1.i, align 4
  %conv2.i = and i8 %5, -2
  store i8 %conv2.i, ptr %flags1.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rcu_segcblist_offload(ptr nocapture noundef %rsclp, i1 noundef zeroext %offload) local_unnamed_addr #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags1.i, align 4
  %conv2.i3 = and i8 %1, -33
  %conv2.i = or i8 %1, 36
  %conv2.i3.sink = select i1 %offload, i8 %conv2.i, i8 %conv2.i3
  store i8 %conv2.i3.sink, ptr %flags1.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %rsclp) local_unnamed_addr #8 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %flags1.i.i, align 4
  %2 = and i8 %1, 1
  %tobool.i.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1
  %3 = ptrtoint ptr %tails to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %tails, align 4
  %cmp = icmp ne ptr %4, %rsclp
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %rsclp) local_unnamed_addr #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %flags1.i.i, align 4
  %2 = and i8 %1, 1
  %tobool.i.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %tobool.not.i = icmp ne ptr %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool.not.i, %land.rhs ]
  ret i1 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rcu_segcblist_first_cb(ptr noundef %rsclp) local_unnamed_addr #8 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %flags1.i.i, align 4
  %2 = and i8 %1, 1
  %tobool.i.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %rsclp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsclp, align 4
  br label %return

return:                                           ; preds = %if.then, %entry
  %retval.0 = phi ptr [ %4, %if.then ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rcu_segcblist_first_pend_cb(ptr noundef %rsclp) local_unnamed_addr #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %flags1.i.i, align 4
  %2 = and i8 %1, 1
  %tobool.i.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1
  %3 = ptrtoint ptr %tails to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tails, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  br label %return

return:                                           ; preds = %if.then, %entry
  %retval.0 = phi ptr [ %6, %if.then ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_nextgp(ptr noundef %rsclp, ptr nocapture noundef writeonly %lp) local_unnamed_addr #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %flags1.i.i.i, align 4
  %2 = and i8 %1, 1
  %tobool.i.i.not.i = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not.i, label %return, label %rcu_segcblist_pend_cbs.exit

rcu_segcblist_pend_cbs.exit:                      ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %return, label %if.end

if.end:                                           ; preds = %rcu_segcblist_pend_cbs.exit
  %arrayidx = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %lp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %lp, align 4
  br label %return

return:                                           ; preds = %if.end, %rcu_segcblist_pend_cbs.exit, %entry
  %10 = phi i1 [ false, %rcu_segcblist_pend_cbs.exit ], [ true, %if.end ], [ false, %entry ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_enqueue(ptr noundef %rsclp, ptr noundef %rhp) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %len.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %len.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %len.i.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %len.i.i, ptr %len.i.i, i32 1, ptr elementtype(i32) %len.i.i) #11, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !20
  %arrayidx.i.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %2, 1
  store volatile i32 %add.i.i, ptr %arrayidx.i.i, align 4
  %3 = ptrtoint ptr %rhp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rhp, align 4
  %arrayidx = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %rhp, ptr %5, align 4
  store volatile ptr %rhp, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_entrain(ptr noundef %rsclp, ptr noundef %rhp) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %len.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %len.i, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %len.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %len.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %len.i, ptr %len.i, i32 1, ptr elementtype(i32) %len.i) #11, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !22
  %3 = ptrtoint ptr %rhp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rhp, align 4
  %arrayidx = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %cmp7.not = icmp eq ptr %5, %7
  br i1 %cmp7.not, label %for.cond.1, label %do.body28.preheader

for.cond.1:                                       ; preds = %if.end
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %arrayidx6.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.1, align 4
  %cmp7.not.1 = icmp eq ptr %9, %11
  br i1 %cmp7.not.1, label %for.cond.2, label %do.body28.preheader

for.cond.2:                                       ; preds = %for.cond.1
  %12 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.1, align 4
  %arrayidx6.2 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 0
  %14 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.2, align 4
  %cmp7.not.2 = icmp ne ptr %13, %15
  %spec.select = zext i1 %cmp7.not.2 to i32
  br label %do.body28.preheader

do.body28.preheader:                              ; preds = %for.cond.2, %for.cond.1, %if.end
  %i.0.lcssa = phi i32 [ 3, %if.end ], [ 2, %for.cond.1 ], [ %spec.select, %for.cond.2 ]
  %arrayidx.i.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 %i.0.lcssa
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, 1
  store volatile i32 %add.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx16 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 %i.0.lcssa
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %rhp, ptr %19, align 4
  %arrayidx31 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 %i.0.lcssa
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %rhp, ptr %arrayidx31, align 4
  %inc = add nuw nsw i32 %i.0.lcssa, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %cleanup, label %do.body28.1

do.body28.1:                                      ; preds = %do.body28.preheader
  %arrayidx31.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 %inc
  %22 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %rhp, ptr %arrayidx31.1, align 4
  %inc.1 = add nuw nsw i32 %i.0.lcssa, 2
  %exitcond.not.1 = icmp eq i32 %inc.1, 4
  br i1 %exitcond.not.1, label %cleanup, label %do.body28.2

do.body28.2:                                      ; preds = %do.body28.1
  %arrayidx31.2 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 %inc.1
  %23 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %rhp, ptr %arrayidx31.2, align 4
  %inc.2 = add nuw nsw i32 %i.0.lcssa, 3
  %exitcond.not.2 = icmp eq i32 %inc.2, 4
  br i1 %exitcond.not.2, label %cleanup, label %do.body28.3

do.body28.3:                                      ; preds = %do.body28.2
  %arrayidx31.3 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 %inc.2
  %24 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %rhp, ptr %arrayidx31.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body28.3, %do.body28.2, %do.body28.1, %do.body28.preheader, %entry
  %25 = xor i1 %cmp, true
  ret i1 %25
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_extract_done_cbs(ptr noundef %rsclp, ptr nocapture noundef %rclp) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %flags1.i.i.i, align 4
  %2 = and i8 %1, 1
  %tobool.i.i.not.i = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not.i, label %cleanup, label %rcu_segcblist_ready_cbs.exit

rcu_segcblist_ready_cbs.exit:                     ; preds = %entry
  %tails.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1
  %3 = ptrtoint ptr %tails.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %tails.i, align 4
  %cmp.i.not = icmp eq ptr %4, %rsclp
  br i1 %cmp.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %rcu_segcblist_ready_cbs.exit
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len, align 4
  %8 = ptrtoint ptr %rsclp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsclp, align 4
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 1
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %11, align 4
  %13 = ptrtoint ptr %tails.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tails.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  store volatile ptr %16, ptr %rsclp, align 4
  store volatile ptr null, ptr %14, align 4
  %17 = load ptr, ptr %tails.i, align 4
  store ptr %17, ptr %tail, align 4
  %arrayidx24 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx24, align 4
  %20 = load ptr, ptr %tails.i, align 4
  %cmp27 = icmp eq ptr %19, %20
  br i1 %cmp27, label %do.body33, label %for.inc

do.body33:                                        ; preds = %if.end
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %rsclp, ptr %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.body33, %if.end
  %arrayidx24.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx24.1, align 4
  %24 = ptrtoint ptr %tails.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tails.i, align 4
  %cmp27.1 = icmp eq ptr %23, %25
  br i1 %cmp27.1, label %do.body33.1, label %for.inc.1

do.body33.1:                                      ; preds = %for.inc
  %26 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %rsclp, ptr %arrayidx24.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.body33.1, %for.inc
  %arrayidx24.2 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx24.2, align 4
  %29 = ptrtoint ptr %tails.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tails.i, align 4
  %cmp27.2 = icmp eq ptr %28, %30
  br i1 %cmp27.2, label %do.body33.2, label %for.inc.3

do.body33.2:                                      ; preds = %for.inc.1
  %31 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %rsclp, ptr %arrayidx24.2, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.body33.2, %for.inc.1
  %32 = ptrtoint ptr %tails.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %rsclp, ptr %tails.i, align 4
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %rcu_segcblist_ready_cbs.exit, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_extract_pend_cbs(ptr noundef %rsclp, ptr nocapture noundef %rclp) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %flags1.i.i.i, align 4
  %2 = and i8 %1, 1
  %tobool.i.i.not.i = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not.i, label %cleanup, label %rcu_segcblist_pend_cbs.exit

rcu_segcblist_pend_cbs.exit:                      ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %rcu_segcblist_pend_cbs.exit
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %len, align 4
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 1
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %13, align 4
  %arrayidx2 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx2, align 4
  store ptr %16, ptr %tail, align 4
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %17, align 4
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i, align 4
  %21 = load i32, ptr %len, align 4
  %add = add i32 %21, %20
  store i32 %add, ptr %len, align 4
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx22 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %22, ptr %arrayidx22, align 4
  store volatile i32 0, ptr %arrayidx.i, align 4
  %arrayidx.i.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i.1, align 4
  %26 = load i32, ptr %len, align 4
  %add.1 = add i32 %26, %25
  store i32 %add.1, ptr %len, align 4
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx22.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %arrayidx22.1, align 4
  store volatile i32 0, ptr %arrayidx.i.1, align 4
  %arrayidx.i.2 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.2, align 4
  %31 = load i32, ptr %len, align 4
  %add.2 = add i32 %31, %30
  store i32 %add.2, ptr %len, align 4
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  store volatile ptr %32, ptr %arrayidx2, align 4
  store volatile i32 0, ptr %arrayidx.i.2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rcu_segcblist_pend_cbs.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_insert_count(ptr noundef %rsclp, ptr nocapture noundef readonly %rclp) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %len.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %len.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %len.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %len.i, ptr %len.i, i32 %1, ptr elementtype(i32) %len.i) #11, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !20
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_insert_done_cbs(ptr noundef %rsclp, ptr noundef %rclp) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rclp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rclp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %3
  store volatile i32 %add.i, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %rsclp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsclp, align 4
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 1
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %9, align 4
  %11 = ptrtoint ptr %rclp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rclp, align 4
  store volatile ptr %12, ptr %rsclp, align 4
  %arrayidx = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp11 = icmp eq ptr %14, %rsclp
  br i1 %cmp11, label %do.body17, label %for.end

do.body17:                                        ; preds = %if.end
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1, align 4
  %cmp11.1 = icmp eq ptr %19, %rsclp
  br i1 %cmp11.1, label %do.body17.1, label %for.end

do.body17.1:                                      ; preds = %do.body17
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail, align 4
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.2, align 4
  %cmp11.2 = icmp eq ptr %24, %rsclp
  br i1 %cmp11.2, label %do.body17.2, label %for.end

do.body17.2:                                      ; preds = %do.body17.1
  %25 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail, align 4
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.3, align 4
  %cmp11.3 = icmp eq ptr %29, %rsclp
  br i1 %cmp11.3, label %do.body17.3, label %for.end

do.body17.3:                                      ; preds = %do.body17.2
  %30 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail, align 4
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %arrayidx.3, align 4
  br label %for.end

for.end:                                          ; preds = %do.body17.3, %do.body17.2, %do.body17.1, %do.body17, %if.end
  %33 = ptrtoint ptr %rclp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rclp, align 4
  %34 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rclp, ptr %tail, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_insert_pend_cbs(ptr noundef %rsclp, ptr nocapture noundef readonly %rclp) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rclp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rclp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end13, label %if.end

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %3
  store volatile i32 %add.i, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %rclp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rclp, align 4
  %arrayidx = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %rclp, i32 0, i32 1
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail, align 4
  store volatile ptr %12, ptr %arrayidx, align 4
  br label %do.end13

do.end13:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_advance(ptr noundef %rsclp, i32 noundef %seq) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %flags1.i.i, align 4
  %2 = and i8 %1, 1
  %tobool.i.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not, label %land.rhs, label %if.end28

land.rhs:                                         ; preds = %entry
  %.b142 = load i1, ptr @rcu_segcblist_advance.__already_done, align 1
  br i1 %.b142, label %if.end28, label %if.then, !prof !21

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @rcu_segcblist_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 484, i32 noundef 9, ptr noundef null) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs, %entry
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end28
  %arrayidx.i9.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 0
  %arrayidx = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %seq, %8
  %cmp39 = icmp slt i32 %sub, 0
  br i1 %cmp39, label %cleanup, label %do.body46

do.body46:                                        ; preds = %for.cond.preheader
  %arrayidx47 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx47, align 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %arrayidx.i, align 4
  %arrayidx.i.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %tobool.not.i143 = icmp eq i32 %13, 0
  br i1 %tobool.not.i143, label %rcu_segcblist_move_seglen.exit, label %if.end2.i

if.end2.i:                                        ; preds = %do.body46
  %14 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i9.i, align 4
  %add.i.i = add i32 %15, %13
  store volatile i32 %add.i.i, ptr %arrayidx.i9.i, align 4
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %arrayidx.i.i, align 4
  br label %rcu_segcblist_move_seglen.exit

rcu_segcblist_move_seglen.exit:                   ; preds = %if.end2.i, %do.body46
  %arrayidx.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 4
  %sub.1 = sub i32 %seq, %18
  %cmp39.1 = icmp slt i32 %sub.1, 0
  br i1 %cmp39.1, label %for.body78.lr.ph.critedge.critedge, label %do.body46.1

do.body46.1:                                      ; preds = %rcu_segcblist_move_seglen.exit
  %arrayidx47.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx47.1, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %arrayidx.i, align 4
  %arrayidx.i.i.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.1, align 4
  %tobool.not.i143.1 = icmp eq i32 %23, 0
  br i1 %tobool.not.i143.1, label %do.body64.1.critedge, label %if.end2.i.1

if.end2.i.1:                                      ; preds = %do.body46.1
  %24 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i9.i, align 4
  %add.i.i.1 = add i32 %25, %23
  store volatile i32 %add.i.i.1, ptr %arrayidx.i9.i, align 4
  %26 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %arrayidx.i.i.1, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx68.c163 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx68.c163 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %arrayidx68.c163, align 4
  br label %do.body64.1

for.body78.lr.ph.critedge.critedge:               ; preds = %rcu_segcblist_move_seglen.exit
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx68.c164 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx68.c164 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %arrayidx68.c164, align 4
  %arrayidx82 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 3
  %arrayidx.i.i145 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 2
  %arrayidx100 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 2, i32 2
  %arrayidx80 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx80, align 4
  %35 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx82, align 4
  %cmp83 = icmp eq ptr %34, %36
  br i1 %cmp83, label %cleanup, label %if.end.i147

do.body64.1.critedge:                             ; preds = %do.body46.1
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx68.c = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx68.c to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %38, ptr %arrayidx68.c, align 4
  br label %do.body64.1

do.body64.1:                                      ; preds = %do.body64.1.critedge, %if.end2.i.1
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx68.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %arrayidx68.1, align 4
  br label %cleanup

if.end.i147:                                      ; preds = %for.body78.lr.ph.critedge.critedge
  %arrayidx92 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx92, align 4
  %45 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %44, ptr %arrayidx80, align 4
  %46 = ptrtoint ptr %arrayidx.i.i145 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i.i145, align 4
  %tobool.not.i146 = icmp eq i32 %47, 0
  br i1 %tobool.not.i146, label %rcu_segcblist_move_seglen.exit151, label %if.end2.i150

if.end2.i150:                                     ; preds = %if.end.i147
  %arrayidx.i9.i148 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %arrayidx.i9.i148 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i9.i148, align 4
  %add.i.i149 = add i32 %49, %47
  store volatile i32 %add.i.i149, ptr %arrayidx.i9.i148, align 4
  %50 = ptrtoint ptr %arrayidx.i.i145 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %arrayidx.i.i145, align 4
  br label %rcu_segcblist_move_seglen.exit151

rcu_segcblist_move_seglen.exit151:                ; preds = %if.end2.i150, %if.end.i147
  %51 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx100, align 4
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_segcblist_move_seglen.exit151, %do.body64.1, %for.body78.lr.ph.critedge.critedge, %for.cond.preheader, %if.end28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_accelerate(ptr noundef %rsclp, i32 noundef %seq) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 5
  %0 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %flags1.i.i, align 4
  %2 = and i8 %1, 1
  %tobool.i.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.i.not, label %land.rhs, label %if.end28

land.rhs:                                         ; preds = %entry
  %.b105 = load i1, ptr @rcu_segcblist_accelerate.__already_done, align 1
  br i1 %.b105, label %if.end28, label %if.then, !prof !21

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @rcu_segcblist_accelerate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 541, i32 noundef 9, ptr noundef null) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs, %entry
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end28
  %arrayidx = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %arrayidx40 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx40, align 4
  %cmp41.not = icmp eq ptr %8, %10
  br i1 %cmp41.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.preheader
  %arrayidx42 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx42, align 4
  %sub43 = sub i32 %12, %seq
  %cmp44 = icmp slt i32 %sub43, 0
  br i1 %cmp44, label %for.end.thread, label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.preheader
  %13 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx40, align 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %cmp41.not.1 = icmp eq ptr %14, %16
  br i1 %cmp41.not.1, label %for.inc.1, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx42.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx42.1, align 4
  %sub43.1 = sub i32 %18, %seq
  %cmp44.1 = icmp slt i32 %sub43.1, 0
  br i1 %cmp44.1, label %for.end, label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %land.lhs.true.1
  %i.0.lcssa = phi i32 [ 0, %for.inc.1 ], [ 1, %land.lhs.true.1 ]
  %arrayidx.i106 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 %i.0.lcssa
  %19 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i106, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %20, align 4
  %tobool.not.i107 = icmp eq ptr %22, null
  br i1 %tobool.not.i107, label %cleanup, label %for.body53.lr.ph

for.end.thread:                                   ; preds = %land.lhs.true
  %arrayidx.i106119 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx.i106119 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx.i106119, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %24, align 4
  br label %cleanup

for.body53.lr.ph:                                 ; preds = %for.end
  %inc = add nuw nsw i32 %i.0.lcssa, 1
  %arrayidx.i9.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 %inc
  %add = or i32 %i.0.lcssa, 2
  %arrayidx.i.i = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 %add
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i, align 4
  %tobool.not.i108 = icmp eq i32 %28, 0
  br i1 %tobool.not.i108, label %rcu_segcblist_move_seglen.exit, label %if.end2.i

do.body64.lr.ph:                                  ; preds = %if.end2.i.1, %if.end.i.1, %rcu_segcblist_move_seglen.exit
  %arrayidx66 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx66, align 4
  %arrayidx68 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 %inc
  %31 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %30, ptr %arrayidx68, align 4
  %arrayidx74 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 2, i32 %inc
  %32 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %seq, ptr %arrayidx74, align 4
  %inc76 = or i32 %i.0.lcssa, 2
  %exitcond115.not = icmp eq i32 %inc76, 3
  br i1 %exitcond115.not, label %cleanup, label %do.body64.1

if.end2.i:                                        ; preds = %for.body53.lr.ph
  %33 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i9.i, align 4
  %add.i.i = add i32 %34, %28
  store volatile i32 %add.i.i, ptr %arrayidx.i9.i, align 4
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %arrayidx.i.i, align 4
  br label %rcu_segcblist_move_seglen.exit

rcu_segcblist_move_seglen.exit:                   ; preds = %if.end2.i, %for.body53.lr.ph
  %inc55 = add nuw nsw i32 %i.0.lcssa, 3
  %exitcond.not = icmp eq i32 %inc55, 4
  br i1 %exitcond.not, label %do.body64.lr.ph, label %if.end.i.1

if.end.i.1:                                       ; preds = %rcu_segcblist_move_seglen.exit
  %arrayidx.i.i.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 4, i32 %inc55
  %36 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i.i.1, align 4
  %tobool.not.i108.1 = icmp eq i32 %37, 0
  br i1 %tobool.not.i108.1, label %do.body64.lr.ph, label %if.end2.i.1

if.end2.i.1:                                      ; preds = %if.end.i.1
  %38 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i9.i, align 4
  %add.i.i.1 = add i32 %39, %37
  store volatile i32 %add.i.i.1, ptr %arrayidx.i9.i, align 4
  %40 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %arrayidx.i.i.1, align 4
  br label %do.body64.lr.ph

do.body64.1:                                      ; preds = %do.body64.lr.ph
  %41 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx66, align 4
  %arrayidx68.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 1, i32 %inc76
  %43 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %arrayidx68.1, align 4
  %arrayidx74.1 = getelementptr %struct.rcu_segcblist, ptr %rsclp, i32 0, i32 2, i32 %inc76
  %44 = ptrtoint ptr %arrayidx74.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %seq, ptr %arrayidx74.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body64.1, %do.body64.lr.ph, %for.end.thread, %for.end, %if.end28
  %retval.0 = phi i1 [ false, %if.end28 ], [ false, %for.end ], [ false, %for.end.thread ], [ true, %do.body64.1 ], [ true, %do.body64.lr.ph ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_merge(ptr noundef %dst_rsclp, ptr noundef %src_rsclp) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %donecbs = alloca %struct.rcu_cblist, align 4
  %pendcbs = alloca %struct.rcu_cblist, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %donecbs) #11
  %0 = getelementptr inbounds %struct.rcu_cblist, ptr %donecbs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rcu_cblist, ptr %donecbs, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pendcbs) #11
  %2 = getelementptr inbounds %struct.rcu_cblist, ptr %pendcbs, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rcu_cblist, ptr %pendcbs, i32 0, i32 2
  tail call void @lockdep_assert_cpus_held() #11
  %4 = ptrtoint ptr %donecbs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %donecbs, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %donecbs, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %7 = ptrtoint ptr %pendcbs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pendcbs, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pendcbs, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %3, align 4
  %flags1.i.i.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 5
  %10 = ptrtoint ptr %flags1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %flags1.i.i.i.i, align 4
  %12 = and i8 %11, 1
  %tobool.i.i.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.i.not.i.i, label %rcu_segcblist_extract_done_cbs.exit, label %rcu_segcblist_ready_cbs.exit.i

rcu_segcblist_ready_cbs.exit.i:                   ; preds = %entry
  %tails.i.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1
  %13 = ptrtoint ptr %tails.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %tails.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %src_rsclp
  br i1 %cmp.i.not.i, label %rcu_segcblist_extract_done_cbs.exit, label %if.end.i

if.end.i:                                         ; preds = %rcu_segcblist_ready_cbs.exit.i
  %arrayidx.i.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 4, i32 0
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %18 = ptrtoint ptr %src_rsclp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_rsclp, align 4
  %20 = ptrtoint ptr %donecbs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %donecbs, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 4
  store volatile ptr %22, ptr %src_rsclp, align 4
  store volatile ptr null, ptr %14, align 4
  %23 = ptrtoint ptr %tails.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tails.i.i, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %0, align 4
  %arrayidx24.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx24.i, align 4
  %cmp27.i = icmp eq ptr %27, %24
  br i1 %cmp27.i, label %do.body33.i, label %for.inc.i

do.body33.i:                                      ; preds = %if.end.i
  %28 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %src_rsclp, ptr %arrayidx24.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body33.i, %if.end.i
  %arrayidx24.1.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx24.1.i, align 4
  %cmp27.1.i = icmp eq ptr %30, %24
  br i1 %cmp27.1.i, label %do.body33.1.i, label %for.inc.1.i

do.body33.1.i:                                    ; preds = %for.inc.i
  %31 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %src_rsclp, ptr %arrayidx24.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.body33.1.i, %for.inc.i
  %arrayidx24.2.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx24.2.i, align 4
  %cmp27.2.i = icmp eq ptr %33, %24
  br i1 %cmp27.2.i, label %do.body33.2.i, label %for.inc.3.i

do.body33.2.i:                                    ; preds = %for.inc.1.i
  %34 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %src_rsclp, ptr %arrayidx24.2.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.body33.2.i, %for.inc.1.i
  %35 = ptrtoint ptr %tails.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %src_rsclp, ptr %tails.i.i, align 4
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %arrayidx.i.i, align 4
  br label %rcu_segcblist_extract_done_cbs.exit

rcu_segcblist_extract_done_cbs.exit:              ; preds = %for.inc.3.i, %rcu_segcblist_ready_cbs.exit.i, %entry
  %37 = ptrtoint ptr %flags1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %flags1.i.i.i.i, align 4
  %39 = and i8 %38, 1
  %tobool.i.i.not.i.i12 = icmp eq i8 %39, 0
  br i1 %tobool.i.i.not.i.i12, label %rcu_segcblist_extract_pend_cbs.exit, label %rcu_segcblist_pend_cbs.exit.i

rcu_segcblist_pend_cbs.exit.i:                    ; preds = %rcu_segcblist_extract_done_cbs.exit
  %arrayidx.i.i.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 0
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %41, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.not.i, label %rcu_segcblist_extract_pend_cbs.exit, label %if.end.i16

if.end.i16:                                       ; preds = %rcu_segcblist_pend_cbs.exit.i
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %3, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %41, align 4
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %2, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %48, align 4
  %arrayidx2.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx2.i, align 4
  store ptr %51, ptr %2, align 4
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr null, ptr %53, align 4
  %arrayidx.i.i15 = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i.i15, align 4
  %57 = load i32, ptr %3, align 4
  %add.i = add i32 %57, %56
  %58 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx22.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %58, ptr %arrayidx22.i, align 4
  store volatile i32 0, ptr %arrayidx.i.i15, align 4
  %arrayidx.i.1.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 4, i32 2
  %60 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx.i.1.i, align 4
  %add.1.i = add i32 %61, %add.i
  %arrayidx22.1.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %58, ptr %arrayidx22.1.i, align 4
  store volatile i32 0, ptr %arrayidx.i.1.i, align 4
  %arrayidx.i.2.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 4, i32 3
  %63 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.i.2.i, align 4
  %add.2.i = add i32 %64, %add.1.i
  store i32 %add.2.i, ptr %3, align 4
  store volatile ptr %58, ptr %arrayidx2.i, align 4
  store volatile i32 0, ptr %arrayidx.i.2.i, align 4
  br label %rcu_segcblist_extract_pend_cbs.exit

rcu_segcblist_extract_pend_cbs.exit:              ; preds = %if.end.i16, %rcu_segcblist_pend_cbs.exit.i, %rcu_segcblist_extract_done_cbs.exit
  %len.i17 = getelementptr inbounds %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %len.i17, i32 noundef 4) #11
  %65 = ptrtoint ptr %len.i17 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 0, ptr %len.i17, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %len.i.i = getelementptr inbounds %struct.rcu_segcblist, ptr %dst_rsclp, i32 0, i32 3
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %len.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %len.i.i, i32 1, i32 3, i32 1) #11
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %len.i.i, ptr %len.i.i, i32 %67, ptr elementtype(i32) %len.i.i) #11, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !20
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %call.i.i.i.i21 = call zeroext i1 @__kasan_check_write(ptr noundef %len.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %len.i.i, i32 1, i32 3, i32 1) #11
  %71 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %len.i.i, ptr %len.i.i, i32 %70, ptr elementtype(i32) %len.i.i) #11, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !20
  %72 = ptrtoint ptr %donecbs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %donecbs, align 4
  %tobool.not.i = icmp eq ptr %73, null
  br i1 %tobool.not.i, label %rcu_segcblist_insert_done_cbs.exit, label %if.end.i25

if.end.i25:                                       ; preds = %rcu_segcblist_extract_pend_cbs.exit
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %1, align 4
  %arrayidx.i.i23 = getelementptr %struct.rcu_segcblist, ptr %dst_rsclp, i32 0, i32 4, i32 0
  %76 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i23, align 4
  %add.i.i = add i32 %77, %75
  store volatile i32 %add.i.i, ptr %arrayidx.i.i23, align 4
  %78 = ptrtoint ptr %dst_rsclp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dst_rsclp, align 4
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %0, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %81, align 4
  %83 = ptrtoint ptr %donecbs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %donecbs, align 4
  store volatile ptr %84, ptr %dst_rsclp, align 4
  %arrayidx.i = getelementptr %struct.rcu_segcblist, ptr %dst_rsclp, i32 0, i32 1, i32 0
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 4
  %cmp11.i = icmp eq ptr %86, %dst_rsclp
  br i1 %cmp11.i, label %do.body17.i, label %for.end.i

do.body17.i:                                      ; preds = %if.end.i25
  %87 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %0, align 4
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %88, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.rcu_segcblist, ptr %dst_rsclp, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp11.1.i = icmp eq ptr %91, %dst_rsclp
  br i1 %cmp11.1.i, label %do.body17.1.i, label %for.end.i

do.body17.1.i:                                    ; preds = %do.body17.i
  %92 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %88, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.rcu_segcblist, ptr %dst_rsclp, i32 0, i32 1, i32 2
  %93 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp11.2.i = icmp eq ptr %94, %dst_rsclp
  br i1 %cmp11.2.i, label %do.body17.2.i, label %for.end.i

do.body17.2.i:                                    ; preds = %do.body17.1.i
  %95 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %88, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.rcu_segcblist, ptr %dst_rsclp, i32 0, i32 1, i32 3
  %96 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp11.3.i = icmp eq ptr %97, %dst_rsclp
  br i1 %cmp11.3.i, label %do.body17.3.i, label %for.end.i

do.body17.3.i:                                    ; preds = %do.body17.2.i
  %98 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %88, ptr %arrayidx.3.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %do.body17.3.i, %do.body17.2.i, %do.body17.1.i, %do.body17.i, %if.end.i25
  %99 = ptrtoint ptr %donecbs to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %donecbs, align 4
  %100 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %donecbs, ptr %0, align 4
  br label %rcu_segcblist_insert_done_cbs.exit

rcu_segcblist_insert_done_cbs.exit:               ; preds = %for.end.i, %rcu_segcblist_extract_pend_cbs.exit
  %101 = ptrtoint ptr %pendcbs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pendcbs, align 4
  %tobool.not.i26 = icmp eq ptr %102, null
  br i1 %tobool.not.i26, label %rcu_segcblist_insert_pend_cbs.exit, label %if.end.i32

if.end.i32:                                       ; preds = %rcu_segcblist_insert_done_cbs.exit
  %103 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %3, align 4
  %arrayidx.i.i28 = getelementptr %struct.rcu_segcblist, ptr %dst_rsclp, i32 0, i32 4, i32 3
  %105 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i28, align 4
  %add.i.i29 = add i32 %106, %104
  store volatile i32 %add.i.i29, ptr %arrayidx.i.i28, align 4
  %arrayidx.i30 = getelementptr %struct.rcu_segcblist, ptr %dst_rsclp, i32 0, i32 1, i32 3
  %107 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i30, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %102, ptr %108, align 4
  %110 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %2, align 4
  store volatile ptr %111, ptr %arrayidx.i30, align 4
  br label %rcu_segcblist_insert_pend_cbs.exit

rcu_segcblist_insert_pend_cbs.exit:               ; preds = %if.end.i32, %rcu_segcblist_insert_done_cbs.exit
  %112 = ptrtoint ptr %src_rsclp to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %src_rsclp, align 4
  %arrayidx.i33 = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 0
  %113 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %src_rsclp, ptr %arrayidx.i33, align 4
  %arrayidx.i.i34 = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 4, i32 0
  %114 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 0, ptr %arrayidx.i.i34, align 4
  %arrayidx.1.i35 = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %arrayidx.1.i35 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %src_rsclp, ptr %arrayidx.1.i35, align 4
  %arrayidx.i.1.i36 = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %arrayidx.i.1.i36 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 0, ptr %arrayidx.i.1.i36, align 4
  %arrayidx.2.i37 = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 2
  %117 = ptrtoint ptr %arrayidx.2.i37 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %src_rsclp, ptr %arrayidx.2.i37, align 4
  %arrayidx.i.2.i38 = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 4, i32 2
  %118 = ptrtoint ptr %arrayidx.i.2.i38 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 0, ptr %arrayidx.i.2.i38, align 4
  %arrayidx.3.i39 = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 1, i32 3
  %119 = ptrtoint ptr %arrayidx.3.i39 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %src_rsclp, ptr %arrayidx.3.i39, align 4
  %arrayidx.i.3.i = getelementptr %struct.rcu_segcblist, ptr %src_rsclp, i32 0, i32 4, i32 3
  %120 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 0, ptr %arrayidx.i.3.i, align 4
  %call.i.i.i.i41 = call zeroext i1 @__kasan_check_write(ptr noundef %len.i17, i32 noundef 4) #11
  %121 = ptrtoint ptr %len.i17 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 0, ptr %len.i17, align 4
  %122 = ptrtoint ptr %flags1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %flags1.i.i.i.i, align 4
  %conv2.i.i = or i8 %123, 1
  store i8 %conv2.i.i, ptr %flags1.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pendcbs) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %donecbs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/rcu/rcu_segcblist.c", i32 258, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../kernel/rcu/rcu_segcblist.c", i32 259, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/rcu/rcu_segcblist.c", i32 484, i32 2}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../kernel/rcu/rcu_segcblist.c", i32 541, i32 2}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2153072113}
!19 = !{i64 2148494912, i64 2148494938, i64 2148494967, i64 2148495001, i64 2148495032, i64 2148495055}
!20 = !{i64 2153072290}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2153089021}
