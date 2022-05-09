; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-pfd.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pfd = type { %struct.clk_hw, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pfd_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pfd_enable, ptr @clk_pfd_disable, ptr @clk_pfd_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pfd_recalc_rate, ptr @clk_pfd_round_rate, ptr null, ptr null, ptr null, ptr @clk_pfd_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"clk_pfd_ops\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../drivers/clk/imx/clk-pfd.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 115, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @clk_pfd_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pfd_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pfd(ptr noundef %name, ptr noundef %parent_name, ptr noundef %reg, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg2 = getelementptr inbounds %struct.clk_pfd, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reg, ptr %reg2, align 4
  %idx3 = getelementptr inbounds %struct.clk_pfd, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %idx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %idx, ptr %idx3, align 8
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @clk_pfd_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %init6 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %init6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %init, ptr %init6, align 8
  %call8 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %12 = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then10 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
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
define internal i32 @clk_pfd_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %idx, align 4
  %conv = zext i8 %1 to i32
  %add = shl nuw nsw i32 %conv, 3
  %sub = or i32 %add, 7
  %shl = shl nuw i32 1, %sub
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %reg = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #6, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pfd_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %idx, align 4
  %conv = zext i8 %1 to i32
  %add = shl nuw nsw i32 %conv, 3
  %sub = or i32 %add, 7
  %shl = shl nuw i32 1, %sub
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %reg = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pfd_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !12
  %idx = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %idx, align 4
  %conv = zext i8 %4 to i32
  %add = shl nuw nsw i32 %conv, 3
  %sub = or i32 %add, 7
  %5 = xor i32 %2, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = lshr i32 %6, %sub
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pfd_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %reg = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !12
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %idx = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %idx, align 4
  %conv3 = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv3, 3
  %shr = lshr i32 %3, %mul
  %conv4 = and i32 %shr, 63
  %mul5 = mul nuw nsw i64 %conv, 18
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul5)
  %cmp177 = icmp ult i64 %mul5, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !13

if.then181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv182 = trunc i64 %mul5 to i32
  %div185 = udiv i32 %conv182, %conv4
  br label %if.end191

if.else187:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv4, i64 %mul5) #10, !srcloc !14
  %asmresult1.i = extractvalue { i64, i64 } %6, 1
  %extract.t301 = trunc i64 %asmresult1.i to i32
  br label %if.end191

if.end191:                                        ; preds = %if.else187, %if.then181
  %tmp1.0.off0 = phi i32 [ %div185, %if.then181 ], [ %extract.t301, %if.else187 ]
  ret i32 %tmp1.0.off0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pfd_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %conv = zext i32 %1 to i64
  %mul = mul nuw nsw i64 %conv, 18
  %div586 = lshr i32 %rate, 1
  %conv1 = zext i32 %div586 to i64
  %add = add nuw nsw i64 %mul, %conv1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp171 = icmp ult i64 %add, 4294967296
  br i1 %cmp171, label %if.then175, label %if.else181, !prof !13

if.then175:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv176 = trunc i64 %add to i32
  %div179 = udiv i32 %conv176, %rate
  br label %if.end185

if.else181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %add) #10, !srcloc !14
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  %extract.t664 = trunc i64 %asmresult1.i to i32
  br label %if.end185

if.end185:                                        ; preds = %if.else181, %if.then175
  %tmp.0.off0 = phi i32 [ %div179, %if.then175 ], [ %extract.t664, %if.else181 ]
  %conv188 = and i32 %tmp.0.off0, 255
  %3 = call i32 @llvm.umin.i32(i32 %conv188, i32 35)
  %4 = call i32 @llvm.umax.i32(i32 %3, i32 12)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp403 = icmp ult i64 %mul, 4294967296
  br i1 %cmp403, label %if.then411, label %if.else417, !prof !13

if.then411:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #8
  %conv412 = trunc i64 %mul to i32
  %div415 = udiv i32 %conv412, %4
  br label %if.end421

if.else417:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %mul) #10, !srcloc !14
  %asmresult1.i614 = extractvalue { i64, i64 } %5, 1
  %extract.t668 = trunc i64 %asmresult1.i614 to i32
  br label %if.end421

if.end421:                                        ; preds = %if.else417, %if.then411
  %tmp.1.off0 = phi i32 [ %div415, %if.then411 ], [ %extract.t668, %if.else417 ]
  ret i32 %tmp.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pfd_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %mul = mul nuw nsw i64 %conv, 18
  %div296 = lshr i32 %rate, 1
  %conv2 = zext i32 %div296 to i64
  %add = add nuw nsw i64 %mul, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp172 = icmp ult i64 %add, 4294967296
  br i1 %cmp172, label %if.then176, label %if.else182, !prof !13

if.then176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv177 = trunc i64 %add to i32
  %div180 = udiv i32 %conv177, %rate
  br label %if.end186

if.else182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %add) #10, !srcloc !14
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  %extract.t322 = trunc i64 %asmresult1.i to i32
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then176
  %tmp1.0.off0 = phi i32 [ %div180, %if.then176 ], [ %extract.t322, %if.else182 ]
  %conv189 = and i32 %tmp1.0.off0, 255
  %1 = tail call i32 @llvm.umin.i32(i32 %conv189, i32 35)
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 12)
  %idx = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %idx, align 4
  %conv200 = zext i8 %4 to i32
  %mul201 = shl nuw nsw i32 %conv200, 3
  %shl202 = shl i32 63, %mul201
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl202)
  %reg = getelementptr inbounds %struct.clk_pfd, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %add.ptr203 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 %5) #6, !srcloc !11
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %idx, align 4
  %conv206 = zext i8 %9 to i32
  %mul207 = shl nuw nsw i32 %conv206, 3
  %shl208 = shl i32 %2, %mul207
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl208)
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  %add.ptr210 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210, i32 %10) #6, !srcloc !11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @clk_pfd_ops, !1, !"clk_pfd_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-pfd.c", i32 115, i32 29}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 4027773}
!12 = !{i64 4028191}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148943157, i64 2148943437, i64 2148943771, i64 2148944105}
