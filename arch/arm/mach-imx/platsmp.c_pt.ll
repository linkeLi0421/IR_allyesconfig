; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-imx/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_desc = type { i32, i32, i32, i32 }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@scu_io_desc = internal global %struct.map_desc { i32 0, i32 0, i32 4096, i32 0 }, section ".init.data", align 4
@scu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@imx_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr @imx_smp_init_cpus, ptr @imx_smp_prepare_cpus, ptr null, ptr @imx_boot_secondary, ptr @imx_cpu_kill, ptr @imx_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@imx7_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr @imx7_smp_init_cpus, ptr null, ptr null, ptr @imx_boot_secondary, ptr @imx_cpu_kill, ptr @imx_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@ls1021a_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr null, ptr @ls1021a_smp_prepare_cpus, ptr null, ptr @ls1021a_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@g_diag_reg = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,ls1021a-dcfg\00", [47 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.2 = private unnamed_addr constant [9 x i8] c"scu_base\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 21, i32 22 }
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"g_diag_reg\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 20, i32 5 }
@___asan_gen_.9 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 108, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [31 x i8] c"../arch/arm/mach-imx/platsmp.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 136, i32 43 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @scu_base, ptr @g_diag_reg, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_diag_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_scu_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #7, !srcloc !26
  %and = lshr i32 %0, 7
  %shr = and i32 %and, 16777216
  %and1 = lshr i32 %0, 6
  %shr2 = and i32 %and1, 20971520
  %and3 = lshr i32 %0, 4
  %shr4 = and i32 %and3, 11534336
  %and6 = and i32 %0, 1048575
  %add = or i32 %and6, %shr4
  %add5 = or i32 %add, %shr2
  %add7 = or i32 %add5, %shr
  %or = or i32 %add7, -201326592
  store i32 %or, ptr @scu_io_desc, align 4
  %shr8 = lshr i32 %0, 12
  store i32 %shr8, ptr getelementptr inbounds (%struct.map_desc, ptr @scu_io_desc, i32 0, i32 1), align 4
  tail call void @iotable_init(ptr noundef nonnull @scu_io_desc, i32 noundef 1) #4
  %1 = inttoptr i32 %or to ptr
  store ptr %1, ptr @scu_base, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_smp_prepare() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scu_base, align 4
  tail call void @scu_enable(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_smp_init_cpus() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scu_base, align 4
  %call = tail call i32 @scu_get_core_count(ptr noundef %0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp3 = icmp slt i32 %call, 4
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %set_cpu_possible.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %set_cpu_possible.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %i.04)
  %cmp.not.i.i.i.i = icmp ugt i32 %1, %i.04
  br i1 %cmp.not.i.i.i.i, label %for.body.set_cpu_possible.exit_crit_edge, label %land.rhs.i.i.i.i

for.body.set_cpu_possible.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_cpu_possible.exit

land.rhs.i.i.i.i:                                 ; preds = %for.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, label %if.then.i.i.i.i, !prof !27

land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_cpu_possible.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %set_cpu_possible.exit

set_cpu_possible.exit:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, %for.body.set_cpu_possible.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %i.04, ptr noundef nonnull @__cpu_possible_mask) #4
  %inc = add i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %set_cpu_possible.exit.for.end_crit_edge, label %set_cpu_possible.exit.for.body_crit_edge

set_cpu_possible.exit.for.body_crit_edge:         ; preds = %set_cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

set_cpu_possible.exit.for.end_crit_edge:          ; preds = %set_cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %set_cpu_possible.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scu_base, align 4
  tail call void @scu_enable(ptr noundef %0) #4
  %1 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 1", "=r,~{cc}"() #7, !srcloc !28
  store i32 %1, ptr @g_diag_reg, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %2(ptr noundef nonnull @g_diag_reg, i32 noundef 4) #4
  %call.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @g_diag_reg to i32)) #4
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @g_diag_reg, i32 1) to i32)) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

entry.__sync_cache_range_w.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(i32 noundef %call.i, i32 noundef %call1.i) #4
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %entry.__sync_cache_range_w.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @imx_set_cpu_jump(i32 noundef %cpu, ptr noundef nonnull @v7_secondary_startup) #4
  tail call void @imx_enable_cpu(i32 noundef %cpu, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_cpu_kill(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_cpu_die(i32 noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx7_smp_init_cpus() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_next_cpu_node(ptr noundef null) #4
  %cmp.not12 = icmp eq ptr %call, null
  br i1 %cmp.not12, label %entry.for.body4.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.body4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4.preheader

for.cond2.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp315 = icmp slt i32 %inc, 4
  br i1 %cmp315, label %for.cond2.preheader.for.body4.preheader_crit_edge, label %for.cond2.preheader.for.end7_crit_edge

for.cond2.preheader.for.end7_crit_edge:           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end7

for.cond2.preheader.for.body4.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.cond2.preheader.for.body4.preheader_crit_edge, %entry.for.body4.preheader_crit_edge
  %i.016.ph = phi i32 [ 0, %entry.for.body4.preheader_crit_edge ], [ %inc, %for.cond2.preheader.for.body4.preheader_crit_edge ]
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ncores.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %np.013 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %inc = add i32 %ncores.014, 1
  %call1 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %np.013) #4
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.cond2.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body4:                                        ; preds = %set_cpu_possible.exit.for.body4_crit_edge, %for.body4.preheader
  %i.016 = phi i32 [ %inc6, %set_cpu_possible.exit.for.body4_crit_edge ], [ %i.016.ph, %for.body4.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %i.016)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %i.016
  br i1 %cmp.not.i.i.i.i, label %for.body4.set_cpu_possible.exit_crit_edge, label %land.rhs.i.i.i.i

for.body4.set_cpu_possible.exit_crit_edge:        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_cpu_possible.exit

land.rhs.i.i.i.i:                                 ; preds = %for.body4
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, label %if.then.i.i.i.i, !prof !27

land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_cpu_possible.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %set_cpu_possible.exit

set_cpu_possible.exit:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, %for.body4.set_cpu_possible.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %i.016, ptr noundef nonnull @__cpu_possible_mask) #4
  %inc6 = add i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc6, 4
  br i1 %exitcond.not, label %set_cpu_possible.exit.for.end7_crit_edge, label %set_cpu_possible.exit.for.body4_crit_edge

set_cpu_possible.exit.for.body4_crit_edge:        ; preds = %set_cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4

set_cpu_possible.exit.for.end7_crit_edge:         ; preds = %set_cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end7

for.end7:                                         ; preds = %set_cpu_possible.exit.for.end7_crit_edge, %for.cond2.preheader.for.end7_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ls1021a_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #4
  %call1 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #4
  tail call void @of_node_put(ptr noundef %call) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !29

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/platsmp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #4, !srcloc !30
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %call11)
  %add.ptr = getelementptr i8, ptr %call1, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !31
  tail call void @iounmap(ptr noundef nonnull %call1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls1021a_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_set_cpu_jump(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v7_secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_enable_cpu(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @imx_smp_ops, !1, !"imx_smp_ops", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/platsmp.c", i32 85, i32 29}
!2 = !{ptr @imx7_smp_ops, !3, !"imx7_smp_ops", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/platsmp.c", i32 112, i32 29}
!4 = !{ptr @ls1021a_smp_ops, !5, !"ls1021a_smp_ops", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/platsmp.c", i32 147, i32 29}
!6 = !{ptr @g_diag_reg, !7, !"g_diag_reg", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-imx/platsmp.c", i32 20, i32 5}
!8 = !{ptr @scu_base, !9, !"scu_base", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-imx/platsmp.c", i32 21, i32 22}
!10 = !{ptr @scu_io_desc, !11, !"scu_io_desc", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-imx/platsmp.c", i32 23, i32 24}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-imx/platsmp.c", i32 136, i32 43}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 649}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 1850}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2153603383, i64 2153603875, i64 2153603420, i64 2153603476, i64 2153603510, i64 2153603534, i64 2153603575, i64 2153603596, i64 2153603624, i64 2153603658}
!31 = !{i64 3991789}
