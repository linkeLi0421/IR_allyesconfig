; ModuleID = '/llk/IR_all_yes/arch/arm/nwfpe/fpa11_cpdt.c_pt.bc'
source_filename = "../arch/arm/nwfpe/fpa11_cpdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pt_regs = type { [18 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%union.tagFPREG = type <{ i64, [4 x i8] }>
%struct.floatx80 = type <{ i16, i16, i64 }>
%struct.roundingData = type { i8, i8, i8 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/nwfpe/fpa11_cpdt.c\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32768, i64 4194304]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32768, i64 4194304]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 32768, i64 4194304, i64 4227072]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 32768, i64 4194304, i64 4227072]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 201326848, i64 201327104, i64 202375424, i64 202375680]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [31 x i8] c"../arch/arm/nwfpe/fpa11_cpdt.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 23, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PerformLDF(i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = lshr i32 %opcode, 16
  %shr = and i32 %and1, 15
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i = and i32 %0, -16384
  %add.i = or i32 %and.i.i, 16376
  %1 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr %struct.pt_regs, ptr %1, i32 -1
  %arrayidx.i = getelementptr [18 x i32], ptr %add.ptr.i, i32 0, i32 %shr
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr)
  %cmp.i = icmp eq i32 %shr, 15
  %sub.i = add i32 %3, -4
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %3
  %4 = inttoptr i32 %spec.select.i to ptr
  %spec.select.idx = select i1 %cmp.i, i32 2, i32 0
  %spec.select = getelementptr i32, ptr %4, i32 %spec.select.idx
  %and6 = and i32 %opcode, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  %and10 = and i32 %opcode, 255
  %idx.neg = sub nsw i32 0, %and10
  %and10.pn = select i1 %cmp7.not, i32 %idx.neg, i32 %and10
  %pFinal.0 = getelementptr i32, ptr %spec.select, i32 %and10.pn
  %and15 = and i32 %opcode, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16.not = icmp eq i32 %and15, 0
  %pAddress.0 = select i1 %cmp16.not, ptr %spec.select, ptr %pFinal.0
  %and21 = and i32 %opcode, 4227072
  %5 = zext i32 %and21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and21, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 32768, label %sw.bb24
    i32 4194304, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and22 = lshr i32 %opcode, 12
  %shr23 = and i32 %and22, 7
  %6 = inttoptr i32 %and.i.i to ptr
  %fpstate.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 9
  %fType.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx.i53 = getelementptr [8 x i8], ptr %fType.i, i32 0, i32 %shr23
  %7 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx.i53, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 23) #4
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !12
  %and.i.i54 = and i32 %10, -13
  %or.i.i = or i32 %and.i.i54, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %pAddress.0, i32 -1226833921) #4, !srcloc !15
  %asmresult2.i = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx3.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %shr23
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %asmresult2.i, ptr %arrayidx3.i, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and25 = lshr i32 %opcode, 12
  %shr26 = and i32 %and25, 7
  %13 = inttoptr i32 %and.i.i to ptr
  %fpstate.i55 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 9
  %arrayidx.i56 = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i55, i32 0, i32 %shr26
  %fType.i57 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx1.i = getelementptr [8 x i8], ptr %fType.i57, i32 0, i32 %shr26
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %arrayidx1.i, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 33) #4
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i58 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i58 to ptr
  %cpu_domain.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i59) #3, !srcloc !12
  %and.i.i60 = and i32 %17, -13
  %or.i.i61 = or i32 %and.i.i60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i61) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %pAddress.0, i32 -1226833921) #4, !srcloc !16
  %asmresult4.i = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %19 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %asmresult4.i, ptr %arrayidx.i56, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 34) #4
  %arrayidx10.i = getelementptr i32, ptr %pAddress.0, i32 1
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i25.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i25.i to ptr
  %cpu_domain.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i26.i) #3, !srcloc !12
  %and.i27.i = and i32 %22, -13
  %or.i28.i = or i32 %and.i27.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i28.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx10.i, i32 -1226833921) #4, !srcloc !17
  %asmresult18.i = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx19.i = getelementptr i32, ptr %arrayidx.i56, i32 1
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %asmresult18.i, ptr %arrayidx19.i, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and28 = lshr i32 %opcode, 12
  %shr29 = and i32 %and28, 7
  %25 = inttoptr i32 %and.i.i to ptr
  %fpstate.i62 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 9
  %arrayidx.i63 = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i62, i32 0, i32 %shr29
  %fType.i64 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx1.i65 = getelementptr [8 x i8], ptr %fType.i64, i32 0, i32 %shr29
  %26 = ptrtoint ptr %arrayidx1.i65 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %arrayidx1.i65, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 48) #4
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i66 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i66 to ptr
  %cpu_domain.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i67) #3, !srcloc !12
  %and.i.i68 = and i32 %29, -13
  %or.i.i69 = or i32 %and.i.i68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i69) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %pAddress.0, i32 -1226833921) #4, !srcloc !18
  %asmresult4.i70 = extractvalue { i32, i32 } %30, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %31 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %asmresult4.i70, ptr %arrayidx.i63, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 50) #4
  %arrayidx10.i71 = getelementptr i32, ptr %pAddress.0, i32 1
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i41.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i41.i to ptr
  %cpu_domain.i.i42.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i42.i) #3, !srcloc !12
  %and.i43.i = and i32 %34, -13
  %or.i44.i = or i32 %and.i43.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i44.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %35 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx10.i71, i32 -1226833921) #4, !srcloc !19
  %asmresult18.i72 = extractvalue { i32, i32 } %35, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx19.i73 = getelementptr i32, ptr %arrayidx.i63, i32 1
  %36 = ptrtoint ptr %arrayidx19.i73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %asmresult18.i72, ptr %arrayidx19.i73, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 51) #4
  %arrayidx24.i = getelementptr i32, ptr %pAddress.0, i32 2
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i45.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i45.i to ptr
  %cpu_domain.i.i46.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i46.i) #3, !srcloc !12
  %and.i47.i = and i32 %39, -13
  %or.i48.i = or i32 %and.i47.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i48.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %40 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx24.i, i32 -1226833921) #4, !srcloc !20
  %asmresult32.i = extractvalue { i32, i32 } %40, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx33.i = getelementptr i32, ptr %arrayidx.i63, i32 2
  %41 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %asmresult32.i, ptr %arrayidx33.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb24, %sw.bb, %entry.sw.epilog_crit_edge
  %nRc.0 = phi i32 [ 1, %sw.bb27 ], [ 1, %sw.bb24 ], [ 1, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %42 = and i32 %opcode, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not78 = icmp eq i32 %42, 0
  %tobool.not = or i1 %tobool.not78, %cmp.i
  br i1 %tobool.not, label %sw.epilog.if.end33_crit_edge, label %if.then30

sw.epilog.if.end33_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then30:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %pFinal.0 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i74 = and i32 %44, -16384
  %add.i75 = or i32 %and.i.i74, 16376
  %45 = inttoptr i32 %add.i75 to ptr
  %add.ptr.i76 = getelementptr %struct.pt_regs, ptr %45, i32 -1
  %arrayidx.i77 = getelementptr [18 x i32], ptr %add.ptr.i76, i32 0, i32 %shr
  %46 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %arrayidx.i77, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %sw.epilog.if.end33_crit_edge
  ret i32 %nRc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PerformSTF(i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.floatx80, align 4
  %tmp3.i = alloca %struct.floatx80, align 4
  %roundData = alloca %struct.roundingData, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %roundData) #4
  %0 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 1
  %1 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %call = tail call signext i8 @SetRoundingMode(i32 noundef %opcode) #4
  %2 = ptrtoint ptr %roundData to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call, ptr %roundData, align 1
  %call1 = tail call signext i8 @SetRoundingPrecision(i32 noundef %opcode) #4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call1, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %1, align 1
  %and2 = lshr i32 %opcode, 16
  %shr = and i32 %and2, 15
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i = and i32 %5, -16384
  %add.i = or i32 %and.i.i, 16376
  %6 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr %struct.pt_regs, ptr %6, i32 -1
  %arrayidx.i = getelementptr [18 x i32], ptr %add.ptr.i, i32 0, i32 %shr
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr)
  %cmp.i = icmp eq i32 %shr, 15
  %sub.i = add i32 %8, -4
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %8
  %9 = inttoptr i32 %spec.select.i to ptr
  %spec.select.idx = select i1 %cmp.i, i32 2, i32 0
  %spec.select = getelementptr i32, ptr %9, i32 %spec.select.idx
  %and8 = and i32 %opcode, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9.not = icmp eq i32 %and8, 0
  %and12 = and i32 %opcode, 255
  %idx.neg = sub nsw i32 0, %and12
  %and12.pn = select i1 %cmp9.not, i32 %idx.neg, i32 %and12
  %pFinal.0 = getelementptr i32, ptr %spec.select, i32 %and12.pn
  %and17 = and i32 %opcode, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18.not = icmp eq i32 %and17, 0
  %pAddress.0 = select i1 %cmp18.not, ptr %spec.select, ptr %pFinal.0
  %and23 = and i32 %opcode, 4227072
  %10 = zext i32 %and23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and23, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 32768, label %sw.bb26
    i32 4194304, label %sw.bb29
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %and24 = lshr i32 %opcode, 12
  %shr25 = and i32 %and24, 7
  %11 = inttoptr i32 %and.i.i to ptr
  %fpstate.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 9
  %fType.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx.i62 = getelementptr [8 x i8], ptr %fType.i, i32 0, i32 %shr25
  %12 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i62, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %13, label %sw.default.i [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx1.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %shr25
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx1.i, align 4
  %call2.i = call i32 @float64_to_float32(ptr noundef nonnull %roundData, i64 noundef %16) #4
  br label %storeSingle.exit

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx5.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %shr25
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i = load i32, ptr %arrayidx5.i, align 4
  %18 = insertvalue [3 x i32] undef, i32 %.unpack.i, 0
  %.elt19.i = getelementptr inbounds [3 x i32], ptr %arrayidx5.i, i32 0, i32 1
  %19 = ptrtoint ptr %.elt19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack20.i = load i32, ptr %.elt19.i, align 4
  %20 = insertvalue [3 x i32] %18, i32 %.unpack20.i, 1
  %.elt21.i = getelementptr inbounds [3 x i32], ptr %arrayidx5.i, i32 0, i32 2
  %21 = ptrtoint ptr %.elt21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack22.i = load i32, ptr %.elt21.i, align 4
  %22 = insertvalue [3 x i32] %20, i32 %.unpack22.i, 2
  %call6.i = call i32 @floatx80_to_float32(ptr noundef nonnull %roundData, [3 x i32] %22) #4
  br label %storeSingle.exit

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx8.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %shr25
  %23 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx8.i, align 4
  br label %storeSingle.exit

storeSingle.exit:                                 ; preds = %sw.default.i, %sw.bb3.i, %sw.bb.i
  %val.sroa.0.0.i = phi i32 [ %24, %sw.default.i ], [ %call6.i, %sw.bb3.i ], [ %call2.i, %sw.bb.i ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 114) #4
  %25 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !12
  %and.i.i63 = and i32 %27, -13
  %or.i.i = or i32 %and.i.i63, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %28 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %pAddress.0, i32 %val.sroa.0.0.i, i32 -1226833921) #4, !srcloc !21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %and27 = lshr i32 %opcode, 12
  %shr28 = and i32 %and27, 7
  %29 = inttoptr i32 %and.i.i to ptr
  %fpstate.i64 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 9
  %fType.i65 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx.i66 = getelementptr [8 x i8], ptr %fType.i65, i32 0, i32 %shr28
  %30 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i66, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %31, label %sw.default.i75 [
    i8 1, label %sw.bb.i69
    i8 3, label %sw.bb3.i73
  ]

sw.bb.i69:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx1.i67 = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i64, i32 0, i32 %shr28
  %33 = ptrtoint ptr %arrayidx1.i67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx1.i67, align 4
  %call2.i68 = tail call i64 @float32_to_float64(i32 noundef %34) #4
  %extract.t107 = trunc i64 %call2.i68 to i32
  %extract110 = lshr i64 %call2.i68, 32
  %extract.t111 = trunc i64 %extract110 to i32
  br label %storeDouble.exit

sw.bb3.i73:                                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx5.i70 = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i64, i32 0, i32 %shr28
  %35 = ptrtoint ptr %arrayidx5.i70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack.i71 = load i32, ptr %arrayidx5.i70, align 4
  %36 = insertvalue [3 x i32] undef, i32 %.unpack.i71, 0
  %.elt43.i = getelementptr inbounds [3 x i32], ptr %arrayidx5.i70, i32 0, i32 1
  %37 = ptrtoint ptr %.elt43.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack44.i = load i32, ptr %.elt43.i, align 4
  %38 = insertvalue [3 x i32] %36, i32 %.unpack44.i, 1
  %.elt45.i = getelementptr inbounds [3 x i32], ptr %arrayidx5.i70, i32 0, i32 2
  %39 = ptrtoint ptr %.elt45.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack46.i = load i32, ptr %.elt45.i, align 4
  %40 = insertvalue [3 x i32] %38, i32 %.unpack46.i, 2
  %call6.i72 = call i64 @floatx80_to_float64(ptr noundef nonnull %roundData, [3 x i32] %40) #4
  %extract.t108 = trunc i64 %call6.i72 to i32
  %extract112 = lshr i64 %call6.i72, 32
  %extract.t113 = trunc i64 %extract112 to i32
  br label %storeDouble.exit

sw.default.i75:                                   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx8.i74 = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i64, i32 0, i32 %shr28
  %41 = ptrtoint ptr %arrayidx8.i74 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %arrayidx8.i74, align 4
  %extract.t109 = trunc i64 %42 to i32
  %extract114 = lshr i64 %42, 32
  %extract.t115 = trunc i64 %extract114 to i32
  br label %storeDouble.exit

storeDouble.exit:                                 ; preds = %sw.default.i75, %sw.bb3.i73, %sw.bb.i69
  %call2.i68.sink106.off0 = phi i32 [ %extract.t107, %sw.bb.i69 ], [ %extract.t108, %sw.bb3.i73 ], [ %extract.t109, %sw.default.i75 ]
  %call2.i68.sink106.off32 = phi i32 [ %extract.t111, %sw.bb.i69 ], [ %extract.t113, %sw.bb3.i73 ], [ %extract.t115, %sw.default.i75 ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 141) #4
  %43 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i76 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i76 to ptr
  %cpu_domain.i.i.i77 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 4
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i77) #3, !srcloc !12
  %and.i.i78 = and i32 %45, -13
  %or.i.i79 = or i32 %and.i.i78, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i79) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %46 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %pAddress.0, i32 %call2.i68.sink106.off32, i32 -1226833921) #4, !srcloc !22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx16.i = getelementptr i32, ptr %pAddress.0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 142) #4
  %47 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i47.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i47.i to ptr
  %cpu_domain.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i48.i) #3, !srcloc !12
  %and.i49.i = and i32 %49, -13
  %or.i50.i = or i32 %and.i49.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i50.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %50 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx16.i, i32 %call2.i68.sink106.off0, i32 -1226833921) #4, !srcloc !23
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %and30 = lshr i32 %opcode, 12
  %shr31 = and i32 %and30, 7
  %51 = inttoptr i32 %and.i.i to ptr
  %fpstate.i80 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 9
  %fType.i81 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx.i82 = getelementptr [8 x i8], ptr %fType.i81, i32 0, i32 %shr31
  %52 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i82, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %53, label %sw.default.i86 [
    i8 1, label %sw.bb.i84
    i8 2, label %sw.bb2.i
  ]

sw.bb.i84:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp.i) #4
  %arrayidx1.i83 = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i80, i32 0, i32 %shr31
  %55 = ptrtoint ptr %arrayidx1.i83 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx1.i83, align 4
  call void @float32_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp.i, i32 noundef %56) #4
  %57 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %val.sroa.0.0.copyload.i = load i32, ptr %tmp.i, align 4
  %val.sroa.7.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 4
  %58 = ptrtoint ptr %val.sroa.7.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %val.sroa.7.0.copyload.i = load i32, ptr %val.sroa.7.0.tmp.sroa_idx.i, align 4
  %val.sroa.9.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %59 = ptrtoint ptr %val.sroa.9.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %val.sroa.9.0.copyload.i = load i32, ptr %val.sroa.9.0.tmp.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp.i) #4
  br label %storeExtended.exit

sw.bb2.i:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp3.i) #4
  %arrayidx5.i85 = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i80, i32 0, i32 %shr31
  %60 = ptrtoint ptr %arrayidx5.i85 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %arrayidx5.i85, align 4
  call void @float64_to_floatx80(ptr nonnull sret(%struct.floatx80) align 4 %tmp3.i, i64 noundef %61) #4
  %62 = ptrtoint ptr %tmp3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %val.sroa.0.0.copyload47.i = load i32, ptr %tmp3.i, align 4
  %val.sroa.7.0.tmp3.sroa_idx.i = getelementptr inbounds i8, ptr %tmp3.i, i32 4
  %63 = ptrtoint ptr %val.sroa.7.0.tmp3.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %val.sroa.7.0.copyload49.i = load i32, ptr %val.sroa.7.0.tmp3.sroa_idx.i, align 4
  %val.sroa.9.0.tmp3.sroa_idx.i = getelementptr inbounds i8, ptr %tmp3.i, i32 8
  %64 = ptrtoint ptr %val.sroa.9.0.tmp3.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %val.sroa.9.0.copyload51.i = load i32, ptr %val.sroa.9.0.tmp3.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp3.i) #4
  br label %storeExtended.exit

sw.default.i86:                                   ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx7.i = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i80, i32 0, i32 %shr31
  %65 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %val.sroa.0.0.copyload48.i = load i32, ptr %arrayidx7.i, align 4
  %val.sroa.7.0.arrayidx7.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx7.i, i32 4
  %66 = ptrtoint ptr %val.sroa.7.0.arrayidx7.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %val.sroa.7.0.copyload50.i = load i32, ptr %val.sroa.7.0.arrayidx7.sroa_idx.i, align 4
  %val.sroa.9.0.arrayidx7.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx7.i, i32 8
  %67 = ptrtoint ptr %val.sroa.9.0.arrayidx7.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %val.sroa.9.0.copyload52.i = load i32, ptr %val.sroa.9.0.arrayidx7.sroa_idx.i, align 4
  br label %storeExtended.exit

storeExtended.exit:                               ; preds = %sw.default.i86, %sw.bb2.i, %sw.bb.i84
  %val.sroa.0.0.i87 = phi i32 [ %val.sroa.0.0.copyload48.i, %sw.default.i86 ], [ %val.sroa.0.0.copyload47.i, %sw.bb2.i ], [ %val.sroa.0.0.copyload.i, %sw.bb.i84 ]
  %val.sroa.7.0.i = phi i32 [ %val.sroa.7.0.copyload50.i, %sw.default.i86 ], [ %val.sroa.7.0.copyload49.i, %sw.bb2.i ], [ %val.sroa.7.0.copyload.i, %sw.bb.i84 ]
  %val.sroa.9.0.i = phi i32 [ %val.sroa.9.0.copyload52.i, %sw.default.i86 ], [ %val.sroa.9.0.copyload51.i, %sw.bb2.i ], [ %val.sroa.9.0.copyload.i, %sw.bb.i84 ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 171) #4
  %68 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i88 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i88 to ptr
  %cpu_domain.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i89) #3, !srcloc !12
  %and.i.i90 = and i32 %70, -13
  %or.i.i91 = or i32 %and.i.i90, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i91) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %71 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %pAddress.0, i32 %val.sroa.0.0.i87, i32 -1226833921) #4, !srcloc !24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx16.i92 = getelementptr i32, ptr %pAddress.0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 173) #4
  %72 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i61.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i61.i to ptr
  %cpu_domain.i.i62.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 4
  %74 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i62.i) #3, !srcloc !12
  %and.i63.i = and i32 %74, -13
  %or.i64.i = or i32 %and.i63.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i64.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %75 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx16.i92, i32 %val.sroa.7.0.i, i32 -1226833921) #4, !srcloc !25
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx33.i = getelementptr i32, ptr %pAddress.0, i32 2
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 174) #4
  %76 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i65.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i65.i to ptr
  %cpu_domain.i.i66.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 4
  %78 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i66.i) #3, !srcloc !12
  %and.i67.i = and i32 %78, -13
  %or.i68.i = or i32 %and.i67.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i68.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %79 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx33.i, i32 %val.sroa.9.0.i, i32 -1226833921) #4, !srcloc !26
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  br label %sw.epilog

sw.epilog:                                        ; preds = %storeExtended.exit, %storeDouble.exit, %storeSingle.exit, %entry.sw.epilog_crit_edge
  %nRc.0 = phi i32 [ 1, %storeExtended.exit ], [ 1, %storeDouble.exit ], [ 1, %storeSingle.exit ], [ 0, %entry.sw.epilog_crit_edge ]
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not = icmp eq i8 %81, 0
  br i1 %tobool.not, label %sw.epilog.if.end35_crit_edge, label %if.then33

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  call void @float_raise(i8 noundef signext %81) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %sw.epilog.if.end35_crit_edge
  %82 = and i32 %opcode, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool36.not97 = icmp eq i32 %82, 0
  %tobool36.not = or i1 %tobool36.not97, %cmp.i
  br i1 %tobool36.not, label %if.end35.if.end40_crit_edge, label %if.then37

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %pFinal.0 to i32
  %84 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i93 = and i32 %84, -16384
  %add.i94 = or i32 %and.i.i93, 16376
  %85 = inttoptr i32 %add.i94 to ptr
  %add.ptr.i95 = getelementptr %struct.pt_regs, ptr %85, i32 -1
  %arrayidx.i96 = getelementptr [18 x i32], ptr %add.ptr.i95, i32 0, i32 %shr
  %86 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %arrayidx.i96, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %roundData) #4
  ret i32 %nRc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @SetRoundingMode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @SetRoundingPrecision(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @float_raise(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PerformLFM(i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = lshr i32 %opcode, 16
  %shr = and i32 %and1, 15
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i = and i32 %0, -16384
  %add.i = or i32 %and.i.i, 16376
  %1 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr %struct.pt_regs, ptr %1, i32 -1
  %arrayidx.i = getelementptr [18 x i32], ptr %add.ptr.i, i32 0, i32 %shr
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr)
  %cmp.i = icmp eq i32 %shr, 15
  %sub.i = add i32 %3, -4
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %3
  %4 = inttoptr i32 %spec.select.i to ptr
  %spec.select.idx = select i1 %cmp.i, i32 2, i32 0
  %spec.select = getelementptr i32, ptr %4, i32 %spec.select.idx
  %and6 = and i32 %opcode, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  %and10 = and i32 %opcode, 255
  %idx.neg = sub nsw i32 0, %and10
  %and10.pn = select i1 %cmp7.not, i32 %idx.neg, i32 %and10
  %pFinal.0 = getelementptr i32, ptr %spec.select, i32 %and10.pn
  %and15 = and i32 %opcode, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16.not = icmp eq i32 %and15, 0
  %pAddress.0 = select i1 %cmp16.not, ptr %spec.select, ptr %pFinal.0
  %and21 = lshr i32 %opcode, 12
  %shr22 = and i32 %and21, 7
  %and.i = and i32 %opcode, 4227072
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and.i, label %entry.unreachabledefault.i [
    i32 0, label %entry.for.body.preheader_crit_edge
    i32 32768, label %sw.bb1.i
    i32 4194304, label %sw.bb2.i
    i32 4227072, label %sw.bb3.i
  ]

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.for.body.preheader_crit_edge
  %i.063.ph = phi i32 [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 4, %entry.for.body.preheader_crit_edge ]
  br label %for.body

entry.unreachabledefault.i:                       ; preds = %entry
  unreachable

for.body:                                         ; preds = %loadMultiple.exit.for.body_crit_edge, %for.body.preheader
  %Fd.064 = phi i32 [ %spec.store.select, %loadMultiple.exit.for.body_crit_edge ], [ %shr22, %for.body.preheader ]
  %i.063 = phi i32 [ %dec, %loadMultiple.exit.for.body_crit_edge ], [ %i.063.ph, %for.body.preheader ]
  %pAddress.161 = phi ptr [ %add.ptr26, %loadMultiple.exit.for.body_crit_edge ], [ %pAddress.0, %for.body.preheader ]
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i99.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i99.i to ptr
  %fpstate.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 9
  %arrayidx.i54 = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %Fd.064
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 66) #4
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !12
  %and.i.i55 = and i32 %10, -13
  %or.i.i = or i32 %and.i.i55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %pAddress.161, i32 -1226833921) #4, !srcloc !27
  %asmresult3.i = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %shr.i = lshr i32 %asmresult3.i, 14
  %12 = trunc i32 %shr.i to i8
  %conv.i = and i8 %12, 3
  %fType.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx5.i = getelementptr [8 x i8], ptr %fType.i, i32 0, i32 %Fd.064
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %arrayidx5.i, align 1
  %conv8.i = zext i8 %conv.i to i32
  %14 = zext i32 %conv8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %conv8.i, label %for.body.loadMultiple.exit_crit_edge [
    i32 1, label %for.body.sw.bb.i_crit_edge
    i32 2, label %for.body.sw.bb.i_crit_edge65
    i32 3, label %sw.bb38.i
  ]

for.body.sw.bb.i_crit_edge65:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

for.body.loadMultiple.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %loadMultiple.exit

sw.bb.i:                                          ; preds = %for.body.sw.bb.i_crit_edge, %for.body.sw.bb.i_crit_edge65
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 73) #4
  %arrayidx12.i = getelementptr i32, ptr %pAddress.161, i32 2
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i83.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i83.i to ptr
  %cpu_domain.i.i84.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i84.i) #3, !srcloc !12
  %and.i85.i = and i32 %17, -13
  %or.i86.i = or i32 %and.i85.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i86.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx12.i, i32 -1226833921) #4, !srcloc !28
  %asmresult20.i = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %19 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %asmresult20.i, ptr %arrayidx.i54, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 74) #4
  %arrayidx26.i = getelementptr i32, ptr %pAddress.161, i32 1
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i87.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i87.i to ptr
  %cpu_domain.i.i88.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i88.i) #3, !srcloc !12
  %and.i89.i = and i32 %22, -13
  %or.i90.i = or i32 %and.i89.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i90.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx26.i, i32 -1226833921) #4, !srcloc !29
  %asmresult34.i = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx35.i = getelementptr i32, ptr %arrayidx.i54, i32 1
  %24 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %asmresult34.i, ptr %arrayidx35.i, align 4
  %arrayidx37.i = getelementptr i32, ptr %arrayidx.i54, i32 2
  %25 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx37.i, align 4
  br label %loadMultiple.exit

sw.bb38.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 82) #4
  %arrayidx42.i = getelementptr i32, ptr %pAddress.161, i32 2
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i91.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i91.i to ptr
  %cpu_domain.i.i92.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i92.i) #3, !srcloc !12
  %and.i93.i = and i32 %28, -13
  %or.i94.i = or i32 %and.i93.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i94.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %29 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx42.i, i32 -1226833921) #4, !srcloc !30
  %asmresult50.i = extractvalue { i32, i32 } %29, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx51.i = getelementptr i32, ptr %arrayidx.i54, i32 1
  %30 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %asmresult50.i, ptr %arrayidx51.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 83) #4
  %arrayidx56.i = getelementptr i32, ptr %pAddress.161, i32 1
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i95.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i95.i to ptr
  %cpu_domain.i.i96.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i96.i) #3, !srcloc !12
  %and.i97.i = and i32 %33, -13
  %or.i98.i = or i32 %and.i97.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i98.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %34 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx56.i, i32 -1226833921) #4, !srcloc !31
  %asmresult64.i = extractvalue { i32, i32 } %34, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx65.i = getelementptr i32, ptr %arrayidx.i54, i32 2
  %35 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %asmresult64.i, ptr %arrayidx65.i, align 4
  %and67.i = and i32 %asmresult3.i, -2147467265
  %36 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and67.i, ptr %arrayidx.i54, align 4
  br label %loadMultiple.exit

loadMultiple.exit:                                ; preds = %sw.bb38.i, %sw.bb.i, %for.body.loadMultiple.exit_crit_edge
  %add.ptr26 = getelementptr i32, ptr %pAddress.161, i32 3
  %inc = add i32 %Fd.064, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp27 = icmp eq i32 %inc, 8
  %spec.store.select = select i1 %cmp27, i32 0, i32 %inc
  %dec = add nsw i32 %i.063, -1
  %cmp24.not = icmp eq i32 %dec, 0
  br i1 %cmp24.not, label %for.end, label %loadMultiple.exit.for.body_crit_edge

loadMultiple.exit.for.body_crit_edge:             ; preds = %loadMultiple.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %loadMultiple.exit
  %37 = and i32 %opcode, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not60 = icmp eq i32 %37, 0
  %tobool.not = or i1 %tobool.not60, %cmp.i
  br i1 %tobool.not, label %for.end.if.end34_crit_edge, label %if.then31

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %pFinal.0 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i56 = and i32 %39, -16384
  %add.i57 = or i32 %and.i.i56, 16376
  %40 = inttoptr i32 %add.i57 to ptr
  %add.ptr.i58 = getelementptr %struct.pt_regs, ptr %40, i32 -1
  %arrayidx.i59 = getelementptr [18 x i32], ptr %add.ptr.i58, i32 0, i32 %shr
  %41 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %arrayidx.i59, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %for.end.if.end34_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PerformSFM(i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = lshr i32 %opcode, 16
  %shr = and i32 %and1, 15
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i = and i32 %0, -16384
  %add.i = or i32 %and.i.i, 16376
  %1 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr %struct.pt_regs, ptr %1, i32 -1
  %arrayidx.i = getelementptr [18 x i32], ptr %add.ptr.i, i32 0, i32 %shr
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr)
  %cmp.i = icmp eq i32 %shr, 15
  %sub.i = add i32 %3, -4
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %3
  %4 = inttoptr i32 %spec.select.i to ptr
  %spec.select.idx = select i1 %cmp.i, i32 2, i32 0
  %spec.select = getelementptr i32, ptr %4, i32 %spec.select.idx
  %and6 = and i32 %opcode, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  %and10 = and i32 %opcode, 255
  %idx.neg = sub nsw i32 0, %and10
  %and10.pn = select i1 %cmp7.not, i32 %idx.neg, i32 %and10
  %pFinal.0 = getelementptr i32, ptr %spec.select, i32 %and10.pn
  %and15 = and i32 %opcode, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16.not = icmp eq i32 %and15, 0
  %pAddress.0 = select i1 %cmp16.not, ptr %spec.select, ptr %pFinal.0
  %and21 = lshr i32 %opcode, 12
  %shr22 = and i32 %and21, 7
  %and.i = and i32 %opcode, 4227072
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and.i, label %entry.unreachabledefault.i [
    i32 0, label %entry.for.body.preheader_crit_edge
    i32 32768, label %sw.bb1.i
    i32 4194304, label %sw.bb2.i
    i32 4227072, label %sw.bb3.i
  ]

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.for.body.preheader_crit_edge
  %i.064.ph = phi i32 [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 4, %entry.for.body.preheader_crit_edge ]
  br label %for.body

entry.unreachabledefault.i:                       ; preds = %entry
  unreachable

for.body:                                         ; preds = %storeMultiple.exit.for.body_crit_edge, %for.body.preheader
  %Fd.065 = phi i32 [ %spec.store.select, %storeMultiple.exit.for.body_crit_edge ], [ %shr22, %for.body.preheader ]
  %i.064 = phi i32 [ %dec, %storeMultiple.exit.for.body_crit_edge ], [ %i.064.ph, %for.body.preheader ]
  %pAddress.162 = phi ptr [ %add.ptr26, %storeMultiple.exit.for.body_crit_edge ], [ %pAddress.0, %for.body.preheader ]
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i125.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i125.i to ptr
  %fpstate.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 9
  %arrayidx.i54 = getelementptr [8 x %union.tagFPREG], ptr %fpstate.i, i32 0, i32 %Fd.065
  %fType.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx1.i = getelementptr [8 x i8], ptr %fType.i, i32 0, i32 %Fd.065
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %9, label %for.body.storeMultiple.exit_crit_edge [
    i8 1, label %for.body.sw.bb.i_crit_edge
    i8 2, label %for.body.sw.bb.i_crit_edge66
    i8 3, label %sw.bb39.i
  ]

for.body.sw.bb.i_crit_edge66:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

for.body.storeMultiple.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %storeMultiple.exit

sw.bb.i:                                          ; preds = %for.body.sw.bb.i_crit_edge, %for.body.sw.bb.i_crit_edge66
  %conv.i = zext i8 %9 to i32
  %arrayidx2.i = getelementptr i32, ptr %pAddress.162, i32 2
  %11 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i54, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 194) #4
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !12
  %and.i.i55 = and i32 %15, -13
  %or.i.i = or i32 %and.i.i55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx2.i, i32 %12, i32 -1226833921) #4, !srcloc !32
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx9.i = getelementptr i32, ptr %pAddress.162, i32 1
  %arrayidx11.i = getelementptr i32, ptr %arrayidx.i54, i32 1
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx11.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 195) #4
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i105.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i105.i to ptr
  %cpu_domain.i.i106.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i106.i) #3, !srcloc !12
  %and.i107.i = and i32 %21, -13
  %or.i108.i = or i32 %and.i107.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i108.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx9.i, i32 %18, i32 -1226833921) #4, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %shl.i = shl nuw nsw i32 %conv.i, 14
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 196) #4
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i109.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i109.i to ptr
  %cpu_domain.i.i110.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i110.i) #3, !srcloc !12
  %and.i111.i = and i32 %25, -13
  %or.i112.i = or i32 %and.i111.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i112.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %pAddress.162, i32 %shl.i, i32 -1226833921) #4, !srcloc !34
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  br label %storeMultiple.exit

sw.bb39.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx43.i = getelementptr i32, ptr %pAddress.162, i32 1
  %arrayidx45.i = getelementptr i32, ptr %arrayidx.i54, i32 2
  %27 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx45.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 203) #4
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i113.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i113.i to ptr
  %cpu_domain.i.i114.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i114.i) #3, !srcloc !12
  %and.i115.i = and i32 %31, -13
  %or.i116.i = or i32 %and.i115.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i116.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx43.i, i32 %28, i32 -1226833921) #4, !srcloc !35
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %arrayidx60.i = getelementptr i32, ptr %pAddress.162, i32 2
  %arrayidx62.i = getelementptr i32, ptr %arrayidx.i54, i32 1
  %33 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx62.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 204) #4
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i117.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i117.i to ptr
  %cpu_domain.i.i118.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i118.i) #3, !srcloc !12
  %and.i119.i = and i32 %37, -13
  %or.i120.i = or i32 %and.i119.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i120.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx60.i, i32 %34, i32 -1226833921) #4, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %39 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i54, align 4
  %and.i56 = and i32 %40, -2147467265
  %or.i = or i32 %and.i56, 49152
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 205) #4
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i121.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i121.i to ptr
  %cpu_domain.i.i122.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i122.i) #3, !srcloc !12
  %and.i123.i = and i32 %43, -13
  %or.i124.i = or i32 %and.i123.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i124.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %44 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %pAddress.162, i32 %or.i, i32 -1226833921) #4, !srcloc !37
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  br label %storeMultiple.exit

storeMultiple.exit:                               ; preds = %sw.bb39.i, %sw.bb.i, %for.body.storeMultiple.exit_crit_edge
  %add.ptr26 = getelementptr i32, ptr %pAddress.162, i32 3
  %inc = add i32 %Fd.065, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp27 = icmp eq i32 %inc, 8
  %spec.store.select = select i1 %cmp27, i32 0, i32 %inc
  %dec = add nsw i32 %i.064, -1
  %cmp24.not = icmp eq i32 %dec, 0
  br i1 %cmp24.not, label %for.end, label %storeMultiple.exit.for.body_crit_edge

storeMultiple.exit.for.body_crit_edge:            ; preds = %storeMultiple.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %storeMultiple.exit
  %45 = and i32 %opcode, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not61 = icmp eq i32 %45, 0
  %tobool.not = or i1 %tobool.not61, %cmp.i
  br i1 %tobool.not, label %for.end.if.end34_crit_edge, label %if.then31

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %pFinal.0 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i57 = and i32 %47, -16384
  %add.i58 = or i32 %and.i.i57, 16376
  %48 = inttoptr i32 %add.i58 to ptr
  %add.ptr.i59 = getelementptr %struct.pt_regs, ptr %48, i32 -1
  %arrayidx.i60 = getelementptr [18 x i32], ptr %add.ptr.i59, i32 0, i32 %shr
  %49 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %arrayidx.i60, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %for.end.if.end34_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @EmulateCPDT(i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %opcode, 202379008
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %0, label %entry.if.end32_crit_edge [
    i32 202375424, label %if.then
    i32 202375680, label %if.then9
    i32 201326848, label %if.then18
    i32 201327104, label %if.then27
  ]

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @PerformLDF(i32 noundef %opcode)
  br label %if.end32

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 @PerformLFM(i32 noundef %opcode)
  br label %if.end32

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @PerformSTF(i32 noundef %opcode)
  br label %if.end32

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call i32 @PerformSFM(i32 noundef %opcode)
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.then18, %if.then9, %if.then, %entry.if.end32_crit_edge
  %nRc.0 = phi i32 [ %call, %if.then ], [ 1, %if.then9 ], [ %call19, %if.then18 ], [ 1, %if.then27 ], [ 0, %entry.if.end32_crit_edge ]
  ret i32 %nRc.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float64_to_float32(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @floatx80_to_float32(ptr noundef, [3 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float32_to_float64(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @floatx80_to_float64(ptr noundef, [3 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @float32_to_floatx80(ptr sret(%struct.floatx80) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @float64_to_floatx80(ptr sret(%struct.floatx80) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{!"sp"}
!1 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!2 = !{!"../arch/arm/nwfpe/fpa11_cpdt.c", i32 23, i32 2}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 3044777}
!13 = !{i64 3044974}
!14 = !{i64 2150530207}
!15 = !{i64 2150569011, i64 2150569291, i64 2150569625, i64 2150569959}
!16 = !{i64 2150581415, i64 2150581695, i64 2150582029, i64 2150582363}
!17 = !{i64 2150593600, i64 2150593880, i64 2150594214, i64 2150594548}
!18 = !{i64 2150606004, i64 2150606284, i64 2150606618, i64 2150606952}
!19 = !{i64 2150618189, i64 2150618469, i64 2150618803, i64 2150619137}
!20 = !{i64 2150630374, i64 2150630654, i64 2150630988, i64 2150631322}
!21 = !{i64 2150701201, i64 2150701481, i64 2150701815, i64 2150702149}
!22 = !{i64 2150710235, i64 2150710515, i64 2150710849, i64 2150711183}
!23 = !{i64 2150719045, i64 2150719325, i64 2150719659, i64 2150719993}
!24 = !{i64 2150728079, i64 2150728359, i64 2150728693, i64 2150729027}
!25 = !{i64 2150736889, i64 2150737169, i64 2150737503, i64 2150737837}
!26 = !{i64 2150745699, i64 2150745979, i64 2150746313, i64 2150746647}
!27 = !{i64 2150642749, i64 2150643029, i64 2150643363, i64 2150643697}
!28 = !{i64 2150654944, i64 2150655224, i64 2150655558, i64 2150655892}
!29 = !{i64 2150667129, i64 2150667409, i64 2150667743, i64 2150668077}
!30 = !{i64 2150679319, i64 2150679599, i64 2150679933, i64 2150680267}
!31 = !{i64 2150691504, i64 2150691784, i64 2150692118, i64 2150692452}
!32 = !{i64 2150754725, i64 2150755005, i64 2150755339, i64 2150755673}
!33 = !{i64 2150767588, i64 2150767868, i64 2150768202, i64 2150768536}
!34 = !{i64 2150776404, i64 2150776684, i64 2150777018, i64 2150777352}
!35 = !{i64 2150785211, i64 2150785491, i64 2150785825, i64 2150786159}
!36 = !{i64 2150794013, i64 2150794293, i64 2150794627, i64 2150794961}
!37 = !{i64 2150802877, i64 2150803157, i64 2150803491, i64 2150803825}
