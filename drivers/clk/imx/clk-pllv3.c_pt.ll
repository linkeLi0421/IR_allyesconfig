; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-pllv3.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pllv3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pllv3 = type { %struct.clk_hw, ptr, i32, i8, i32, i32, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pllv3_sys_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_sys_recalc_rate, ptr @clk_pllv3_sys_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv3_sys_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_pllv3_vf610_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_vf610_recalc_rate, ptr @clk_pllv3_vf610_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv3_vf610_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_pllv3_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_recalc_rate, ptr @clk_pllv3_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv3_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_pllv3_av_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_av_recalc_rate, ptr @clk_pllv3_av_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv3_av_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_pllv3_enet_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pllv3_prepare, ptr @clk_pllv3_unprepare, ptr @clk_pllv3_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv3_enet_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/imx/clk-pllv3.c\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"clk_pllv3_sys_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 204, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"clk_pllv3_vf610_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 386, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"clk_pllv3_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 149, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"clk_pllv3_av_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 293, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"clk_pllv3_enet_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 403, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [31 x i8] c"../drivers/clk/imx/clk-pllv3.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 68, i32 9 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @clk_pllv3_sys_ops, ptr @clk_pllv3_vf610_ops, ptr @clk_pllv3_ops, ptr @clk_pllv3_av_ops, ptr @clk_pllv3_enet_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllv3_sys_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllv3_vf610_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllv3_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllv3_av_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllv3_enet_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pllv3(i32 noundef %type, ptr noundef %name, ptr noundef %parent_name, ptr noundef %base, i32 noundef %div_mask) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 44) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_bit = getelementptr inbounds %struct.clk_pllv3, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %power_bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %power_bit, align 8
  %num_offset = getelementptr inbounds %struct.clk_pllv3, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %num_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %num_offset, align 4
  %denom_offset = getelementptr inbounds %struct.clk_pllv3, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %denom_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %denom_offset, align 8
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 7, label %sw.bb2
    i32 3, label %sw.bb5
    i32 2, label %if.end.sw.bb6_crit_edge
    i32 9, label %sw.bb7
    i32 4, label %if.end.sw.bb10_crit_edge
    i32 6, label %sw.bb11
    i32 5, label %sw.bb13
    i32 8, label %sw.bb15
  ]

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %num_offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %num_offset, align 4
  %9 = ptrtoint ptr %denom_offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 48, ptr %denom_offset, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div_shift = getelementptr inbounds %struct.clk_pllv3, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %div_shift to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %div_shift, align 4
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb5, %if.end.sw.bb6_crit_edge
  %powerup_set = getelementptr inbounds %struct.clk_pllv3, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %powerup_set to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %powerup_set, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %num_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %num_offset, align 4
  %13 = ptrtoint ptr %denom_offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 48, ptr %denom_offset, align 8
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb7, %if.end.sw.bb10_crit_edge
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %power_bit to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %power_bit, align 8
  %ref_clock = getelementptr inbounds %struct.clk_pllv3, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %ref_clock to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000000000, ptr %ref_clock, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ref_clock14 = getelementptr inbounds %struct.clk_pllv3, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %ref_clock14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 500000000, ptr %ref_clock14, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %power_bit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1048576, ptr %power_bit, align 8
  %18 = ptrtoint ptr %num_offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %num_offset, align 4
  %19 = ptrtoint ptr %denom_offset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 48, ptr %denom_offset, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb10, %sw.bb6, %sw.bb2, %if.end.sw.epilog_crit_edge
  %ops.0 = phi ptr [ @clk_pllv3_ops, %sw.default ], [ @clk_pllv3_av_ops, %sw.bb15 ], [ @clk_pllv3_enet_ops, %sw.bb13 ], [ @clk_pllv3_enet_ops, %sw.bb11 ], [ @clk_pllv3_av_ops, %sw.bb10 ], [ @clk_pllv3_ops, %sw.bb6 ], [ @clk_pllv3_vf610_ops, %sw.bb2 ], [ @clk_pllv3_sys_ops, %if.end.sw.epilog_crit_edge ]
  %base19 = getelementptr inbounds %struct.clk_pllv3, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %base19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %base, ptr %base19, align 4
  %div_mask20 = getelementptr inbounds %struct.clk_pllv3, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %div_mask20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div_mask, ptr %div_mask20, align 8
  %22 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %name, ptr %init, align 4
  %ops22 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %23 = ptrtoint ptr %ops22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ops.0, ptr %ops22, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %25 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %26 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %num_parents, align 4
  %init24 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %init24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %init, ptr %init24, align 8
  %call26 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %sw.epilog.cleanup_crit_edge, label %if.then28

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %28 = inttoptr i32 %call26 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %28, %if.then28 ], [ %call7.i.i, %sw.epilog.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
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
define internal i32 @clk_pllv3_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %powerup_set = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %powerup_set to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %powerup_set, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %power_bit2 = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %power_bit2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_bit2, align 4
  %or = or i32 %7, %3
  %neg = xor i32 %7, -1
  %and = and i32 %3, %neg
  %val.0 = select i1 %tobool.not, i32 %and, i32 %or
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !23
  %call4 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %hw)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pllv3_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %powerup_set = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %powerup_set to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %powerup_set, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %power_bit2 = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %power_bit2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_bit2, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %3, %neg
  %or = or i32 %7, %3
  %val.0 = select i1 %tobool.not, i32 %or, i32 %and
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_is_prepared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %.mask = lshr i32 %2, 7
  %.mask.lobit = and i32 %.mask, 1
  ret i32 %.mask.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_sys_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %div_mask = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_mask, align 4
  %and = and i32 %3, %5
  %mul = mul i32 %and, %parent_rate
  %div24 = lshr i32 %mul, 1
  ret i32 %div24
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_pllv3_sys_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %mul = mul i32 %1, 54
  %div18 = lshr exact i32 %mul, 1
  %mul1 = mul i32 %1, 108
  %div219 = lshr exact i32 %mul1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div219, i32 %rate)
  %cmp = icmp ult i32 %div219, %rate
  %2 = tail call i32 @llvm.umax.i32(i32 %div18, i32 %rate)
  %rate.addr.0 = select i1 %cmp, i32 %div219, i32 %2
  %mul7 = shl i32 %rate.addr.0, 1
  %3 = urem i32 %mul7, %1
  %mul9 = sub i32 %mul7, %3
  %div1020 = lshr i32 %mul9, 1
  ret i32 %div1020
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_sys_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %parent_rate, 54
  %div23 = lshr exact i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div23, i32 %rate)
  %cmp = icmp ugt i32 %div23, %rate
  %mul1 = mul i32 %parent_rate, 108
  %div224 = lshr exact i32 %mul1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div224, i32 %rate)
  %cmp4 = icmp ult i32 %div224, %rate
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul5 = shl i32 %rate, 1
  %div6 = udiv i32 %mul5, %parent_rate
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %div_mask = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_mask, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %3, %neg
  %or = or i32 %and, %div6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !23
  %call9 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_pllv3_wait_lock(ptr nocapture noundef readonly %pll) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %pll, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %power_bit = getelementptr inbounds %struct.clk_pllv3, ptr %pll, i32 0, i32 2
  %4 = ptrtoint ptr %power_bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_bit, align 4
  %and = and i32 %3, %5
  %powerup_set = getelementptr inbounds %struct.clk_pllv3, ptr %pll, i32 0, i32 3
  %6 = ptrtoint ptr %powerup_set to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %powerup_set, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp ne i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %or.cond53 = select i1 %tobool.not, i1 true, i1 %tobool1.not
  %or.cond54 = select i1 %or.cond.not, i1 %or.cond53, i1 false
  br i1 %or.cond54, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call6, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 69) #7
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !21
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool21.not56 = icmp sgt i32 %11, -1
  br i1 %tobool21.not56, label %if.end.land.lhs.true25_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.land.lhs.true25_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.then36.land.lhs.true25_crit_edge, %if.end.land.lhs.true25_crit_edge
  %call26 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call26, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %if.then29, label %if.then36

if.then29:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !21
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  br label %for.end

if.then36:                                        ; preds = %land.lhs.true25
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !21
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %tobool21.not = icmp sgt i32 %19, -1
  br i1 %tobool21.not, label %if.then36.land.lhs.true25_crit_edge, label %if.then36.for.end_crit_edge

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then36.land.lhs.true25_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true25

for.end:                                          ; preds = %if.then36.for.end_crit_edge, %if.then29, %if.end.for.end_crit_edge
  %val.0 = phi i32 [ %15, %if.then29 ], [ %11, %if.end.for.end_crit_edge ], [ %19, %if.then36.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool40.not.inv = icmp slt i32 %val.0, 0
  %cond = select i1 %tobool40.not.inv, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_vf610_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %num_offset = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %num_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_offset, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !21
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %denom_offset = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 8
  %8 = ptrtoint ptr %denom_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %denom_offset, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !21
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !21
  %div_mask = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 4
  %15 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %div_mask, align 4
  %conv.i = zext i32 %parent_rate to i64
  %conv1.i = zext i32 %5 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp168.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !24

if.then172.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv173.i = trunc i64 %mul.i to i32
  %div176.i = udiv i32 %conv173.i, %11
  br label %clk_pllv3_vf610_mf_to_rate.exit

if.else178.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %mul.i) #11, !srcloc !25
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  %extract.t294.i = trunc i64 %asmresult1.i.i to i32
  br label %clk_pllv3_vf610_mf_to_rate.exit

clk_pllv3_vf610_mf_to_rate.exit:                  ; preds = %if.else178.i, %if.then172.i
  %temp64.0.off0.i = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t294.i, %if.else178.i ]
  %18 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 20, i32 22
  %mul184.i = mul i32 %cond, %parent_rate
  %conv187.i = add i32 %temp64.0.off0.i, %mul184.i
  ret i32 %conv187.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_vf610_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %mul.i = mul i32 %1, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %rate)
  %cmp.not.i = icmp ugt i32 %mul.i, %rate
  %cond.i = select i1 %cmp.not.i, i32 20, i32 22
  %mul2.i = mul i32 %cond.i, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2.i, i32 %rate)
  %cmp3.not.i = icmp ult i32 %mul2.i, %rate
  br i1 %cmp3.not.i, label %if.else.i, label %entry.clk_pllv3_vf610_mf_to_rate.exit_crit_edge

entry.clk_pllv3_vf610_mf_to_rate.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_pllv3_vf610_mf_to_rate.exit

if.else.i:                                        ; preds = %entry
  %add.i = or i32 %cond.i, 1
  %mul5.i = mul i32 %add.i, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5.i, i32 %rate)
  %cmp6.not.i = icmp ugt i32 %mul5.i, %rate
  br i1 %cmp6.not.i, label %if.else10.i, label %if.else.i.clk_pllv3_vf610_mf_to_rate.exit_crit_edge

if.else.i.clk_pllv3_vf610_mf_to_rate.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_pllv3_vf610_mf_to_rate.exit

if.else10.i:                                      ; preds = %if.else.i
  %sub13.i = sub i32 %rate, %mul2.i
  %conv.i = zext i32 %sub13.i to i64
  %mul16.i = mul nuw nsw i64 %conv.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul16.i)
  %cmp164.i.i.i = icmp ult i64 %mul16.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !24

if.then168.i.i.i:                                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul16.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %1
  br label %clk_pllv3_vf610_mf_to_rate.exit

if.else174.i.i.i:                                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul16.i) #11, !srcloc !25
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %2, 1
  %extract.t30.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %clk_pllv3_vf610_mf_to_rate.exit

clk_pllv3_vf610_mf_to_rate.exit:                  ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.else.i.clk_pllv3_vf610_mf_to_rate.exit_crit_edge, %entry.clk_pllv3_vf610_mf_to_rate.exit_crit_edge
  %.sink.i = phi i32 [ 0, %entry.clk_pllv3_vf610_mf_to_rate.exit_crit_edge ], [ 1073741822, %if.else.i.clk_pllv3_vf610_mf_to_rate.exit_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t30.i, %if.else174.i.i.i ]
  %conv.i2 = zext i32 %1 to i64
  %conv1.i = zext i32 %.sink.i to i64
  %mul.i3 = mul nuw i64 %conv1.i, %conv.i2
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9223372028264841208, i64 %mul.i3, i32 0) #11, !srcloc !26
  %asmresult.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9223372028264841208, i64 %mul.i3, i64 %asmresult.i.i, i32 %asmresult4.i.i) #11, !srcloc !27
  %asmresult10.i.i = extractvalue { i64, i32 } %4, 0
  %div162.i6 = lshr i64 %asmresult10.i.i, 29
  %extract.t295.i = trunc i64 %div162.i6 to i32
  %conv187.i = add i32 %mul2.i, %extract.t295.i
  ret i32 %conv187.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_vf610_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = mul i32 %parent_rate, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %rate)
  %cmp.not.i = icmp ugt i32 %mul.i, %rate
  %cond.i = select i1 %cmp.not.i, i32 20, i32 22
  %mul2.i = mul i32 %cond.i, %parent_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2.i, i32 %rate)
  %cmp3.not.i = icmp ult i32 %mul2.i, %rate
  br i1 %cmp3.not.i, label %if.else.i, label %entry.clk_pllv3_vf610_rate_to_mf.exit_crit_edge

entry.clk_pllv3_vf610_rate_to_mf.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_pllv3_vf610_rate_to_mf.exit

if.else.i:                                        ; preds = %entry
  %add.i = or i32 %cond.i, 1
  %mul5.i = mul i32 %add.i, %parent_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5.i, i32 %rate)
  %cmp6.not.i = icmp ugt i32 %mul5.i, %rate
  br i1 %cmp6.not.i, label %if.else10.i, label %if.else.i.clk_pllv3_vf610_rate_to_mf.exit_crit_edge

if.else.i.clk_pllv3_vf610_rate_to_mf.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_pllv3_vf610_rate_to_mf.exit

if.else10.i:                                      ; preds = %if.else.i
  %sub13.i = sub i32 %rate, %mul2.i
  %conv.i = zext i32 %sub13.i to i64
  %mul16.i = mul nuw nsw i64 %conv.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul16.i)
  %cmp164.i.i.i = icmp ult i64 %mul16.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !24

if.then168.i.i.i:                                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul16.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %parent_rate
  br label %clk_pllv3_vf610_rate_to_mf.exit

if.else174.i.i.i:                                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %mul16.i) #11, !srcloc !25
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %0, 1
  %extract.t30.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %clk_pllv3_vf610_rate_to_mf.exit

clk_pllv3_vf610_rate_to_mf.exit:                  ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.else.i.clk_pllv3_vf610_rate_to_mf.exit_crit_edge, %entry.clk_pllv3_vf610_rate_to_mf.exit_crit_edge
  %.sink.i = phi i32 [ 0, %entry.clk_pllv3_vf610_rate_to_mf.exit_crit_edge ], [ 1073741822, %if.else.i.clk_pllv3_vf610_rate_to_mf.exit_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t30.i, %if.else174.i.i.i ]
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !21
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %div_mask = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div_mask, align 4
  %neg = xor i32 %6, -1
  %and = and i32 %4, %neg
  %or = or i32 %6, %4
  %val.0 = select i1 %cmp.not.i, i32 %and, i32 %or
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !23
  %10 = tail call i32 @llvm.bswap.i32(i32 %.sink.i)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %num_offset = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 7
  %13 = ptrtoint ptr %num_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_offset, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #7, !srcloc !23
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %denom_offset = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 8
  %17 = ptrtoint ptr %denom_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %denom_offset, align 4
  %add.ptr7 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -193) #7, !srcloc !23
  %call8 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %hw)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %div_shift = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %div_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_shift, align 4
  %shr = lshr i32 %3, %5
  %div_mask = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %div_mask, align 4
  %and = and i32 %shr, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %cond.v = select i1 %cmp, i32 22, i32 20
  %cond = mul i32 %cond.v, %parent_rate
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_pllv3_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %mul = mul i32 %1, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp.not = icmp ugt i32 %mul, %rate
  %mul2 = mul i32 %1, 20
  %cond = select i1 %cmp.not, i32 %mul2, i32 %mul
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %parent_rate, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp = icmp eq i32 %mul, %rate
  br i1 %cmp, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.else:                                          ; preds = %entry
  %mul1 = mul i32 %parent_rate, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1, i32 %rate)
  %cmp2 = icmp eq i32 %mul1, %rate
  br i1 %cmp2, label %if.else.if.end5_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %div.0 = phi i32 [ 1, %entry.if.end5_crit_edge ], [ 0, %if.else.if.end5_crit_edge ]
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %div_mask = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_mask, align 4
  %div_shift = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 5
  %6 = ptrtoint ptr %div_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %div_shift, align 4
  %shl = shl i32 %5, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %shl8 = shl nuw i32 %div.0, %7
  %or = or i32 %and, %shl8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !23
  %call10 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end5 ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_av_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %num_offset = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %num_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_offset, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !21
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %denom_offset = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 8
  %8 = ptrtoint ptr %denom_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %denom_offset, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !21
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !21
  %div_mask = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 4
  %15 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %div_mask, align 4
  %conv = zext i32 %parent_rate to i64
  %conv12 = zext i32 %5 to i64
  %mul = mul nuw i64 %conv12, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp183 = icmp ult i64 %mul, 4294967296
  br i1 %cmp183, label %if.then187, label %if.else193, !prof !24

if.then187:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv188 = trunc i64 %mul to i32
  %div191 = udiv i32 %conv188, %11
  br label %if.end197

if.else193:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %mul) #11, !srcloc !25
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  %extract.t313 = trunc i64 %asmresult1.i to i32
  br label %if.end197

if.end197:                                        ; preds = %if.else193, %if.then187
  %temp64.0.off0 = phi i32 [ %div191, %if.then187 ], [ %extract.t313, %if.else193 ]
  %18 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and = and i32 %18, %16
  %mul199 = mul i32 %and, %parent_rate
  %add201 = add i32 %temp64.0.off0, %mul199
  ret i32 %add201
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_av_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %mul = mul i32 %1, 27
  %mul1 = mul i32 %1, 54
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1, i32 %rate)
  %cmp = icmp ult i32 %mul1, %rate
  %2 = tail call i32 @llvm.umax.i32(i32 %mul, i32 %rate)
  %rate.addr.0 = select i1 %cmp, i32 %mul1, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %1)
  %cmp5 = icmp ult i32 %1, 1073741824
  %spec.select303 = select i1 %cmp5, i32 %1, i32 1000000
  %3 = urem i32 %rate.addr.0, %1
  %conv = zext i32 %3 to i64
  %conv10 = zext i32 %spec.select303 to i64
  %mul11 = mul nuw nsw i64 %conv10, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul11)
  %cmp164.i.i = icmp ult i64 %mul11, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !24

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul11 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %1
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul11) #11, !srcloc !25
  %asmresult1.i.i.i = extractvalue { i64, i64 } %4, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %conv13 = zext i32 %1 to i64
  %conv14 = and i64 %dividend.addr.0.i.i, 4294967295
  %mul15 = mul nuw i64 %conv14, %conv13
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul15)
  %cmp189 = icmp ult i64 %mul15, 4294967296
  br i1 %cmp189, label %if.then193, label %if.else199, !prof !24

if.then193:                                       ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv194 = trunc i64 %mul15 to i32
  %div197 = udiv i32 %conv194, %spec.select303
  br label %if.end203

if.else199:                                       ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select303, i64 %mul15) #11, !srcloc !25
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %extract.t329 = trunc i64 %asmresult1.i to i32
  br label %if.end203

if.end203:                                        ; preds = %if.else199, %if.then193
  %temp64.0.off0 = phi i32 [ %div197, %if.then193 ], [ %extract.t329, %if.else199 ]
  %mul9 = sub i32 %rate.addr.0, %3
  %add207 = add i32 %mul9, %temp64.0.off0
  ret i32 %add207
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllv3_av_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %parent_rate, 27
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp = icmp ugt i32 %mul, %rate
  %mul1 = mul i32 %parent_rate, 54
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1, i32 %rate)
  %cmp2 = icmp ult i32 %mul1, %rate
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %parent_rate)
  %cmp3 = icmp ult i32 %parent_rate, 1073741824
  %spec.select = select i1 %cmp3, i32 %parent_rate, i32 1000000
  %div6 = udiv i32 %rate, %parent_rate
  %mul7 = mul i32 %div6, %parent_rate
  %sub = sub i32 %rate, %mul7
  %conv = zext i32 %sub to i64
  %conv8 = zext i32 %spec.select to i64
  %mul9 = mul nuw nsw i64 %conv, %conv8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul9)
  %cmp164.i.i = icmp ult i64 %mul9, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !24

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul9 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %parent_rate
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %mul9) #11, !srcloc !25
  %asmresult1.i.i.i = extractvalue { i64, i64 } %0, 1
  %extract.t50 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t50, %if.else174.i.i ]
  %base = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !21
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %div_mask = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div_mask, align 4
  %neg = xor i32 %6, -1
  %and = and i32 %4, %neg
  %or = or i32 %and, %div6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !23
  %10 = tail call i32 @llvm.bswap.i32(i32 %dividend.addr.0.i.i.off0)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %num_offset = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 7
  %13 = ptrtoint ptr %num_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_offset, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %10) #7, !srcloc !23
  %15 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %denom_offset = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 8
  %18 = ptrtoint ptr %denom_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %denom_offset, align 4
  %add.ptr17 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %15) #7, !srcloc !23
  %call18 = tail call fastcc i32 @clk_pllv3_wait_lock(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %div_u64.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %div_u64.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_pllv3_enet_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_clock = getelementptr inbounds %struct.clk_pllv3, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %ref_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_clock, align 4
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @clk_pllv3_sys_ops, !1, !"clk_pllv3_sys_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-pllv3.c", i32 204, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-pllv3.c", i32 68, i32 9}
!4 = !{ptr @clk_pllv3_vf610_ops, !5, !"clk_pllv3_vf610_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-pllv3.c", i32 386, i32 29}
!6 = !{ptr @clk_pllv3_ops, !7, !"clk_pllv3_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-pllv3.c", i32 149, i32 29}
!8 = !{ptr @clk_pllv3_av_ops, !9, !"clk_pllv3_av_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-pllv3.c", i32 293, i32 29}
!10 = !{ptr @clk_pllv3_enet_ops, !11, !"clk_pllv3_enet_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-pllv3.c", i32 403, i32 29}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 4560279}
!22 = !{i8 0, i8 2}
!23 = !{i64 4559861}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148952118, i64 2148952398, i64 2148952732, i64 2148953066}
!26 = !{i64 1466574, i64 1466601, i64 1466623, i64 1466651}
!27 = !{i64 1466982, i64 1467009, i64 1467042, i64 1467063, i64 1467090, i64 1467116}
