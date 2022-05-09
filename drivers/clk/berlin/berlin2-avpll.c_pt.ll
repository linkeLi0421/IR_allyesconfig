; ModuleID = '/llk/IR_all_yes/drivers/clk/berlin/berlin2-avpll.c_pt.bc'
source_filename = "../drivers/clk/berlin/berlin2-avpll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.berlin2_avpll_vco = type { %struct.clk_hw, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.berlin2_avpll_channel = type { %struct.clk_hw, ptr, i8, i8 }

@berlin2_avpll_vco_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @berlin2_avpll_vco_enable, ptr @berlin2_avpll_vco_disable, ptr @berlin2_avpll_vco_is_enabled, ptr null, ptr null, ptr null, ptr @berlin2_avpll_vco_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@quirk_index = internal unnamed_addr constant [8 x i8] c"\00\06\05\04\03\02\01\07", section ".init.rodata", align 1
@berlin2_avpll_channel_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @berlin2_avpll_channel_enable, ptr @berlin2_avpll_channel_disable, ptr @berlin2_avpll_channel_is_enabled, ptr null, ptr null, ptr null, ptr @berlin2_avpll_channel_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vco_refdiv = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\02\04\03", [28 x i8] zeroinitializer }, align 32
@div_hdmi = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\02\04\06", [28 x i8] zeroinitializer }, align 32
@div_av1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\02\05\05", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"berlin2_avpll_vco_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 173, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [26 x i8] c"berlin2_avpll_channel_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 340, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"vco_refdiv\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 153, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"div_hdmi\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 248, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"div_av1\00", align 1
@___asan_gen_.14 = private constant [38 x i8] c"../drivers/clk/berlin/berlin2-avpll.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 249, i32 17 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @berlin2_avpll_vco_ops, ptr @berlin2_avpll_channel_ops, ptr @vco_refdiv, ptr @div_hdmi, ptr @div_av1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_avpll_vco_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin2_avpll_channel_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_refdiv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_hdmi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_av1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @berlin2_avpll_vco_register(ptr noundef %base, ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %vco_flags, i32 noundef %flags) local_unnamed_addr #0 section ".init.text" align 64 {
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
  call void @__sanitizer_cov_trace_pc() #8
  %base1 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %base1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base, ptr %base1, align 4
  %flags2 = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %vco_flags, ptr %flags2, align 8
  %init3 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %init3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %init, ptr %init3, align 8
  %7 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @berlin2_avpll_vco_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %flags5 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %11 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags5, align 4
  %call7 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @berlin2_avpll_channel_register(ptr noundef %base, ptr noundef %name, i8 noundef zeroext %index, ptr noundef %parent_name, i8 noundef zeroext %ch_flags, i32 noundef %flags) local_unnamed_addr #0 section ".init.text" align 64 {
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
  %base1 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %base1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base, ptr %base1, align 4
  %5 = and i8 %ch_flags, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr [8 x i8], ptr @quirk_index, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %.sink = phi i8 [ %7, %if.then3 ], [ %index, %if.end.if.end6_crit_edge ]
  %8 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %8, align 1
  %flags7 = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %flags7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %ch_flags, ptr %flags7, align 8
  %init8 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %init8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %init, ptr %init8, align 8
  %12 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @berlin2_avpll_channel_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %15 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_parents, align 4
  %flags10 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %16 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %flags, ptr %flags10, align 4
  %call12 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_vco_enable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %flags = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %reg.0.v = select i1 %tobool.not, i32 2, i32 32
  %reg.0 = or i32 %reg.0.v, %3
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @berlin2_avpll_vco_disable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %flags = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %reg.0.v = select i1 %tobool.not, i32 -3, i32 -33
  %reg.0 = and i32 %reg.0.v, %3
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_vco_is_enabled(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %flags = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %shr = lshr i32 %3, 4
  %spec.select = select i1 %tobool.not, i32 %3, i32 %shr
  %and3 = lshr i32 %spec.select, 1
  %and3.lobit = and i32 %and3, 1
  ret i32 %and3.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_vco_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %base = getelementptr inbounds %struct.berlin2_avpll_vco, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 63
  %arrayidx = getelementptr [4 x i8], ptr @vco_refdiv, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %5 to i32
  %and4 = lshr i32 %3, 6
  %shr5 = and i32 %and4, 255
  %conv6 = zext i32 %shr5 to i64
  %mul = mul nuw nsw i64 %conv6, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp177 = icmp ult i64 %mul, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !23

if.then181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv182 = trunc i64 %mul to i32
  %div185 = udiv i32 %conv182, %conv3
  br label %if.end191

if.else187:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv3, i64 %mul) #10, !srcloc !24
  %asmresult1.i = extractvalue { i64, i64 } %6, 1
  %extract.t302 = trunc i64 %asmresult1.i to i32
  br label %if.end191

if.end191:                                        ; preds = %if.else187, %if.then181
  %freq.0.off0 = phi i32 [ %div185, %if.then181 ], [ %extract.t302, %if.else187 ]
  ret i32 %freq.0.off0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_channel_enable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %index = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv = zext i8 %5 to i32
  %shl = shl i32 1048576, %conv
  %or = or i32 %shl, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %6) #6, !srcloc !22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @berlin2_avpll_channel_disable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %index = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv = zext i8 %5 to i32
  %shl = shl i32 1048576, %conv
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %6) #6, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_channel_is_enabled(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp eq i8 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !21
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 1
  %conv5 = zext i8 %7 to i32
  %shl = shl i32 1048576, %conv5
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin2_avpll_channel_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %base = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %index = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv3 = zext i8 %5 to i32
  %shl = shl i32 131072, %conv3
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.if.else335_crit_edge, label %if.end

entry.if.else335_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else335

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add = shl nuw nsw i32 %conv3, 2
  %mul = add nuw nsw i32 %add, 60
  %add.ptr9 = getelementptr i8, ptr %7, i32 %mul
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !21
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %flags = getelementptr inbounds %struct.berlin2_avpll_channel, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp16 = icmp eq i8 %14, 0
  %shr = lshr i32 %9, 4
  %spec.select = select i1 %cmp16, i32 %shr, i32 %9
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end.if.end19_crit_edge
  %reg.0 = phi i32 [ %9, %if.end.if.end19_crit_edge ], [ %spec.select, %land.lhs.true ]
  %and20 = and i32 %reg.0, 131071
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %index, align 1
  %conv24 = zext i8 %18 to i32
  %add25 = shl nuw nsw i32 %conv24, 2
  %mul26 = add nuw nsw i32 %add25, 92
  %add.ptr27 = getelementptr i8, ptr %16, i32 %mul26
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !21
  %20 = and i32 %19, -65280
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %conv31 = zext i32 %21 to i64
  %mul32 = mul nuw nsw i64 %conv31, %conv
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp35 = icmp eq i8 %23, 7
  br i1 %cmp35, label %if.end19.if.else335_crit_edge, label %if.end38

if.end19.if.else335_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else335

if.end38:                                         ; preds = %if.end19
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %25, i32 44
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #6, !srcloc !21
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %shr44 = lshr i32 %27, 7
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %index, align 1
  %conv46 = zext i8 %29 to i32
  %mul47 = mul nuw nsw i32 %conv46, 3
  %shr48 = lshr i32 %shr44, %mul47
  %and49 = and i32 %shr48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end38.if.end55_crit_edge, label %if.then51

if.end38.if.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then51:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %and52 = and i32 %shr48, 3
  %arrayidx = getelementptr [4 x i8], ptr @div_hdmi, i32 0, i32 %and52
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv53 = zext i8 %31 to i32
  %mul54 = mul nuw nsw i32 %and20, %conv53
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end38.if.end55_crit_edge
  %divider.0 = phi i32 [ %mul54, %if.then51 ], [ %and20, %if.end38.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp58 = icmp eq i8 %29, 0
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr63 = getelementptr i8, ptr %33, i32 44
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #6, !srcloc !21
  %35 = lshr i32 %34, 4
  %shr66 = and i32 %35, 15
  br label %if.end76

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr69 = getelementptr i8, ptr %33, i32 48
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #6, !srcloc !21
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %index, align 1
  %conv73 = zext i8 %39 to i32
  %40 = mul nuw nsw i32 %conv73, 3
  %mul74 = add nsw i32 %40, -3
  %shr75 = lshr i32 %37, %mul74
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then60
  %reg.1 = phi i32 [ %shr66, %if.then60 ], [ %shr75, %if.else ]
  %and77 = and i32 %reg.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end84_crit_edge, label %if.then79

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %and80 = and i32 %reg.1, 3
  %arrayidx81 = getelementptr [4 x i8], ptr @div_av1, i32 0, i32 %and80
  %41 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %42 to i32
  %mul83 = mul i32 %divider.0, %conv82
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.end76.if.end84_crit_edge
  %divider.1 = phi i32 [ %mul83, %if.then79 ], [ %divider.0, %if.end76.if.end84_crit_edge ]
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp87 = icmp ult i8 %44, 2
  br i1 %cmp87, label %if.then89, label %if.else100

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr92 = getelementptr i8, ptr %46, i32 48
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #6, !srcloc !21
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %index, align 1
  %conv96 = zext i8 %50 to i32
  %mul97 = mul nuw nsw i32 %conv96, 7
  %add98 = add nuw nsw i32 %mul97, 18
  %shr99 = lshr i32 %48, %add98
  br label %if.end123

if.else100:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %44)
  %cmp103 = icmp ult i8 %44, 7
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  br i1 %cmp103, label %if.then105, label %if.else116

if.then105:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr108 = getelementptr i8, ptr %52, i32 52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #6, !srcloc !21
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %index, align 1
  %conv112 = zext i8 %56 to i32
  %57 = mul nuw nsw i32 %conv112, 7
  %mul114 = add nsw i32 %57, -14
  %shr115 = lshr i32 %54, %mul114
  br label %if.end123

if.else116:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr119 = getelementptr i8, ptr %52, i32 56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #6, !srcloc !21
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %60)
  %.pr = load i8, ptr %index, align 1
  br label %if.end123

if.end123:                                        ; preds = %if.else116, %if.then105, %if.then89
  %61 = phi i8 [ %56, %if.then105 ], [ %.pr, %if.else116 ], [ %50, %if.then89 ]
  %reg.2 = phi i32 [ %shr115, %if.then105 ], [ %59, %if.else116 ], [ %shr99, %if.then89 ]
  %and124 = and i32 %reg.2, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  %mul127 = select i1 %tobool125.not, i32 1, i32 %and124
  %spec.select479 = mul i32 %mul127, %divider.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %61)
  %cmp131 = icmp ult i8 %61, 6
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  br i1 %cmp131, label %if.then133, label %if.else144

if.then133:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr136 = getelementptr i8, ptr %63, i32 56
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #6, !srcloc !21
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %index, align 1
  %conv140 = zext i8 %67 to i32
  %mul141 = shl nuw nsw i32 %conv140, 2
  %add142 = add nuw nsw i32 %mul141, 7
  %shr143 = lshr i32 %65, %add142
  br label %if.end150

if.else144:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr147 = getelementptr i8, ptr %63, i32 60
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #6, !srcloc !21
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  br label %if.end150

if.end150:                                        ; preds = %if.else144, %if.then133
  %reg.3 = phi i32 [ %shr143, %if.then133 ], [ %69, %if.else144 ]
  %and151 = and i32 %reg.3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool154.not = icmp ne i32 %and151, 0
  %not.tobool125.not = xor i1 %tobool125.not, true
  %or.cond = select i1 %not.tobool125.not, i1 %tobool154.not, i1 false
  %mul156 = zext i1 %or.cond to i64
  %spec.select505 = shl nuw nsw i64 %mul32, %mul156
  br label %if.else335

if.else335:                                       ; preds = %if.end150, %if.end19.if.else335_crit_edge, %entry.if.else335_crit_edge
  %freq.0 = phi i64 [ %conv, %entry.if.else335_crit_edge ], [ %mul32, %if.end19.if.else335_crit_edge ], [ %spec.select505, %if.end150 ]
  %divider.3 = phi i32 [ 1, %entry.if.else335_crit_edge ], [ %and20, %if.end19.if.else335_crit_edge ], [ %spec.select479, %if.end150 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %freq.0)
  %cmp337 = icmp ult i64 %freq.0, 4294967296
  br i1 %cmp337, label %if.then341, label %if.else347, !prof !23

if.then341:                                       ; preds = %if.else335
  call void @__sanitizer_cov_trace_pc() #8
  %conv342 = trunc i64 %freq.0 to i32
  %div345 = udiv i32 %conv342, %divider.3
  br label %if.end351

if.else347:                                       ; preds = %if.else335
  call void @__sanitizer_cov_trace_pc() #8
  %70 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divider.3, i64 %freq.0) #10, !srcloc !24
  %asmresult1.i = extractvalue { i64, i64 } %70, 1
  %extract.t508 = trunc i64 %asmresult1.i to i32
  br label %if.end351

if.end351:                                        ; preds = %if.else347, %if.then341
  %freq.1.off0 = phi i32 [ %div345, %if.then341 ], [ %extract.t508, %if.else347 ]
  ret i32 %freq.1.off0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @berlin2_avpll_vco_ops, !1, !"berlin2_avpll_vco_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/berlin/berlin2-avpll.c", i32 173, i32 29}
!2 = !{ptr @vco_refdiv, !3, !"vco_refdiv", i1 false, i1 false}
!3 = !{!"../drivers/clk/berlin/berlin2-avpll.c", i32 153, i32 11}
!4 = !{ptr @quirk_index, !5, !"quirk_index", i1 false, i1 false}
!5 = !{!"../drivers/clk/berlin/berlin2-avpll.c", i32 354, i32 17}
!6 = !{ptr @berlin2_avpll_channel_ops, !7, !"berlin2_avpll_channel_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/berlin/berlin2-avpll.c", i32 340, i32 29}
!8 = !{ptr @div_hdmi, !9, !"div_hdmi", i1 false, i1 false}
!9 = !{!"../drivers/clk/berlin/berlin2-avpll.c", i32 248, i32 17}
!10 = !{ptr @div_av1, !11, !"div_av1", i1 false, i1 false}
!11 = !{!"../drivers/clk/berlin/berlin2-avpll.c", i32 249, i32 17}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 4035878}
!22 = !{i64 4035460}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2148950844, i64 2148951124, i64 2148951458, i64 2148951792}
