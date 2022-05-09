; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/smp_tlb.c_pt.bc'
source_filename = "../arch/arm/kernel/smp_tlb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tlb_args = type { ptr, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@erratum_a15_798181_handler = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"erratum_a15_798181_handler\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../arch/arm/kernel/smp_tlb.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 78, i32 8 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @erratum_a15_798181_handler], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erratum_a15_798181_handler to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @erratum_a15_798181_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #9, !srcloc !12
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 6", "=r,~{cc}"() #9, !srcloc !13
  %and = and i32 %0, -15728656
  call void @__sanitizer_cov_trace_const_cmp4(i32 1108279536, i32 %and)
  %cmp = icmp eq i32 %and, 1108279536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1108279539, i32 %0)
  %cmp1 = icmp ult i32 %0, 1108279539
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.if.end45.sink.split_crit_edge, label %if.else

entry.if.end45.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1091551472, i32 %and)
  %cmp3 = icmp eq i32 %and, 1091551472
  call void @__sanitizer_cov_trace_const_cmp4(i32 1093648626, i32 %0)
  %cmp5 = icmp ult i32 %0, 1093648626
  %or.cond58 = and i1 %cmp5, %cmp3
  br i1 %or.cond58, label %if.else.if.end45.sink.split_crit_edge, label %if.else7

if.else.if.end45.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.sink.split

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1093648628, i32 %0)
  %cmp11 = icmp ult i32 %0, 1093648628
  %or.cond59 = and i1 %cmp11, %cmp3
  br i1 %or.cond59, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  %and13 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  %erratum_a15_798181_broadcast.erratum_a15_798181_partial = select i1 %tobool.not, ptr @erratum_a15_798181_broadcast, ptr @erratum_a15_798181_partial
  br label %if.end45.sink.split

if.else16:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1094697203, i32 %0)
  %cmp20 = icmp ult i32 %0, 1094697203
  %or.cond60 = and i1 %cmp20, %cmp3
  br i1 %or.cond60, label %if.then21, label %if.else31

if.then21:                                        ; preds = %if.else16
  %and22 = and i32 %1, 528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %if.then21.if.end45.sink.split_crit_edge, label %if.else25

if.then21.if.end45.sink.split_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.sink.split

if.else25:                                        ; preds = %if.then21
  %and26 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else25.if.end45_crit_edge, label %if.else25.if.end45.sink.split_crit_edge

if.else25.if.end45.sink.split_crit_edge:          ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.sink.split

if.else25.if.end45_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.else31:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1095745776, i32 %0)
  %cmp35 = icmp ult i32 %0, 1095745776
  %or.cond61 = and i1 %cmp35, %cmp3
  %and37 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  %or.cond62 = select i1 %or.cond61, i1 %cmp38, i1 false
  br i1 %or.cond62, label %if.else31.if.end45.sink.split_crit_edge, label %if.else31.if.end45_crit_edge

if.else31.if.end45_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.else31.if.end45.sink.split_crit_edge:          ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %if.else31.if.end45.sink.split_crit_edge, %if.else25.if.end45.sink.split_crit_edge, %if.then21.if.end45.sink.split_crit_edge, %if.then12, %if.else.if.end45.sink.split_crit_edge, %entry.if.end45.sink.split_crit_edge
  %erratum_a15_798181_broadcast.sink = phi ptr [ @erratum_a15_798181_broadcast, %entry.if.end45.sink.split_crit_edge ], [ @erratum_a15_798181_broadcast, %if.else.if.end45.sink.split_crit_edge ], [ %erratum_a15_798181_broadcast.erratum_a15_798181_partial, %if.then12 ], [ @erratum_a15_798181_broadcast, %if.then21.if.end45.sink.split_crit_edge ], [ @erratum_a15_798181_partial, %if.else25.if.end45.sink.split_crit_edge ], [ @erratum_a15_798181_partial, %if.else31.if.end45.sink.split_crit_edge ]
  store ptr %erratum_a15_798181_broadcast.sink, ptr @erratum_a15_798181_handler, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.else31.if.end45_crit_edge, %if.else25.if.end45_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @erratum_a15_798181_broadcast() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c8, c3, 1", "r"(i32 0) #6, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !15
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @erratum_a15_798181_partial() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c8, c3, 1", "r"(i32 0) #6, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !17
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_tlb_all() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not.i = icmp eq i32 %0, 0
  br i1 %tobool.i.not.i, label %entry.if.else_crit_edge, label %tlb_ops_need_broadcast.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

tlb_ops_need_broadcast.exit:                      ; preds = %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #6, !srcloc !18
  %2 = and i32 %1, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.not, label %if.then, label %tlb_ops_need_broadcast.exit.if.else_crit_edge

tlb_ops_need_broadcast.exit.if.else_crit_edge:    ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_all, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #6
  br label %if.end

if.else:                                          ; preds = %tlb_ops_need_broadcast.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %4, i32 4608) #6, !srcloc !20
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %4, i32 9216) #6, !srcloc !21
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %4, i32 18432) #6, !srcloc !22
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c3, 0", "r,r,Ir,~{cc}"(i32 0, i32 %3, i32 2097152) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.broadcast_tlb_a15_erratum.exit_crit_edge, label %erratum_a15_798181.exit.i, !prof !26

if.end.broadcast_tlb_a15_erratum.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_a15_erratum.exit

erratum_a15_798181.exit.i:                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 %5() #6
  br i1 %call.i.i, label %if.end.i1, label %erratum_a15_798181.exit.i.broadcast_tlb_a15_erratum.exit_crit_edge

erratum_a15_798181.exit.i.broadcast_tlb_a15_erratum.exit_crit_edge: ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_a15_erratum.exit

if.end.i1:                                        ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @smp_call_function(ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i32 noundef 1) #6
  br label %broadcast_tlb_a15_erratum.exit

broadcast_tlb_a15_erratum.exit:                   ; preds = %if.end.i1, %erratum_a15_798181.exit.i.broadcast_tlb_a15_erratum.exit_crit_edge, %if.end.broadcast_tlb_a15_erratum.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_all(ptr nocapture noundef readnone %ignored) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %1, i32 4608) #6, !srcloc !20
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %1, i32 9216) #6, !srcloc !21
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %1, i32 18432) #6, !srcloc !22
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %0, i32 2097152) #6, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_tlb_mm(ptr noundef %mm) local_unnamed_addr #2 align 64 {
entry:
  %mask.i = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not.i = icmp eq i32 %0, 0
  br i1 %tobool.i.not.i, label %entry.if.else_crit_edge, label %tlb_ops_need_broadcast.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

tlb_ops_need_broadcast.exit:                      ; preds = %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #6, !srcloc !18
  %2 = and i32 %1, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.not, label %if.then, label %tlb_ops_need_broadcast.exit.if.else_crit_edge

tlb_ops_need_broadcast.exit.if.else_crit_edge:    ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cpu_bitmap.i = getelementptr inbounds %struct.mm_struct, ptr %mm, i32 0, i32 1
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_mm, ptr noundef %mm, i1 noundef zeroext true, ptr noundef %cpu_bitmap.i) #6
  br label %if.end

if.else:                                          ; preds = %tlb_ops_need_broadcast.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %context.i.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 42
  %4 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %context.i.i, align 8
  %6 = trunc i64 %5 to i32
  %conv.i.i = and i32 %6, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 2", "r,r,Ir,~{cc}"(i32 %conv.i.i, i32 %7, i32 65536) #6, !srcloc !32
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 2", "r,r,Ir,~{cc}"(i32 %conv.i.i, i32 %7, i32 131072) #6, !srcloc !33
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 2", "r,r,Ir,~{cc}"(i32 %conv.i.i, i32 %7, i32 262144) #6, !srcloc !34
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c3, 0", "r,r,Ir,~{cc}"(i32 0, i32 %3, i32 4194304) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #6
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mask.i, align 4
  %9 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.broadcast_tlb_mm_a15_erratum.exit_crit_edge, label %erratum_a15_798181.exit.i, !prof !26

if.end.broadcast_tlb_mm_a15_erratum.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_mm_a15_erratum.exit

erratum_a15_798181.exit.i:                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 %9() #6
  br i1 %call.i.i, label %do.body.i, label %erratum_a15_798181.exit.i.broadcast_tlb_mm_a15_erratum.exit_crit_edge

erratum_a15_798181.exit.i.broadcast_tlb_mm_a15_erratum.exit_crit_edge: ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_mm_a15_erratum.exit

do.body.i:                                        ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %13, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %14 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  call void @a15_erratum_get_cpumask(i32 noundef %17, ptr noundef %mm, ptr noundef nonnull %mask.i) #6
  call void @smp_call_function_many(ptr noundef nonnull %mask.i, ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i1 noundef zeroext true) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %18 = call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i6.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i6.i to ptr
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i7.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i7.i, align 4
  br label %broadcast_tlb_mm_a15_erratum.exit

broadcast_tlb_mm_a15_erratum.exit:                ; preds = %do.body.i, %erratum_a15_798181.exit.i.broadcast_tlb_mm_a15_erratum.exit_crit_edge, %if.end.broadcast_tlb_mm_a15_erratum.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_mm(ptr nocapture noundef readonly %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %context.i = getelementptr inbounds %struct.anon, ptr %arg, i32 0, i32 42
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %context.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %4 = ptrtoint ptr %context.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %context.i, align 8
  %6 = trunc i64 %5 to i32
  %conv.i.i = and i32 %6, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 2", "r,r,Ir,~{cc}"(i32 %conv.i.i, i32 %7, i32 65536) #6, !srcloc !32
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 2", "r,r,Ir,~{cc}"(i32 %conv.i.i, i32 %7, i32 131072) #6, !srcloc !33
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 2", "r,r,Ir,~{cc}"(i32 %conv.i.i, i32 %7, i32 262144) #6, !srcloc !34
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 2", "r,r,Ir,~{cc}"(i32 %conv.i, i32 %3, i32 4194304) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_tlb_page(ptr noundef %vma, i32 noundef %uaddr) local_unnamed_addr #2 align 64 {
entry:
  %mask.i = alloca %struct.cpumask, align 4
  %ta = alloca %struct.tlb_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not.i = icmp eq i32 %0, 0
  br i1 %tobool.i.not.i, label %entry.if.else_crit_edge, label %tlb_ops_need_broadcast.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

tlb_ops_need_broadcast.exit:                      ; preds = %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #6, !srcloc !18
  %2 = and i32 %1, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.not, label %if.then, label %tlb_ops_need_broadcast.exit.if.else_crit_edge

tlb_ops_need_broadcast.exit.if.else_crit_edge:    ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ta) #6
  %3 = getelementptr inbounds %struct.tlb_args, ptr %ta, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tlb_args, ptr %ta, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !42
  %6 = ptrtoint ptr %ta to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vma, ptr %ta, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %uaddr, ptr %3, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %8 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_mm, align 4
  %cpu_bitmap.i = getelementptr inbounds %struct.mm_struct, ptr %9, i32 0, i32 1
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_page, ptr noundef nonnull %ta, i1 noundef zeroext true, ptr noundef %cpu_bitmap.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ta) #6
  br label %if.end

if.else:                                          ; preds = %tlb_ops_need_broadcast.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and.i = and i32 %uaddr, -4096
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %12 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_mm.i, align 4
  %context.i.i = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 42
  %14 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %context.i.i, align 8
  %16 = trunc i64 %15 to i32
  %conv.i.i = and i32 %16, 255
  %or.i.i = or i32 %conv.i.i, %and.i
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %or.i.i, i32 %11, i32 16) #6, !srcloc !44
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %or.i.i, i32 %11, i32 32) #6, !srcloc !45
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %or.i.i, i32 %11, i32 64) #6, !srcloc !46
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c3, 3", "r,r,Ir,~{cc}"(i32 %and.i, i32 %10, i32 1048576) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vm_mm2 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %17 = ptrtoint ptr %vm_mm2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vm_mm2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #6
  %19 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mask.i, align 4
  %20 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.broadcast_tlb_mm_a15_erratum.exit_crit_edge, label %erratum_a15_798181.exit.i, !prof !26

if.end.broadcast_tlb_mm_a15_erratum.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_mm_a15_erratum.exit

erratum_a15_798181.exit.i:                        ; preds = %if.end
  %call.i.i = call zeroext i1 %20() #6
  br i1 %call.i.i, label %do.body.i, label %erratum_a15_798181.exit.i.broadcast_tlb_mm_a15_erratum.exit_crit_edge

erratum_a15_798181.exit.i.broadcast_tlb_mm_a15_erratum.exit_crit_edge: ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_mm_a15_erratum.exit

do.body.i:                                        ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %24, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %25 = call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  call void @a15_erratum_get_cpumask(i32 noundef %28, ptr noundef %18, ptr noundef nonnull %mask.i) #6
  call void @smp_call_function_many(ptr noundef nonnull %mask.i, ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i1 noundef zeroext true) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %29 = call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i6.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i6.i to ptr
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i7.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i7.i, align 4
  br label %broadcast_tlb_mm_a15_erratum.exit

broadcast_tlb_mm_a15_erratum.exit:                ; preds = %do.body.i, %erratum_a15_798181.exit.i.broadcast_tlb_mm_a15_erratum.exit_crit_edge, %if.end.broadcast_tlb_mm_a15_erratum.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_page(ptr nocapture noundef readonly %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !49
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arg, align 4
  %ta_start = getelementptr inbounds %struct.tlb_args, ptr %arg, i32 0, i32 1
  %5 = ptrtoint ptr %ta_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ta_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and.i2 = and i32 %6, -4096
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 6
  %8 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_mm.i, align 4
  %context.i = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 42
  %10 = ptrtoint ptr %context.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %context.i, align 8
  %12 = trunc i64 %11 to i32
  %conv.i = and i32 %12, 255
  %or.i3 = or i32 %conv.i, %and.i2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %14 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vm_mm.i, align 4
  %context.i.i = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 42
  %16 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %context.i.i, align 8
  %18 = trunc i64 %17 to i32
  %conv.i.i = and i32 %18, 255
  %or.i.i = or i32 %conv.i.i, %and.i2
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %or.i.i, i32 %13, i32 16) #6, !srcloc !44
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %or.i.i, i32 %13, i32 32) #6, !srcloc !45
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %or.i.i, i32 %13, i32 64) #6, !srcloc !46
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %or.i3, i32 %7, i32 1048576) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_tlb_kernel_page(i32 noundef %kaddr) local_unnamed_addr #2 align 64 {
entry:
  %ta = alloca %struct.tlb_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not.i = icmp eq i32 %0, 0
  br i1 %tobool.i.not.i, label %entry.if.else_crit_edge, label %tlb_ops_need_broadcast.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

tlb_ops_need_broadcast.exit:                      ; preds = %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #6, !srcloc !18
  %2 = and i32 %1, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.not, label %if.then, label %tlb_ops_need_broadcast.exit.if.else_crit_edge

tlb_ops_need_broadcast.exit.if.else_crit_edge:    ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ta) #6
  %3 = ptrtoint ptr %ta to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %ta, align 4, !annotation !42
  %4 = getelementptr inbounds %struct.tlb_args, ptr %ta, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tlb_args, ptr %ta, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !42
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %kaddr, ptr %4, align 4
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_kernel_page, ptr noundef nonnull %ta, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ta) #6
  br label %if.end

if.else:                                          ; preds = %tlb_ops_need_broadcast.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and.i = and i32 %kaddr, -4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %and.i, i32 %9, i32 16) #6, !srcloc !56
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %and.i, i32 %9, i32 32) #6, !srcloc !57
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %and.i, i32 %9, i32 64) #6, !srcloc !58
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c3, 1", "r,r,Ir,~{cc}"(i32 %and.i, i32 %8, i32 1048576) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.broadcast_tlb_a15_erratum.exit_crit_edge, label %erratum_a15_798181.exit.i, !prof !26

if.end.broadcast_tlb_a15_erratum.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_a15_erratum.exit

erratum_a15_798181.exit.i:                        ; preds = %if.end
  %call.i.i = call zeroext i1 %10() #6
  br i1 %call.i.i, label %if.end.i2, label %erratum_a15_798181.exit.i.broadcast_tlb_a15_erratum.exit_crit_edge

erratum_a15_798181.exit.i.broadcast_tlb_a15_erratum.exit_crit_edge: ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_a15_erratum.exit

if.end.i2:                                        ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @smp_call_function(ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i32 noundef 1) #6
  br label %broadcast_tlb_a15_erratum.exit

broadcast_tlb_a15_erratum.exit:                   ; preds = %if.end.i2, %erratum_a15_798181.exit.i.broadcast_tlb_a15_erratum.exit_crit_edge, %if.end.broadcast_tlb_a15_erratum.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_kernel_page(ptr nocapture noundef readonly %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ta_start = getelementptr inbounds %struct.tlb_args, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %ta_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ta_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and.i = and i32 %1, -4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %and.i, i32 %3, i32 16) #6, !srcloc !56
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %and.i, i32 %3, i32 32) #6, !srcloc !57
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %and.i, i32 %3, i32 64) #6, !srcloc !58
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %and.i, i32 %2, i32 1048576) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_tlb_range(ptr noundef %vma, i32 noundef %start, i32 noundef %end) local_unnamed_addr #2 align 64 {
entry:
  %mask.i = alloca %struct.cpumask, align 4
  %ta = alloca %struct.tlb_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not.i = icmp eq i32 %0, 0
  br i1 %tobool.i.not.i, label %entry.if.else_crit_edge, label %tlb_ops_need_broadcast.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

tlb_ops_need_broadcast.exit:                      ; preds = %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #6, !srcloc !18
  %2 = and i32 %1, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.not, label %if.then, label %tlb_ops_need_broadcast.exit.if.else_crit_edge

tlb_ops_need_broadcast.exit.if.else_crit_edge:    ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ta) #6
  %3 = getelementptr inbounds %struct.tlb_args, ptr %ta, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tlb_args, ptr %ta, i32 0, i32 2
  %5 = ptrtoint ptr %ta to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vma, ptr %ta, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %start, ptr %3, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %end, ptr %4, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %8 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_mm, align 4
  %cpu_bitmap.i = getelementptr inbounds %struct.mm_struct, ptr %9, i32 0, i32 1
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_range, ptr noundef nonnull %ta, i1 noundef zeroext true, ptr noundef %cpu_bitmap.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ta) #6
  br label %if.end

if.else:                                          ; preds = %tlb_ops_need_broadcast.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_tlb to i32))
  %10 = load ptr, ptr @cpu_tlb, align 4
  tail call void %10(i32 noundef %start, i32 noundef %end, ptr noundef %vma) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vm_mm2 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %11 = ptrtoint ptr %vm_mm2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vm_mm2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #6
  %13 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mask.i, align 4
  %14 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.broadcast_tlb_mm_a15_erratum.exit_crit_edge, label %erratum_a15_798181.exit.i, !prof !26

if.end.broadcast_tlb_mm_a15_erratum.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_mm_a15_erratum.exit

erratum_a15_798181.exit.i:                        ; preds = %if.end
  %call.i.i = call zeroext i1 %14() #6
  br i1 %call.i.i, label %do.body.i, label %erratum_a15_798181.exit.i.broadcast_tlb_mm_a15_erratum.exit_crit_edge

erratum_a15_798181.exit.i.broadcast_tlb_mm_a15_erratum.exit_crit_edge: ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_mm_a15_erratum.exit

do.body.i:                                        ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %18, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %19 = call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  call void @a15_erratum_get_cpumask(i32 noundef %22, ptr noundef %12, ptr noundef nonnull %mask.i) #6
  call void @smp_call_function_many(ptr noundef nonnull %mask.i, ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i1 noundef zeroext true) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %23 = call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i6.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i6.i to ptr
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i7.i, align 4
  %sub.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i7.i, align 4
  br label %broadcast_tlb_mm_a15_erratum.exit

broadcast_tlb_mm_a15_erratum.exit:                ; preds = %do.body.i, %erratum_a15_798181.exit.i.broadcast_tlb_mm_a15_erratum.exit_crit_edge, %if.end.broadcast_tlb_mm_a15_erratum.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_range(ptr nocapture noundef readonly %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !49
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_tlb to i32))
  %3 = load ptr, ptr @cpu_tlb, align 4
  %ta_start = getelementptr inbounds %struct.tlb_args, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %ta_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ta_start, align 4
  %ta_end = getelementptr inbounds %struct.tlb_args, ptr %arg, i32 0, i32 2
  %6 = ptrtoint ptr %ta_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ta_end, align 4
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  tail call void %3(i32 noundef %5, i32 noundef %7, ptr noundef %9) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_tlb_kernel_range(i32 noundef %start, i32 noundef %end) local_unnamed_addr #2 align 64 {
entry:
  %ta = alloca %struct.tlb_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not.i = icmp eq i32 %0, 0
  br i1 %tobool.i.not.i, label %entry.if.else_crit_edge, label %tlb_ops_need_broadcast.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

tlb_ops_need_broadcast.exit:                      ; preds = %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #6, !srcloc !18
  %2 = and i32 %1, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.not, label %if.then, label %tlb_ops_need_broadcast.exit.if.else_crit_edge

tlb_ops_need_broadcast.exit.if.else_crit_edge:    ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ta) #6
  %3 = ptrtoint ptr %ta to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %ta, align 4, !annotation !42
  %4 = getelementptr inbounds %struct.tlb_args, ptr %ta, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tlb_args, ptr %ta, i32 0, i32 2
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %start, ptr %4, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %end, ptr %5, align 4
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_kernel_range, ptr noundef nonnull %ta, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ta) #6
  br label %if.end

if.else:                                          ; preds = %tlb_ops_need_broadcast.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1), align 4
  tail call void %8(i32 noundef %start, i32 noundef %end) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.broadcast_tlb_a15_erratum.exit_crit_edge, label %erratum_a15_798181.exit.i, !prof !26

if.end.broadcast_tlb_a15_erratum.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_a15_erratum.exit

erratum_a15_798181.exit.i:                        ; preds = %if.end
  %call.i.i = call zeroext i1 %9() #6
  br i1 %call.i.i, label %if.end.i3, label %erratum_a15_798181.exit.i.broadcast_tlb_a15_erratum.exit_crit_edge

erratum_a15_798181.exit.i.broadcast_tlb_a15_erratum.exit_crit_edge: ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %broadcast_tlb_a15_erratum.exit

if.end.i3:                                        ; preds = %erratum_a15_798181.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @smp_call_function(ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i32 noundef 1) #6
  br label %broadcast_tlb_a15_erratum.exit

broadcast_tlb_a15_erratum.exit:                   ; preds = %if.end.i3, %erratum_a15_798181.exit.i.broadcast_tlb_a15_erratum.exit_crit_edge, %if.end.broadcast_tlb_a15_erratum.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_kernel_range(ptr nocapture noundef readonly %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1), align 4
  %ta_start = getelementptr inbounds %struct.tlb_args, ptr %arg, i32 0, i32 1
  %1 = ptrtoint ptr %ta_start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ta_start, align 4
  %ta_end = getelementptr inbounds %struct.tlb_args, ptr %arg, i32 0, i32 2
  %3 = ptrtoint ptr %ta_end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ta_end, align 4
  tail call void %0(i32 noundef %2, i32 noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_bp_all() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not.i = icmp eq i32 %0, 0
  br i1 %tobool.i.not.i, label %entry.if.else_crit_edge, label %tlb_ops_need_broadcast.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

tlb_ops_need_broadcast.exit:                      ; preds = %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #6, !srcloc !18
  %2 = and i32 %1, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.not, label %if.then, label %tlb_ops_need_broadcast.exit.if.else_crit_edge

tlb_ops_need_broadcast.exit.if.else_crit_edge:    ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %tlb_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_bp_all, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #6
  br label %if.end

if.else:                                          ; preds = %tlb_ops_need_broadcast.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and1.i.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.__local_flush_bp_all.exit.i_crit_edge, label %if.then.i.i

if.else.__local_flush_bp_all.exit.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %__local_flush_bp_all.exit.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #6, !srcloc !66
  br label %__local_flush_bp_all.exit.i

__local_flush_bp_all.exit.i:                      ; preds = %if.then.i.i, %if.else.__local_flush_bp_all.exit.i_crit_edge
  %and1.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %__local_flush_bp_all.exit.i.if.end_crit_edge, label %if.then.i

__local_flush_bp_all.exit.i.if.end_crit_edge:     ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c1, 6", "r"(i32 0) #6, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %if.then.i, %__local_flush_bp_all.exit.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_flush_bp_all(ptr nocapture noundef readnone %ignored) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and1.i.i = and i32 %0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %entry.__local_flush_bp_all.exit.i_crit_edge, label %if.then.i.i

entry.__local_flush_bp_all.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__local_flush_bp_all.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #6, !srcloc !66
  br label %__local_flush_bp_all.exit.i

__local_flush_bp_all.exit.i:                      ; preds = %if.then.i.i, %entry.__local_flush_bp_all.exit.i_crit_edge
  %and1.i = and i32 %0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge, label %if.then.i

__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge: ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %local_flush_bp_all.exit

if.then.i:                                        ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #6, !srcloc !68
  br label %local_flush_bp_all.exit

local_flush_bp_all.exit:                          ; preds = %if.then.i, %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_a15_erratum(ptr nocapture noundef readnone %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a15_erratum_get_cpumask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.named.register.sp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @erratum_a15_798181_handler, !1, !"erratum_a15_798181_handler", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/smp_tlb.c", i32 78, i32 8}
!2 = !{!"sp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 2152359656}
!13 = !{i64 2153757609}
!14 = !{i64 1852}
!15 = !{i64 2153757500}
!16 = !{i64 1727}
!17 = !{i64 2153757415}
!18 = !{i64 2152364134}
!19 = !{i64 2152398996}
!20 = !{i64 2152383961, i64 2152383974}
!21 = !{i64 2152386239, i64 2152386252}
!22 = !{i64 2152388520, i64 2152388533}
!23 = !{i64 2152399292, i64 2152399305}
!24 = !{i64 2152403163}
!25 = !{i64 2152403248}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2152392614}
!28 = !{i64 2152392910, i64 2152392923}
!29 = !{i64 2152396781}
!30 = !{i64 2152396866}
!31 = !{i64 2152426341}
!32 = !{i64 2152411455, i64 2152411468}
!33 = !{i64 2152413678, i64 2152413691}
!34 = !{i64 2152415901, i64 2152415914}
!35 = !{i64 2152426634, i64 2152426647}
!36 = !{i64 2152430499}
!37 = !{i64 2153758276}
!38 = !{i64 2153758455}
!39 = !{i64 2152420043}
!40 = !{i64 2152420339, i64 2152420352}
!41 = !{i64 2152424210}
!42 = !{!"auto-init"}
!43 = !{i64 2152457510}
!44 = !{i64 2152442466, i64 2152442479}
!45 = !{i64 2152444687, i64 2152444700}
!46 = !{i64 2152446908, i64 2152446921}
!47 = !{i64 2152457859, i64 2152457872}
!48 = !{i64 2152461776}
!49 = !{i64 2997851}
!50 = !{i64 2998048}
!51 = !{i64 2150483281}
!52 = !{i64 2152451087}
!53 = !{i64 2152451384, i64 2152451397}
!54 = !{i64 2152455257}
!55 = !{i64 2152487580}
!56 = !{i64 2152472636, i64 2152472649}
!57 = !{i64 2152474857, i64 2152474870}
!58 = !{i64 2152477078, i64 2152477091}
!59 = !{i64 2152487877, i64 2152487890}
!60 = !{i64 2152491750}
!61 = !{i64 2152491835}
!62 = !{i64 2152481165}
!63 = !{i64 2152481462, i64 2152481475}
!64 = !{i64 2152485335}
!65 = !{i64 2152485420}
!66 = !{i64 4894755}
!67 = !{i64 4895205}
!68 = !{i64 4894982}
!69 = !{i64 2153757793}
