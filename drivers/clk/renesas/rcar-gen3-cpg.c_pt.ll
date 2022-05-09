; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/rcar-gen3-cpg.c_pt.bc'
source_filename = "../drivers/clk/renesas/rcar-gen3-cpg.c"
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
%struct.rcar_gen3_cpg_pll_config = type { i8, i8, i8, i8, i8, i8 }
%struct.cpg_simple_notifier = type { %struct.notifier_block, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.cpg_pll_clk = type { %struct.clk_hw, ptr, ptr, i32, i32 }
%struct.cpg_z_clk = type { %struct.clk_hw, ptr, ptr, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@cpg_pll_config = internal unnamed_addr global ptr null, section ".init.data", align 4
@cpg_quirks = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_clk_extalr = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_mode = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_rpcsrc_div_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cpg_lock = external dso_local global %struct.spinlock, align 4
@cpg_quirks_match = internal constant [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.5, ptr null, ptr @.str.6, ptr inttoptr (i32 3 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.7, ptr null, ptr @.str.6, ptr inttoptr (i32 2 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.5, ptr null, ptr @.str.8, ptr inttoptr (i32 2 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], section ".init.rodata", align 4
@rcar_gen3_cpg_init.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rcar_gen3_cpg\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcar_gen3_cpg_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clk/renesas/rcar-gen3-cpg.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: mode = 0x%x quirks = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_gen3_cpg_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cpg_lock\00", [22 x i8] zeroinitializer }, align 32
@cpg_pll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpg_pll_clk_recalc_rate, ptr null, ptr @cpg_pll_clk_determine_rate, ptr null, ptr null, ptr @cpg_pll_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpg_z_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpg_z_clk_recalc_rate, ptr null, ptr @cpg_z_clk_determine_rate, ptr null, ptr null, ptr @cpg_z_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.0\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7796\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"cpg_rpcsrc_div_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 304, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 538, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 540, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"cpg_pll_clk_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 110, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"cpg_z_clk_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 261, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 319, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 319, i32 13 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 323, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [39 x i8] c"../drivers/clk/renesas/rcar-gen3-cpg.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 327, i32 13 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @cpg_rpcsrc_div_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rcar_gen3_cpg_init.__key, ptr @.str.4, ptr @cpg_pll_clk_ops, ptr @cpg_z_clk_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_rpcsrc_div_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_cpg_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_pll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_z_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rcar_gen3_cpg_clk_register(ptr nocapture noundef readnone %dev, ptr noundef readonly %core, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %clks, ptr noundef %base, ptr noundef %notifiers) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.i, label %entry.cleanup162_crit_edge, label %if.end

entry.cleanup162_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup162

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup162_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb3
    i32 7, label %sw.bb7
    i32 8, label %sw.bb10
    i32 9, label %sw.bb17
    i32 10, label %sw.bb20
    i32 11, label %sw.bb29
    i32 12, label %sw.bb34
    i32 13, label %sw.bb40
    i32 14, label %sw.bb70
    i32 15, label %sw.bb87
    i32 16, label %sw.bb93
    i32 17, label %sw.bb97
    i32 18, label %sw.bb120
    i32 19, label %sw.bb125
    i32 20, label %sw.bb146
    i32 21, label %sw.bb151
  ]

if.end.cleanup162_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup162

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load ptr, ptr @cpg_pll_config, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  br label %sw.epilog158

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr @cpg_quirks, align 4
  %and4 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %cond = select i1 %tobool.not, i32 2, i32 4
  %11 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core, align 4
  %call5 = tail call ptr @__clk_get_name(ptr noundef %3) #8
  %call6 = tail call fastcc ptr @cpg_pll_clk_register(ptr noundef %12, ptr noundef %call5, ptr noundef %base, i32 noundef %cond, i32 noundef 216, i32 noundef 0) #11
  br label %cleanup162

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load ptr, ptr @cpg_pll_config, align 4
  %pll1_mult = getelementptr inbounds %struct.rcar_gen3_cpg_pll_config, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pll1_mult to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pll1_mult, align 1
  %conv8 = zext i8 %15 to i32
  %pll1_div = getelementptr inbounds %struct.rcar_gen3_cpg_pll_config, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %pll1_div to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pll1_div, align 1
  %conv9 = zext i8 %17 to i32
  br label %sw.epilog158

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load i32, ptr @cpg_quirks, align 4
  %and11 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, i32 2, i32 4
  %19 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core, align 4
  %call15 = tail call ptr @__clk_get_name(ptr noundef %3) #8
  %call16 = tail call fastcc ptr @cpg_pll_clk_register(ptr noundef %20, ptr noundef %call15, ptr noundef %base, i32 noundef %cond13, i32 noundef 44, i32 noundef 2) #11
  br label %cleanup162

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load ptr, ptr @cpg_pll_config, align 4
  %pll3_mult = getelementptr inbounds %struct.rcar_gen3_cpg_pll_config, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %pll3_mult to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pll3_mult, align 1
  %conv18 = zext i8 %23 to i32
  %pll3_div = getelementptr inbounds %struct.rcar_gen3_cpg_pll_config, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %pll3_div to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pll3_div, align 1
  %conv19 = zext i8 %25 to i32
  br label %sw.epilog158

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %base, i32 500
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  %and23 = shl i32 %26, 1
  %add = and i32 %and23, 254
  %mul = add nuw nsw i32 %add, 2
  %27 = load i32, ptr @cpg_quirks, align 4
  %and24 = and i32 %27, 1
  %spec.select = shl nuw nsw i32 %mul, %and24
  br label %sw.epilog158

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core, align 4
  %offset = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  %add.ptr31 = getelementptr i8, ptr %base, i32 %31
  %call32 = tail call ptr @__clk_get_name(ptr noundef %3) #8
  %call33 = tail call ptr @cpg_sdh_clk_register(ptr noundef %29, ptr noundef %add.ptr31, ptr noundef %call32, ptr noundef %notifiers) #12
  br label %cleanup162

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core, align 4
  %offset36 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %34 = ptrtoint ptr %offset36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset36, align 4
  %add.ptr37 = getelementptr i8, ptr %base, i32 %35
  %call38 = tail call ptr @__clk_get_name(ptr noundef %3) #8
  %call39 = tail call ptr @cpg_sd_clk_register(ptr noundef %33, ptr noundef %add.ptr37, ptr noundef %call38) #12
  br label %cleanup162

sw.bb40:                                          ; preds = %if.end
  %36 = load i32, ptr @cpg_quirks, align 4
  %and41 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end64, label %if.then43

if.then43:                                        ; preds = %sw.bb40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 20) #13
  %tobool45.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not, label %if.then43.cleanup162_crit_edge, label %if.end48

if.then43.cleanup162_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup162

if.end48:                                         ; preds = %if.then43
  %add.ptr49 = getelementptr i8, ptr %base, i32 576
  %reg = getelementptr inbounds %struct.cpg_simple_notifier, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr49, ptr %reg, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !42
  %40 = lshr i32 %39, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  %and56 = and i32 %40, 63
  %41 = load i32, ptr @cpg_clk_extalr, align 4
  %arrayidx57 = getelementptr ptr, ptr %clks, i32 %41
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx57, align 4
  %call58 = tail call i32 @clk_get_rate(ptr noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end48.cleanup_crit_edge, label %if.then60

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then60:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %44 = load i32, ptr @cpg_clk_extalr, align 4
  %arrayidx61 = getelementptr ptr, ptr %clks, i32 %44
  %45 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx61, align 4
  %or = or i32 %and56, 32768
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end48.cleanup_crit_edge
  %value.0 = phi i32 [ %or, %if.then60 ], [ %and56, %if.end48.cleanup_crit_edge ]
  %parent.0 = phi ptr [ %46, %if.then60 ], [ %3, %if.end48.cleanup_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  %48 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !46
  tail call void @cpg_simple_notifier_register(ptr noundef %notifiers, ptr noundef nonnull %call7.i.i) #8
  br label %sw.epilog158

if.end64:                                         ; preds = %sw.bb40
  %50 = load i32, ptr @cpg_mode, align 4
  %and65 = and i32 %50, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.sw.epilog158_crit_edge, label %if.then67

if.end64.sw.epilog158_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog158

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %51 = load i32, ptr @cpg_clk_extalr, align 4
  %arrayidx68 = getelementptr ptr, ptr %clks, i32 %51
  %52 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx68, align 4
  br label %sw.epilog158

sw.bb70:                                          ; preds = %if.end
  %54 = load i32, ptr @cpg_mode, align 4
  %offset71 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %55 = ptrtoint ptr %offset71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset71, align 4
  %shl = shl nuw i32 1, %56
  %and72 = and i32 %shl, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #10
  %div75 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %57 = ptrtoint ptr %div75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %div75, align 4
  %and76 = and i32 %58, 65535
  br label %sw.epilog158

if.else:                                          ; preds = %sw.bb70
  %shr78 = lshr i32 %1, 16
  %arrayidx79 = getelementptr ptr, ptr %clks, i32 %shr78
  %59 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx79, align 4
  %cmp.i236 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.else.cleanup162_crit_edge, label %if.end83

if.else.cleanup162_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup162

if.end83:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %div84 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %61 = ptrtoint ptr %div84 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %div84, align 4
  %shr85 = lshr i32 %62, 16
  br label %sw.epilog158

sw.bb87:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %core, align 4
  %call89 = tail call ptr @__clk_get_name(ptr noundef %3) #8
  %div90 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %65 = ptrtoint ptr %div90 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %div90, align 4
  %offset91 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 6
  %67 = ptrtoint ptr %offset91 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %offset91, align 4
  %call92 = tail call fastcc ptr @cpg_z_clk_register(ptr noundef %64, ptr noundef %call89, ptr noundef %base, i32 noundef %66, i32 noundef %68) #11
  br label %cleanup162

sw.bb93:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %69 = load ptr, ptr @cpg_pll_config, align 4
  %osc_prediv = getelementptr inbounds %struct.rcar_gen3_cpg_pll_config, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %osc_prediv to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %osc_prediv, align 1
  %conv94 = zext i8 %71 to i32
  %div95 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %72 = ptrtoint ptr %div95 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %div95, align 4
  %mul96 = mul i32 %73, %conv94
  br label %sw.epilog158

sw.bb97:                                          ; preds = %if.end
  %add.ptr100 = getelementptr i8, ptr %base, i32 576
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  %75 = and i32 %74, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool105.not = icmp eq i32 %75, 0
  br i1 %tobool105.not, label %if.else109, label %if.then106

if.then106:                                       ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #10
  %div107 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %76 = ptrtoint ptr %div107 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %div107, align 4
  %and108 = and i32 %77, 65535
  br label %sw.epilog158

if.else109:                                       ; preds = %sw.bb97
  %78 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %parent1, align 4
  %shr111 = lshr i32 %79, 16
  %arrayidx112 = getelementptr ptr, ptr %clks, i32 %shr111
  %80 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx112, align 4
  %cmp.i237 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.else109.cleanup162_crit_edge, label %if.end116

if.else109.cleanup162_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup162

if.end116:                                        ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #10
  %div117 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %82 = ptrtoint ptr %div117 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %div117, align 4
  %shr118 = lshr i32 %83, 16
  br label %sw.epilog158

sw.bb120:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %core, align 4
  %call122 = tail call ptr @__clk_get_name(ptr noundef %3) #8
  %add.ptr123 = getelementptr i8, ptr %base, i32 568
  %call124 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %85, ptr noundef %call122, i32 noundef 0, ptr noundef %add.ptr123, i8 noundef zeroext 3, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @cpg_rpcsrc_div_table, ptr noundef nonnull @cpg_lock) #8
  br label %cleanup162

sw.bb125:                                         ; preds = %if.end
  %add.ptr128 = getelementptr i8, ptr %base, i32 568
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #8, !srcloc !42
  %87 = lshr i32 %86, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %and132 = and i32 %87, 3
  %88 = zext i32 %and132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and132, label %sw.default [
    i32 0, label %sw.bb125.sw.epilog158_crit_edge
    i32 1, label %sw.bb135
    i32 2, label %sw.bb136
  ]

sw.bb125.sw.epilog158_crit_edge:                  ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog158

sw.bb135:                                         ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog158

sw.bb136:                                         ; preds = %sw.bb125
  %89 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %parent1, align 4
  %shr138 = lshr i32 %90, 16
  %arrayidx139 = getelementptr ptr, ptr %clks, i32 %shr138
  %91 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx139, align 4
  %cmp.i238 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i238, label %sw.bb136.cleanup162_crit_edge, label %if.end143

sw.bb136.cleanup162_crit_edge:                    ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup162

if.end143:                                        ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #10
  %div144 = getelementptr inbounds %struct.cpg_core_clk, ptr %core, i32 0, i32 4
  %93 = ptrtoint ptr %div144 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %div144, align 4
  br label %sw.epilog158

sw.default:                                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog158

sw.bb146:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %core, align 4
  %add.ptr148 = getelementptr i8, ptr %base, i32 568
  %call149 = tail call ptr @__clk_get_name(ptr noundef %3) #8
  %call150 = tail call ptr @cpg_rpc_clk_register(ptr noundef %96, ptr noundef %add.ptr148, ptr noundef %call149, ptr noundef %notifiers) #12
  br label %cleanup162

sw.bb151:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %core, align 4
  %add.ptr153 = getelementptr i8, ptr %base, i32 568
  %call154 = tail call ptr @__clk_get_name(ptr noundef %3) #8
  %call155 = tail call ptr @cpg_rpcd2_clk_register(ptr noundef %98, ptr noundef %add.ptr153, ptr noundef %call154) #12
  br label %cleanup162

sw.epilog158:                                     ; preds = %sw.default, %if.end143, %sw.bb135, %sw.bb125.sw.epilog158_crit_edge, %if.end116, %if.then106, %sw.bb93, %if.end83, %if.then74, %if.then67, %if.end64.sw.epilog158_crit_edge, %cleanup, %sw.bb20, %sw.bb17, %sw.bb7, %sw.bb
  %div.1 = phi i32 [ 2, %sw.default ], [ %94, %if.end143 ], [ 3, %sw.bb135 ], [ %and108, %if.then106 ], [ %shr118, %if.end116 ], [ %mul96, %sw.bb93 ], [ 1, %cleanup ], [ 1, %if.then67 ], [ 1, %if.end64.sw.epilog158_crit_edge ], [ %conv19, %sw.bb17 ], [ %conv9, %sw.bb7 ], [ %conv, %sw.bb ], [ 1, %sw.bb20 ], [ %and76, %if.then74 ], [ %shr85, %if.end83 ], [ 5, %sw.bb125.sw.epilog158_crit_edge ]
  %mult.0 = phi i32 [ 1, %sw.default ], [ 1, %if.end143 ], [ 1, %sw.bb135 ], [ 1, %if.then106 ], [ 1, %if.end116 ], [ 1, %sw.bb93 ], [ 1, %cleanup ], [ 1, %if.then67 ], [ 1, %if.end64.sw.epilog158_crit_edge ], [ %conv18, %sw.bb17 ], [ %conv8, %sw.bb7 ], [ 1, %sw.bb ], [ %spec.select, %sw.bb20 ], [ 1, %if.then74 ], [ 1, %if.end83 ], [ 1, %sw.bb125.sw.epilog158_crit_edge ]
  %parent.3 = phi ptr [ %3, %sw.default ], [ %92, %if.end143 ], [ %3, %sw.bb135 ], [ %3, %if.then106 ], [ %81, %if.end116 ], [ %3, %sw.bb93 ], [ %parent.0, %cleanup ], [ %53, %if.then67 ], [ %3, %if.end64.sw.epilog158_crit_edge ], [ %3, %sw.bb17 ], [ %3, %sw.bb7 ], [ %3, %sw.bb ], [ %3, %sw.bb20 ], [ %3, %if.then74 ], [ %60, %if.end83 ], [ %3, %sw.bb125.sw.epilog158_crit_edge ]
  %99 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %core, align 4
  %call160 = tail call ptr @__clk_get_name(ptr noundef %parent.3) #8
  %call161 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %100, ptr noundef %call160, i32 noundef 0, i32 noundef %mult.0, i32 noundef %div.1) #8
  br label %cleanup162

cleanup162:                                       ; preds = %sw.epilog158, %sw.bb151, %sw.bb146, %sw.bb136.cleanup162_crit_edge, %sw.bb120, %if.else109.cleanup162_crit_edge, %sw.bb87, %if.else.cleanup162_crit_edge, %if.then43.cleanup162_crit_edge, %sw.bb34, %sw.bb29, %sw.bb10, %sw.bb3, %if.end.cleanup162_crit_edge, %entry.cleanup162_crit_edge
  %retval.1 = phi ptr [ %call155, %sw.bb151 ], [ %call150, %sw.bb146 ], [ %call161, %sw.epilog158 ], [ %call124, %sw.bb120 ], [ %call92, %sw.bb87 ], [ %call39, %sw.bb34 ], [ %call33, %sw.bb29 ], [ %call16, %sw.bb10 ], [ %call6, %sw.bb3 ], [ %3, %entry.cleanup162_crit_edge ], [ %60, %if.else.cleanup162_crit_edge ], [ %81, %if.else109.cleanup162_crit_edge ], [ %92, %sw.bb136.cleanup162_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup162_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then43.cleanup162_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cpg_pll_clk_register(ptr noundef %name, ptr noundef %parent_name, ptr noundef %base, i32 noundef %mult, i32 noundef %offset, i32 noundef %index) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cpg_pll_clk_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %init3 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %init3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init3, align 8
  %add.ptr = getelementptr i8, ptr %base, i32 %offset
  %pllcr_reg = getelementptr inbounds %struct.cpg_pll_clk, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pllcr_reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %pllcr_reg, align 4
  %add.ptr4 = getelementptr i8, ptr %base, i32 208
  %pllecr_reg = getelementptr inbounds %struct.cpg_pll_clk, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %pllecr_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4, ptr %pllecr_reg, align 8
  %fixed_mult = getelementptr inbounds %struct.cpg_pll_clk, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %fixed_mult to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mult, ptr %fixed_mult, align 4
  %add = add i32 %index, 8
  %shl = shl nuw i32 1, %add
  %pllecr_pllst_mask = getelementptr inbounds %struct.cpg_pll_clk, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %pllecr_pllst_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl, ptr %pllecr_pllst_mask, align 8
  %call6 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %if.then8 ], [ %call6, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @cpg_sdh_clk_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @cpg_sd_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_simple_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cpg_z_clk_register(ptr noundef %name, ptr noundef %parent_name, ptr noundef %reg, i32 noundef %div, i32 noundef %offset) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %add.ptr = getelementptr i8, ptr %reg, i32 224
  %reg3 = getelementptr inbounds %struct.cpg_z_clk, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %reg3, align 4
  %add.ptr4 = getelementptr i8, ptr %reg, i32 4
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
  %call10 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call ptr @clk_hw_get_parent(ptr noundef nonnull %call7.i.i) #8
  %call16 = call i32 @clk_hw_get_rate(ptr noundef %call15) #8
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
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @cpg_rpc_clk_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @cpg_rpcd2_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_gen3_cpg_init(ptr noundef %config, i32 noundef %clk_extalr, i32 noundef %mode) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %config, ptr @cpg_pll_config, align 4
  store i32 %clk_extalr, ptr @cpg_clk_extalr, align 4
  store i32 %mode, ptr @cpg_mode, align 4
  %call = tail call ptr @soc_device_match(ptr noundef nonnull @cpg_quirks_match) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  store i32 %2, ptr @cpg_quirks, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen3_cpg_init.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen3_cpg_init, %if.then5)) #8
          to label %do.body7 [label %if.then5], !srcloc !49

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @cpg_quirks, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen3_cpg_init.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %mode, i32 noundef %3) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.body
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @cpg_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @rcar_gen3_cpg_init.__key, i16 noundef signext 3) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_pll_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pllcr_reg = getelementptr inbounds %struct.cpg_pll_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pllcr_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pllcr_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %and = and i32 %2, 127
  %add = add nuw nsw i32 %and, 1
  %mul = mul i32 %add, %parent_rate
  %fixed_mult = getelementptr inbounds %struct.cpg_pll_clk, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %fixed_mult to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fixed_mult, align 4
  %mul4 = mul i32 %mul, %4
  ret i32 %mul4
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_pll_clk_determine_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %best_parent_rate, align 4
  %fixed_mult = getelementptr inbounds %struct.cpg_pll_clk, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %fixed_mult to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_mult, align 4
  %mul = mul i32 %3, %1
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_rate, align 4
  %div172.i.i = udiv i32 %5, %mul
  %6 = tail call i32 @llvm.umax.i32(i32 %div172.i.i, i32 1)
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_rate, align 4
  %div172.i.i438 = udiv i32 %8, %mul
  %9 = call i32 @llvm.umin.i32(i32 %div172.i.i438, i32 128)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp14 = icmp ugt i32 %6, %9
  br i1 %cmp14, label %entry.cleanup_crit_edge, label %if.end208

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end208:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req, align 4
  %div331 = lshr i32 %mul, 1
  %add = add i32 %11, %div331
  %div202 = udiv i32 %add, %mul
  %12 = tail call i32 @llvm.umax.i32(i32 %6, i32 %div202)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %9)
  %mul226 = mul i32 %13, %mul
  %14 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul226, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end208 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_pll_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_mult = getelementptr inbounds %struct.cpg_pll_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %fixed_mult to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_mult, align 4
  %mul = mul i32 %1, %parent_rate
  %div325 = lshr i32 %mul, 1
  %add = add i32 %div325, %rate
  %div178 = udiv i32 %add, %mul
  %2 = tail call i32 @llvm.umax.i32(i32 %div178, i32 1)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 128)
  %pllcr_reg = getelementptr inbounds %struct.cpg_pll_clk, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %pllcr_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pllcr_reg, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %7 = and i32 %6, -128
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sub206 = shl nuw i32 %3, 24
  %shl208 = add i32 %sub206, -16777216
  %or209 = or i32 %8, %shl208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or209)
  %10 = ptrtoint ptr %pllcr_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pllcr_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !46
  %pllecr_reg = getelementptr inbounds %struct.cpg_pll_clk, ptr %hw, i32 0, i32 2
  %pllecr_pllst_mask = getelementptr inbounds %struct.cpg_pll_clk, ptr %hw, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end225.for.body_crit_edge, %entry
  %i.0354 = phi i32 [ 1000, %entry ], [ %dec, %do.end225.for.body_crit_edge ]
  %12 = ptrtoint ptr %pllecr_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pllecr_reg, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !42
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %16 = ptrtoint ptr %pllecr_pllst_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pllecr_pllst_mask, align 4
  %and217 = and i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %do.end225, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end225:                                        ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !55
  %dec = add nsw i32 %i.0354, -1
  %tobool211.not = icmp eq i32 %dec, 0
  br i1 %tobool211.not, label %do.end225.cleanup_crit_edge, label %do.end225.for.body_crit_edge

do.end225.for.body_crit_edge:                     ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end225.cleanup_crit_edge:                      ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.end225.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ -110, %do.end225.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !42
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  %mask = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %and = and i32 %5, %3
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #8, !range !57
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
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !58

if.then185:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv186 = trunc i64 %add to i32
  %div189 = udiv i32 %conv186, %mul
  br label %if.end195

if.else191:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %add) #14, !srcloc !59
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  %extract.t309 = trunc i64 %asmresult1.i to i32
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %_tmp.0.off0 = phi i32 [ %div189, %if.then185 ], [ %extract.t309, %if.else191 ]
  ret i32 %_tmp.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %fixed_div = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fixed_div, align 4
  %mul = mul i32 %9, %7
  %call6 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %mul) #8
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
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !58

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul9 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %div
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.else162.i.i788

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %mul9) #14, !srcloc !59
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
  br i1 %cmp164.i.i787, label %if.then168.i.i792, label %if.else174.i.i794, !prof !58

if.then168.i.i792:                                ; preds = %if.else162.i.i788
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i789 = trunc i64 %mul21 to i32
  %div172.i.i790 = udiv i32 %conv169.i.i789, %div
  %conv173.i.i791 = zext i32 %div172.i.i790 to i64
  br label %div_u64.exit796

if.else174.i.i794:                                ; preds = %if.else162.i.i788
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %mul21) #14, !srcloc !59
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %div_u64.exit796
  %conv35 = zext i32 %4 to i64
  %mul36 = shl nuw nsw i64 %conv35, 5
  %div37678 = lshr i32 %div, 1
  %conv38 = zext i32 %div37678 to i64
  %add = add nuw nsw i64 %mul36, %conv38
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp217 = icmp ult i64 %add, 4294967296
  br i1 %cmp217, label %if.then221, label %if.else227, !prof !58

if.then221:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %conv222 = trunc i64 %add to i32
  %div225 = udiv i32 %conv222, %div
  br label %if.end476

if.else227:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %add) #14, !srcloc !59
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
define internal i32 @cpg_z_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call = tail call i64 @div64_u64(i64 noundef %add, i64 noundef %conv) #8
  %kick_reg = getelementptr inbounds %struct.cpg_z_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kick_reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %11 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #8, !range !57
  %shl = shl i32 %10, %11
  tail call void @cpg_reg_modify(ptr noundef %7, i32 noundef %9, i32 noundef %shl) #8
  %12 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kick_reg, align 4
  tail call void @cpg_reg_modify(ptr noundef %13, i32 noundef 0, i32 noundef -2147483648) #8
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %if.end
  %i.055 = phi i32 [ 1000, %if.end ], [ %dec, %do.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %kick_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kick_reg, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %.mask54 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask54)
  %tobool29.not = icmp eq i32 %.mask54, 0
  br i1 %tobool29.not, label %for.body.cleanup_crit_edge, label %do.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !63
  %dec = add nsw i32 %i.055, -1
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -110, %do.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_reg_modify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 538, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rcar_gen3_cpg_init.__UNIQUE_ID_ddebug209, !1, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!6 = !{ptr @rcar_gen3_cpg_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 540, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cpg_pll_config, !10, !"cpg_pll_config", i1 false, i1 false}
!10 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 308, i32 47}
!11 = !{ptr @cpg_clk_extalr, !12, !"cpg_clk_extalr", i1 false, i1 false}
!12 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 309, i32 21}
!13 = !{ptr @cpg_mode, !14, !"cpg_mode", i1 false, i1 false}
!14 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 310, i32 12}
!15 = !{ptr @cpg_quirks, !16, !"cpg_quirks", i1 false, i1 false}
!16 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 311, i32 12}
!17 = !{ptr @cpg_pll_clk_ops, !18, !"cpg_pll_clk_ops", i1 false, i1 false}
!18 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 110, i32 29}
!19 = !{ptr @cpg_z_clk_ops, !20, !"cpg_z_clk_ops", i1 false, i1 false}
!20 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 261, i32 29}
!21 = !{ptr @cpg_rpcsrc_div_table, !22, !"cpg_rpcsrc_div_table", i1 false, i1 false}
!22 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 304, i32 35}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 319, i32 36}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 319, i32 13}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 323, i32 36}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 327, i32 13}
!31 = !{ptr @cpg_quirks_match, !32, !"cpg_quirks_match", i1 false, i1 false}
!32 = !{!"../drivers/clk/renesas/rcar-gen3-cpg.c", i32 317, i32 42}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 5016316}
!43 = !{i64 2153065734}
!44 = !{i64 2153066538}
!45 = !{i64 2153066829}
!46 = !{i64 5015898}
!47 = !{i64 2153067635}
!48 = !{i64 2153068209}
!49 = !{i64 2148158786, i64 2148158791, i64 2148158804, i64 2148158848, i64 2148158882, i64 2148158903}
!50 = !{i64 2152977411}
!51 = !{i64 2153014547}
!52 = !{i64 2153016146}
!53 = !{i64 2153016816}
!54 = !{i64 2153017091}
!55 = !{i64 2153016933}
!56 = !{i64 2153019203}
!57 = !{i32 0, i32 33}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2148777003, i64 2148777283, i64 2148777617, i64 2148777951}
!60 = !{i64 2153061908}
!61 = !{i64 2153062553}
!62 = !{i64 2153062912}
!63 = !{i64 2153062754}
