; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtk_clk_register_plls\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_clk_register_plls\09\09\09\09"
module asm "\09.long\09__crc_mtk_clk_register_plls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_plls:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_plls\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_plls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.mtk_clk_pll = type { %struct.clk_hw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mtk_pll_div_table = type { i32, i32 }

@mtk_clk_register_plls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s(): ioremap failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_clk_register_plls\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/mediatek/clk-pll.c\00", [33 x i8] zeroinitializer }, align 32
@mtk_clk_register_plls._entry_ptr = internal global ptr @mtk_clk_register_plls._entry, section ".printk_index", align 4
@mtk_clk_register_plls._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_clk_register_plls._entry_ptr.5 = internal global ptr @mtk_clk_register_plls._entry.3, section ".printk_index", align 4
@__kstrtab_mtk_clk_register_plls = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_plls = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_plls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_plls to i32), ptr @__kstrtab_mtk_clk_register_plls, ptr @__kstrtabns_mtk_clk_register_plls }, section "___ksymtab_gpl+mtk_clk_register_plls", align 4
@__UNIQUE_ID_file183 = internal constant [42 x i8] c"clk_pll.file=drivers/clk/mediatek/clk-pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license184 = internal constant [20 x i8] c"clk_pll.license=GPL\00", section ".modinfo", align 1
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@mtk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @mtk_pll_prepare, ptr @mtk_pll_unprepare, ptr @mtk_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_pll_recalc_rate, ptr @mtk_pll_round_rate, ptr null, ptr null, ptr null, ptr @mtk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 371, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 381, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 320, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"mtk_pll_ops\00", align 1
@___asan_gen_.29 = private constant [34 x i8] c"../drivers/clk/mediatek/clk-pll.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 305, i32 29 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file183, ptr @__UNIQUE_ID_license184, ptr @__ksymtab_mtk_clk_register_plls, ptr @mtk_clk_register_plls._entry, ptr @mtk_clk_register_plls._entry.3, ptr @mtk_clk_register_plls._entry_ptr, ptr @mtk_clk_register_plls._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @mtk_pll_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_plls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_plls._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_plls(ptr noundef %node, ptr noundef %plls, i32 noundef %num_plls, ptr nocapture noundef readonly %clk_data) #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %parent_name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_plls)
  %cmp28 = icmp sgt i32 %num_plls, 0
  br i1 %cmp28, label %for.body.lr.ph, label %for.cond.preheader.cleanup13_crit_edge

for.cond.preheader.cleanup13_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = getelementptr inbounds i8, ptr %init.i, i32 8
  %flags37.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup13

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #7
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.i) #7
  %2 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.6, ptr %parent_name.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %mtk_clk_register_pll.exit.thread, label %if.end.i

mtk_clk_register_pll.exit.thread:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  br label %do.end7

if.end.i:                                         ; preds = %for.body
  %reg.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 2
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 %5
  %base_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %base_addr.i, align 4
  %pwr_reg.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 3
  %7 = ptrtoint ptr %pwr_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pwr_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %call, i32 %8
  %pwr_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pwr_addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr2.i, ptr %pwr_addr.i, align 4
  %pd_reg.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 5
  %10 = ptrtoint ptr %pd_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pd_reg.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %call, i32 %11
  %pd_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %pd_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr3.i, ptr %pd_addr.i, align 8
  %pcw_reg.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 17
  %13 = ptrtoint ptr %pcw_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcw_reg.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %call, i32 %14
  %pcw_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %call7.i.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %pcw_addr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr4.i, ptr %pcw_addr.i, align 8
  %pcw_chg_reg.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 19
  %16 = ptrtoint ptr %pcw_chg_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcw_chg_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp eq i32 %17, 0
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %add.ptr8.i = getelementptr i8, ptr %call, i32 %17
  %add.ptr8.sink.i = select i1 %tobool5.not.i, ptr %add.ptr10.i, ptr %add.ptr8.i
  %18 = getelementptr inbounds %struct.mtk_clk_pll, ptr %call7.i.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr8.sink.i, ptr %18, align 4
  %tuner_reg.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 6
  %20 = ptrtoint ptr %tuner_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tuner_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not.i = icmp eq i32 %21, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr16.i = getelementptr i8, ptr %call, i32 %21
  %tuner_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr16.i, ptr %tuner_addr.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge
  %tuner_en_reg.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 7
  %23 = ptrtoint ptr %tuner_en_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tuner_en_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool18.not.i = icmp eq i32 %24, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %if.end17.i.if.then20.i_crit_edge

if.end17.i.if.then20.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %tuner_en_bit.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 8
  %25 = ptrtoint ptr %tuner_en_bit.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tuner_en_bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool19.not.i = icmp eq i8 %26, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i.if.end23.i_crit_edge, label %lor.lhs.false.i.if.then20.i_crit_edge

lor.lhs.false.i.if.then20.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20.i

lor.lhs.false.i.if.end23.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then20.i:                                      ; preds = %lor.lhs.false.i.if.then20.i_crit_edge, %if.end17.i.if.then20.i_crit_edge
  %add.ptr22.i = getelementptr i8, ptr %call, i32 %24
  %tuner_en_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %call7.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %tuner_en_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr22.i, ptr %tuner_en_addr.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %lor.lhs.false.i.if.end23.i_crit_edge
  %en_reg.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 22
  %28 = ptrtoint ptr %en_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %en_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool24.not.i = icmp eq i32 %29, 0
  br i1 %tobool24.not.i, label %if.else28.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr27.i = getelementptr i8, ptr %call, i32 %29
  br label %if.end32.i

if.else28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else28.i, %if.then25.i
  %add.ptr27.sink.i = phi ptr [ %31, %if.else28.i ], [ %add.ptr27.i, %if.then25.i ]
  %32 = getelementptr inbounds %struct.mtk_clk_pll, ptr %call7.i.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr27.sink.i, ptr %32, align 8
  %init33.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %init33.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %init.i, ptr %init33.i, align 8
  %data34.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %call7.i.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %data34.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx, ptr %data34.i, align 4
  %name.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 1
  %36 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name.i, align 4
  %38 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %init.i, align 4
  %flags.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 10
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 4
  %and.i = shl i32 %40, 10
  %41 = and i32 %and.i, 2048
  %42 = ptrtoint ptr %flags37.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %flags37.i, align 4
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @mtk_pll_ops, ptr %ops.i, align 4
  %parent_name38.i = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 21
  %44 = ptrtoint ptr %parent_name38.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent_name38.i, align 4
  %tobool39.not.i = icmp eq ptr %45, null
  %spec.select.i = select i1 %tobool39.not.i, ptr %parent_name.i, ptr %parent_name38.i
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %spec.select.i, ptr %0, align 4
  %47 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %num_parents.i, align 4
  %call46.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #7
  %cmp.i.i = icmp ugt ptr %call46.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mtk_clk_register_pll.exit.thread34, label %if.end11

mtk_clk_register_pll.exit.thread34:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  br label %do.end7

do.end7:                                          ; preds = %mtk_clk_register_pll.exit.thread34, %mtk_clk_register_pll.exit.thread
  %retval.0.i27 = phi ptr [ inttoptr (i32 -12 to ptr), %mtk_clk_register_pll.exit.thread ], [ %call46.i, %mtk_clk_register_pll.exit.thread34 ]
  %name = getelementptr %struct.mtk_pll_data, ptr %plls, i32 %i.029, i32 1
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 4
  %50 = ptrtoint ptr %retval.0.i27 to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %49, i32 noundef %50) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  %51 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_data, align 4
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr ptr, ptr %52, i32 %54
  %55 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call46.i, ptr %arrayidx12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end7
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %num_plls
  br i1 %exitcond.not, label %cleanup.cleanup13_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.cleanup13_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

cleanup13:                                        ; preds = %cleanup.cleanup13_crit_edge, %do.end, %for.cond.preheader.cleanup13_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pll_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pwr_addr = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %pwr_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwr_addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %pwr_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwr_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #7
  %7 = ptrtoint ptr %pwr_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwr_addr, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  %10 = and i32 %9, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %pwr_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwr_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  %en_addr = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 8
  %14 = ptrtoint ptr %en_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %en_addr, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !28
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  %data = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 9
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %pll_en_bit = getelementptr inbounds %struct.mtk_pll_data, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %pll_en_bit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pll_en_bit, align 4
  %conv = zext i8 %21 to i32
  %shl = shl nuw i32 1, %conv
  %or19 = or i32 %shl, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %23 = ptrtoint ptr %en_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %en_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !31
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %en_mask = getelementptr inbounds %struct.mtk_pll_data, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %en_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %en_mask, align 4
  %and25 = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not = icmp eq i32 %and25, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base_addr = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 1
  %29 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_addr, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !28
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %or31 = or i32 %32, %and25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %34 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tuner_en_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 5
  %36 = ptrtoint ptr %tuner_en_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tuner_en_addr.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #7, !srcloc !28
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %tuner_en_bit.i = getelementptr inbounds %struct.mtk_pll_data, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %tuner_en_bit.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tuner_en_bit.i, align 4
  %conv.i = zext i8 %43 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %or.i = or i32 %shl.i, %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %45 = ptrtoint ptr %tuner_en_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tuner_en_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #7, !srcloc !31
  br label %__mtk_pll_tuner_enable.exit

if.else.i:                                        ; preds = %if.end
  %tuner_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 4
  %47 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tuner_addr.i, align 4
  %tobool4.not.i = icmp eq ptr %48, null
  br i1 %tobool4.not.i, label %if.else.i.__mtk_pll_tuner_enable.exit_crit_edge, label %if.then5.i

if.else.i.__mtk_pll_tuner_enable.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mtk_pll_tuner_enable.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %48) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %50 = or i32 %49, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tuner_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #7, !srcloc !31
  br label %__mtk_pll_tuner_enable.exit

__mtk_pll_tuner_enable.exit:                      ; preds = %if.then5.i, %if.else.i.__mtk_pll_tuner_enable.exit_crit_edge, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 4294960) #7
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mtk_pll_data, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and38 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %__mtk_pll_tuner_enable.exit.if.end55_crit_edge, label %if.then40

__mtk_pll_tuner_enable.exit.if.end55_crit_edge:   ; preds = %__mtk_pll_tuner_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then40:                                        ; preds = %__mtk_pll_tuner_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %base_addr43 = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 1
  %58 = ptrtoint ptr %base_addr43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base_addr43, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !28
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %rst_bar_mask = getelementptr inbounds %struct.mtk_pll_data, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %rst_bar_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rst_bar_mask, align 4
  %or49 = or i32 %65, %61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %or49)
  %67 = ptrtoint ptr %base_addr43 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base_addr43, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #7, !srcloc !31
  br label %if.end55

if.end55:                                         ; preds = %if.then40, %__mtk_pll_tuner_enable.exit.if.end55_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_pll_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mtk_pll_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base_addr = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !28
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %rst_bar_mask = getelementptr inbounds %struct.mtk_pll_data, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %rst_bar_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rst_bar_mask, align 4
  %neg = xor i32 %11, -1
  %and4 = and i32 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %and4)
  %13 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tuner_en_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 5
  %15 = ptrtoint ptr %tuner_en_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tuner_en_addr.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #7, !srcloc !28
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %tuner_en_bit.i = getelementptr inbounds %struct.mtk_pll_data, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %tuner_en_bit.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tuner_en_bit.i, align 4
  %conv.i = zext i8 %22 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %18, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %24 = ptrtoint ptr %tuner_en_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tuner_en_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !31
  br label %__mtk_pll_tuner_disable.exit

if.else.i:                                        ; preds = %if.end
  %tuner_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 4
  %26 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tuner_addr.i, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %if.else.i.__mtk_pll_tuner_disable.exit_crit_edge, label %if.then5.i

if.else.i.__mtk_pll_tuner_disable.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mtk_pll_tuner_disable.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %29 = and i32 %28, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tuner_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !31
  br label %__mtk_pll_tuner_disable.exit

__mtk_pll_tuner_disable.exit:                     ; preds = %if.then5.i, %if.else.i.__mtk_pll_tuner_disable.exit_crit_edge, %if.then.i
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %en_mask = getelementptr inbounds %struct.mtk_pll_data, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %en_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %en_mask, align 4
  %and8 = and i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %__mtk_pll_tuner_disable.exit.if.end25_crit_edge, label %if.then10

__mtk_pll_tuner_disable.exit.if.end25_crit_edge:  ; preds = %__mtk_pll_tuner_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then10:                                        ; preds = %__mtk_pll_tuner_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %base_addr13 = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 1
  %36 = ptrtoint ptr %base_addr13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_addr13, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !28
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %neg18 = xor i32 %and8, -1
  %and19 = and i32 %39, %neg18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %and19)
  %41 = ptrtoint ptr %base_addr13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_addr13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !31
  br label %if.end25

if.end25:                                         ; preds = %if.then10, %__mtk_pll_tuner_disable.exit.if.end25_crit_edge
  %en_addr = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 8
  %43 = ptrtoint ptr %en_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %en_addr, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !28
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %pll_en_bit = getelementptr inbounds %struct.mtk_pll_data, ptr %48, i32 0, i32 23
  %49 = ptrtoint ptr %pll_en_bit to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pll_en_bit, align 4
  %conv = zext i8 %50 to i32
  %shl = shl nuw i32 1, %conv
  %neg32 = xor i32 %shl, -1
  %and33 = and i32 %46, %neg32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %and33)
  %52 = ptrtoint ptr %en_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %en_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #7, !srcloc !31
  %pwr_addr = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 3
  %54 = ptrtoint ptr %pwr_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pwr_addr, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %57 = or i32 %56, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %pwr_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pwr_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #7, !srcloc !31
  %60 = ptrtoint ptr %pwr_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pwr_addr, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %63 = and i32 %62, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %pwr_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pwr_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #7, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pll_is_prepared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %en_addr = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %en_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %en_addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !28
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %data = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %pll_en_bit = getelementptr inbounds %struct.mtk_pll_data, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %pll_en_bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pll_en_bit, align 4
  %conv = zext i8 %7 to i32
  %8 = lshr i32 %3, %conv
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd_addr = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %pd_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd_addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %data = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 9
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %pd_shift = getelementptr inbounds %struct.mtk_pll_data, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %pd_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pd_shift, align 4
  %pcw_addr = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 6
  %7 = ptrtoint ptr %pcw_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcw_addr, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !28
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %pcw_shift = getelementptr inbounds %struct.mtk_pll_data, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %pcw_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcw_shift, align 4
  %shr9 = lshr i32 %10, %14
  %pcwbits = getelementptr inbounds %struct.mtk_pll_data, ptr %12, i32 0, i32 15
  %15 = ptrtoint ptr %pcwbits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcwbits, align 4
  %sub11 = sub i32 32, %16
  %shr12 = lshr i32 -1, %sub11
  %and14 = and i32 %shr12, %shr9
  %pcwibits.i = getelementptr inbounds %struct.mtk_pll_data, ptr %12, i32 0, i32 16
  %17 = ptrtoint ptr %pcwibits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcwibits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %spec.select.i = select i1 %tobool.not.i, i32 7, i32 %18
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %spec.select.i)
  %cmp.not.i = icmp sgt i32 %16, %spec.select.i
  %conv.i = zext i32 %parent_rate to i64
  %conv5.i = zext i32 %and14 to i64
  %mul.i = mul nuw i64 %conv5.i, %conv.i
  br i1 %cmp.not.i, label %if.end13.i, label %if.end13.thread.i

if.end13.thread.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t3237.i = trunc i64 %mul.i to i32
  br label %19

if.end13.i:                                       ; preds = %entry
  %sub.i = sub i32 %16, %spec.select.i
  %sub8.i = sub i32 32, %sub.i
  %shr.i = lshr i32 -1, %sub8.i
  %conv9.i = zext i32 %shr.i to i64
  %and10.i = and i64 %mul.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i = icmp eq i64 %and10.i, 0
  %sh_prom.i = zext i32 %sub.i to i64
  %shr14.i = lshr i64 %mul.i, %sh_prom.i
  %extract.t32.i = trunc i64 %shr14.i to i32
  %extract.t.i = add i32 %extract.t32.i, 1
  br i1 %tobool11.not.i, label %if.end13.i._crit_edge, label %if.end13.i.__mtk_pll_recalc_rate.exit_crit_edge

if.end13.i.__mtk_pll_recalc_rate.exit_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mtk_pll_recalc_rate.exit

if.end13.i._crit_edge:                            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %19

19:                                               ; preds = %if.end13.i._crit_edge, %if.end13.thread.i
  %extract.t3239.i = phi i32 [ %extract.t3237.i, %if.end13.thread.i ], [ %extract.t32.i, %if.end13.i._crit_edge ]
  br label %__mtk_pll_recalc_rate.exit

__mtk_pll_recalc_rate.exit:                       ; preds = %19, %if.end13.i.__mtk_pll_recalc_rate.exit_crit_edge
  %20 = phi i32 [ %extract.t3239.i, %19 ], [ %extract.t.i, %if.end13.i.__mtk_pll_recalc_rate.exit_crit_edge ]
  %21 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %21, %6
  %and = and i32 %shr, 7
  %notmask = shl nsw i32 -1, %and
  %add19.i = xor i32 %notmask, -1
  %sub20.i = add i32 %20, %add19.i
  %div.i23 = lshr i32 %sub20.i, %and
  ret i32 %div.i23
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %data.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %div_table5.i = getelementptr inbounds %struct.mtk_pll_data, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %div_table5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %div_table5.i, align 4
  %fmax.i = getelementptr inbounds %struct.mtk_pll_data, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %fmax.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmax.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %rate) #7
  %tobool9.not.i = icmp eq ptr %5, null
  br i1 %tobool9.not.i, label %for.cond26.preheader.i, label %if.then10.i

for.cond26.preheader.i:                           ; preds = %entry
  %fmin1.i = getelementptr inbounds %struct.mtk_pll_data, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %fmin1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmin1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1000000000, i32 %10
  %conv.i = zext i32 %8 to i64
  %conv31.i = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %spec.select.i)
  %cmp32.not.i = icmp ult i32 %8, %spec.select.i
  br i1 %cmp32.not.i, label %for.inc36.i, label %for.cond26.preheader.i.if.end39.i_crit_edge

for.cond26.preheader.i.if.end39.i_crit_edge:      ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then10.i:                                      ; preds = %entry
  %freq11.i = getelementptr inbounds %struct.mtk_pll_div_table, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %freq11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %freq11.i, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %8, i32 %12) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then10.i
  %val.0.i = phi i32 [ 0, %if.then10.i ], [ %add.i, %for.cond.i.for.cond.i_crit_edge ]
  %add.i = add i32 %val.0.i, 1
  %freq18.i = getelementptr %struct.mtk_pll_div_table, ptr %5, i32 %add.i, i32 1
  %14 = ptrtoint ptr %freq18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freq18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp19.not.i = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp23.i = icmp ugt i32 %13, %15
  %or.cond.i = select i1 %cmp19.not.i, i1 true, i1 %cmp23.i
  br i1 %or.cond.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 1, %val.0.i
  %.pre.i = zext i32 %13 to i64
  br label %if.end39.i

for.inc36.i:                                      ; preds = %for.cond26.preheader.i
  %mul.1.i = shl nuw nsw i64 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.1.i, i64 %conv31.i)
  %cmp32.not.1.i = icmp ult i64 %mul.1.i, %conv31.i
  br i1 %cmp32.not.1.i, label %for.inc36.1.i, label %for.inc36.i.if.end39.i_crit_edge

for.inc36.i.if.end39.i_crit_edge:                 ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

for.inc36.1.i:                                    ; preds = %for.inc36.i
  %mul.2.i = shl nuw nsw i64 %conv.i, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.2.i, i64 %conv31.i)
  %cmp32.not.2.i = icmp ult i64 %mul.2.i, %conv31.i
  br i1 %cmp32.not.2.i, label %for.inc36.2.i, label %for.inc36.1.i.if.end39.i_crit_edge

for.inc36.1.i.if.end39.i_crit_edge:               ; preds = %for.inc36.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

for.inc36.2.i:                                    ; preds = %for.inc36.1.i
  %mul.3.i = shl nuw nsw i64 %conv.i, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.3.i, i64 %conv31.i)
  %cmp32.not.3.i = icmp ult i64 %mul.3.i, %conv31.i
  br i1 %cmp32.not.3.i, label %for.inc36.3.i, label %for.inc36.2.i.if.end39.i_crit_edge

for.inc36.2.i.if.end39.i_crit_edge:               ; preds = %for.inc36.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

for.inc36.3.i:                                    ; preds = %for.inc36.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.4.i = shl nuw nsw i64 %conv.i, 4
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.4.i, i64 %conv31.i)
  %cmp32.not.4.i = icmp ult i64 %mul.4.i, %conv31.i
  %spec.select388.i = select i1 %cmp32.not.4.i, i32 5, i32 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %for.inc36.3.i, %for.inc36.2.i.if.end39.i_crit_edge, %for.inc36.1.i.if.end39.i_crit_edge, %for.inc36.i.if.end39.i_crit_edge, %for.end.i, %for.cond26.preheader.i.if.end39.i_crit_edge
  %conv48.pre-phi.i = phi i64 [ %.pre.i, %for.end.i ], [ %conv.i, %for.inc36.2.i.if.end39.i_crit_edge ], [ %conv.i, %for.inc36.1.i.if.end39.i_crit_edge ], [ %conv.i, %for.inc36.i.if.end39.i_crit_edge ], [ %conv.i, %for.cond26.preheader.i.if.end39.i_crit_edge ], [ %conv.i, %for.inc36.3.i ]
  %storemerge.i = phi i32 [ %shl.i, %for.end.i ], [ 8, %for.inc36.2.i.if.end39.i_crit_edge ], [ 4, %for.inc36.1.i.if.end39.i_crit_edge ], [ 2, %for.inc36.i.if.end39.i_crit_edge ], [ 1, %for.cond26.preheader.i.if.end39.i_crit_edge ], [ 16, %for.inc36.3.i ]
  %val.2.i = phi i32 [ %val.0.i, %for.end.i ], [ 3, %for.inc36.2.i.if.end39.i_crit_edge ], [ 2, %for.inc36.1.i.if.end39.i_crit_edge ], [ 1, %for.inc36.i.if.end39.i_crit_edge ], [ 0, %for.cond26.preheader.i.if.end39.i_crit_edge ], [ %spec.select388.i, %for.inc36.3.i ]
  %pcwibits.i = getelementptr inbounds %struct.mtk_pll_data, ptr %3, i32 0, i32 16
  %16 = ptrtoint ptr %pcwibits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcwibits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool41.not.i = icmp eq i32 %17, 0
  %spec.select359.i = select i1 %tobool41.not.i, i32 7, i32 %17
  %sh_prom.i = zext i32 %val.2.i to i64
  %shl49.i = shl i64 %conv48.pre-phi.i, %sh_prom.i
  %pcwbits.i = getelementptr inbounds %struct.mtk_pll_data, ptr %3, i32 0, i32 15
  %18 = ptrtoint ptr %pcwbits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcwbits.i, align 4
  %sub.i = sub i32 %19, %spec.select359.i
  %sh_prom51.i = zext i32 %sub.i to i64
  %shl52.i = shl i64 %shl49.i, %sh_prom51.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl52.i)
  %cmp232.i = icmp ult i64 %shl52.i, 4294967296
  br i1 %cmp232.i, label %if.then236.i, label %if.else242.i, !prof !61

if.then236.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv237.i = trunc i64 %shl52.i to i32
  %div240.i = udiv i32 %conv237.i, %1
  br label %mtk_pll_calc_values.exit

if.else242.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %shl52.i) #12, !srcloc !62
  %asmresult1.i.i = extractvalue { i64, i64 } %20, 1
  %extract.t385.i = trunc i64 %asmresult1.i.i to i32
  br label %mtk_pll_calc_values.exit

mtk_pll_calc_values.exit:                         ; preds = %if.else242.i, %if.then236.i
  %_pcw.0.off0.i = phi i32 [ %div240.i, %if.then236.i ], [ %extract.t385.i, %if.else242.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %spec.select359.i)
  %cmp.not.i = icmp sgt i32 %19, %spec.select359.i
  %conv.i8 = zext i32 %1 to i64
  %conv5.i = zext i32 %_pcw.0.off0.i to i64
  %mul.i = mul nuw i64 %conv5.i, %conv.i8
  br i1 %cmp.not.i, label %if.end13.i, label %if.end13.thread.i

if.end13.thread.i:                                ; preds = %mtk_pll_calc_values.exit
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t3237.i = trunc i64 %mul.i to i32
  br label %21

if.end13.i:                                       ; preds = %mtk_pll_calc_values.exit
  %sub8.i = sub i32 32, %sub.i
  %shr.i10 = lshr i32 -1, %sub8.i
  %conv9.i = zext i32 %shr.i10 to i64
  %and10.i = and i64 %mul.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i = icmp eq i64 %and10.i, 0
  %shr14.i = lshr i64 %mul.i, %sh_prom51.i
  %extract.t32.i = trunc i64 %shr14.i to i32
  %extract.t.i12 = add i32 %extract.t32.i, 1
  br i1 %tobool11.not.i, label %if.end13.i._crit_edge, label %if.end13.i.__mtk_pll_recalc_rate.exit_crit_edge

if.end13.i.__mtk_pll_recalc_rate.exit_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mtk_pll_recalc_rate.exit

if.end13.i._crit_edge:                            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %21

21:                                               ; preds = %if.end13.i._crit_edge, %if.end13.thread.i
  %extract.t3239.i = phi i32 [ %extract.t3237.i, %if.end13.thread.i ], [ %extract.t32.i, %if.end13.i._crit_edge ]
  br label %__mtk_pll_recalc_rate.exit

__mtk_pll_recalc_rate.exit:                       ; preds = %21, %if.end13.i.__mtk_pll_recalc_rate.exit_crit_edge
  %22 = phi i32 [ %extract.t3239.i, %21 ], [ %extract.t.i12, %if.end13.i.__mtk_pll_recalc_rate.exit_crit_edge ]
  %add19.i = add i32 %storemerge.i, -1
  %sub20.i = add i32 %add19.i, %22
  %div.i13 = udiv i32 %sub20.i, %storemerge.i
  ret i32 %div.i13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %div_table5.i = getelementptr inbounds %struct.mtk_pll_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %div_table5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div_table5.i, align 4
  %fmax.i = getelementptr inbounds %struct.mtk_pll_data, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %fmax.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmax.i, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %rate) #7
  %tobool9.not.i = icmp eq ptr %3, null
  br i1 %tobool9.not.i, label %for.cond26.preheader.i, label %if.then10.i

for.cond26.preheader.i:                           ; preds = %entry
  %fmin1.i = getelementptr inbounds %struct.mtk_pll_data, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %fmin1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmin1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1000000000, i32 %8
  %conv.i = zext i32 %6 to i64
  %conv31.i = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %spec.select.i)
  %cmp32.not.i = icmp ult i32 %6, %spec.select.i
  br i1 %cmp32.not.i, label %for.inc36.i, label %for.cond26.preheader.i.if.end39.i_crit_edge

for.cond26.preheader.i.if.end39.i_crit_edge:      ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then10.i:                                      ; preds = %entry
  %freq11.i = getelementptr inbounds %struct.mtk_pll_div_table, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %freq11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freq11.i, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %6, i32 %10) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then10.i
  %val.0.i = phi i32 [ 0, %if.then10.i ], [ %add.i, %for.cond.i.for.cond.i_crit_edge ]
  %add.i = add i32 %val.0.i, 1
  %freq18.i = getelementptr %struct.mtk_pll_div_table, ptr %3, i32 %add.i, i32 1
  %12 = ptrtoint ptr %freq18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freq18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp19.not.i = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp23.i = icmp ugt i32 %11, %13
  %or.cond.i = select i1 %cmp19.not.i, i1 true, i1 %cmp23.i
  br i1 %or.cond.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 1, %val.0.i
  %.pre.i = zext i32 %11 to i64
  br label %if.end39.i

for.inc36.i:                                      ; preds = %for.cond26.preheader.i
  %mul.1.i = shl nuw nsw i64 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.1.i, i64 %conv31.i)
  %cmp32.not.1.i = icmp ult i64 %mul.1.i, %conv31.i
  br i1 %cmp32.not.1.i, label %for.inc36.1.i, label %for.inc36.i.if.end39.i_crit_edge

for.inc36.i.if.end39.i_crit_edge:                 ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

for.inc36.1.i:                                    ; preds = %for.inc36.i
  %mul.2.i = shl nuw nsw i64 %conv.i, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.2.i, i64 %conv31.i)
  %cmp32.not.2.i = icmp ult i64 %mul.2.i, %conv31.i
  br i1 %cmp32.not.2.i, label %for.inc36.2.i, label %for.inc36.1.i.if.end39.i_crit_edge

for.inc36.1.i.if.end39.i_crit_edge:               ; preds = %for.inc36.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

for.inc36.2.i:                                    ; preds = %for.inc36.1.i
  %mul.3.i = shl nuw nsw i64 %conv.i, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.3.i, i64 %conv31.i)
  %cmp32.not.3.i = icmp ult i64 %mul.3.i, %conv31.i
  br i1 %cmp32.not.3.i, label %for.inc36.3.i, label %for.inc36.2.i.if.end39.i_crit_edge

for.inc36.2.i.if.end39.i_crit_edge:               ; preds = %for.inc36.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

for.inc36.3.i:                                    ; preds = %for.inc36.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.4.i = shl nuw nsw i64 %conv.i, 4
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.4.i, i64 %conv31.i)
  %cmp32.not.4.i = icmp ult i64 %mul.4.i, %conv31.i
  %spec.select388.i = select i1 %cmp32.not.4.i, i32 5, i32 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %for.inc36.3.i, %for.inc36.2.i.if.end39.i_crit_edge, %for.inc36.1.i.if.end39.i_crit_edge, %for.inc36.i.if.end39.i_crit_edge, %for.end.i, %for.cond26.preheader.i.if.end39.i_crit_edge
  %conv48.pre-phi.i = phi i64 [ %.pre.i, %for.end.i ], [ %conv.i, %for.inc36.2.i.if.end39.i_crit_edge ], [ %conv.i, %for.inc36.1.i.if.end39.i_crit_edge ], [ %conv.i, %for.inc36.i.if.end39.i_crit_edge ], [ %conv.i, %for.cond26.preheader.i.if.end39.i_crit_edge ], [ %conv.i, %for.inc36.3.i ]
  %storemerge.i = phi i32 [ %shl.i, %for.end.i ], [ 8, %for.inc36.2.i.if.end39.i_crit_edge ], [ 4, %for.inc36.1.i.if.end39.i_crit_edge ], [ 2, %for.inc36.i.if.end39.i_crit_edge ], [ 1, %for.cond26.preheader.i.if.end39.i_crit_edge ], [ 16, %for.inc36.3.i ]
  %val.2.i = phi i32 [ %val.0.i, %for.end.i ], [ 3, %for.inc36.2.i.if.end39.i_crit_edge ], [ 2, %for.inc36.1.i.if.end39.i_crit_edge ], [ 1, %for.inc36.i.if.end39.i_crit_edge ], [ 0, %for.cond26.preheader.i.if.end39.i_crit_edge ], [ %spec.select388.i, %for.inc36.3.i ]
  %pcwibits.i = getelementptr inbounds %struct.mtk_pll_data, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %pcwibits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcwibits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool41.not.i = icmp eq i32 %15, 0
  %spec.select359.i = select i1 %tobool41.not.i, i32 7, i32 %15
  %sh_prom.i = zext i32 %val.2.i to i64
  %shl49.i = shl i64 %conv48.pre-phi.i, %sh_prom.i
  %pcwbits.i = getelementptr inbounds %struct.mtk_pll_data, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %pcwbits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcwbits.i, align 4
  %sub.i = sub i32 %17, %spec.select359.i
  %sh_prom51.i = zext i32 %sub.i to i64
  %shl52.i = shl i64 %shl49.i, %sh_prom51.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl52.i)
  %cmp232.i = icmp ult i64 %shl52.i, 4294967296
  br i1 %cmp232.i, label %if.then236.i, label %if.else242.i, !prof !61

if.then236.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv237.i = trunc i64 %shl52.i to i32
  %div240.i = udiv i32 %conv237.i, %parent_rate
  br label %mtk_pll_calc_values.exit

if.else242.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %parent_rate, i64 %shl52.i) #12, !srcloc !62
  %asmresult1.i.i = extractvalue { i64, i64 } %18, 1
  %extract.t385.i = trunc i64 %asmresult1.i.i to i32
  br label %mtk_pll_calc_values.exit

mtk_pll_calc_values.exit:                         ; preds = %if.else242.i, %if.then236.i
  %_pcw.0.off0.i = phi i32 [ %div240.i, %if.then236.i ], [ %extract.t385.i, %if.else242.i ]
  %tuner_en_addr.i.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 5
  %19 = ptrtoint ptr %tuner_en_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tuner_en_addr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.else.i.i3, label %if.then.i.i

if.then.i.i:                                      ; preds = %mtk_pll_calc_values.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #7, !srcloc !28
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %tuner_en_bit.i.i = getelementptr inbounds %struct.mtk_pll_data, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %tuner_en_bit.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tuner_en_bit.i.i, align 4
  %conv.i.i = zext i8 %26 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i2 = and i32 %22, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i.i2) #7
  %28 = ptrtoint ptr %tuner_en_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner_en_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !31
  br label %__mtk_pll_tuner_disable.exit.i

if.else.i.i3:                                     ; preds = %mtk_pll_calc_values.exit
  %tuner_addr.i.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 4
  %30 = ptrtoint ptr %tuner_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tuner_addr.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i.i, label %if.else.i.i3.__mtk_pll_tuner_disable.exit.i_crit_edge, label %if.then5.i.i

if.else.i.i3.__mtk_pll_tuner_disable.exit.i_crit_edge: ; preds = %if.else.i.i3
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mtk_pll_tuner_disable.exit.i

if.then5.i.i:                                     ; preds = %if.else.i.i3
  call void @__sanitizer_cov_trace_pc() #9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %33 = and i32 %32, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %tuner_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tuner_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !31
  br label %__mtk_pll_tuner_disable.exit.i

__mtk_pll_tuner_disable.exit.i:                   ; preds = %if.then5.i.i, %if.else.i.i3.__mtk_pll_tuner_disable.exit.i_crit_edge, %if.then.i.i
  %pd_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 2
  %36 = ptrtoint ptr %pd_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pd_addr.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !28
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %pd_shift.i = getelementptr inbounds %struct.mtk_pll_data, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %pd_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pd_shift.i, align 4
  %shl.i5 = shl i32 7, %43
  %neg.i6 = xor i32 %shl.i5, -1
  %and.i = and i32 %39, %neg.i6
  %44 = tail call i32 @llvm.cttz.i32(i32 %storemerge.i, i1 true) #7, !range !64
  %shl4.i = shl i32 %44, %43
  %or.i = or i32 %and.i, %shl4.i
  %45 = ptrtoint ptr %pd_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pd_addr.i, align 4
  %pcw_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 6
  %47 = ptrtoint ptr %pcw_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcw_addr.i, align 4
  %cmp.not.i = icmp eq ptr %46, %48
  br i1 %cmp.not.i, label %__mtk_pll_tuner_disable.exit.i.if.end.i_crit_edge, label %do.body.i

__mtk_pll_tuner_disable.exit.i.if.end.i_crit_edge: ; preds = %__mtk_pll_tuner_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.i:                                        ; preds = %__mtk_pll_tuner_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %50 = ptrtoint ptr %pd_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pd_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #7, !srcloc !31
  %52 = ptrtoint ptr %pcw_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcw_addr.i, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !28
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %__mtk_pll_tuner_disable.exit.i.if.end.i_crit_edge
  %val.0.i8 = phi i32 [ %55, %do.body.i ], [ %or.i, %__mtk_pll_tuner_disable.exit.i.if.end.i_crit_edge ]
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %pcw_shift.i = getelementptr inbounds %struct.mtk_pll_data, ptr %57, i32 0, i32 18
  %58 = ptrtoint ptr %pcw_shift.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pcw_shift.i, align 4
  %shl14.neg.i = shl nsw i32 -1, %59
  %pcwbits.i9 = getelementptr inbounds %struct.mtk_pll_data, ptr %57, i32 0, i32 15
  %60 = ptrtoint ptr %pcwbits.i9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pcwbits.i9, align 4
  %62 = add i32 %59, %61
  %sub21.i = sub i32 32, %62
  %shr.i10 = lshr i32 -1, %sub21.i
  %and22.i = and i32 %shr.i10, %shl14.neg.i
  %neg24.i = xor i32 %and22.i, -1
  %and25.i = and i32 %val.0.i8, %neg24.i
  %shl28.i = shl i32 %_pcw.0.off0.i, %59
  %or29.i = or i32 %and25.i, %shl28.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %or29.i) #7
  %64 = ptrtoint ptr %pcw_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcw_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #7, !srcloc !31
  %pcw_chg_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 7
  %66 = ptrtoint ptr %pcw_chg_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcw_chg_addr.i, align 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %69 = or i32 %68, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %pcw_chg_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcw_chg_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #7, !srcloc !31
  %tuner_addr.i = getelementptr inbounds %struct.mtk_clk_pll, ptr %hw, i32 0, i32 4
  %72 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tuner_addr.i, align 4
  %tobool.not.i11 = icmp eq ptr %73, null
  br i1 %tobool.not.i11, label %if.end.i.if.end50.i_crit_edge, label %do.body45.i

if.end.i.if.end50.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

do.body45.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %add48.i = add i32 %or29.i, 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %add48.i) #7
  %75 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tuner_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #7, !srcloc !31
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.body45.i, %if.end.i.if.end50.i_crit_edge
  %77 = ptrtoint ptr %tuner_en_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tuner_en_addr.i.i, align 4
  %tobool.not.i75.i = icmp eq ptr %78, null
  br i1 %tobool.not.i75.i, label %if.else.i83.i, label %if.then.i80.i

if.then.i80.i:                                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %78) #7, !srcloc !28
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  %81 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i, align 4
  %tuner_en_bit.i77.i = getelementptr inbounds %struct.mtk_pll_data, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %tuner_en_bit.i77.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tuner_en_bit.i77.i, align 4
  %conv.i78.i = zext i8 %84 to i32
  %shl.i79.i = shl nuw i32 1, %conv.i78.i
  %or.i.i = or i32 %shl.i79.i, %80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %85 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %86 = ptrtoint ptr %tuner_en_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tuner_en_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #7, !srcloc !31
  br label %mtk_pll_set_rate_regs.exit

if.else.i83.i:                                    ; preds = %if.end50.i
  %88 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tuner_addr.i, align 4
  %tobool4.not.i82.i = icmp eq ptr %89, null
  br i1 %tobool4.not.i82.i, label %if.else.i83.i.mtk_pll_set_rate_regs.exit_crit_edge, label %if.then5.i84.i

if.else.i83.i.mtk_pll_set_rate_regs.exit_crit_edge: ; preds = %if.else.i83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_pll_set_rate_regs.exit

if.then5.i84.i:                                   ; preds = %if.else.i83.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %89) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %91 = or i32 %90, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %92 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tuner_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #7, !srcloc !31
  br label %mtk_pll_set_rate_regs.exit

mtk_pll_set_rate_regs.exit:                       ; preds = %if.then5.i84.i, %if.else.i83.i.mtk_pll_set_rate_regs.exit_crit_edge, %if.then.i80.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 4294960) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-pll.c", i32 371, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mtk_clk_register_plls._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mtk_clk_register_plls._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-pll.c", i32 381, i32 4}
!8 = !{ptr @mtk_clk_register_plls._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mtk_clk_register_plls._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_mtk_clk_register_plls, !11, !"__ksymtab_mtk_clk_register_plls", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-pll.c", i32 389, i32 1}
!12 = !{ptr @__UNIQUE_ID_file183, !13, !"__UNIQUE_ID_file183", i1 false, i1 false}
!13 = !{!"../drivers/clk/mediatek/clk-pll.c", i32 391, i32 1}
!14 = !{ptr @__UNIQUE_ID_license184, !13, !"__UNIQUE_ID_license184", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-pll.c", i32 320, i32 28}
!17 = !{ptr @mtk_pll_ops, !18, !"mtk_pll_ops", i1 false, i1 false}
!18 = !{!"../drivers/clk/mediatek/clk-pll.c", i32 305, i32 29}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 3997874}
!29 = !{i64 2153022887}
!30 = !{i64 2153023177}
!31 = !{i64 3997456}
!32 = !{i64 2153024348}
!33 = !{i64 2153024638}
!34 = !{i64 2153025805}
!35 = !{i64 2153026107}
!36 = !{i64 2153026845}
!37 = !{i64 2153027060}
!38 = !{i64 2153007443}
!39 = !{i64 2153007753}
!40 = !{i64 2153008401}
!41 = !{i64 2153008695}
!42 = !{i64 2153028346}
!43 = !{i64 2153028561}
!44 = !{i64 2153029305}
!45 = !{i64 2153029520}
!46 = !{i64 2153009352}
!47 = !{i64 2153009662}
!48 = !{i64 2153010310}
!49 = !{i64 2153010604}
!50 = !{i64 2153030264}
!51 = !{i64 2153030479}
!52 = !{i64 2153031115}
!53 = !{i64 2153031417}
!54 = !{i64 2153032051}
!55 = !{i64 2153032341}
!56 = !{i64 2153032976}
!57 = !{i64 2153033266}
!58 = !{i64 2153006108}
!59 = !{i64 2153021115}
!60 = !{i64 2153021589}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2148890449, i64 2148890729, i64 2148891063, i64 2148891397}
!63 = !{i64 2153011237}
!64 = !{i32 0, i32 33}
!65 = !{i64 2153011475}
!66 = !{i64 2153012115}
!67 = !{i64 2153013489}
!68 = !{i64 2153014146}
!69 = !{i64 2153014444}
!70 = !{i64 2153014835}
