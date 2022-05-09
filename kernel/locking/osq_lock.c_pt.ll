; ModuleID = '/llk/IR_all_yes/kernel/locking/osq_lock.c_pt.bc'
source_filename = "../kernel/locking/osq_lock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.optimistic_spin_node = type { ptr, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@osq_node = weak dso_local global %struct.optimistic_spin_node zeroinitializer, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__pcpu_unique_osq_node = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @osq_lock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !3) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @osq_node to i32)
  %6 = inttoptr i32 %add to ptr
  %add.i = add i32 %3, 1
  %locked = getelementptr inbounds %struct.optimistic_spin_node, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %locked, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %6, align 4
  %cpu6 = getelementptr inbounds %struct.optimistic_spin_node, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %cpu6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %cpu6, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %add.i, ptr %lock) #5, !srcloc !14
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !15
  %cmp = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub.i = add i32 %asmresult.i.i, -1
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i159 = add i32 %12, ptrtoint (ptr @osq_node to i32)
  %13 = inttoptr i32 %add.i159 to ptr
  %prev9 = getelementptr inbounds %struct.optimistic_spin_node, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %prev9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !16
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %6, ptr %13, align 4
  %16 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %locked, align 4
  %tobool.not171 = icmp eq i32 %17, 0
  br i1 %tobool.not171, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %lor.lhs.false32, %if.end
  %18 = tail call i32 @llvm.read_register.i32(metadata !3) #5
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 16384
  %22 = and i32 %21, 2
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %lor.lhs.false32, label %for.cond51

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !18
  %23 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %locked, align 4
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

for.cond51:                                       ; preds = %do.end95, %lor.lhs.false
  %prev.0 = phi ptr [ %32, %do.end95 ], [ %13, %lor.lhs.false ]
  %25 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.0, align 4
  %cmp55 = icmp eq ptr %26, %6
  br i1 %cmp55, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %for.cond51
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev.0, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @llvm.prefetch.p0(ptr %prev.0, i32 1, i32 3, i32 1) #5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %land.lhs.true
  %27 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %prev.0, i32 %add, i32 0) #5, !srcloc !20
  %asmresult.i = extractvalue { i32, i32 } %27, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %27, 1
  %28 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  %cmp76 = icmp eq ptr %28, %6
  br i1 %cmp76, label %for.end105, label %if.end78

if.end78:                                         ; preds = %__cmpxchg.exit, %for.cond51
  %29 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %locked, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  %tobool88.not = icmp eq i32 %30, 0
  br i1 %tobool88.not, label %do.end95, label %cleanup

do.end95:                                         ; preds = %if.end78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !24
  %31 = ptrtoint ptr %prev9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %prev9, align 4
  br label %for.cond51

for.end105:                                       ; preds = %__cmpxchg.exit
  %33 = tail call i32 @llvm.read_register.i32(metadata !3) #5
  %and.i.i160 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i160 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i, align 4
  %add.i.i = add i32 %36, 1
  %tobool.not.i161 = icmp eq ptr %prev.0, null
  br i1 %tobool.not.i161, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.end105
  %cpu2.i = getelementptr inbounds %struct.optimistic_spin_node, ptr %prev.0, i32 0, i32 3
  %37 = ptrtoint ptr %cpu2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu2.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.end105
  %cond.i = phi i32 [ %38, %cond.true.i ], [ 0, %for.end105 ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %do.end34.i, %cond.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #5
  %39 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %lock, align 4
  %cmp.i = icmp eq i32 %40, %add.i.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call.i.i46.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i, %land.lhs.true.i
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 %add.i.i, i32 %cond.i, ptr elementtype(i32) %lock) #5, !srcloc !25
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %41, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg_acquire.exit.i, label %do.body.i.i.i.i

atomic_cmpxchg_acquire.exit.i:                    ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %41, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  %cmp6.i = icmp eq i32 %asmresult3.i.i.i.i, %add.i.i
  br i1 %cmp6.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %atomic_cmpxchg_acquire.exit.i, %for.cond.i
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %6, align 4
  %tobool8.not.i = icmp eq ptr %43, null
  br i1 %tobool8.not.i, label %do.end34.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  %call.i.i162 = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #5
  %44 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #5, !srcloc !14
  %asmresult.i.i163 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !28
  %tobool26.not.i = icmp eq i32 %asmresult.i.i163, 0
  br i1 %tobool26.not.i, label %do.end34.i, label %do.body114

do.end34.i:                                       ; preds = %if.then9.i, %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !30
  br label %for.cond.i

do.body114:                                       ; preds = %if.then9.i
  %asmresult.i.i163.le = extractvalue { i32, i32 } %44, 0
  %45 = inttoptr i32 %asmresult.i.i163.le to ptr
  %prev115 = getelementptr inbounds %struct.optimistic_spin_node, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev115 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %prev.0, ptr %prev115, align 4
  %47 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %prev.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body114, %atomic_cmpxchg_acquire.exit.i, %if.end78, %lor.lhs.false32, %if.end, %entry
  %retval.0 = phi i1 [ false, %do.body114 ], [ true, %entry ], [ true, %if.end ], [ false, %atomic_cmpxchg_acquire.exit.i ], [ true, %if.end78 ], [ true, %lor.lhs.false32 ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @osq_wait_next(ptr noundef %lock, ptr noundef %node, ptr noundef readonly %prev) unnamed_addr #1 align 64 {
entry:
  %0 = tail call i32 @llvm.read_register.i32(metadata !3) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %add.i = add i32 %3, 1
  %tobool.not = icmp eq ptr %prev, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %cpu2 = getelementptr inbounds %struct.optimistic_spin_node, ptr %prev, i32 0, i32 3
  %4 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %do.end34, %cond.end
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #5
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %lock, align 4
  %cmp = icmp eq i32 %7, %add.i
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i, %land.lhs.true
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 %add.i, i32 %cond, ptr elementtype(i32) %lock) #5, !srcloc !25
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg_acquire.exit, label %do.body.i.i.i

atomic_cmpxchg_acquire.exit:                      ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  %cmp6 = icmp eq i32 %asmresult3.i.i.i, %add.i
  br i1 %cmp6, label %for.end, label %if.end

if.end:                                           ; preds = %atomic_cmpxchg_acquire.exit, %for.cond
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %do.end34, label %if.then9

if.then9:                                         ; preds = %if.end
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %node, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %node, i32 1, i32 3, i32 1) #5
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %node) #5, !srcloc !14
  %asmresult.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !28
  %tobool26.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool26.not, label %do.end34, label %for.end.split.loop.exit

do.end34:                                         ; preds = %if.then9, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !30
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %if.then9
  %asmresult.i.le = extractvalue { i32, i32 } %11, 0
  %12 = inttoptr i32 %asmresult.i.le to ptr
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %atomic_cmpxchg_acquire.exit
  %next.2 = phi ptr [ %12, %for.end.split.loop.exit ], [ null, %atomic_cmpxchg_acquire.exit ]
  ret ptr %next.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @osq_unlock(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !3) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %add.i = add i32 %3, 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i, %entry
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 %add.i, i32 0, ptr elementtype(i32) %lock) #5, !srcloc !25
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg_release.exit, label %do.body.i.i.i

atomic_cmpxchg_release.exit:                      ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %4, 1
  %cmp = icmp eq i32 %asmresult3.i.i.i, %add.i
  br i1 %cmp, label %cleanup, label %do.body, !prof !32

do.body:                                          ; preds = %atomic_cmpxchg_release.exit
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, ptrtoint (ptr @osq_node to i32)
  %9 = inttoptr i32 %add to ptr
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %9) #5, !srcloc !14
  %asmresult.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !34
  %tobool27.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool27.not, label %if.end38, label %do.body33

do.body33:                                        ; preds = %do.body
  %11 = inttoptr i32 %asmresult.i to ptr
  br label %cleanup.sink.split

if.end38:                                         ; preds = %do.body
  %call39 = tail call fastcc ptr @osq_wait_next(ptr noundef %lock, ptr noundef %9, ptr noundef null)
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end38, %do.body33
  %call39.sink = phi ptr [ %11, %do.body33 ], [ %call39, %if.end38 ]
  %locked47 = getelementptr inbounds %struct.optimistic_spin_node, ptr %call39.sink, i32 0, i32 2
  %12 = ptrtoint ptr %locked47 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %locked47, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end38, %atomic_cmpxchg_release.exit
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind readonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!3}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__pcpu_unique_osq_node, !1, !"__pcpu_unique_osq_node", i1 false, i1 false}
!1 = !{!"../kernel/locking/osq_lock.c", i32 14, i32 8}
!2 = !{ptr @osq_node, !1, !"osq_node", i1 false, i1 false}
!3 = !{!"sp"}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2148734841}
!14 = !{i64 981709, i64 981726, i64 981750, i64 981776, i64 981794}
!15 = !{i64 2148735211}
!16 = !{i64 2150452625}
!17 = !{i64 2150458739}
!18 = !{i64 2150458581}
!19 = !{i64 2150460703}
!20 = !{i64 984433, i64 984454, i64 984477, i64 984496, i64 984515}
!21 = !{i64 2150461117}
!22 = !{i64 2150466884}
!23 = !{i64 2150467159}
!24 = !{i64 2150467001}
!25 = !{i64 960454, i64 960478, i64 960499, i64 960516, i64 960533}
!26 = !{i64 2148575938}
!27 = !{i64 2150450898}
!28 = !{i64 2150451251}
!29 = !{i64 2150451526}
!30 = !{i64 2150451368}
!31 = !{i64 2148576349}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2150479969}
!34 = !{i64 2150480322}
