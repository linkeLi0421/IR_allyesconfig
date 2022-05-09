; ModuleID = '/llk/IR_all_yes/arch/arm/plat-pxa/mfp.c_pt.bc'
source_filename = "../arch/arm/plat-pxa/mfp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mfp_pin = type { i32, i32, i32, i32 }
%struct.mfp_addr_map = type { i32, i32, i32 }

@mfp_spin_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@mfp_table = internal global { [352 x %struct.mfp_pin], [1408 x i8] } zeroinitializer, align 32
@mfpr_lpm = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 8192, i32 16640, i32 8320, i32 16768, i32 128, i32 0], [36 x i8] zeroinitializer }, align 32
@mfpr_edge = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 16, i32 32, i32 48], [16 x i8] zeroinitializer }, align 32
@mfpr_pull = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 40960, i32 49152, i32 57344, i32 32768], [44 x i8] zeroinitializer }, align 32
@mfpr_mmio_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mfpr_off_readback = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mfp_spin_lock\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"mfp_spin_lock\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"mfp_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 99, i32 23 }
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"mfpr_lpm\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 102, i32 28 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"mfpr_edge\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 122, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"mfpr_pull\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 113, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"mfpr_mmio_base\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 90, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"mfpr_off_readback\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 141, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [27 x i8] c"../arch/arm/plat-pxa/mfp.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 88, i32 8 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @mfp_spin_lock, ptr @mfp_table, ptr @mfpr_lpm, ptr @mfpr_edge, ptr @mfpr_pull, ptr @mfpr_mmio_base, ptr @mfpr_off_readback, ptr @.str], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfp_spin_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfp_table to i32), i32 5632, i32 7040, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfpr_lpm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfpr_edge to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfpr_pull to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfpr_mmio_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfpr_off_readback to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mfp_config(ptr nocapture noundef readonly %mfp_cfgs, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mfp_spin_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp576 = icmp sgt i32 %num, 0
  br i1 %cmp576, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %__mfp_config_run.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %mfp_cfgs.addr.078 = phi ptr [ %incdec.ptr, %__mfp_config_run.exit.for.body_crit_edge ], [ %mfp_cfgs, %entry.for.body_crit_edge ]
  %i.077 = phi i32 [ %inc, %__mfp_config_run.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %mfp_cfgs.addr.078 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mfp_cfgs.addr.078, align 4
  %and = and i32 %1, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 351, i32 %and)
  %cmp9 = icmp ugt i32 %and, 351
  br i1 %cmp9, label %do.body12, label %do.end19, !prof !24

do.body12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-pxa/mfp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 174, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

do.end19:                                         ; preds = %for.body
  %arrayidx = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %and
  %shr = lshr i32 %1, 10
  %and20 = and i32 %shr, 7
  %shr23 = lshr i32 %1, 16
  %and24 = and i32 %shr23, 7
  %shr25 = lshr i32 %1, 19
  %and26 = and i32 %shr25, 3
  %shr27 = lshr i32 %1, 21
  %and28 = and i32 %shr27, 7
  %2 = lshr i32 %1, 3
  %shl31 = and i32 %2, 7168
  %or = or i32 %and20, %shl31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp32 = icmp eq i32 %and28, 0
  %arrayidx41 = getelementptr [7 x i32], ptr @mfpr_lpm, i32 0, i32 %and24
  %3 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx41, align 4
  %or42 = or i32 %4, %or
  %arrayidx43 = getelementptr [4 x i32], ptr @mfpr_edge, i32 0, i32 %and26
  %5 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx43, align 4
  %or44 = or i32 %or42, %6
  br i1 %cmp32, label %do.end19.if.end54_crit_edge, label %if.else, !prof !26

do.end19.if.end54_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.else:                                          ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx51 = getelementptr [5 x i32], ptr @mfpr_pull, i32 0, i32 %and28
  %7 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx51, align 4
  %or52 = or i32 %8, %or
  br label %if.end54

if.end54:                                         ; preds = %if.else, %do.end19.if.end54_crit_edge
  %or52.sink = phi i32 [ %or52, %if.else ], [ %or44, %do.end19.if.end54_crit_edge ]
  %9 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %and, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or52.sink, ptr %9, align 4
  %11 = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %and, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or44, ptr %11, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %1, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -1
  br i1 %cmp.not.i, label %if.end54.__mfp_config_run.exit_crit_edge, label %if.then.i

if.end54.__mfp_config_run.exit_crit_edge:         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %__mfp_config_run.exit

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 4
  %16 = load ptr, ptr @mfpr_mmio_base, align 4
  %mfpr_off.i = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %and, i32 1
  %17 = ptrtoint ptr %mfpr_off.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mfpr_off.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #4, !srcloc !27
  br label %__mfp_config_run.exit

__mfp_config_run.exit:                            ; preds = %if.then.i, %if.end54.__mfp_config_run.exit_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %incdec.ptr = getelementptr i32, ptr %mfp_cfgs.addr.078, i32 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %__mfp_config_run.exit.for.end_crit_edge, label %__mfp_config_run.exit.for.body_crit_edge

__mfp_config_run.exit.for.body_crit_edge:         ; preds = %__mfp_config_run.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

__mfp_config_run.exit.for.end_crit_edge:          ; preds = %__mfp_config_run.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %__mfp_config_run.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %19 = load ptr, ptr @mfpr_mmio_base, align 4
  %20 = load i32, ptr @mfpr_off_readback, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mfp_spin_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mfp_read(i32 noundef %mfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 351, i32 %mfp)
  %0 = icmp ugt i32 %mfp, 351
  br i1 %0, label %do.body3, label %do.body10, !prof !24

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-pxa/mfp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #4, !srcloc !29
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mfp_spin_lock) #4
  %1 = load ptr, ptr @mfpr_mmio_base, align 4
  %mfpr_off = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %mfp, i32 1
  %2 = ptrtoint ptr %mfpr_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mfpr_off, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mfp_spin_lock, i32 noundef %call12) #4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mfp_write(i32 noundef %mfp, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 351, i32 %mfp)
  %0 = icmp ugt i32 %mfp, 351
  br i1 %0, label %do.body3, label %do.body10, !prof !24

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-pxa/mfp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #4, !srcloc !30
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mfp_spin_lock) #4
  %1 = load ptr, ptr @mfpr_mmio_base, align 4
  %mfpr_off = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %mfp, i32 1
  %2 = ptrtoint ptr %mfpr_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mfpr_off, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val) #4, !srcloc !27
  %4 = load ptr, ptr @mfpr_mmio_base, align 4
  %5 = load i32, ptr @mfpr_off_readback, align 4
  %add.ptr17 = getelementptr i8, ptr %4, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #4, !srcloc !28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mfp_spin_lock, i32 noundef %call12) #4
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @mfp_init_base(ptr noundef %mfpr_base) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 352
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %mfpr_base, ptr @mfpr_mmio_base, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mfp_init_addr(ptr nocapture noundef readonly %map) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mfp_spin_lock) #4
  %offset5 = getelementptr inbounds %struct.mfp_addr_map, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset5, align 4
  store i32 %1, ptr @mfpr_off_readback, align 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp6.not33 = icmp eq i32 %3, -1
  br i1 %cmp6.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi i32 [ %13, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %p.034 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %map, %entry.for.body_crit_edge ]
  %offset8 = getelementptr inbounds %struct.mfp_addr_map, ptr %p.034, i32 0, i32 2
  %5 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset8, align 4
  %end = getelementptr inbounds %struct.mfp_addr_map, ptr %p.034, i32 0, i32 1
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %for.body
  %offset.0 = phi i32 [ %6, %for.body ], [ %add, %do.body10.do.body10_crit_edge ]
  %i.0 = phi i32 [ %4, %for.body ], [ %inc, %do.body10.do.body10_crit_edge ]
  %mfpr_off = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %i.0, i32 1
  %7 = ptrtoint ptr %mfpr_off to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %offset.0, ptr %mfpr_off, align 4
  %mfpr_run = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %i.0, i32 2
  %8 = ptrtoint ptr %mfpr_run to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mfpr_run, align 4
  %mfpr_lpm = getelementptr [352 x %struct.mfp_pin], ptr @mfp_table, i32 0, i32 %i.0, i32 3
  %9 = ptrtoint ptr %mfpr_lpm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mfpr_lpm, align 4
  %inc = add i32 %i.0, 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %11)
  %cmp15.not = icmp ugt i32 %inc, %11
  %add = add i32 %offset.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp18.not = icmp eq i32 %11, -1
  %or.cond = or i1 %cmp15.not, %cmp18.not
  br i1 %or.cond, label %for.inc, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

for.inc:                                          ; preds = %do.body10
  %incdec.ptr = getelementptr %struct.mfp_addr_map, ptr %p.034, i32 1
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr, align 4
  %cmp6.not = icmp eq i32 %13, -1
  br i1 %cmp6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mfp_spin_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mfp_config_lpm() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %__mfp_config_lpm.exit.for.body_crit_edge, %entry
  %pin.05 = phi i32 [ 0, %entry ], [ %inc, %__mfp_config_lpm.exit.for.body_crit_edge ]
  %p.03 = phi ptr [ @mfp_table, %entry ], [ %incdec.ptr, %__mfp_config_lpm.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %p.03 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p.03, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -1
  br i1 %cmp.not.i, label %for.body.__mfp_config_lpm.exit_crit_edge, label %if.then.i

for.body.__mfp_config_lpm.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %__mfp_config_lpm.exit

if.then.i:                                        ; preds = %for.body
  %mfpr_run.i = getelementptr inbounds %struct.mfp_pin, ptr %p.03, i32 0, i32 2
  %2 = ptrtoint ptr %mfpr_run.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mfpr_run.i, align 4
  %and.i = and i32 %3, -113
  %or.i = or i32 %and.i, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %3)
  %cmp2.not.i = icmp eq i32 %or.i, %3
  br i1 %cmp2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = load ptr, ptr @mfpr_mmio_base, align 4
  %mfpr_off.i = getelementptr inbounds %struct.mfp_pin, ptr %p.03, i32 0, i32 1
  %5 = ptrtoint ptr %mfpr_off.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mfpr_off.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #4, !srcloc !27
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %mfpr_lpm.i = getelementptr inbounds %struct.mfp_pin, ptr %p.03, i32 0, i32 3
  %7 = ptrtoint ptr %mfpr_lpm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mfpr_lpm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %or.i)
  %cmp4.not.i = icmp eq i32 %8, %or.i
  br i1 %cmp4.not.i, label %if.end.i.__mfp_config_lpm.exit_crit_edge, label %if.then5.i

if.end.i.__mfp_config_lpm.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__mfp_config_lpm.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = load ptr, ptr @mfpr_mmio_base, align 4
  %mfpr_off7.i = getelementptr inbounds %struct.mfp_pin, ptr %p.03, i32 0, i32 1
  %10 = ptrtoint ptr %mfpr_off7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mfpr_off7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %8) #4, !srcloc !27
  br label %__mfp_config_lpm.exit

__mfp_config_lpm.exit:                            ; preds = %if.then5.i, %if.end.i.__mfp_config_lpm.exit_crit_edge, %for.body.__mfp_config_lpm.exit_crit_edge
  %inc = add nuw nsw i32 %pin.05, 1
  %incdec.ptr = getelementptr %struct.mfp_pin, ptr %p.03, i32 1
  %exitcond.not = icmp eq i32 %inc, 352
  br i1 %exitcond.not, label %for.end, label %__mfp_config_lpm.exit.for.body_crit_edge

__mfp_config_lpm.exit.for.body_crit_edge:         ; preds = %__mfp_config_lpm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %__mfp_config_lpm.exit
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mfp_config_run() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %__mfp_config_run.exit.for.body_crit_edge, %entry
  %pin.05 = phi i32 [ 0, %entry ], [ %inc, %__mfp_config_run.exit.for.body_crit_edge ]
  %p.03 = phi ptr [ @mfp_table, %entry ], [ %incdec.ptr, %__mfp_config_run.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %p.03 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p.03, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -1
  br i1 %cmp.not.i, label %for.body.__mfp_config_run.exit_crit_edge, label %if.then.i

for.body.__mfp_config_run.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %__mfp_config_run.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %mfpr_run.i = getelementptr inbounds %struct.mfp_pin, ptr %p.03, i32 0, i32 2
  %2 = ptrtoint ptr %mfpr_run.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mfpr_run.i, align 4
  %4 = load ptr, ptr @mfpr_mmio_base, align 4
  %mfpr_off.i = getelementptr inbounds %struct.mfp_pin, ptr %p.03, i32 0, i32 1
  %5 = ptrtoint ptr %mfpr_off.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mfpr_off.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #4, !srcloc !27
  br label %__mfp_config_run.exit

__mfp_config_run.exit:                            ; preds = %if.then.i, %for.body.__mfp_config_run.exit_crit_edge
  %inc = add nuw nsw i32 %pin.05, 1
  %incdec.ptr = getelementptr %struct.mfp_pin, ptr %p.03, i32 1
  %exitcond.not = icmp eq i32 %inc, 352
  br i1 %exitcond.not, label %for.end, label %__mfp_config_run.exit.for.body_crit_edge

__mfp_config_run.exit.for.body_crit_edge:         ; preds = %__mfp_config_run.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %__mfp_config_run.exit
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @mfpr_mmio_base, !1, !"mfpr_mmio_base", i1 false, i1 false}
!1 = !{!"../arch/arm/plat-pxa/mfp.c", i32 90, i32 22}
!2 = !{ptr @mfp_table, !3, !"mfp_table", i1 false, i1 false}
!3 = !{!"../arch/arm/plat-pxa/mfp.c", i32 99, i32 23}
!4 = !{ptr @mfpr_off_readback, !5, !"mfpr_off_readback", i1 false, i1 false}
!5 = !{!"../arch/arm/plat-pxa/mfp.c", i32 141, i32 22}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/plat-pxa/mfp.c", i32 88, i32 8}
!8 = !{ptr @mfp_spin_lock, !7, !"mfp_spin_lock", i1 false, i1 false}
!9 = !{ptr @mfpr_lpm, !10, !"mfpr_lpm", i1 false, i1 false}
!10 = !{!"../arch/arm/plat-pxa/mfp.c", i32 102, i32 28}
!11 = !{ptr @mfpr_edge, !12, !"mfpr_edge", i1 false, i1 false}
!12 = !{!"../arch/arm/plat-pxa/mfp.c", i32 122, i32 28}
!13 = !{ptr @mfpr_pull, !14, !"mfpr_pull", i1 false, i1 false}
!14 = !{!"../arch/arm/plat-pxa/mfp.c", i32 113, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2151621753, i64 2151622241, i64 2151621790, i64 2151621846, i64 2151621880, i64 2151621904, i64 2151621945, i64 2151621966, i64 2151621994, i64 2151622028}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 4041362}
!28 = !{i64 4041780}
!29 = !{i64 2151623660, i64 2151624148, i64 2151623697, i64 2151623753, i64 2151623787, i64 2151623811, i64 2151623852, i64 2151623873, i64 2151623901, i64 2151623935}
!30 = !{i64 2151625718, i64 2151626206, i64 2151625755, i64 2151625811, i64 2151625845, i64 2151625869, i64 2151625910, i64 2151625931, i64 2151625959, i64 2151625993}
