; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/rcar-gen2-cpg.c_pt.bc'
source_filename = "../drivers/clk/renesas/rcar-gen2-cpg.c"
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
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpg_core_clk = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.rcar_gen2_cpg_pll_config = type { i8, i8, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.cpg_z_clk = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@cpg_pll_config = internal unnamed_addr global ptr null, section ".init.data", align 4
@cpg_pll0_div = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_mode = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_sdh_div_table = internal constant { [12 x %struct.clk_div_table], [32 x i8] } { [12 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cpg_sd01_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table { i32 12, i32 10 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@cpg_quirks = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_lock = internal global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@cpg_quirks_match = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.5, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], section ".init.rodata", align 4
@rcar_gen2_cpg_init.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rcar_gen2_cpg\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcar_gen2_cpg_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clk/renesas/rcar-gen2-cpg.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: mode = 0x%x quirks = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_gen2_cpg_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cpg_lock\00", [22 x i8] zeroinitializer }, align 32
@cpg_z_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpg_z_clk_recalc_rate, ptr null, ptr @cpg_z_clk_determine_rate, ptr null, ptr null, ptr @cpg_z_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpg_adsp_div_table = internal constant { [11 x %struct.clk_div_table], [40 x i8] } { [11 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r8a77470\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"cpg_sdh_div_table\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 248, i32 35 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"cpg_sd01_div_table\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 254, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant [9 x i8] c"cpg_lock\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 33, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 388, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 390, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"cpg_z_clk_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 130, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"cpg_adsp_div_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 202, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [39 x i8] c"../drivers/clk/renesas/rcar-gen2-cpg.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 269, i32 13 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @cpg_sdh_div_table, ptr @cpg_sd01_div_table, ptr @cpg_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rcar_gen2_cpg_init.__key, ptr @.str.4, ptr @cpg_z_clk_ops, ptr @cpg_adsp_div_table, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_sdh_div_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_sd01_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_cpg_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_z_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_adsp_div_table to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rcar_gen2_cpg_clk_register(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %core, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %clks, ptr noundef %base, ptr nocapture noundef readnone %notifiers) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 3
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent1, align 4
  %arrayidx = getelementptr ptr, ptr %clks, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__clk_get_name(ptr noundef %3) #7
  %type = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb4
    i32 7, label %sw.bb10
    i32 8, label %sw.bb13
    i32 9, label %sw.bb15
    i32 10, label %sw.bb17
    i32 11, label %sw.bb20
    i32 12, label %if.end.if.else_crit_edge
    i32 13, label %if.end.if.else.sink.split_crit_edge
    i32 14, label %sw.bb29
    i32 15, label %sw.bb35
    i32 16, label %sw.bb39
  ]

if.end.if.else.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.sink.split

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

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
  br label %if.then44

sw.bb4:                                           ; preds = %if.end
  %10 = load ptr, ptr @cpg_pll_config, align 4
  %pll0_mult = getelementptr inbounds %struct.rcar_gen2_cpg_pll_config, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %pll0_mult to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pll0_mult, align 1
  %conv5 = zext i8 %12 to i32
  %13 = load i32, ptr @cpg_pll0_div, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then6, label %sw.bb4.if.then44_crit_edge

sw.bb4.if.then44_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %base, i32 216
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %and = shl i32 %14, 1
  %add = and i32 %and, 254
  %mul = add nuw nsw i32 %add, 2
  br label %if.then44

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load ptr, ptr @cpg_pll_config, align 4
  %pll1_mult = getelementptr inbounds %struct.rcar_gen2_cpg_pll_config, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pll1_mult to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pll1_mult, align 1
  %18 = lshr i8 %17, 1
  %div12 = zext i8 %18 to i32
  br label %if.then44

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = load ptr, ptr @cpg_pll_config, align 4
  %pll3_mult = getelementptr inbounds %struct.rcar_gen2_cpg_pll_config, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %pll3_mult to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pll3_mult, align 1
  %conv14 = zext i8 %21 to i32
  br label %if.then44

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 4
  %call16 = tail call fastcc ptr @cpg_z_clk_register(ptr noundef %23, ptr noundef %call3, ptr noundef %base) #10
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = load i32, ptr @cpg_mode, align 4
  %and18 = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %cond = select i1 %tobool19.not, i32 24, i32 36
  br label %if.then44

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core, align 4
  %call22 = tail call fastcc ptr @cpg_adsp_clk_register(ptr noundef %26, ptr noundef %call3, ptr noundef %base) #10
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.sink.split

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = load i32, ptr @cpg_mode, align 4
  %and36 = and i32 %27, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and36)
  %cmp = icmp eq i32 %and36, 4
  %cond38 = select i1 %cmp, i32 8, i32 10
  br label %if.then44

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core, align 4
  %call41 = tail call fastcc ptr @cpg_rcan_clk_register(ptr noundef %29, ptr noundef %call3, ptr noundef %base) #10
  br label %cleanup

if.then44:                                        ; preds = %sw.bb35, %sw.bb17, %sw.bb13, %sw.bb10, %if.then6, %sw.bb4.if.then44_crit_edge, %sw.bb
  %div.0.ph = phi i32 [ %conv, %sw.bb ], [ %13, %if.then6 ], [ %13, %sw.bb4.if.then44_crit_edge ], [ 1, %sw.bb10 ], [ 1, %sw.bb13 ], [ %cond, %sw.bb17 ], [ %cond38, %sw.bb35 ]
  %mult.0.ph = phi i32 [ 1, %sw.bb ], [ %mul, %if.then6 ], [ %conv5, %sw.bb4.if.then44_crit_edge ], [ %div12, %sw.bb10 ], [ %conv14, %sw.bb13 ], [ 1, %sw.bb17 ], [ 1, %sw.bb35 ]
  %30 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core, align 4
  %call46 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %31, ptr noundef %call3, i32 noundef 0, i32 noundef %mult.0.ph, i32 noundef %div.0.ph) #7
  br label %cleanup

if.else.sink.split:                               ; preds = %sw.bb29, %if.end.if.else.sink.split_crit_edge
  %shift.0.ph = phi i8 [ 0, %sw.bb29 ], [ 4, %if.end.if.else.sink.split_crit_edge ]
  %32 = load i32, ptr @cpg_quirks, align 4
  %and25 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %spec.select = select i1 %tobool26.not, ptr @cpg_sd01_div_table, ptr getelementptr inbounds ([9 x %struct.clk_div_table], ptr @cpg_sd01_div_table, i32 0, i32 1)
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %if.end.if.else_crit_edge
  %shift.0 = phi i8 [ 8, %if.end.if.else_crit_edge ], [ %shift.0.ph, %if.else.sink.split ]
  %table.2 = phi ptr [ @cpg_sdh_div_table, %if.end.if.else_crit_edge ], [ %spec.select, %if.else.sink.split ]
  %33 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core, align 4
  %add.ptr48 = getelementptr i8, ptr %base, i32 116
  %call50 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %34, ptr noundef %call3, i32 noundef 0, ptr noundef %add.ptr48, i8 noundef zeroext %shift.0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull %table.2, ptr noundef nonnull @cpg_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then44, %sw.bb39, %sw.bb20, %sw.bb15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call41, %sw.bb39 ], [ %call50, %if.else ], [ %call46, %if.then44 ], [ %call22, %sw.bb20 ], [ %call16, %sw.bb15 ], [ %3, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cpg_z_clk_register(ptr noundef %name, ptr noundef %parent_name, ptr noundef %base) unnamed_addr #0 section ".init.text" align 64 {
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
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #11
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
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 224
  %reg = getelementptr inbounds %struct.cpg_z_clk, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %reg, align 4
  %add.ptr3 = getelementptr i8, ptr %base, i32 4
  %kick_reg = getelementptr inbounds %struct.cpg_z_clk, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %kick_reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr3, ptr %kick_reg, align 8
  %init4 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %init4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %init, ptr %init4, align 8
  %call6 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %if.then8 ], [ %call6, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cpg_adsp_clk_register(ptr noundef %name, ptr noundef %parent_name, ptr noundef %base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %base, i32 604
  %reg = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %reg, align 4
  %width = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %width, align 1
  %table = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cpg_adsp_div_table, ptr %table, align 4
  %lock = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cpg_lock, ptr %lock, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #11
  %tobool3.not = icmp eq ptr %call7.i.i32, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %reg8 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i32, i32 0, i32 1
  %7 = ptrtoint ptr %reg8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %reg8, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i32, i32 0, i32 2
  %8 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %bit_idx, align 8
  %flags = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i32, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %flags, align 1
  %lock9 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i32, i32 0, i32 4
  %10 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cpg_lock, ptr %lock9, align 4
  %call11 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %name, ptr noundef nonnull %parent_name.addr, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @clk_divider_ops, ptr noundef nonnull %call7.i.i32, ptr noundef nonnull @clk_gate_ops, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i32) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then4 ], [ %call11, %if.then13 ], [ %call11, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cpg_rcan_clk_register(ptr noundef %name, ptr noundef %parent_name, ptr noundef %base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mult = getelementptr inbounds %struct.clk_fixed_factor, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %mult, align 4
  %div = getelementptr inbounds %struct.clk_fixed_factor, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %div, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #11
  %tobool3.not = icmp eq ptr %call7.i.i26, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %base, i32 624
  %reg = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i26, i32 0, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %reg, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i26, i32 0, i32 2
  %6 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %bit_idx, align 8
  %flags = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i26, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %flags, align 1
  %lock = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i26, i32 0, i32 4
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cpg_lock, ptr %lock, align 4
  %call8 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %name, ptr noundef nonnull %parent_name.addr, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @clk_fixed_factor_ops, ptr noundef nonnull %call7.i.i26, ptr noundef nonnull @clk_gate_ops, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i26) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then4 ], [ %call8, %if.then10 ], [ %call8, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_gen2_cpg_init(ptr noundef %config, i32 noundef %pll0_div, i32 noundef %mode) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %config, ptr @cpg_pll_config, align 4
  store i32 %pll0_div, ptr @cpg_pll0_div, align 4
  store i32 %mode, ptr @cpg_mode, align 4
  %call = tail call ptr @soc_device_match(ptr noundef nonnull @cpg_quirks_match) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  store i32 %2, ptr @cpg_quirks, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen2_cpg_init.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen2_cpg_init, %if.then5)) #7
          to label %do.body7 [label %if.then5], !srcloc !42

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr @cpg_quirks, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen2_cpg_init.__UNIQUE_ID_ddebug195, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %mode, i32 noundef %3) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.body
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @cpg_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @rcar_gen2_cpg_init.__key, i16 noundef signext 3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !40
  %3 = lshr i32 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %and = and i32 %3, 31
  %sub = sub nuw nsw i32 32, %and
  %conv = zext i32 %parent_rate to i64
  %conv3 = zext i32 %sub to i64
  %mul = mul nuw nsw i64 %conv3, %conv
  %shr.i.i = lshr i64 %mul, 5
  %conv5 = trunc i64 %shr.i.i to i32
  ret i32 %conv5
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_determine_rate(ptr nocapture noundef readnone %hw, ptr nocapture noundef %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %best_parent_rate, align 4
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_rate, align 4
  %conv = zext i32 %3 to i64
  %mul = shl nuw nsw i64 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %3)
  %cmp164.i.i = icmp ult i32 %3, 134217728
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !44

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %1
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.else162.i.i167

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul) #12, !srcloc !45
  %asmresult1.i.i.i = extractvalue { i64, i64 } %4, 1
  br label %if.else162.i.i167

if.else162.i.i167:                                ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %5 = tail call i64 @llvm.umax.i64(i64 %dividend.addr.0.i.i, i64 1)
  %6 = trunc i64 %5 to i32
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_rate, align 4
  %conv3 = zext i32 %8 to i64
  %mul4 = shl nuw nsw i64 %conv3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %8)
  %cmp164.i.i166 = icmp ult i32 %8, 134217728
  br i1 %cmp164.i.i166, label %if.then168.i.i171, label %if.else174.i.i173, !prof !44

if.then168.i.i171:                                ; preds = %if.else162.i.i167
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i168 = trunc i64 %mul4 to i32
  %div172.i.i169 = udiv i32 %conv169.i.i168, %1
  %conv173.i.i170 = zext i32 %div172.i.i169 to i64
  br label %div_u64.exit175

if.else174.i.i173:                                ; preds = %if.else162.i.i167
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul4) #12, !srcloc !45
  %asmresult1.i.i.i172 = extractvalue { i64, i64 } %9, 1
  br label %div_u64.exit175

div_u64.exit175:                                  ; preds = %if.else174.i.i173, %if.then168.i.i171
  %dividend.addr.0.i.i174 = phi i64 [ %conv173.i.i170, %if.then168.i.i171 ], [ %asmresult1.i.i.i172, %if.else174.i.i173 ]
  %10 = tail call i64 @llvm.umin.i64(i64 %dividend.addr.0.i.i174, i64 32)
  %11 = trunc i64 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %11)
  %cmp14 = icmp ugt i32 %6, %11
  br i1 %cmp14, label %div_u64.exit175.cleanup_crit_edge, label %if.end

div_u64.exit175.cleanup_crit_edge:                ; preds = %div_u64.exit175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %div_u64.exit175
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 4
  %conv16 = zext i32 %13 to i64
  %mul17 = shl nuw nsw i64 %conv16, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %13)
  %cmp164.i.i280 = icmp ult i32 %13, 134217728
  br i1 %cmp164.i.i280, label %if.then168.i.i285, label %if.else174.i.i287, !prof !44

if.then168.i.i285:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i282 = trunc i64 %mul17 to i32
  %div172.i.i283 = udiv i32 %conv169.i.i282, %1
  br label %div_u64.exit289

if.else174.i.i287:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul17) #12, !srcloc !45
  %asmresult1.i.i.i286 = extractvalue { i64, i64 } %14, 1
  %extract.t307 = trunc i64 %asmresult1.i.i.i286 to i32
  br label %div_u64.exit289

div_u64.exit289:                                  ; preds = %if.else174.i.i287, %if.then168.i.i285
  %dividend.addr.0.i.i288.off0 = phi i32 [ %div172.i.i283, %if.then168.i.i285 ], [ %extract.t307, %if.else174.i.i287 ]
  %15 = tail call i32 @llvm.umax.i32(i32 %6, i32 %dividend.addr.0.i.i288.off0)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %11)
  %conv34 = zext i32 %1 to i64
  %conv35 = zext i32 %16 to i64
  %mul36 = mul nuw nsw i64 %conv35, %conv34
  %shr.i.i291 = lshr i64 %mul36, 5
  %conv38 = trunc i64 %shr.i.i291 to i32
  %17 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv38, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %div_u64.exit289, %div_u64.exit175.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %div_u64.exit289 ], [ -22, %div_u64.exit175.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %rate to i64
  %mul = shl nuw nsw i64 %conv, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %rate)
  %cmp164.i.i = icmp ult i32 %rate, 134217728
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !44

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %parent_rate
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %mul) #12, !srcloc !45
  %asmresult1.i.i.i = extractvalue { i64, i64 } %0, 1
  %extract.t72 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t72, %if.else174.i.i ]
  %kick_reg = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kick_reg, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %.mask = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.end, label %div_u64.exit.cleanup_crit_edge

div_u64.exit.cleanup_crit_edge:                   ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %div_u64.exit
  %4 = tail call i32 @llvm.umax.i32(i32 %dividend.addr.0.i.i.off0, i32 1)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 32)
  %reg = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %9 = and i32 %8, -2031617
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %.neg = mul nsw i32 %5, -256
  %shl = add nsw i32 %.neg, 8192
  %or = or i32 %10, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #7, !srcloc !49
  %14 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kick_reg, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %17 = or i32 %16, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kick_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !49
  br label %for.body

for.body:                                         ; preds = %do.end47.for.body_crit_edge, %if.end
  %i.074 = phi i32 [ 1000, %if.end ], [ %dec, %do.end47.for.body_crit_edge ]
  %20 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kick_reg, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  %.mask70 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask70)
  %tobool40.not = icmp eq i32 %.mask70, 0
  br i1 %tobool40.not, label %for.body.cleanup_crit_edge, label %do.end47

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end47:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !54
  %dec = add nsw i32 %i.074, -1
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %do.end47.cleanup_crit_edge, label %do.end47.for.body_crit_edge

do.end47.for.body_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.end47.cleanup_crit_edge, %for.body.cleanup_crit_edge, %div_u64.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %div_u64.exit.cleanup_crit_edge ], [ -110, %do.end47.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 388, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rcar_gen2_cpg_init.__UNIQUE_ID_ddebug195, !1, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!6 = !{ptr @rcar_gen2_cpg_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 390, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cpg_lock, !10, !"cpg_lock", i1 false, i1 false}
!10 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 33, i32 19}
!11 = !{ptr @cpg_pll_config, !12, !"cpg_pll_config", i1 false, i1 false}
!12 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 260, i32 47}
!13 = !{ptr @cpg_pll0_div, !14, !"cpg_pll0_div", i1 false, i1 false}
!14 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 261, i32 21}
!15 = !{ptr @cpg_mode, !16, !"cpg_mode", i1 false, i1 false}
!16 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 262, i32 12}
!17 = !{ptr @cpg_quirks, !18, !"cpg_quirks", i1 false, i1 false}
!18 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 263, i32 12}
!19 = !{ptr @cpg_z_clk_ops, !20, !"cpg_z_clk_ops", i1 false, i1 false}
!20 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 130, i32 29}
!21 = !{ptr @cpg_adsp_div_table, !22, !"cpg_adsp_div_table", i1 false, i1 false}
!22 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 202, i32 35}
!23 = !{ptr @cpg_sdh_div_table, !24, !"cpg_sdh_div_table", i1 false, i1 false}
!24 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 248, i32 35}
!25 = !{ptr @cpg_sd01_div_table, !26, !"cpg_sd01_div_table", i1 false, i1 false}
!26 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 254, i32 35}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 269, i32 13}
!29 = !{ptr @cpg_quirks_match, !30, !"cpg_quirks_match", i1 false, i1 false}
!30 = !{!"../drivers/clk/renesas/rcar-gen2-cpg.c", i32 267, i32 42}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 4984639}
!41 = !{i64 2152968012}
!42 = !{i64 2148154403, i64 2148154408, i64 2148154421, i64 2148154465, i64 2148154499, i64 2148154520}
!43 = !{i64 2152938033}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2148741265, i64 2148741545, i64 2148741879, i64 2148742213}
!46 = !{i64 2152962360}
!47 = !{i64 2152962901}
!48 = !{i64 2152963142}
!49 = !{i64 4984221}
!50 = !{i64 2152963783}
!51 = !{i64 2152964079}
!52 = !{i64 2152964728}
!53 = !{i64 2152965087}
!54 = !{i64 2152964929}
