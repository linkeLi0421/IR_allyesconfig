; ModuleID = '/llk/IR_all_yes/kernel/bpf/dispatcher.c_pt.bc'
source_filename = "../kernel/bpf/dispatcher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_dispatcher = type { %struct.mutex, ptr, [48 x %struct.bpf_dispatcher_prog], i32, ptr, i32, %struct.bpf_ksym }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_dispatcher_prog = type { ptr, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.152 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { %struct.anon.154, [0 x %struct.sock_filter] }
%struct.anon.154 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_prepare_bpf_dispatcher(ptr noundef %image, ptr noundef %funcs, i32 noundef %num_funcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_dispatcher_change_prog(ptr noundef %d, ptr noundef %from, ptr noundef %to) local_unnamed_addr #0 align 64 {
entry:
  %ips.i.i = alloca [48 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %from, %to
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %d, i32 noundef 0) #4
  %image = getelementptr inbounds %struct.bpf_dispatcher, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %image, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then1, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then1:                                         ; preds = %if.end
  %call = tail call ptr @bpf_jit_alloc_exec_page() #4
  %2 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %image, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then1.out_crit_edge, label %if.end6

if.then1.out_crit_edge:                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %ksym = getelementptr inbounds %struct.bpf_dispatcher, ptr %d, i32 0, i32 6
  tail call void @bpf_image_ksym_add(ptr noundef nonnull %call, ptr noundef %ksym) #4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  %num_progs = getelementptr inbounds %struct.bpf_dispatcher, ptr %d, i32 0, i32 3
  %3 = ptrtoint ptr %num_progs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_progs, align 4
  %tobool.not.i = icmp eq ptr %from, null
  br i1 %tobool.not.i, label %if.end8.bpf_dispatcher_remove_prog.exit_crit_edge, label %if.end8.for.body.i.i_crit_edge

if.end8.for.body.i.i_crit_edge:                   ; preds = %if.end8
  br label %for.body.i.i

if.end8.bpf_dispatcher_remove_prog.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %bpf_dispatcher_remove_prog.exit

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 48
  br i1 %exitcond.not.i.i, label %for.cond.i.i.bpf_dispatcher_remove_prog.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.cond.i.i.bpf_dispatcher_remove_prog.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bpf_dispatcher_remove_prog.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end8.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end8.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bpf_dispatcher, ptr %d, i32 0, i32 2, i32 %i.09.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp2.i.i = icmp eq ptr %6, %from
  br i1 %cmp2.i.i, label %bpf_dispatcher_find_prog.exit.i, label %for.cond.i.i

bpf_dispatcher_find_prog.exit.i:                  ; preds = %for.body.i.i
  %tobool2.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool2.not.i, label %bpf_dispatcher_find_prog.exit.i.bpf_dispatcher_remove_prog.exit_crit_edge, label %if.end4.i

bpf_dispatcher_find_prog.exit.i.bpf_dispatcher_remove_prog.exit_crit_edge: ; preds = %bpf_dispatcher_find_prog.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bpf_dispatcher_remove_prog.exit

if.end4.i:                                        ; preds = %bpf_dispatcher_find_prog.exit.i
  %users.i = getelementptr %struct.bpf_dispatcher, ptr %d, i32 0, i32 2, i32 %i.09.i.i, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #4
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #4, !srcloc !10
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then6.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.bpf_dispatcher_remove_prog.exit_crit_edge, label %if.then10.i.i.i.i, !prof !11

if.end5.i.i.i.i.bpf_dispatcher_remove_prog.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bpf_dispatcher_remove_prog.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef 3) #4
  br label %bpf_dispatcher_remove_prog.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !12
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @bpf_prog_put(ptr noundef nonnull %from) #4
  %9 = ptrtoint ptr %num_progs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_progs, align 4
  %dec.i = add i32 %10, -1
  store i32 %dec.i, ptr %num_progs, align 4
  br label %bpf_dispatcher_remove_prog.exit

bpf_dispatcher_remove_prog.exit:                  ; preds = %if.then6.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.bpf_dispatcher_remove_prog.exit_crit_edge, %bpf_dispatcher_find_prog.exit.i.bpf_dispatcher_remove_prog.exit_crit_edge, %for.cond.i.i.bpf_dispatcher_remove_prog.exit_crit_edge, %if.end8.bpf_dispatcher_remove_prog.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.then6.i ], [ false, %if.end8.bpf_dispatcher_remove_prog.exit_crit_edge ], [ false, %bpf_dispatcher_find_prog.exit.i.bpf_dispatcher_remove_prog.exit_crit_edge ], [ false, %if.end5.i.i.i.i.bpf_dispatcher_remove_prog.exit_crit_edge ], [ false, %if.then10.i.i.i.i ], [ false, %for.cond.i.i.bpf_dispatcher_remove_prog.exit_crit_edge ]
  %tobool.not.i40 = icmp eq ptr %to, null
  br i1 %tobool.not.i40, label %bpf_dispatcher_remove_prog.exit.bpf_dispatcher_add_prog.exit_crit_edge, label %bpf_dispatcher_remove_prog.exit.for.body.i.i47_crit_edge

bpf_dispatcher_remove_prog.exit.for.body.i.i47_crit_edge: ; preds = %bpf_dispatcher_remove_prog.exit
  br label %for.body.i.i47

bpf_dispatcher_remove_prog.exit.bpf_dispatcher_add_prog.exit_crit_edge: ; preds = %bpf_dispatcher_remove_prog.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %bpf_dispatcher_add_prog.exit

for.cond.i.i43:                                   ; preds = %for.body.i.i47
  %inc.i.i41 = add nuw nsw i32 %i.09.i.i44, 1
  %exitcond.not.i.i42 = icmp eq i32 %inc.i.i41, 48
  br i1 %exitcond.not.i.i42, label %for.cond.i.i43.for.body.i.i.i.preheader_crit_edge, label %for.cond.i.i43.for.body.i.i47_crit_edge

for.cond.i.i43.for.body.i.i47_crit_edge:          ; preds = %for.cond.i.i43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i47

for.cond.i.i43.for.body.i.i.i.preheader_crit_edge: ; preds = %for.cond.i.i43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i.preheader

for.body.i.i47:                                   ; preds = %for.cond.i.i43.for.body.i.i47_crit_edge, %bpf_dispatcher_remove_prog.exit.for.body.i.i47_crit_edge
  %i.09.i.i44 = phi i32 [ %inc.i.i41, %for.cond.i.i43.for.body.i.i47_crit_edge ], [ 0, %bpf_dispatcher_remove_prog.exit.for.body.i.i47_crit_edge ]
  %arrayidx.i.i45 = getelementptr %struct.bpf_dispatcher, ptr %d, i32 0, i32 2, i32 %i.09.i.i44
  %11 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i45, align 4
  %cmp2.i.i46 = icmp eq ptr %12, %to
  br i1 %cmp2.i.i46, label %bpf_dispatcher_find_prog.exit.i49, label %for.cond.i.i43

bpf_dispatcher_find_prog.exit.i49:                ; preds = %for.body.i.i47
  %tobool2.not.i48 = icmp eq ptr %arrayidx.i.i45, null
  br i1 %tobool2.not.i48, label %bpf_dispatcher_find_prog.exit.i49.for.body.i.i.i.preheader_crit_edge, label %if.then3.i

bpf_dispatcher_find_prog.exit.i49.for.body.i.i.i.preheader_crit_edge: ; preds = %bpf_dispatcher_find_prog.exit.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i.preheader

for.body.i.i.i.preheader:                         ; preds = %bpf_dispatcher_find_prog.exit.i49.for.body.i.i.i.preheader_crit_edge, %for.cond.i.i43.for.body.i.i.i.preheader_crit_edge
  br label %for.body.i.i.i

if.then3.i:                                       ; preds = %bpf_dispatcher_find_prog.exit.i49
  %users.i50 = getelementptr %struct.bpf_dispatcher, ptr %d, i32 0, i32 2, i32 %i.09.i.i44, i32 1
  %call.i.i.i.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i50, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i50, i32 1, i32 3, i32 1) #4
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i50, ptr %users.i50, i32 1, ptr elementtype(i32) %users.i50) #4, !srcloc !13
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then3.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !14

if.then3.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then3.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i52 = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i52, label %if.else.i.i.i.i.bpf_dispatcher_add_prog.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !11

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.bpf_dispatcher_add_prog.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bpf_dispatcher_add_prog.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then3.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then3.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i50, i32 noundef %.sink.i.i.i.i) #4
  br label %bpf_dispatcher_add_prog.exit

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.09.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 48
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.bpf_dispatcher_add_prog.exit_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

for.cond.i.i.i.bpf_dispatcher_add_prog.exit_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bpf_dispatcher_add_prog.exit

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %i.09.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.preheader ]
  %arrayidx.i.i.i = getelementptr %struct.bpf_dispatcher, ptr %d, i32 0, i32 2, i32 %i.09.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp2.i.i.i = icmp eq ptr %16, null
  br i1 %cmp2.i.i.i, label %bpf_dispatcher_find_free.exit.i, label %for.cond.i.i.i

bpf_dispatcher_find_free.exit.i:                  ; preds = %for.body.i.i.i
  %tobool6.not.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool6.not.i, label %bpf_dispatcher_find_free.exit.i.bpf_dispatcher_add_prog.exit_crit_edge, label %bpf_dispatcher_add_prog.exit.thread

bpf_dispatcher_find_free.exit.i.bpf_dispatcher_add_prog.exit_crit_edge: ; preds = %bpf_dispatcher_find_free.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bpf_dispatcher_add_prog.exit

bpf_dispatcher_add_prog.exit.thread:              ; preds = %bpf_dispatcher_find_free.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bpf_prog_inc(ptr noundef nonnull %to) #4
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %to, ptr %arrayidx.i.i.i, align 4
  %users10.i = getelementptr %struct.bpf_dispatcher, ptr %d, i32 0, i32 2, i32 %i.09.i.i.i, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users10.i, i32 noundef 4) #4
  %18 = ptrtoint ptr %users10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %users10.i, align 4
  %19 = ptrtoint ptr %num_progs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_progs, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %num_progs, align 4
  br label %if.end22

bpf_dispatcher_add_prog.exit:                     ; preds = %bpf_dispatcher_find_free.exit.i.bpf_dispatcher_add_prog.exit_crit_edge, %for.cond.i.i.i.bpf_dispatcher_add_prog.exit_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.bpf_dispatcher_add_prog.exit_crit_edge, %bpf_dispatcher_remove_prog.exit.bpf_dispatcher_add_prog.exit_crit_edge
  br i1 %retval.0.i, label %bpf_dispatcher_add_prog.exit.if.end22_crit_edge, label %bpf_dispatcher_add_prog.exit.out_crit_edge

bpf_dispatcher_add_prog.exit.out_crit_edge:       ; preds = %bpf_dispatcher_add_prog.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

bpf_dispatcher_add_prog.exit.if.end22_crit_edge:  ; preds = %bpf_dispatcher_add_prog.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %bpf_dispatcher_add_prog.exit.if.end22_crit_edge, %bpf_dispatcher_add_prog.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i56 = icmp eq i32 %4, 0
  br i1 %tobool.not.i56, label %if.end22.if.end.i_crit_edge, label %if.else.i

if.end22.if.end.i_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.else.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %image, align 4
  %image_off.i = getelementptr inbounds %struct.bpf_dispatcher, ptr %d, i32 0, i32 5
  %23 = ptrtoint ptr %image_off.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %image_off.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %24
  %xor.i = xor i32 %24, 2048
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end22.if.end.i_crit_edge
  %old.0.i = phi ptr [ %add.ptr.i, %if.else.i ], [ null, %if.end22.if.end.i_crit_edge ]
  %noff.0.i = phi i32 [ %xor.i, %if.else.i ], [ 0, %if.end22.if.end.i_crit_edge ]
  %25 = ptrtoint ptr %num_progs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_progs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool2.not.i58 = icmp eq i32 %26, 0
  br i1 %tobool2.not.i58, label %if.end.i.if.end10.i_crit_edge, label %cond.end.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

cond.end.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %image, align 4
  %add.ptr4.i = getelementptr i8, ptr %28, i32 %noff.0.i
  %tobool5.not.i = icmp eq ptr %add.ptr4.i, null
  br i1 %tobool5.not.i, label %cond.end.i.if.end10.i_crit_edge, label %if.then6.i59

cond.end.i.if.end10.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then6.i59:                                     ; preds = %cond.end.i
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %ips.i.i) #4
  %29 = call ptr @memset(ptr %ips.i.i, i32 0, i32 384)
  br label %for.body.i.i60

for.body.i.i60:                                   ; preds = %for.inc.i.i.for.body.i.i60_crit_edge, %if.then6.i59
  %i.012.i.i = phi i32 [ 0, %if.then6.i59 ], [ %inc.i.i61, %for.inc.i.i.for.body.i.i60_crit_edge ]
  %ipsp.011.i.i = phi ptr [ %ips.i.i, %if.then6.i59 ], [ %ipsp.1.i.i, %for.inc.i.i.for.body.i.i60_crit_edge ]
  %arrayidx1.i.i = getelementptr %struct.bpf_dispatcher, ptr %d, i32 0, i32 2, i32 %i.012.i.i
  %30 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %for.body.i.i60.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i60.for.inc.i.i_crit_edge:             ; preds = %for.body.i.i60
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i60
  call void @__sanitizer_cov_trace_pc() #6
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bpf_func.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %conv.i.i = zext i32 %34 to i64
  %incdec.ptr.i.i = getelementptr i64, ptr %ipsp.011.i.i, i32 1
  %35 = ptrtoint ptr %ipsp.011.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv.i.i, ptr %ipsp.011.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i60.for.inc.i.i_crit_edge
  %ipsp.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.then.i.i ], [ %ipsp.011.i.i, %for.body.i.i60.for.inc.i.i_crit_edge ]
  %inc.i.i61 = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i62 = icmp eq i32 %inc.i.i61, 48
  br i1 %exitcond.not.i.i62, label %bpf_dispatcher_prepare.exit.i, label %for.inc.i.i.for.body.i.i60_crit_edge

for.inc.i.i.for.body.i.i60_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i60

bpf_dispatcher_prepare.exit.i:                    ; preds = %for.inc.i.i
  %36 = ptrtoint ptr %num_progs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_progs, align 4
  %call.i.i = call i32 @arch_prepare_bpf_dispatcher(ptr noundef nonnull %add.ptr4.i, ptr noundef nonnull %ips.i.i, i32 noundef %37) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %ips.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %bpf_dispatcher_prepare.exit.i.if.end10.i_crit_edge, label %bpf_dispatcher_prepare.exit.i.out_crit_edge

bpf_dispatcher_prepare.exit.i.out_crit_edge:      ; preds = %bpf_dispatcher_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

bpf_dispatcher_prepare.exit.i.if.end10.i_crit_edge: ; preds = %bpf_dispatcher_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %bpf_dispatcher_prepare.exit.i.if.end10.i_crit_edge, %cond.end.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %tobool5.not34.i = phi i1 [ false, %bpf_dispatcher_prepare.exit.i.if.end10.i_crit_edge ], [ true, %cond.end.i.if.end10.i_crit_edge ], [ true, %if.end.i.if.end10.i_crit_edge ]
  %cond33.i = phi ptr [ %add.ptr4.i, %bpf_dispatcher_prepare.exit.i.if.end10.i_crit_edge ], [ null, %cond.end.i.if.end10.i_crit_edge ], [ null, %if.end.i.if.end10.i_crit_edge ]
  %func.i = getelementptr inbounds %struct.bpf_dispatcher, ptr %d, i32 0, i32 1
  %38 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %func.i, align 4
  %call11.i = call i32 @bpf_arch_text_poke(ptr noundef %39, i32 noundef 1, ptr noundef %old.0.i, ptr noundef %cond33.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp ne i32 %call11.i, 0
  %brmerge.i = or i1 %tobool5.not34.i, %tobool12.not.i
  br i1 %brmerge.i, label %if.end10.i.out_crit_edge, label %if.end15.i

if.end10.i.out_crit_edge:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %image_off16.i = getelementptr inbounds %struct.bpf_dispatcher, ptr %d, i32 0, i32 5
  %40 = ptrtoint ptr %image_off16.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %noff.0.i, ptr %image_off16.i, align 4
  br label %out

out:                                              ; preds = %if.end15.i, %if.end10.i.out_crit_edge, %bpf_dispatcher_prepare.exit.i.out_crit_edge, %bpf_dispatcher_add_prog.exit.out_crit_edge, %if.then1.out_crit_edge
  call void @mutex_unlock(ptr noundef %d) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_jit_alloc_exec_page() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_image_ksym_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_arch_text_poke(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{i64 2148779513}
!10 = !{i64 2148693953, i64 2148693985, i64 2148694014, i64 2148694048, i64 2148694079, i64 2148694102}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2150242829}
!13 = !{i64 2148691488, i64 2148691520, i64 2148691549, i64 2148691583, i64 2148691614, i64 2148691637}
!14 = !{!"branch_weights", i32 1, i32 2000}
