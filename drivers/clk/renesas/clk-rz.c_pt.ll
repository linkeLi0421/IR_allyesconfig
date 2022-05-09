; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/clk-rz.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-rz.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.rz_cpg = type { %struct.clk_onecell_data, ptr }

@__of_table_rz_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rz-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rz_cpg_clocks_init }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/renesas/clk-rz.c\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't count CPG clocks\0A\00", [40 x i8] zeroinitializer }, align 32
@rz_cpg_clocks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rz_cpg_clocks_init\00", [45 x i8] zeroinitializer }, align 32
@rz_cpg_clocks_init._entry_ptr = internal global ptr @rz_cpg_clocks_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rz_cpg_register_clock.frqcr_tab = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"g\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 93, i32 43 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 94, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 114, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"frqcr_tab\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 56, i32 24 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 58, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 75, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [32 x i8] c"../drivers/clk/renesas/clk-rz.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 77, i32 24 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__of_table_rz_cpg_clks, ptr @rz_cpg_clocks_init._entry, ptr @rz_cpg_clocks_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rz_cpg_register_clock.frqcr_tab, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_cpg_clocks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_cpg_register_clock.frqcr_tab to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rz_cpg_clocks_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %do.end, label %if.end21, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #11
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #8
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.end21.do.body36_crit_edge, label %if.end7.i.i, !prof !29

if.end21.do.body36_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

if.end7.i.i:                                      ; preds = %if.end21
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #12
  %tobool25.not = icmp eq ptr %call7.i.i, null
  %tobool26.not = icmp eq ptr %call8.i.i, null
  %spec.select = select i1 %tobool25.not, i1 true, i1 %tobool26.not, !prof !29
  br i1 %spec.select, label %if.end7.i.i.do.body36_crit_edge, label %for.body.preheader, !prof !29

if.end7.i.i.do.body36_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

do.body36:                                        ; preds = %if.end7.i.i.do.body36_crit_edge, %if.end21.do.body36_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-rz.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 99, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

for.body.preheader:                               ; preds = %if.end7.i.i
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %clk_num, align 4
  %call47 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %reg = getelementptr inbounds %struct.rz_cpg, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call47, ptr %reg, align 8
  br label %for.body

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %for.body.preheader
  %i.095 = phi i32 [ %inc, %if.end61.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #8
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !31
  %call.i89 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %i.095) #8
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call50 = call fastcc ptr @rz_cpg_register_clock(ptr noundef %np, ptr noundef %call7.i.i, ptr noundef %9) #13
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end55, label %if.else

do.end55:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %12 = ptrtoint ptr %call50 to i32
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %np, ptr noundef %11, i32 noundef %12) #14
  br label %if.end61

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.095
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call50, ptr %arrayidx, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else, %do.end55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  %inc = add nuw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.end, label %if.end61.for.body_crit_edge

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call7.i.i) #8
  call void @cpg_mstp_add_clk_domain(ptr noundef %np) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rz_cpg_register_clock(ptr noundef %np, ptr nocapture noundef readonly %cpg, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc zeroext i16 @rz_cpg_read_mode_pins() #13
  %0 = lshr i16 %call1, 2
  %1 = and i16 %0, 1
  %and = zext i16 %1 to i32
  %call2 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %cond = select i1 %tobool.not, i32 30, i32 8
  %call3 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef %call2, i32 noundef 0, i32 noundef %cond, i32 noundef 1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.rz_cpg, ptr %cpg, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(2) @.str.6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !32
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %shr15 = lshr i32 %5, 8
  br label %if.end32

if.else:                                          ; preds = %if.end7
  %call17 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(2) @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24 = getelementptr i8, ptr %3, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #8, !srcloc !32
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !34
  br label %if.end32

if.end32:                                         ; preds = %if.then20, %if.then11
  %val.0.in = phi i32 [ %shr15, %if.then11 ], [ %7, %if.then20 ]
  %val.0 = and i32 %val.0.in, 3
  %arrayidx = getelementptr [4 x i32], ptr @rz_cpg_register_clock.frqcr_tab, i32 0, i32 %val.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call33 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %9, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call3, %if.then ], [ %call33, %if.end32 ], [ inttoptr (i32 -6 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mstp_add_clk_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @rz_cpg_read_mode_pins() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef -50449920, i32 noundef 2) #8
  %call1 = tail call ptr @ioremap(i32 noundef -50434048, i32 noundef 2) #8
  %tobool.not = icmp eq ptr %call, null
  %tobool2.not = icmp eq ptr %call1, null
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool2.not, !prof !29
  br i1 %spec.select, label %do.body6, label %do.end11, !prof !29

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-rz.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 42, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %call1, i16 1024) #8, !srcloc !37
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %call) #8, !srcloc !38
  %1 = tail call i16 @llvm.bswap.i16(i16 %0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !39
  tail call void @iounmap(ptr noundef nonnull %call) #8
  tail call void @iounmap(ptr noundef nonnull %call1) #8
  ret i16 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__of_table_rz_cpg_clks, !1, !"__of_table_rz_cpg_clks", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/clk-rz.c", i32 124, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/clk-rz.c", i32 93, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/clk-rz.c", i32 94, i32 6}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clk/renesas/clk-rz.c", i32 114, i32 4}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rz_cpg_clocks_init._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @rz_cpg_clocks_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @rz_cpg_register_clock.frqcr_tab, !13, !"frqcr_tab", i1 false, i1 false}
!13 = !{!"../drivers/clk/renesas/clk-rz.c", i32 56, i32 24}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/renesas/clk-rz.c", i32 58, i32 19}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/renesas/clk-rz.c", i32 75, i32 19}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/renesas/clk-rz.c", i32 77, i32 24}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2152528272, i64 2152528764, i64 2152528309, i64 2152528365, i64 2152528399, i64 2152528423, i64 2152528464, i64 2152528485, i64 2152528513, i64 2152528547}
!31 = !{!"auto-init"}
!32 = !{i64 4029177}
!33 = !{i64 2152526343}
!34 = !{i64 2152526826}
!35 = !{i64 2152524328, i64 2152524820, i64 2152524365, i64 2152524421, i64 2152524455, i64 2152524479, i64 2152524520, i64 2152524541, i64 2152524569, i64 2152524603}
!36 = !{i64 2151562841}
!37 = !{i64 4028139}
!38 = !{i64 4028339}
!39 = !{i64 2151561424}
