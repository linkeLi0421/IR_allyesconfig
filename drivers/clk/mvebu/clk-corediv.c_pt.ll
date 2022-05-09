; ModuleID = '/llk/IR_all_yes/drivers/clk/mvebu/clk-corediv.c_pt.bc'
source_filename = "../drivers/clk/mvebu/clk-corediv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_corediv_soc_desc = type { ptr, i32, %struct.clk_ops, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_corediv_desc = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_corediv = type { %struct.clk_hw, ptr, ptr, ptr, %struct.spinlock }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__of_table_armada370_corediv_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-corediv-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada370_corediv_clk_init }, section "__clk_of_table", align 4
@__of_table_armada375_corediv_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-corediv-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada375_corediv_clk_init }, section "__clk_of_table", align 4
@__of_table_armada380_corediv_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-corediv-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada380_corediv_clk_init }, section "__clk_of_table", align 4
@__of_table_mv98dx3236_corediv_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv98dx3236-corediv-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv98dx3236_corediv_clk_init }, section "__clk_of_table", align 4
@armada370_corediv_soc = internal constant { %struct.clk_corediv_soc_desc, [40 x i8] } { %struct.clk_corediv_soc_desc { ptr @mvebu_corediv_desc, i32 1, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_corediv_enable, ptr @clk_corediv_disable, ptr @clk_corediv_is_enabled, ptr null, ptr null, ptr null, ptr @clk_corediv_recalc_rate, ptr @clk_corediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_corediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 256, i32 24, i32 8 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/mvebu/clk-corediv.c\00", [32 x i8] zeroinitializer }, align 32
@clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@mvebu_corediv_clk_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&corediv->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@mvebu_corediv_desc = internal constant { [1 x %struct.clk_corediv_desc], [20 x i8] } { [1 x %struct.clk_corediv_desc] [%struct.clk_corediv_desc { i32 63, i32 8, i32 1 }], [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@armada375_corediv_soc = internal constant { %struct.clk_corediv_soc_desc, [40 x i8] } { %struct.clk_corediv_soc_desc { ptr @mvebu_corediv_desc, i32 1, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_corediv_recalc_rate, ptr @clk_corediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_corediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 256, i32 0, i32 4 }, [40 x i8] zeroinitializer }, align 32
@armada380_corediv_soc = internal constant { %struct.clk_corediv_soc_desc, [40 x i8] } { %struct.clk_corediv_soc_desc { ptr @mvebu_corediv_desc, i32 1, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_corediv_enable, ptr @clk_corediv_disable, ptr @clk_corediv_is_enabled, ptr null, ptr null, ptr null, ptr @clk_corediv_recalc_rate, ptr @clk_corediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_corediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 256, i32 16, i32 4 }, [40 x i8] zeroinitializer }, align 32
@mv98dx3236_corediv_soc = internal constant { %struct.clk_corediv_soc_desc, [40 x i8] } { %struct.clk_corediv_soc_desc { ptr @mv98dx3236_corediv_desc, i32 1, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_corediv_recalc_rate, ptr @clk_corediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_corediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 1024, i32 0, i32 8 }, [40 x i8] zeroinitializer }, align 32
@mv98dx3236_corediv_desc = internal constant { [1 x %struct.clk_corediv_desc], [20 x i8] } { [1 x %struct.clk_corediv_desc] [%struct.clk_corediv_desc { i32 15, i32 6, i32 27 }], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [22 x i8] c"armada370_corediv_soc\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 194, i32 42 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 263, i32 6 }
@___asan_gen_.9 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 62, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 281, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 284, i32 39 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"mvebu_corediv_desc\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 69, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"armada375_corediv_soc\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 226, i32 42 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"armada380_corediv_soc\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 210, i32 42 }
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"mv98dx3236_corediv_soc\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 238, i32 42 }
@___asan_gen_.33 = private unnamed_addr constant [24 x i8] c"mv98dx3236_corediv_desc\00", align 1
@___asan_gen_.34 = private constant [35 x i8] c"../drivers/clk/mvebu/clk-corediv.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 73, i32 38 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__of_table_armada370_corediv_clk, ptr @__of_table_armada375_corediv_clk, ptr @__of_table_armada380_corediv_clk, ptr @__of_table_mv98dx3236_corediv_clk, ptr @armada370_corediv_soc, ptr @.str, ptr @clk_data, ptr @mvebu_corediv_clk_init.__key, ptr @.str.1, ptr @.str.2, ptr @mvebu_corediv_desc, ptr @armada375_corediv_soc, ptr @armada380_corediv_soc, ptr @mv98dx3236_corediv_soc, ptr @mv98dx3236_corediv_desc], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada370_corediv_soc to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_corediv_clk_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_corediv_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada375_corediv_soc to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada380_corediv_soc to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv98dx3236_corediv_soc to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv98dx3236_corediv_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada370_corediv_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mvebu_corediv_clk_init(ptr noundef %node, ptr noundef nonnull @armada370_corediv_soc) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada375_corediv_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mvebu_corediv_clk_init(ptr noundef %node, ptr noundef nonnull @armada375_corediv_soc) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada380_corediv_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mvebu_corediv_clk_init(ptr noundef %node, ptr noundef nonnull @armada380_corediv_soc) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv98dx3236_corediv_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mvebu_corediv_clk_init(ptr noundef %node, ptr noundef nonnull @mv98dx3236_corediv_soc) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvebu_corediv_clk_init(ptr noundef %node, ptr noundef %soc_desc) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %1 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !38
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call24 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #7
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call24, ptr %parent_name, align 4
  %ndescs = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %soc_desc, i32 0, i32 1
  %3 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ndescs, align 4
  store i32 %4, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #7
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end23.do.end45_crit_edge, label %if.end7.i.i, !prof !39

if.end23.do.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

if.end7.i.i:                                      ; preds = %if.end23
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #11
  %tobool27.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool27.not, label %if.end7.i.i.do.end45_crit_edge, label %if.end61.critedge, !prof !39

if.end7.i.i.do.end45_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end45:                                         ; preds = %if.end7.i.i.do.end45_crit_edge, %if.end23.do.end45_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #7
  br label %err_unmap

if.end61.critedge:                                ; preds = %if.end7.i.i
  %8 = load i32, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 68) #7
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end61.critedge.do.end82_crit_edge, label %if.end7.i.i215, !prof !39

if.end61.critedge.do.end82_crit_edge:             ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

if.end7.i.i215:                                   ; preds = %if.end61.critedge
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i214 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #11
  %tobool64.not = icmp eq ptr %call8.i.i214, null
  br i1 %tobool64.not, label %if.end7.i.i215.do.end82_crit_edge, label %do.body99.critedge, !prof !39

if.end7.i.i215.do.end82_crit_edge:                ; preds = %if.end7.i.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

do.end82:                                         ; preds = %if.end7.i.i215.do.end82_crit_edge, %if.end61.critedge.do.end82_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #7
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %err_unmap

do.body99.critedge:                               ; preds = %if.end7.i.i215
  %lock = getelementptr inbounds %struct.clk_corediv, ptr %call8.i.i214, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mvebu_corediv_clk_init.__key, i16 noundef signext 3) #7
  %12 = load i32, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp230.not = icmp eq i32 %12, 0
  br i1 %cmp230.not, label %do.body99.critedge.for.end_crit_edge, label %for.body.lr.ph

do.body99.critedge.for.end_crit_edge:             ; preds = %do.body99.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body99.critedge
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %ops = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %soc_desc, i32 0, i32 2
  %ops104 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end138.for.body_crit_edge, %for.body.lr.ph
  %i.0231 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end138.for.body_crit_edge ]
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.2, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %i.0231) #7
  %13 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %num_parents, align 4
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name, ptr %parent_names, align 4
  %15 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_name, align 4
  %17 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %init, align 4
  %18 = ptrtoint ptr %ops104 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ops, ptr %ops104, align 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags, align 4
  %arrayidx = getelementptr %struct.clk_corediv, ptr %call8.i.i214, i32 %i.0231
  %soc_desc105 = getelementptr %struct.clk_corediv, ptr %call8.i.i214, i32 %i.0231, i32 3
  %20 = ptrtoint ptr %soc_desc105 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %soc_desc, ptr %soc_desc105, align 4
  %21 = ptrtoint ptr %soc_desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %soc_desc, align 4
  %add.ptr = getelementptr %struct.clk_corediv_desc, ptr %22, i32 %i.0231
  %desc = getelementptr %struct.clk_corediv, ptr %call8.i.i214, i32 %i.0231, i32 2
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %desc, align 4
  %reg = getelementptr %struct.clk_corediv, ptr %call8.i.i214, i32 %i.0231, i32 1
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %reg, align 4
  %init109 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx, i32 0, i32 2
  %25 = ptrtoint ptr %init109 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %init, ptr %init109, align 4
  %call112 = call ptr @clk_register(ptr noundef null, ptr noundef %arrayidx) #7
  %arrayidx113 = getelementptr ptr, ptr %call8.i.i, i32 %i.0231
  %26 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call112, ptr %arrayidx113, align 4
  %cmp.i = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end132, label %for.body.if.end138_crit_edge, !prof !39

for.body.if.end138_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

do.end132:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #7
  br label %if.end138

if.end138:                                        ; preds = %do.end132, %for.body.if.end138_crit_edge
  %inc = add nuw i32 %i.0231, 1
  %27 = load i32, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %if.end138.for.body_crit_edge, label %if.end138.for.end_crit_edge

if.end138.for.end_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end138.for.body_crit_edge:                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end138.for.end_crit_edge, %do.body99.critedge.for.end_crit_edge
  store ptr %call8.i.i, ptr @clk_data, align 4
  %call146 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #7
  br label %cleanup

err_unmap:                                        ; preds = %do.end82, %do.end45
  tail call void @iounmap(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_corediv_enable(ptr noundef %hwclk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_desc1 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 3
  %0 = ptrtoint ptr %soc_desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_desc1, align 4
  %desc2 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 2
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %lock = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %reg8 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 1
  %4 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg8, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !40
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %fieldbit = getelementptr inbounds %struct.clk_corediv_desc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %fieldbit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fieldbit, align 4
  %shl = shl nuw i32 1, %9
  %enable_bit_offset = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %enable_bit_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_bit_offset, align 4
  %shl12 = shl i32 %shl, %11
  %or = or i32 %shl12, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_corediv_disable(ptr noundef %hwclk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_desc1 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 3
  %0 = ptrtoint ptr %soc_desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_desc1, align 4
  %desc2 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 2
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %lock = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %reg8 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 1
  %4 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg8, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !40
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %fieldbit = getelementptr inbounds %struct.clk_corediv_desc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %fieldbit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fieldbit, align 4
  %shl = shl nuw i32 1, %9
  %enable_bit_offset = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %enable_bit_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_bit_offset, align 4
  %shl12 = shl i32 %shl, %11
  %neg = xor i32 %shl12, -1
  %and = and i32 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_corediv_is_enabled(ptr nocapture noundef readonly %hwclk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_desc1 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 3
  %0 = ptrtoint ptr %soc_desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_desc1, align 4
  %desc2 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 2
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %fieldbit = getelementptr inbounds %struct.clk_corediv_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fieldbit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fieldbit, align 4
  %shl = shl nuw i32 1, %5
  %enable_bit_offset = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %enable_bit_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_bit_offset, align 4
  %shl3 = shl i32 %shl, %7
  %reg = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %and = and i32 %11, %shl3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_corediv_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_desc1 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 3
  %0 = ptrtoint ptr %soc_desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_desc1, align 4
  %desc2 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 2
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %reg3 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 1
  %4 = ptrtoint ptr %reg3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg3, align 4
  %ratio_offset = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ratio_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ratio_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !40
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %offset = getelementptr inbounds %struct.clk_corediv_desc, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %shr = lshr i32 %9, %11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %and = and i32 %shr, %13
  %div7 = udiv i32 %parent_rate, %and
  ret i32 %div7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_corediv_round_rate(ptr nocapture noundef readnone %hwclk, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %div1 = udiv i32 %1, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div1)
  %cmp = icmp ult i32 %div1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div1)
  %cmp2 = icmp ugt i32 %div1, 6
  %spec.store.select = select i1 %cmp2, i32 8, i32 %div1
  %div.0 = select i1 %cmp, i32 4, i32 %spec.store.select
  %div5 = udiv i32 %1, %div.0
  ret i32 %div5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_corediv_set_rate(ptr noundef %hwclk, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_desc1 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 3
  %0 = ptrtoint ptr %soc_desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_desc1, align 4
  %desc2 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 2
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %div3 = udiv i32 %parent_rate, %rate
  %lock = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %reg9 = getelementptr inbounds %struct.clk_corediv, ptr %hwclk, i32 0, i32 1
  %4 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg9, align 4
  %ratio_offset = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ratio_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ratio_offset, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !40
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %offset = getelementptr inbounds %struct.clk_corediv_desc, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %shl = shl i32 %11, %13
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  %and15 = and i32 %11, %div3
  %shl17 = shl i32 %and15, %13
  %or = or i32 %and, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg9, align 4
  %17 = ptrtoint ptr %ratio_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ratio_offset, align 4
  %add.ptr23 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %14) #7, !srcloc !43
  %19 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg9, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !40
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %fieldbit = getelementptr inbounds %struct.clk_corediv_desc, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %fieldbit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fieldbit, align 4
  %shl30 = shl nuw i32 1, %24
  %or31 = or i32 %shl30, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %26 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !43
  %28 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg9, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !40
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  %ratio_reload = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %ratio_reload to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ratio_reload, align 4
  %or42 = or i32 %33, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %or42)
  %35 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #7
  %38 = ptrtoint ptr %ratio_reload to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ratio_reload, align 4
  %40 = and i32 %39, -256
  %neg49 = xor i32 %40, -256
  %and50 = and i32 %neg49, %or42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %and50)
  %42 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__of_table_armada370_corediv_clk, !1, !"__of_table_armada370_corediv_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 315, i32 1}
!2 = !{ptr @__of_table_armada375_corediv_clk, !3, !"__of_table_armada375_corediv_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 322, i32 1}
!4 = !{ptr @__of_table_armada380_corediv_clk, !5, !"__of_table_armada380_corediv_clk", i1 false, i1 false}
!5 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 329, i32 1}
!6 = !{ptr @__of_table_mv98dx3236_corediv_clk, !7, !"__of_table_mv98dx3236_corediv_clk", i1 false, i1 false}
!7 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 336, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 263, i32 6}
!10 = !{ptr @mvebu_corediv_clk_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 281, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 284, i32 39}
!15 = !{ptr @clk_data, !16, !"clk_data", i1 false, i1 false}
!16 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 62, i32 32}
!17 = !{ptr @armada370_corediv_soc, !18, !"armada370_corediv_soc", i1 false, i1 false}
!18 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 194, i32 42}
!19 = !{ptr @mvebu_corediv_desc, !20, !"mvebu_corediv_desc", i1 false, i1 false}
!20 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 69, i32 38}
!21 = !{ptr @armada375_corediv_soc, !22, !"armada375_corediv_soc", i1 false, i1 false}
!22 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 226, i32 42}
!23 = !{ptr @armada380_corediv_soc, !24, !"armada380_corediv_soc", i1 false, i1 false}
!24 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 210, i32 42}
!25 = !{ptr @mv98dx3236_corediv_soc, !26, !"mv98dx3236_corediv_soc", i1 false, i1 false}
!26 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 238, i32 42}
!27 = !{ptr @mv98dx3236_corediv_desc, !28, !"mv98dx3236_corediv_desc", i1 false, i1 false}
!28 = !{!"../drivers/clk/mvebu/clk-corediv.c", i32 73, i32 38}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 4034381}
!41 = !{i64 2152542188}
!42 = !{i64 2152542485}
!43 = !{i64 4033963}
!44 = !{i64 2152544688}
!45 = !{i64 2152544985}
!46 = !{i64 2152540155}
!47 = !{i64 2152546928}
!48 = !{i64 2152549061}
!49 = !{i64 2152549295}
!50 = !{i64 2152549956}
!51 = !{i64 2152550253}
!52 = !{i64 2152550889}
!53 = !{i64 2152551098}
!54 = !{i64 2152552036}
