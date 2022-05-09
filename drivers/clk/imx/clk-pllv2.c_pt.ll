; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-pllv2.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pllv2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pllv2 = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pllv2_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pllv2_prepare, ptr @clk_pllv2_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv2_recalc_rate, ptr @clk_pllv2_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv2_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@clk_pllv2_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013MX5: pll locking failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_pllv2_prepare\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/imx/clk-pllv2.c\00", [36 x i8] zeroinitializer }, align 32
@clk_pllv2_prepare._entry_ptr = internal global ptr @clk_pllv2_prepare._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"clk_pllv2_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 234, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [31 x i8] c"../drivers/clk/imx/clk-pllv2.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 216, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @clk_pllv2_prepare._entry, ptr @clk_pllv2_prepare._entry_ptr, ptr @clk_pllv2_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllv2_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllv2_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pllv2(ptr noundef %name, ptr noundef %parent, ptr noundef %base) local_unnamed_addr #0 align 64 {
entry:
  %parent.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent, ptr %parent.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %base2 = getelementptr inbounds %struct.clk_pllv2, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base, ptr %base2, align 4
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @clk_pllv2_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %num_parents, align 4
  %init5 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %init5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %init, ptr %init5, align 8
  %call7 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %11 = inttoptr i32 %call7 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then9 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv2_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv2, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  %or = or i32 %2, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or) #7, !srcloc !18
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end9, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pllv2_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv2, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  %and = and i32 %2, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and) #7, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv2_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv2, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  %add.ptr2 = getelementptr i8, ptr %1, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !17
  %add.ptr4 = getelementptr i8, ptr %1, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !17
  %add.ptr6 = getelementptr i8, ptr %1, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !17
  %and.i = and i32 %2, 4096
  %and1.i = and i32 %3, 15
  %and3.i = and i32 %4, 134217727
  %and4.i = shl i32 %5, 5
  %shr.i.i = ashr exact i32 %and4.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.not.i = icmp eq i32 %and.i, 0
  %ref_clk.0.v.i = select i1 %cmp5.not.i, i32 1, i32 2
  %ref_clk.0.i = shl i32 %parent_rate, %ref_clk.0.v.i
  %add.i = add nuw nsw i32 %and1.i, 1
  %div.i = sdiv i32 %ref_clk.0.i, %add.i
  %conv.i = sext i32 %div.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp7.i = icmp slt i32 %and4.i, 0
  %sub.i = sub nsw i32 0, %shr.i.i
  %cond12.i = select i1 %cmp7.i, i32 %sub.i, i32 %shr.i.i
  %conv13340.i = zext i32 %cond12.i to i64
  %mul14.i = mul nsw i64 %conv13340.i, %conv.i
  %add15.i = add nuw nsw i32 %and3.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul14.i)
  %cmp196.i = icmp ult i64 %mul14.i, 4294967296
  br i1 %cmp196.i, label %if.then200.i, label %if.else206.i, !prof !19

if.then200.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv201.i = trunc i64 %mul14.i to i32
  %div204.i = udiv i32 %conv201.i, %add15.i
  br label %__clk_pllv2_recalc_rate.exit

if.else206.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add15.i, i64 %mul14.i) #12, !srcloc !20
  %asmresult1.i.i = extractvalue { i64, i64 } %6, 1
  %extract.t347.i = trunc i64 %asmresult1.i.i to i32
  br label %__clk_pllv2_recalc_rate.exit

__clk_pllv2_recalc_rate.exit:                     ; preds = %if.else206.i, %if.then200.i
  %temp.0.off0.i = phi i32 [ %div204.i, %if.then200.i ], [ %extract.t347.i, %if.else206.i ]
  %and2.i = lshr i32 %3, 4
  %shr.i = and i32 %and2.i, 15
  %7 = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 5) #7
  %mul219.i = mul i32 %div.i, %7
  %8 = sub i32 0, %temp.0.off0.i
  %storemerge.off0.p.i = select i1 %cmp7.i, i32 %8, i32 %temp.0.off0.i
  %storemerge.off0.i = add i32 %storemerge.off0.p.i, %mul219.i
  ret i32 %storemerge.off0.i
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv2_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %mul.i = shl i32 %1, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %inc324.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %pdf.0323.i = phi i32 [ -1, %entry ], [ %inc324.i, %while.body.i.while.body.i_crit_edge ]
  %add.i = add nsw i32 %pdf.0323.i, 2
  %mul2.i = mul i32 %add.i, %rate
  %div.i = udiv i32 %mul2.i, %mul.i
  %inc.i = add nuw nsw i32 %inc324.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc324.i)
  %cmp.i = icmp ult i32 %inc324.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div.i)
  %cmp1.i = icmp slt i32 %div.i, 5
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.i)
  %cmp3.i = icmp sgt i32 %div.i, 15
  br i1 %cmp3.i, label %while.end.i.cleanup_crit_edge, label %if.end

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul5.i = mul i32 %inc.i, %rate
  %mul6.i = mul i32 %div.i, %mul.i
  %sub.i = sub i32 %mul5.i, %mul6.i
  %div7.i = udiv i32 %mul.i, 1000000
  %div188.i = udiv i32 %sub.i, %div7.i
  %shl197.i = shl i32 %div.i, 4
  %or198.i = or i32 %shl197.i, %inc324.i
  %and4.i = shl i32 %div188.i, 5
  %shr.i.i = ashr exact i32 %and4.i, 5
  %add.i7 = add nuw nsw i32 %inc324.i, 1
  %div.i8 = sdiv i32 %mul.i, %add.i7
  %conv.i9 = sext i32 %div.i8 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp7.i = icmp slt i32 %and4.i, 0
  %sub.i10 = sub nsw i32 0, %shr.i.i
  %cond12.i = select i1 %cmp7.i, i32 %sub.i10, i32 %shr.i.i
  %conv13340.i = zext i32 %cond12.i to i64
  %mul14.i = mul nsw i64 %conv13340.i, %conv.i9
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul14.i) #12, !srcloc !21
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul14.i, i64 %2, i32 0) #12, !srcloc !22
  %asmresult10.i.i39 = extractvalue { i64, i32 } %3, 0
  %extract = lshr i64 %asmresult10.i.i39, 18
  %extract.t = trunc i64 %extract to i32
  %and2.i = lshr i32 %or198.i, 4
  %shr.i43 = and i32 %and2.i, 15
  %4 = tail call i32 @llvm.umax.i32(i32 %shr.i43, i32 5) #7
  %mul219.i = mul i32 %div.i8, %4
  %5 = sub i32 0, %extract.t
  %storemerge.off0.p.i = select i1 %cmp7.i, i32 %5, i32 %extract.t
  %storemerge.off0.i = add i32 %storemerge.off0.p.i, %mul219.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %storemerge.off0.i, %if.end ], [ -22, %while.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv2_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv2, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mul.i = shl i32 %parent_rate, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %inc324.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %pdf.0323.i = phi i32 [ -1, %entry ], [ %inc324.i, %while.body.i.while.body.i_crit_edge ]
  %add.i = add nsw i32 %pdf.0323.i, 2
  %mul2.i = mul i32 %add.i, %rate
  %div.i = udiv i32 %mul2.i, %mul.i
  %inc.i = add nuw nsw i32 %inc324.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc324.i)
  %cmp.i = icmp ult i32 %inc324.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div.i)
  %cmp1.i = icmp slt i32 %div.i, 5
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.i)
  %cmp3.i = icmp sgt i32 %div.i, 15
  br i1 %cmp3.i, label %while.end.i.cleanup_crit_edge, label %if.end

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul5.i = mul i32 %inc.i, %rate
  %mul6.i = mul i32 %div.i, %mul.i
  %sub.i = sub i32 %mul5.i, %mul6.i
  %div7.i = udiv i32 %mul.i, 1000000
  %div188.i = udiv i32 %sub.i, %div7.i
  %shl197.i = shl i32 %div.i, 4
  %or198.i = or i32 %shl197.i, %inc324.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  %or = or i32 %2, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or) #7, !srcloc !18
  %add.ptr4 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or198.i) #7, !srcloc !18
  %add.ptr5 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 999999) #7, !srcloc !18
  %add.ptr6 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %div188.i) #7, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %while.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @clk_pllv2_ops, !1, !"clk_pllv2_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-pllv2.c", i32 234, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-pllv2.c", i32 216, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @clk_pllv2_prepare._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @clk_pllv2_prepare._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2033902}
!18 = !{i64 2033484}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2148604815, i64 2148605095, i64 2148605429, i64 2148605763}
!21 = !{i64 1118984, i64 1119011}
!22 = !{i64 1119679, i64 1119706, i64 1119739, i64 1119760, i64 1119787, i64 1119813}
