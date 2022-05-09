; ModuleID = '/llk/IR_all_yes/drivers/clk/rockchip/clk-half-divider.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-half-divider.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }

@clk_mux_ro_ops = external dso_local constant %struct.clk_ops, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_half_divider_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_half_divider_recalc_rate, ptr @clk_half_divider_round_rate, ptr null, ptr null, ptr null, ptr @clk_half_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"clk_half_divider_ops\00", align 1
@___asan_gen_.2 = private constant [43 x i8] c"../drivers/clk/rockchip/clk-half-divider.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 142, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @clk_half_divider_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_half_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_halfdiv(ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, ptr noundef %base, i32 noundef %muxdiv_offset, i8 noundef zeroext %mux_shift, i8 noundef zeroext %mux_width, i8 noundef zeroext %mux_flags, i8 noundef zeroext %div_shift, i8 noundef zeroext %div_width, i8 noundef zeroext %div_flags, i32 noundef %gate_offset, i8 noundef zeroext %gate_shift, i8 noundef zeroext %gate_flags, i32 noundef %flags, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %num_parents to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %num_parents)
  %cmp = icmp ugt i8 %num_parents, 1
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %base, i32 %muxdiv_offset
  %reg = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %mux_shift, ptr %shift, align 8
  %conv5 = zext i8 %mux_width to i32
  %notmask = shl nsw i32 -1, %conv5
  %sub = xor i32 %notmask, -1
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %mask, align 4
  %flags6 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %flags6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %mux_flags, ptr %flags6, align 1
  %lock7 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %lock7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lock, ptr %lock7, align 4
  %6 = and i8 %mux_flags, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool9.not, ptr @clk_mux_ops, ptr @clk_mux_ro_ops
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %mux.0 = phi ptr [ %call7.i.i, %if.end ], [ null, %entry.if.end10_crit_edge ]
  %mux_ops.0 = phi ptr [ %cond, %if.end ], [ null, %entry.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gate_offset)
  %cmp11 = icmp sgt i32 %gate_offset, -1
  br i1 %cmp11, label %if.then13, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then13:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i97 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 24) #7
  %tobool15.not = icmp eq ptr %call7.i.i97, null
  br i1 %tobool15.not, label %if.then13.err_gate_crit_edge, label %if.end17

if.then13.err_gate_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_gate

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %flags18 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i97, i32 0, i32 3
  %8 = ptrtoint ptr %flags18 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %gate_flags, ptr %flags18, align 1
  %add.ptr19 = getelementptr i8, ptr %base, i32 %gate_offset
  %reg20 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i97, i32 0, i32 1
  %9 = ptrtoint ptr %reg20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr19, ptr %reg20, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i97, i32 0, i32 2
  %10 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %gate_shift, ptr %bit_idx, align 8
  %lock21 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i97, i32 0, i32 4
  %11 = ptrtoint ptr %lock21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end17, %if.end10.if.end22_crit_edge
  %gate.0 = phi ptr [ %call7.i.i97, %if.end17 ], [ null, %if.end10.if.end22_crit_edge ]
  %gate_ops.0 = phi ptr [ @clk_gate_ops, %if.end17 ], [ null, %if.end10.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %div_width)
  %cmp24.not = icmp eq i8 %div_width, 0
  br i1 %cmp24.not, label %if.end22.if.end36_crit_edge, label %if.then26

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then26:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i98 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 28) #7
  %tobool28.not = icmp eq ptr %call7.i.i98, null
  br i1 %tobool28.not, label %if.then26.err_div_crit_edge, label %if.end30

if.then26.err_div_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_div

if.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %flags31 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i98, i32 0, i32 4
  %13 = ptrtoint ptr %flags31 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %div_flags, ptr %flags31, align 2
  %add.ptr32 = getelementptr i8, ptr %base, i32 %muxdiv_offset
  %reg33 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i98, i32 0, i32 1
  %14 = ptrtoint ptr %reg33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr32, ptr %reg33, align 4
  %shift34 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i98, i32 0, i32 2
  %15 = ptrtoint ptr %shift34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %div_shift, ptr %shift34, align 8
  %width = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i98, i32 0, i32 3
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %div_width, ptr %width, align 1
  %lock35 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i98, i32 0, i32 6
  %17 = ptrtoint ptr %lock35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %lock, ptr %lock35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end30, %if.end22.if.end36_crit_edge
  %div.0 = phi ptr [ %call7.i.i98, %if.end30 ], [ null, %if.end22.if.end36_crit_edge ]
  %div_ops.0 = phi ptr [ @clk_half_divider_ops, %if.end30 ], [ null, %if.end22.if.end36_crit_edge ]
  %call53 = tail call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %name, ptr noundef %parent_names, i32 noundef %conv, ptr noundef %mux.0, ptr noundef %mux_ops.0, ptr noundef %div.0, ptr noundef %div_ops.0, ptr noundef %gate.0, ptr noundef %gate_ops.0, i32 noundef %flags) #4
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end36.err_div_crit_edge, label %if.end56

if.end36.err_div_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_div

if.end56:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call53, i32 0, i32 1
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  br label %cleanup

err_div:                                          ; preds = %if.end36.err_div_crit_edge, %if.then26.err_div_crit_edge
  %hw.0 = phi ptr [ %call53, %if.end36.err_div_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then26.err_div_crit_edge ]
  tail call void @kfree(ptr noundef %gate.0) #4
  br label %err_gate

err_gate:                                         ; preds = %err_div, %if.then13.err_gate_crit_edge
  %hw.1 = phi ptr [ %hw.0, %err_div ], [ inttoptr (i32 -12 to ptr), %if.then13.err_gate_crit_edge ]
  tail call void @kfree(ptr noundef %mux.0) #4
  br label %cleanup

cleanup:                                          ; preds = %err_gate, %if.end56, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %hw.1, %err_gate ], [ %19, %if.end56 ], [ inttoptr (i32 -12 to ptr), %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_half_divider_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  %shift = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 4
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv
  %width = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %conv3 = zext i8 %7 to i32
  %notmask = shl nsw i32 -1, %conv3
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %mul = shl i32 %and, 1
  %add = add i32 %mul, 3
  %conv4 = zext i32 %parent_rate to i64
  %mul5 = shl nuw nsw i64 %conv4, 1
  %conv6 = zext i32 %add to i64
  %add7 = add nsw i64 %conv6, -1
  %sub8 = add nuw nsw i64 %add7, %mul5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub8)
  %cmp182 = icmp ult i64 %sub8, 4294967296
  br i1 %cmp182, label %if.then186, label %if.else192, !prof !13

if.then186:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv187 = trunc i64 %sub8 to i32
  %div190 = udiv i32 %conv187, %add
  br label %if.end196

if.else192:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %sub8) #8, !srcloc !14
  %asmresult1.i = extractvalue { i64, i64 } %8, 1
  %extract.t310 = trunc i64 %asmresult1.i to i32
  br label %if.end196

if.end196:                                        ; preds = %if.else192, %if.then186
  %_tmp.0.off0 = phi i32 [ %div190, %if.then186 ], [ %extract.t310, %if.else192 ]
  ret i32 %_tmp.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_half_divider_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %width, align 1
  %flags = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 2
  %4 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not.i = icmp eq i32 %rate, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 1, i32 %rate
  %conv.i = zext i8 %1 to i32
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub.i = xor i32 %notmask.i, -1
  %call.i = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #4
  %and.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end211.i

if.then2.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prate, align 4
  %conv3.i = zext i32 %7 to i64
  %mul.i = shl nuw nsw i64 %conv3.i, 1
  %conv4.i = zext i32 %spec.store.select.i to i64
  %add.i = add nsw i64 %conv4.i, -1
  %sub5.i = add nuw nsw i64 %mul.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub5.i)
  %cmp180.i = icmp ult i64 %sub5.i, 4294967296
  br i1 %cmp180.i, label %if.then184.i, label %if.else190.i, !prof !13

if.then184.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv185.i = trunc i64 %sub5.i to i32
  %div188.i = udiv i32 %conv185.i, %spec.store.select.i
  br label %if.end194.i

if.else190.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.store.select.i, i64 %sub5.i) #8, !srcloc !14
  %asmresult1.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t764.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.else190.i, %if.then184.i
  %_tmp.0.off0.i = phi i32 [ %div188.i, %if.then184.i ], [ %extract.t764.i, %if.else190.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %_tmp.0.off0.i)
  %cmp198.i = icmp ult i32 %_tmp.0.off0.i, 3
  %sub202.i = add i32 %_tmp.0.off0.i, -3
  %div203685.i = lshr i32 %sub202.i, 1
  %bestdiv.0.i = select i1 %cmp198.i, i32 0, i32 %div203685.i
  %9 = tail call i32 @llvm.umin.i32(i32 %bestdiv.0.i, i32 %sub.i) #4
  br label %clk_half_divider_bestdiv.exit

if.end211.i:                                      ; preds = %entry
  %div212.i = udiv i32 -1, %spec.store.select.i
  %10 = tail call i32 @llvm.umin.i32(i32 %div212.i, i32 %sub.i) #4
  %conv222.i = zext i32 %spec.store.select.i to i64
  %conv227.i = zext i32 %5 to i64
  %mul228.i = shl nuw nsw i64 %conv227.i, 1
  %11 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end211.i
  %i.0769.i = phi i32 [ 0, %if.end211.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %bestdiv.1768.i = phi i32 [ 0, %if.end211.i ], [ %bestdiv.2.i, %for.inc.i.for.body.i_crit_edge ]
  %best.0767.i = phi i32 [ 0, %if.end211.i ], [ %best.1.i, %for.inc.i.for.body.i_crit_edge ]
  %mul223.i = shl i32 %i.0769.i, 1
  %add224.i = add i32 %mul223.i, 3
  %conv225.i = zext i32 %add224.i to i64
  %mul226.i = mul nuw i64 %conv225.i, %conv222.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul226.i, i64 %mul228.i)
  %cmp229.i = icmp eq i64 %mul226.i, %mul228.i
  br i1 %cmp229.i, label %if.then231.i, label %if.end232.i

if.then231.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %prate, align 4
  br label %clk_half_divider_bestdiv.exit

if.end232.i:                                      ; preds = %for.body.i
  %call233.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #4
  %div239687.i = lshr i64 %mul226.i, 1
  %conv240.i = trunc i64 %div239687.i to i32
  %call241.i = tail call i32 @clk_hw_round_rate(ptr noundef %call233.i, i32 noundef %conv240.i) #4
  %conv243.i = zext i32 %call241.i to i64
  %mul244.i = shl nuw nsw i64 %conv243.i, 1
  %add248.i = add nsw i64 %conv225.i, -1
  %sub249.i = add nuw nsw i64 %mul244.i, %add248.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub249.i)
  %cmp453.i = icmp ult i64 %sub249.i, 4294967296
  br i1 %cmp453.i, label %if.then461.i, label %if.else467.i, !prof !13

if.then461.i:                                     ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv462.i = trunc i64 %sub249.i to i32
  %div465.i = udiv i32 %conv462.i, %add224.i
  br label %if.end471.i

if.else467.i:                                     ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add224.i, i64 %sub249.i) #8, !srcloc !14
  %asmresult1.i711.i = extractvalue { i64, i64 } %13, 1
  %extract.t760.i = trunc i64 %asmresult1.i711.i to i32
  br label %if.end471.i

if.end471.i:                                      ; preds = %if.else467.i, %if.then461.i
  %_tmp242.0.off0.i = phi i32 [ %div465.i, %if.then461.i ], [ %extract.t760.i, %if.else467.i ]
  br i1 %tobool.not.i.i, label %_is_best_half_div.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end471.i
  %sub.i713.i = sub i32 %spec.store.select.i, %_tmp242.0.off0.i
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.i713.i, i1 false) #4
  %sub3.i.i = sub i32 %spec.store.select.i, %best.0767.i
  %15 = tail call i32 @llvm.abs.i32(i32 %sub3.i.i, i1 false) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp11.i.i = icmp slt i32 %14, %15
  br i1 %cmp11.i.i, label %if.then.i.i.if.then476.i_crit_edge, label %if.then.i.i.for.inc.i_crit_edge

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i.i.if.then476.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then476.i

_is_best_half_div.exit.i:                         ; preds = %if.end471.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %_tmp242.0.off0.i)
  %cmp12.not.i.i = icmp uge i32 %spec.store.select.i, %_tmp242.0.off0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %_tmp242.0.off0.i, i32 %best.0767.i)
  %cmp13.i.i = icmp ugt i32 %_tmp242.0.off0.i, %best.0767.i
  %spec.select.i.i = and i1 %cmp12.not.i.i, %cmp13.i.i
  br i1 %spec.select.i.i, label %_is_best_half_div.exit.i.if.then476.i_crit_edge, label %_is_best_half_div.exit.i.for.inc.i_crit_edge

_is_best_half_div.exit.i.for.inc.i_crit_edge:     ; preds = %_is_best_half_div.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

_is_best_half_div.exit.i.if.then476.i_crit_edge:  ; preds = %_is_best_half_div.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then476.i

if.then476.i:                                     ; preds = %_is_best_half_div.exit.i.if.then476.i_crit_edge, %if.then.i.i.if.then476.i_crit_edge
  %16 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call241.i, ptr %prate, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then476.i, %_is_best_half_div.exit.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge
  %best.1.i = phi i32 [ %_tmp242.0.off0.i, %if.then476.i ], [ %best.0767.i, %_is_best_half_div.exit.i.for.inc.i_crit_edge ], [ %best.0767.i, %if.then.i.i.for.inc.i_crit_edge ]
  %bestdiv.2.i = phi i32 [ %i.0769.i, %if.then476.i ], [ %bestdiv.1768.i, %_is_best_half_div.exit.i.for.inc.i_crit_edge ], [ %bestdiv.1768.i, %if.then.i.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %i.0769.i, 1
  %cmp220.not.i = icmp ugt i32 %inc.i, %10
  br i1 %cmp220.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bestdiv.2.i)
  %tobool478.not.i = icmp eq i32 %bestdiv.2.i, 0
  br i1 %tobool478.not.i, label %if.then479.i, label %for.end.i.clk_half_divider_bestdiv.exit_crit_edge

for.end.i.clk_half_divider_bestdiv.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_half_divider_bestdiv.exit

if.then479.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call483.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #4
  %call484.i = tail call i32 @clk_hw_round_rate(ptr noundef %call483.i, i32 noundef 1) #4
  %17 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call484.i, ptr %prate, align 4
  br label %clk_half_divider_bestdiv.exit

clk_half_divider_bestdiv.exit:                    ; preds = %if.then479.i, %for.end.i.clk_half_divider_bestdiv.exit_crit_edge, %if.then231.i, %if.end194.i
  %retval.0.i = phi i32 [ %i.0769.i, %if.then231.i ], [ %9, %if.end194.i ], [ %bestdiv.2.i, %for.end.i.clk_half_divider_bestdiv.exit_crit_edge ], [ %sub.i, %if.then479.i ]
  %18 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prate, align 4
  %conv1 = zext i32 %19 to i64
  %mul = shl nuw nsw i64 %conv1, 1
  %mul2 = shl i32 %retval.0.i, 1
  %add = add i32 %mul2, 3
  %narrow = add i32 %mul2, 2
  %add4 = sext i32 %narrow to i64
  %sub = add nsw i64 %mul, %add4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp178 = icmp ult i64 %sub, 4294967296
  br i1 %cmp178, label %if.then182, label %if.else188, !prof !13

if.then182:                                       ; preds = %clk_half_divider_bestdiv.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv183 = trunc i64 %sub to i32
  %div186 = udiv i32 %conv183, %add
  br label %if.end192

if.else188:                                       ; preds = %clk_half_divider_bestdiv.exit
  call void @__sanitizer_cov_trace_pc() #6
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %sub) #8, !srcloc !14
  %asmresult1.i = extractvalue { i64, i64 } %20, 1
  %extract.t308 = trunc i64 %asmresult1.i to i32
  br label %if.end192

if.end192:                                        ; preds = %if.else188, %if.then182
  %_tmp.0.off0 = phi i32 [ %div186, %if.then182 ], [ %extract.t308, %if.else188 ]
  ret i32 %_tmp.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_half_divider_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %mul = shl nuw nsw i64 %conv, 1
  %conv1 = zext i32 %rate to i64
  %add = add nsw i64 %conv1, -1
  %sub = add nsw i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp171 = icmp ult i64 %sub, 4294967296
  br i1 %cmp171, label %if.then175, label %if.else181, !prof !13

if.then175:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv176 = trunc i64 %sub to i32
  %div179 = udiv i32 %conv176, %rate
  br label %if.end185

if.else181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %sub) #8, !srcloc !14
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  %extract.t380 = trunc i64 %asmresult1.i to i32
  br label %if.end185

if.end185:                                        ; preds = %if.else181, %if.then175
  %_tmp.0.off0 = phi i32 [ %div179, %if.then175 ], [ %extract.t380, %if.else181 ]
  %sub189 = add i32 %_tmp.0.off0, -3
  %div190352 = lshr i32 %sub189, 1
  %width = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %width, align 1
  %conv191 = zext i8 %2 to i32
  %notmask = shl nsw i32 -1, %conv191
  %sub193 = xor i32 %notmask, -1
  %3 = tail call i32 @llvm.umin.i32(i32 %div190352, i32 %sub193)
  %lock = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 6
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %tobool201.not = icmp eq ptr %5, null
  br i1 %tobool201.not, label %if.end185.if.end213_crit_edge, label %do.body203

if.end185.if.end213_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end213

do.body203:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #6
  %call209 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #4
  br label %if.end213

if.end213:                                        ; preds = %do.body203, %if.end185.if.end213_crit_edge
  %flags.0 = phi i32 [ %call209, %do.body203 ], [ 0, %if.end185.if.end213_crit_edge ]
  %flags214 = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %flags214 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags214, align 2
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool217.not = icmp eq i8 %8, 0
  br i1 %tobool217.not, label %if.else226, label %if.then218

if.then218:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width, align 1
  %conv220 = zext i8 %10 to i32
  %notmask354 = shl nsw i32 -1, %conv220
  %sub222 = xor i32 %notmask354, -1
  %shift = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift, align 4
  %conv223 = zext i8 %12 to i32
  %add224 = add nuw nsw i32 %conv223, 16
  %shl225 = shl i32 %sub222, %add224
  br label %if.end239

if.else226:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #6
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !11
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %width, align 1
  %conv231 = zext i8 %18 to i32
  %notmask353 = shl nsw i32 -1, %conv231
  %sub233 = xor i32 %notmask353, -1
  %shift234 = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %19 = ptrtoint ptr %shift234 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %shift234, align 4
  %conv235 = zext i8 %20 to i32
  %shl236 = shl i32 %sub233, %conv235
  %neg237 = xor i32 %shl236, -1
  %and238 = and i32 %16, %neg237
  br label %if.end239

if.end239:                                        ; preds = %if.else226, %if.then218
  %val.0 = phi i32 [ %shl225, %if.then218 ], [ %and238, %if.else226 ]
  %shift240 = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %21 = ptrtoint ptr %shift240 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shift240, align 4
  %conv241 = zext i8 %22 to i32
  %shl242 = shl i32 %3, %conv241
  %or243 = or i32 %shl242, %val.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %or243)
  %reg247 = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %24 = ptrtoint ptr %reg247 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg247, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #4, !srcloc !17
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock, align 4
  %tobool249.not = icmp eq ptr %27, null
  br i1 %tobool249.not, label %if.end239.if.end253_crit_edge, label %if.then250

if.end239.if.end253_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end253

if.then250:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %27, i32 noundef %flags.0) #4
  br label %if.end253

if.end253:                                        ; preds = %if.then250, %if.end239.if.end253_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @clk_half_divider_ops, !1, !"clk_half_divider_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/rockchip/clk-half-divider.c", i32 142, i32 29}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 4030836}
!12 = !{i64 2152538974}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148945802, i64 2148946082, i64 2148946416, i64 2148946750}
!15 = !{i64 2152572634}
!16 = !{i64 2152572879}
!17 = !{i64 4030418}
