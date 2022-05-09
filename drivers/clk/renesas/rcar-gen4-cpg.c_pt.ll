; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/rcar-gen4-cpg.c_pt.bc'
source_filename = "../drivers/clk/renesas/rcar-gen4-cpg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_div_table = type { i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpg_core_clk = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.rcar_gen4_cpg_pll_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.cpg_z_clk = type { %struct.clk_hw, ptr, ptr, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@cpg_pll_config = internal unnamed_addr global ptr null, section ".init.rodata", align 4
@cpg_mode = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_rpcsrc_div_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 6 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@cpg_lock = external dso_local global %struct.spinlock, align 4
@rcar_gen4_cpg_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cpg_lock\00", [22 x i8] zeroinitializer }, align 32
@cpg_z_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpg_z_clk_recalc_rate, ptr null, ptr @cpg_z_clk_determine_rate, ptr null, ptr null, ptr @cpg_z_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20]
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"cpg_rpcsrc_div_table\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 180, i32 35 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 302, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"cpg_z_clk_ops\00", align 1
@___asan_gen_.11 = private constant [39 x i8] c"../drivers/clk/renesas/rcar-gen4-cpg.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 134, i32 29 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @cpg_rpcsrc_div_table, ptr @rcar_gen4_cpg_init.__key, ptr @.str, ptr @cpg_z_clk_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_rpcsrc_div_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen4_cpg_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_z_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rcar_gen4_cpg_clk_register(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %core, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %clks, ptr noundef %base, ptr noundef %notifiers) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 3
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent1, align 4
  %and = and i32 %1, 65535
  %arrayidx = getelementptr ptr, ptr %clks, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb3
    i32 7, label %sw.bb6
    i32 9, label %sw.bb9
    i32 10, label %sw.bb12
    i32 11, label %sw.bb15
    i32 8, label %sw.bb18
    i32 16, label %sw.bb22
    i32 12, label %sw.bb27
    i32 13, label %sw.bb37
    i32 14, label %sw.bb43
    i32 15, label %sw.bb49
    i32 17, label %sw.bb65
    i32 18, label %sw.bb69
    i32 19, label %sw.bb74
    i32 20, label %sw.bb79
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load ptr, ptr @cpg_pll_config, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load ptr, ptr @cpg_pll_config, align 4
  %pll1_mult = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pll1_mult to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pll1_mult, align 1
  %conv4 = zext i8 %12 to i32
  %pll1_div = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %pll1_div to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pll1_div, align 1
  %conv5 = zext i8 %14 to i32
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load ptr, ptr @cpg_pll_config, align 4
  %pll2_mult = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %pll2_mult to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pll2_mult, align 1
  %conv7 = zext i8 %17 to i32
  %pll2_div = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %pll2_div to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pll2_div, align 1
  %conv8 = zext i8 %19 to i32
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = load ptr, ptr @cpg_pll_config, align 4
  %pll3_mult = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %pll3_mult to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pll3_mult, align 1
  %conv10 = zext i8 %22 to i32
  %pll3_div = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %pll3_div to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pll3_div, align 1
  %conv11 = zext i8 %24 to i32
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = load ptr, ptr @cpg_pll_config, align 4
  %pll5_mult = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %pll5_mult to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pll5_mult, align 1
  %conv13 = zext i8 %27 to i32
  %pll5_div = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %pll5_div to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pll5_div, align 1
  %conv14 = zext i8 %29 to i32
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %30 = load ptr, ptr @cpg_pll_config, align 4
  %pll6_mult = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %pll6_mult to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pll6_mult, align 1
  %conv16 = zext i8 %32 to i32
  %pll6_div = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %30, i32 0, i32 10
  %33 = ptrtoint ptr %pll6_div to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pll6_div, align 1
  %conv17 = zext i8 %34 to i32
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %offset = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %and21 = shl i32 %37, 1
  %add = and i32 %and21, 254
  %mul = add nuw nsw i32 %add, 2
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core, align 4
  %call23 = tail call ptr @__clk_get_name(ptr noundef %3) #7
  %div24 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %40 = ptrtoint ptr %div24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %div24, align 4
  %offset25 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %42 = ptrtoint ptr %offset25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset25, align 4
  %call26 = tail call fastcc ptr @cpg_z_clk_register(ptr noundef %39, ptr noundef %call23, ptr noundef %base, i32 noundef %41, i32 noundef %43) #10
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr30 = getelementptr i8, ptr %base, i32 2212
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #7, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %45 = lshr i32 %44, 5
  %and35 = and i32 %45, 3
  %add36 = or i32 %and35, 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core, align 4
  %offset39 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %48 = ptrtoint ptr %offset39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset39, align 4
  %add.ptr40 = getelementptr i8, ptr %base, i32 %49
  %call41 = tail call ptr @__clk_get_name(ptr noundef %3) #7
  %call42 = tail call ptr @cpg_sdh_clk_register(ptr noundef %47, ptr noundef %add.ptr40, ptr noundef %call41, ptr noundef %notifiers) #11
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core, align 4
  %offset45 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %52 = ptrtoint ptr %offset45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset45, align 4
  %add.ptr46 = getelementptr i8, ptr %base, i32 %53
  %call47 = tail call ptr @__clk_get_name(ptr noundef %3) #7
  %call48 = tail call ptr @cpg_sd_clk_register(ptr noundef %51, ptr noundef %add.ptr46, ptr noundef %call47) #11
  br label %cleanup

sw.bb49:                                          ; preds = %if.end
  %54 = load i32, ptr @cpg_mode, align 4
  %offset50 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %55 = ptrtoint ptr %offset50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset50, align 4
  %shl = shl nuw i32 1, %56
  %and51 = and i32 %shl, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool.not = icmp eq i32 %and51, 0
  br i1 %tobool.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  %div53 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %57 = ptrtoint ptr %div53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %div53, align 4
  %and54 = and i32 %58, 65535
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb49
  %shr56 = lshr i32 %1, 16
  %arrayidx57 = getelementptr ptr, ptr %clks, i32 %shr56
  %59 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx57, align 4
  %cmp.i128 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.else.cleanup_crit_edge, label %if.end61

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %div62 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %61 = ptrtoint ptr %div62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %div62, align 4
  %shr63 = lshr i32 %62, 16
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %63 = load ptr, ptr @cpg_pll_config, align 4
  %osc_prediv = getelementptr inbounds %struct.rcar_gen4_cpg_pll_config, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %osc_prediv to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %osc_prediv, align 1
  %conv66 = zext i8 %65 to i32
  %div67 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %66 = ptrtoint ptr %div67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %div67, align 4
  %mul68 = mul i32 %67, %conv66
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %core, align 4
  %call71 = tail call ptr @__clk_get_name(ptr noundef %3) #7
  %add.ptr72 = getelementptr i8, ptr %base, i32 2164
  %call73 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %69, ptr noundef %call71, i32 noundef 0, ptr noundef %add.ptr72, i8 noundef zeroext 3, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @cpg_rpcsrc_div_table, ptr noundef nonnull @cpg_lock) #7
  br label %cleanup

sw.bb74:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %core, align 4
  %add.ptr76 = getelementptr i8, ptr %base, i32 2164
  %call77 = tail call ptr @__clk_get_name(ptr noundef %3) #7
  %call78 = tail call ptr @cpg_rpc_clk_register(ptr noundef %71, ptr noundef %add.ptr76, ptr noundef %call77, ptr noundef %notifiers) #11
  br label %cleanup

sw.bb79:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %core, align 4
  %add.ptr81 = getelementptr i8, ptr %base, i32 2164
  %call82 = tail call ptr @__clk_get_name(ptr noundef %3) #7
  %call83 = tail call ptr @cpg_rpcd2_clk_register(ptr noundef %73, ptr noundef %add.ptr81, ptr noundef %call82) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb65, %if.end61, %if.then52, %sw.bb27, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb
  %div.1 = phi i32 [ %mul68, %sw.bb65 ], [ %add36, %sw.bb27 ], [ 1, %sw.bb18 ], [ %conv17, %sw.bb15 ], [ %conv14, %sw.bb12 ], [ %conv11, %sw.bb9 ], [ %conv8, %sw.bb6 ], [ %conv5, %sw.bb3 ], [ %conv, %sw.bb ], [ %and54, %if.then52 ], [ %shr63, %if.end61 ]
  %mult.0 = phi i32 [ 1, %sw.bb65 ], [ 1, %sw.bb27 ], [ %mul, %sw.bb18 ], [ %conv16, %sw.bb15 ], [ %conv13, %sw.bb12 ], [ %conv10, %sw.bb9 ], [ %conv7, %sw.bb6 ], [ %conv4, %sw.bb3 ], [ 1, %sw.bb ], [ 1, %if.then52 ], [ 1, %if.end61 ]
  %parent.1 = phi ptr [ %3, %sw.bb65 ], [ %3, %sw.bb27 ], [ %3, %sw.bb18 ], [ %3, %sw.bb15 ], [ %3, %sw.bb12 ], [ %3, %sw.bb9 ], [ %3, %sw.bb6 ], [ %3, %sw.bb3 ], [ %3, %sw.bb ], [ %3, %if.then52 ], [ %60, %if.end61 ]
  %74 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %core, align 4
  %call86 = tail call ptr @__clk_get_name(ptr noundef %parent.1) #7
  %call87 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %75, ptr noundef %call86, i32 noundef 0, i32 noundef %mult.0, i32 noundef %div.1) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb79, %sw.bb74, %sw.bb69, %if.else.cleanup_crit_edge, %sw.bb43, %sw.bb37, %sw.bb22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call83, %sw.bb79 ], [ %call78, %sw.bb74 ], [ %call73, %sw.bb69 ], [ %call87, %sw.epilog ], [ %call48, %sw.bb43 ], [ %call42, %sw.bb37 ], [ %call26, %sw.bb22 ], [ %3, %entry.cleanup_crit_edge ], [ %60, %if.else.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cpg_z_clk_register(ptr noundef %name, ptr noundef %parent_name, ptr noundef %reg, i32 noundef %div, i32 noundef %offset) unnamed_addr #0 section ".init.text" align 64 {
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
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cpg_z_clk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %7 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %8 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %num_parents, align 4
  %add.ptr = getelementptr i8, ptr %reg, i32 2056
  %reg3 = getelementptr inbounds %struct.cpg_z_clk, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %reg3, align 4
  %add.ptr4 = getelementptr i8, ptr %reg, i32 2052
  %kick_reg = getelementptr inbounds %struct.cpg_z_clk, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %kick_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4, ptr %kick_reg, align 8
  %init5 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %init5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %init, ptr %init5, align 8
  %shl.neg = shl nsw i32 -1, %offset
  %sub7 = sub i32 27, %offset
  %shr = lshr i32 -1, %sub7
  %and = and i32 %shr, %shl.neg
  %mask = getelementptr inbounds %struct.cpg_z_clk, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %mask, align 4
  %fixed_div = getelementptr inbounds %struct.cpg_z_clk, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %fixed_div to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %fixed_div, align 8
  %call10 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call ptr @clk_hw_get_parent(ptr noundef nonnull %call7.i.i) #7
  %call16 = call i32 @clk_hw_get_rate(ptr noundef %call15) #7
  %14 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fixed_div, align 8
  %div18 = udiv i32 %call16, %15
  %max_rate = getelementptr inbounds %struct.cpg_z_clk, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div18, ptr %max_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %if.then12 ], [ %call10, %if.end13 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @cpg_sdh_clk_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @cpg_sd_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @cpg_rpc_clk_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @cpg_rpcd2_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_gen4_cpg_init(ptr noundef %config, i32 noundef %clk_extalr, i32 noundef %mode) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %config, ptr @cpg_pll_config, align 4
  store i32 %mode, ptr @cpg_mode, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @cpg_lock, ptr noundef nonnull @.str, ptr noundef nonnull @rcar_gen4_cpg_init.__key, i16 noundef signext 3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !22
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  %mask = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %and = and i32 %5, %3
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #7, !range !26
  %shr = lshr i32 %and, %6
  %sub = sub i32 32, %shr
  %fixed_div = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 4
  %7 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fixed_div, align 4
  %mul = shl i32 %8, 5
  %conv = zext i32 %parent_rate to i64
  %conv5 = zext i32 %sub to i64
  %mul6 = mul nuw i64 %conv5, %conv
  %div282 = lshr exact i32 %mul, 1
  %conv7 = zext i32 %div282 to i64
  %add = add nuw i64 %mul6, %conv7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp181 = icmp ult i64 %add, 4294967296
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !27

if.then185:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv186 = trunc i64 %add to i32
  %div189 = udiv i32 %conv186, %mul
  br label %if.end195

if.else191:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %add) #13, !srcloc !28
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  %extract.t309 = trunc i64 %asmresult1.i to i32
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %_tmp.0.off0 = phi i32 [ %div189, %if.then185 ], [ %extract.t309, %if.else191 ]
  ret i32 %_tmp.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_rate, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %max_rate3 = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %max_rate3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_rate3, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %4, i32 %6)
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %fixed_div = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fixed_div, align 4
  %mul = mul i32 %9, %7
  %call6 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %mul) #7
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call6, ptr %best_parent_rate, align 4
  %11 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fixed_div, align 4
  %div = udiv i32 %call6, %12
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_rate, align 4
  %conv = zext i32 %14 to i64
  %mul9 = shl nuw nsw i64 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %14)
  %cmp164.i.i = icmp ult i32 %14, 134217728
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !27

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul9 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %div
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.else162.i.i788

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %mul9) #13, !srcloc !28
  %asmresult1.i.i.i = extractvalue { i64, i64 } %15, 1
  br label %if.else162.i.i788

if.else162.i.i788:                                ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %16 = tail call i64 @llvm.umax.i64(i64 %dividend.addr.0.i.i, i64 1)
  %17 = trunc i64 %16 to i32
  %18 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_rate, align 4
  %conv20 = zext i32 %19 to i64
  %mul21 = shl nuw nsw i64 %conv20, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %19)
  %cmp164.i.i787 = icmp ult i32 %19, 134217728
  br i1 %cmp164.i.i787, label %if.then168.i.i792, label %if.else174.i.i794, !prof !27

if.then168.i.i792:                                ; preds = %if.else162.i.i788
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i789 = trunc i64 %mul21 to i32
  %div172.i.i790 = udiv i32 %conv169.i.i789, %div
  %conv173.i.i791 = zext i32 %div172.i.i790 to i64
  br label %div_u64.exit796

if.else174.i.i794:                                ; preds = %if.else162.i.i788
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %mul21) #13, !srcloc !28
  %asmresult1.i.i.i793 = extractvalue { i64, i64 } %20, 1
  br label %div_u64.exit796

div_u64.exit796:                                  ; preds = %if.else174.i.i794, %if.then168.i.i792
  %dividend.addr.0.i.i795 = phi i64 [ %conv173.i.i791, %if.then168.i.i792 ], [ %asmresult1.i.i.i793, %if.else174.i.i794 ]
  %21 = tail call i64 @llvm.umin.i64(i64 %dividend.addr.0.i.i795, i64 32)
  %22 = trunc i64 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %22)
  %cmp31 = icmp ugt i32 %17, %22
  br i1 %cmp31, label %div_u64.exit796.cleanup_crit_edge, label %if.end34

div_u64.exit796.cleanup_crit_edge:                ; preds = %div_u64.exit796
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %div_u64.exit796
  %conv35 = zext i32 %4 to i64
  %mul36 = shl nuw nsw i64 %conv35, 5
  %div37678 = lshr i32 %div, 1
  %conv38 = zext i32 %div37678 to i64
  %add = add nuw nsw i64 %mul36, %conv38
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp217 = icmp ult i64 %add, 4294967296
  br i1 %cmp217, label %if.then221, label %if.else227, !prof !27

if.then221:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %conv222 = trunc i64 %add to i32
  %div225 = udiv i32 %conv222, %div
  br label %if.end476

if.else227:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %add) #13, !srcloc !28
  %asmresult1.i = extractvalue { i64, i64 } %23, 1
  %extract.t843 = trunc i64 %asmresult1.i to i32
  br label %if.end476

if.end476:                                        ; preds = %if.else227, %if.then221
  %_tmp.0.off0 = phi i32 [ %div225, %if.then221 ], [ %extract.t843, %if.else227 ]
  %24 = tail call i32 @llvm.umax.i32(i32 %17, i32 %_tmp.0.off0)
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %22)
  %conv251 = zext i32 %div to i64
  %conv252 = zext i32 %25 to i64
  %mul253 = mul nuw nsw i64 %conv252, %conv251
  %add256 = add nuw nsw i64 %mul253, 16
  %shr282 = lshr i64 %add256, 5
  %extract.t680 = trunc i64 %shr282 to i32
  %26 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %extract.t680, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end476, %div_u64.exit796.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end476 ], [ -22, %div_u64.exit796.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %conv2 = zext i32 %rate to i64
  %mul = shl nuw nsw i64 %conv2, 5
  %fixed_div = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_div, align 4
  %conv3 = zext i32 %1 to i64
  %mul4 = mul i64 %mul, %conv3
  %div53 = lshr i64 %conv, 1
  %add = add i64 %mul4, %div53
  %call = tail call i64 @div64_u64(i64 noundef %add, i64 noundef %conv) #7
  %kick_reg = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kick_reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv5 = trunc i64 %call to i32
  %5 = tail call i32 @llvm.umax.i32(i32 %conv5, i32 1)
  %reg = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %mask = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %10 = tail call i32 @llvm.usub.sat.i32(i32 32, i32 %5)
  %11 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #7, !range !26
  %shl = shl i32 %10, %11
  tail call void @cpg_reg_modify(ptr noundef %7, i32 noundef %9, i32 noundef %shl) #7
  %12 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kick_reg, align 4
  tail call void @cpg_reg_modify(ptr noundef %13, i32 noundef 0, i32 noundef -2147483648) #7
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %if.end
  %i.055 = phi i32 [ 1000, %if.end ], [ %dec, %do.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kick_reg, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  %.mask54 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask54)
  %tobool29.not = icmp eq i32 %.mask54, 0
  br i1 %tobool29.not, label %for.body.cleanup_crit_edge, label %do.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !32
  %dec = add nsw i32 %i.055, -1
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -110, %do.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_reg_modify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @rcar_gen4_cpg_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/rcar-gen4-cpg.c", i32 302, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @cpg_pll_config, !4, !"cpg_pll_config", i1 false, i1 false}
!4 = !{!"../drivers/clk/renesas/rcar-gen4-cpg.c", i32 26, i32 47}
!5 = distinct !{null, !6, !"cpg_clk_extalr", i1 false, i1 false}
!6 = !{!"../drivers/clk/renesas/rcar-gen4-cpg.c", i32 27, i32 21}
!7 = !{ptr @cpg_mode, !8, !"cpg_mode", i1 false, i1 false}
!8 = !{!"../drivers/clk/renesas/rcar-gen4-cpg.c", i32 28, i32 12}
!9 = !{ptr @cpg_z_clk_ops, !10, !"cpg_z_clk_ops", i1 false, i1 false}
!10 = !{!"../drivers/clk/renesas/rcar-gen4-cpg.c", i32 134, i32 29}
!11 = !{ptr @cpg_rpcsrc_div_table, !12, !"cpg_rpcsrc_div_table", i1 false, i1 false}
!12 = !{!"../drivers/clk/renesas/rcar-gen4-cpg.c", i32 180, i32 35}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 5010132}
!23 = !{i64 2153015238}
!24 = !{i64 2153015710}
!25 = !{i64 2152969575}
!26 = !{i32 0, i32 33}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2148667596, i64 2148667876, i64 2148668210, i64 2148668544}
!29 = !{i64 2153012280}
!30 = !{i64 2153012925}
!31 = !{i64 2153013284}
!32 = !{i64 2153013126}
