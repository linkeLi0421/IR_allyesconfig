; ModuleID = '/llk/IR_all_yes/lib/dim/rdma_dim.c_pt.bc'
source_filename = "../lib/dim/rdma_dim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rdma_dim\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_dim\09\09\09\09"
module asm "\09.long\09__crc_rdma_dim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_dim:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_dim\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_dim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__kstrtab_rdma_dim = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_dim = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_dim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_dim to i32), ptr @__kstrtab_rdma_dim, ptr @__kstrtabns_rdma_dim }, section "___ksymtab+rdma_dim", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_rdma_dim], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_dim(ptr noundef %dim, i64 noundef %completions) #0 align 64 {
entry:
  %curr_stats = alloca %struct.dim_stats, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %measuring_sample = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %curr_stats) #4
  %0 = getelementptr inbounds %struct.dim_stats, ptr %curr_stats, i32 0, i32 3
  %1 = getelementptr inbounds %struct.dim_stats, ptr %curr_stats, i32 0, i32 4
  %event_ctr = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 3, i32 3
  %2 = call ptr @memset(ptr %curr_stats, i32 255, i32 20)
  %3 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %event_ctr, align 8
  %add = add i16 %4, 1
  %comp_ctr = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %comp_ctr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %comp_ctr, align 4
  %call.i.i = tail call i64 @ktime_get() #4
  %7 = ptrtoint ptr %measuring_sample to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call.i.i, ptr %measuring_sample, align 8
  %pkt_ctr.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %pkt_ctr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pkt_ctr.i.i, align 8
  %byte_ctr.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %byte_ctr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %byte_ctr.i.i, align 4
  %10 = ptrtoint ptr %event_ctr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %add, ptr %event_ctr, align 8
  %11 = trunc i64 %completions to i32
  %conv.i = add i32 %6, %11
  %12 = ptrtoint ptr %comp_ctr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %comp_ctr, align 4
  %13 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dim, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %entry.sw.bb16_crit_edge
  ]

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %16 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %event_ctr, align 8
  %conv7 = zext i16 %17 to i32
  %event_ctr8 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %event_ctr8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %event_ctr8, align 8
  %conv9 = zext i16 %19 to i32
  %sub = sub nsw i32 %conv7, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp = icmp ult i32 %sub, 64
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %start_sample = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2
  call void @dim_calc_stats(ptr noundef %start_sample, ptr noundef %measuring_sample, ptr noundef nonnull %curr_stats) #4
  %profile_ix.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 6
  %20 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %profile_ix.i, align 8
  %conv.i36 = zext i8 %21 to i32
  %tune_state.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 8
  %22 = ptrtoint ptr %tune_state.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tune_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %switch.i = icmp ult i8 %23, 2
  br i1 %switch.i, label %if.end.rdma_dim_decision.exit_crit_edge, label %if.then.i

if.end.rdma_dim_decision.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_dim_decision.exit

if.then.i:                                        ; preds = %if.end
  %cpms.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %cpms.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpms.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.then.i.sw.bb.i_crit_edge, label %if.end.i.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i.i:                                       ; preds = %if.then.i
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %0, align 4
  %sub.i.i = sub i32 %27, %25
  %28 = call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #4
  %mul.i.i = mul i32 %28, 100
  %div.i.i = udiv i32 %mul.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div.i.i)
  %cmp5.i.i = icmp ugt i32 %div.i.i, 10
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end11.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp9.i.i = icmp sgt i32 %27, %25
  br i1 %cmp9.i.i, label %if.then6.i.i.sw.bb11.i_crit_edge, label %if.then6.i.i.sw.bb10.i_crit_edge

if.then6.i.i.sw.bb10.i_crit_edge:                 ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb10.i

if.then6.i.i.sw.bb11.i_crit_edge:                 ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %cpe_ratio13.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %cpe_ratio13.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpe_ratio13.i.i, align 4
  %sub14.i.i = sub i32 %30, %32
  %33 = call i32 @llvm.abs.i32(i32 %sub14.i.i, i1 false) #4
  %mul22.i.i = mul i32 %33, 100
  %div24.i.i = udiv i32 %mul22.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div24.i.i)
  %cmp25.i.i = icmp ugt i32 %div24.i.i, 10
  br i1 %cmp25.i.i, label %if.then26.i.i, label %if.end11.i.i.sw.bb.i_crit_edge

if.end11.i.i.sw.bb.i_crit_edge:                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then26.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp29.i.i = icmp sgt i32 %30, %32
  br i1 %cmp29.i.i, label %if.then26.i.i.sw.bb11.i_crit_edge, label %if.then26.i.i.sw.bb10.i_crit_edge

if.then26.i.i.sw.bb10.i_crit_edge:                ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb10.i

if.then26.i.i.sw.bb11.i_crit_edge:                ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11.i

sw.bb.i:                                          ; preds = %if.end11.i.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %mul.i = mul nuw nsw i32 %conv.i36, 50
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %mul.i)
  %cmp6.not.i = icmp sgt i32 %35, %mul.i
  br i1 %cmp6.not.i, label %sw.bb.i.rdma_dim_decision.exit_crit_edge, label %if.then8.i

sw.bb.i.rdma_dim_decision.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_dim_decision.exit

if.then8.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %profile_ix.i, align 8
  br label %rdma_dim_decision.exit

sw.bb10.i:                                        ; preds = %if.then26.i.i.sw.bb10.i_crit_edge, %if.then6.i.i.sw.bb10.i_crit_edge
  call void @dim_turn(ptr noundef %dim) #4
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %sw.bb10.i, %if.then26.i.i.sw.bb11.i_crit_edge, %if.then6.i.i.sw.bb11.i_crit_edge
  %37 = ptrtoint ptr %tune_state.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tune_state.i, align 2
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %38, label %sw.bb11.i.rdma_dim_decision.exit_crit_edge [
    i8 2, label %if.then.i.i
    i8 3, label %if.then13.i.i
  ]

sw.bb11.i.rdma_dim_decision.exit_crit_edge:       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_dim_decision.exit

if.then.i.i:                                      ; preds = %sw.bb11.i
  %40 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %profile_ix.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %41)
  %cmp3.i.i = icmp eq i8 %41, 8
  br i1 %cmp3.i.i, label %if.then.i.i.if.then15.i_crit_edge, label %if.end8.thread.i.i

if.then.i.i.if.then15.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

if.end8.thread.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %inc.i.i = add i8 %41, 1
  %42 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %inc.i.i, ptr %profile_ix.i, align 8
  %steps_right.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 9
  %43 = ptrtoint ptr %steps_right.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %steps_right.i.i, align 1
  %inc7.i.i = add i8 %44, 1
  store i8 %inc7.i.i, ptr %steps_right.i.i, align 1
  br label %rdma_dim_decision.exit

if.then13.i.i:                                    ; preds = %sw.bb11.i
  %45 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %profile_ix.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp16.i.i = icmp eq i8 %46, 0
  br i1 %cmp16.i.i, label %if.then13.i.i.if.then15.i_crit_edge, label %if.end19.i.i

if.then13.i.i.if.then15.i_crit_edge:              ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

if.end19.i.i:                                     ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %dec.i.i = add i8 %46, -1
  %47 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %dec.i.i, ptr %profile_ix.i, align 8
  %steps_left.i.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 10
  %48 = ptrtoint ptr %steps_left.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %steps_left.i.i, align 4
  %inc21.i.i = add i8 %49, 1
  store i8 %inc21.i.i, ptr %steps_left.i.i, align 4
  br label %rdma_dim_decision.exit

if.then15.i:                                      ; preds = %if.then13.i.i.if.then15.i_crit_edge, %if.then.i.i.if.then15.i_crit_edge
  call void @dim_turn(ptr noundef %dim) #4
  br label %rdma_dim_decision.exit

rdma_dim_decision.exit:                           ; preds = %if.then15.i, %if.end19.i.i, %if.end8.thread.i.i, %sw.bb11.i.rdma_dim_decision.exit_crit_edge, %if.then8.i, %sw.bb.i.rdma_dim_decision.exit_crit_edge, %if.end.rdma_dim_decision.exit_crit_edge
  %prev_stats18.i = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %prev_stats18.i, ptr %curr_stats, i32 20)
  %51 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %profile_ix.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %21)
  %cmp21.i.not = icmp eq i8 %52, %21
  br i1 %cmp21.i.not, label %rdma_dim_decision.exit.sw.bb16_crit_edge, label %if.then12

rdma_dim_decision.exit.sw.bb16_crit_edge:         ; preds = %rdma_dim_decision.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

if.then12:                                        ; preds = %rdma_dim_decision.exit
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %dim, align 8
  %work = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %call.i.i37 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %work) #4
  br label %sw.epilog

sw.bb16:                                          ; preds = %rdma_dim_decision.exit.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge
  %55 = ptrtoint ptr %dim to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %dim, align 8
  %56 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %event_ctr, align 8
  %58 = ptrtoint ptr %comp_ctr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %comp_ctr, align 4
  %start_sample21 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2
  %call.i.i38 = call i64 @ktime_get() #4
  %60 = ptrtoint ptr %start_sample21 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %call.i.i38, ptr %start_sample21, align 8
  %pkt_ctr.i.i39 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %pkt_ctr.i.i39 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %pkt_ctr.i.i39, align 8
  %byte_ctr.i.i40 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2, i32 2
  %62 = ptrtoint ptr %byte_ctr.i.i40 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %byte_ctr.i.i40, align 4
  %event_ctr2.i.i41 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2, i32 3
  %63 = ptrtoint ptr %event_ctr2.i.i41 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %57, ptr %event_ctr2.i.i41, align 8
  %comp_ctr.i42 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 2, i32 4
  %64 = ptrtoint ptr %comp_ctr.i42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %59, ptr %comp_ctr.i42, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %if.then12, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %curr_stats) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_calc_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_turn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
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

!0 = !{ptr @__ksymtab_rdma_dim, !1, !"__ksymtab_rdma_dim", i1 false, i1 false}
!1 = !{!"../lib/dim/rdma_dim.c", i32 108, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
