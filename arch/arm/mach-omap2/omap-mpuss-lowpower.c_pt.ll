; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap-mpuss-lowpower.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap-mpuss-lowpower.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap4_cpu_pm_info = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.l2x0_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@omap4_pm_info = weak dso_local global %struct.omap4_cpu_pm_info zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@pm44xx_errata = external dso_local local_unnamed_addr global i16, align 2
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"arch/arm/mach-omap2/omap-mpuss-lowpower.c\00", [54 x i8] zeroinitializer }, align 32
@mpuss_pd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_pm_ops.0 = internal global { ptr, [28 x i8] } { ptr @default_finish_suspend, [28 x i8] zeroinitializer }, align 32
@omap_pm_ops.1 = internal global { ptr, [28 x i8] } { ptr @dummy_cpu_resume, [28 x i8] zeroinitializer }, align 32
@omap_pm_ops.2 = internal global { ptr, [28 x i8] } { ptr @dummy_scu_prepare, [28 x i8] zeroinitializer }, align 32
@omap_pm_ops.3 = internal global { ptr, [28 x i8] } { ptr @dummy_cpu_resume, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Power Management not supported on OMAP4430 ES1.0\0A\00", [46 x i8] zeroinitializer }, align 32
@sar_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu0_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@omap4_mpuss_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Lookup failed for CPU0 pwrdm\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap4_mpuss_init\00", [47 x i8] zeroinitializer }, align 32
@omap4_mpuss_init._entry_ptr = internal global ptr @omap4_mpuss_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@omap4_mpuss_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Lookup failed for CPU1 pwrdm\0A\00", [32 x i8] zeroinitializer }, align 32
@omap4_mpuss_init._entry_ptr.8 = internal global ptr @omap4_mpuss_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@omap4_mpuss_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to lookup MPUSS power domain\0A\00", [57 x i8] zeroinitializer }, align 32
@omap4_mpuss_init._entry_ptr.12 = internal global ptr @omap4_mpuss_init._entry.10, section ".printk_index", align 4
@cpu_context_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@old_cpu1_ns_pa_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@__pcpu_unique_omap4_pm_info = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@l2x0_saved_regs = external dso_local local_unnamed_addr global %struct.l2x0_regs, align 4
@switch.table.omap4_enter_lowpower = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 253, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"mpuss_pd\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 91, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"omap_pm_ops.0\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"omap_pm_ops.1\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"omap_pm_ops.2\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"omap_pm_ops.3\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 360, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"sar_base\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 61, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 376, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 378, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 401, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 403, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 414, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 416, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"cpu_context_offset\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 92, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"old_cpu1_ns_pa_addr\00", align 1
@___asan_gen_.63 = private constant [45 x i8] c"../arch/arm/mach-omap2/omap-mpuss-lowpower.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 62, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [34 x i8] c"switch.table.omap4_enter_lowpower\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @omap4_mpuss_init._entry, ptr @omap4_mpuss_init._entry.10, ptr @omap4_mpuss_init._entry.6, ptr @omap4_mpuss_init._entry_ptr, ptr @omap4_mpuss_init._entry_ptr.12, ptr @omap4_mpuss_init._entry_ptr.8, ptr @.str, ptr @mpuss_pd, ptr @omap_pm_ops.0, ptr @omap_pm_ops.1, ptr @omap_pm_ops.2, ptr @omap_pm_ops.3, ptr @.str.1, ptr @sar_base, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @cpu_context_offset, ptr @old_cpu1_ns_pa_addr, ptr @switch.table.omap4_enter_lowpower], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpuss_pd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_pm_ops.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_pm_ops.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_pm_ops.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_pm_ops.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sar_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_mpuss_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_mpuss_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_mpuss_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_context_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_cpu1_ns_pa_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap4_enter_lowpower to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_enter_lowpower(i32 noundef %cpu, i32 noundef %power_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @omap4_pm_info to i32)
  %2 = inttoptr i32 %add to ptr
  %call = tail call i32 @omap_rev() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1144000580, i32 %call)
  %cmp = icmp eq i32 %call, 1144000580
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %power_state)
  %3 = icmp ult i32 %power_state, 4
  br i1 %3, label %switch.lookup, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.shiftamt = shl i32 %power_state, 3
  %switch.downshift = lshr i32 16843008, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.omap4_enter_lowpower, i32 0, i32 %power_state
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call27 = tail call i32 @pwrdm_pre_transition(ptr noundef null) #7
  %call.i = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext 1, i16 noundef signext 768, i16 noundef zeroext 36) #7
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %call.i, i8 noundef zeroext 1, i16 noundef signext 768, i16 noundef zeroext 36) #7
  %5 = load ptr, ptr @mpuss_pd, align 4
  %call28 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 1
  br i1 %cmp29, label %land.lhs.true, label %switch.lookup.if.end35_crit_edge

switch.lookup.if.end35_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load ptr, ptr @mpuss_pd, align 4
  %call31 = tail call i32 @pwrdm_read_logic_retst(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp eq i32 %call31, 0
  %spec.select = select i1 %cmp32, i32 2, i32 %switch.load
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %switch.lookup.if.end35_crit_edge
  %save_state.1 = phi i32 [ %switch.load, %switch.lookup.if.end35_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %tobool.not.i = icmp eq i32 %cpu, 0
  %7 = load i32, ptr @cpu_context_offset, align 4
  %conv2.i = trunc i32 %7 to i16
  %..i = select i1 %tobool.not.i, i16 1024, i16 2048
  %call3.i = tail call i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext %..i, i16 noundef zeroext %conv2.i) #7
  %8 = load i32, ptr @cpu_context_offset, align 4
  %conv4.i = trunc i32 %8 to i16
  tail call void @omap4_prcm_mpu_write_inst_reg(i32 noundef %call3.i, i16 noundef signext %..i, i16 noundef zeroext %conv4.i) #7
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %conv36 = trunc i32 %power_state to i8
  %call37 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %10, i8 noundef zeroext %conv36) #7
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %call40 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %12, i8 noundef zeroext %switch.masked) #7
  %13 = load ptr, ptr @omap_pm_ops.1, align 4
  %14 = ptrtoint ptr %13 to i32
  %call44 = tail call i32 @__phys_addr_symbol(i32 noundef %14) #7
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %16, ptrtoint (ptr @omap4_pm_info to i32)
  %17 = inttoptr i32 %add.i to ptr
  %wkup_sar_addr.i = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %wkup_sar_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wkup_sar_addr.i, align 4
  %tobool.not.i75 = icmp eq ptr %19, null
  br i1 %tobool.not.i75, label %if.end35.set_cpu_wakeup_addr.exit_crit_edge, label %if.then.i

if.end35.set_cpu_wakeup_addr.exit_crit_edge:      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cpu_wakeup_addr.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %call44) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %20) #7, !srcloc !45
  br label %set_cpu_wakeup_addr.exit

set_cpu_wakeup_addr.exit:                         ; preds = %if.then.i, %if.end35.set_cpu_wakeup_addr.exit_crit_edge
  %21 = load ptr, ptr @omap_pm_ops.2, align 4
  tail call void %21(i32 noundef %cpu, i32 noundef %power_state) #7
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add.i77 = add i32 %23, ptrtoint (ptr @omap4_pm_info to i32)
  %24 = inttoptr i32 %add.i77 to ptr
  %l2x0_sar_addr.i = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %l2x0_sar_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %l2x0_sar_addr.i, align 4
  %tobool.not.i78 = icmp eq ptr %26, null
  br i1 %tobool.not.i78, label %set_cpu_wakeup_addr.exit.l2x0_pwrst_prepare.exit_crit_edge, label %if.then.i79

set_cpu_wakeup_addr.exit.l2x0_pwrst_prepare.exit_crit_edge: ; preds = %set_cpu_wakeup_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %l2x0_pwrst_prepare.exit

if.then.i79:                                      ; preds = %set_cpu_wakeup_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %save_state.1) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %27) #7, !srcloc !45
  br label %l2x0_pwrst_prepare.exit

l2x0_pwrst_prepare.exit:                          ; preds = %if.then.i79, %set_cpu_wakeup_addr.exit.l2x0_pwrst_prepare.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %save_state.1)
  %tobool45.not = icmp eq i32 %save_state.1, 0
  %28 = load ptr, ptr @omap_pm_ops.0, align 4
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %l2x0_pwrst_prepare.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 @cpu_suspend(i32 noundef %save_state.1, ptr noundef %28) #7
  br label %if.end49

if.else:                                          ; preds = %l2x0_pwrst_prepare.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 %28(i32 noundef 0) #7
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then46
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @pm44xx_errata to i32))
  %29 = load i16, ptr @pm44xx_errata, align 2
  %30 = and i16 %29, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool52.not = icmp eq i16 %30, 0
  %or.cond = or i1 %tobool.not.i, %tobool52.not
  br i1 %or.cond, label %if.end49.if.end56_crit_edge, label %if.then55

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gic_dist_enable() #7
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end49.if.end56_crit_edge
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 4
  %call58 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %32, i8 noundef zeroext 3) #7
  %call59 = tail call i32 @pwrdm_post_transition(ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end13 ], [ 0, %if.end56 ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_pre_transition(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_next_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_logic_retst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_post_transition(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_hotplug_cpu(i32 noundef %cpu, i32 noundef %power_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @omap4_pm_info to i32)
  %2 = inttoptr i32 %add to ptr
  %call = tail call i32 @omap_rev() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1144000580, i32 %call)
  %cmp = icmp eq i32 %call, 1144000580
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %conv = trunc i32 %power_state to i8
  %call2 = tail call zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef %4, i1 noundef zeroext false, i8 noundef zeroext %conv) #7
  %conv3 = zext i8 %call2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %cmp4 = icmp eq i8 %call2, 0
  %spec.select = zext i1 %cmp4 to i32
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call9 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef %6) #7
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %call12 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %8, i8 noundef zeroext %call2) #7
  %9 = load ptr, ptr @omap_pm_ops.3, align 4
  %10 = ptrtoint ptr %9 to i32
  %call16 = tail call i32 @__phys_addr_symbol(i32 noundef %10) #7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %12, ptrtoint (ptr @omap4_pm_info to i32)
  %13 = inttoptr i32 %add.i to ptr
  %wkup_sar_addr.i = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %wkup_sar_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wkup_sar_addr.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.set_cpu_wakeup_addr.exit_crit_edge, label %if.then.i

if.end.set_cpu_wakeup_addr.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cpu_wakeup_addr.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %call16) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %16) #7, !srcloc !45
  br label %set_cpu_wakeup_addr.exit

set_cpu_wakeup_addr.exit:                         ; preds = %if.then.i, %if.end.set_cpu_wakeup_addr.exit_crit_edge
  %17 = load ptr, ptr @omap_pm_ops.2, align 4
  tail call void %17(i32 noundef %cpu, i32 noundef %conv3) #7
  %18 = load ptr, ptr @omap_pm_ops.0, align 4
  %call17 = tail call i32 %18(i32 noundef %spec.select) #7
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %call19 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %20, i8 noundef zeroext 3) #7
  br label %cleanup

cleanup:                                          ; preds = %set_cpu_wakeup_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %set_cpu_wakeup_addr.exit ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_clear_all_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_mpuss_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_rev() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1144000580, i32 %call)
  %cmp = icmp eq i32 %call, 1144000580
  br i1 %cmp, label %do.end, label %do.body17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %cleanup

do.body17:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__per_cpu_offset to i32))
  %0 = load i32, ptr @__per_cpu_offset, align 4
  %add = add i32 %0, ptrtoint (ptr @omap4_pm_info to i32)
  %1 = inttoptr i32 %add to ptr
  %2 = load ptr, ptr @sar_base, align 4
  %tobool22.not = icmp eq ptr %2, null
  br i1 %tobool22.not, label %do.body17.if.end32_crit_edge, label %if.then23

do.body17.if.end32_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %2, i32 4068
  %scu_sar_addr = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %scu_sar_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %scu_sar_addr, align 4
  %call.i = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  %4 = load ptr, ptr @sar_base, align 4
  %. = select i1 %cmp.i.not, i32 2564, i32 3584
  %add.ptr28 = getelementptr i8, ptr %4, i32 %.
  %5 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr28, ptr %5, align 4
  %add.ptr31 = getelementptr i8, ptr %4, i32 4080
  %l2x0_sar_addr = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %l2x0_sar_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr31, ptr %l2x0_sar_addr, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %do.body17.if.end32_crit_edge
  %call33 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.2) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call33, ptr %1, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %call44 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef nonnull %call33) #7
  %9 = load i32, ptr @cpu_context_offset, align 4
  %conv2.i = trunc i32 %9 to i16
  %call3.i = tail call i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext 1024, i16 noundef zeroext %conv2.i) #7
  %10 = load i32, ptr @cpu_context_offset, align 4
  %conv4.i = trunc i32 %10 to i16
  tail call void @omap4_prcm_mpu_write_inst_reg(i32 noundef %call3.i, i16 noundef signext 1024, i16 noundef zeroext %conv4.i) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call46 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %12, i8 noundef zeroext 3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @__per_cpu_offset, i32 0, i32 1) to i32))
  %13 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @__per_cpu_offset, i32 0, i32 1), align 4
  %add54 = add i32 %13, ptrtoint (ptr @omap4_pm_info to i32)
  %14 = inttoptr i32 %add54 to ptr
  %15 = load ptr, ptr @sar_base, align 4
  %tobool55.not = icmp eq ptr %15, null
  br i1 %tobool55.not, label %if.end42.if.end70_crit_edge, label %if.then56

if.end42.if.end70_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then56:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr57 = getelementptr i8, ptr %15, i32 4072
  %scu_sar_addr58 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %scu_sar_addr58 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr57, ptr %scu_sar_addr58, align 4
  %call.i134 = tail call i32 @omap_rev() #7
  %and.i135 = and i32 %call.i134, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i135)
  %cmp.i136.not = icmp eq i32 %and.i135, 68
  %17 = load ptr, ptr @sar_base, align 4
  %.159 = select i1 %cmp.i136.not, i32 2568, i32 3588
  %add.ptr65 = getelementptr i8, ptr %17, i32 %.159
  %18 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr65, ptr %18, align 4
  %add.ptr68 = getelementptr i8, ptr %17, i32 4084
  %l2x0_sar_addr69 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %14, i32 0, i32 3
  %20 = ptrtoint ptr %l2x0_sar_addr69 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr68, ptr %l2x0_sar_addr69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then56, %if.end42.if.end70_crit_edge
  %call71 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.5) #7
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call71, ptr %14, align 4
  %tobool74.not = icmp eq ptr %call71, null
  br i1 %tobool74.not, label %do.end78, label %if.end81

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end70
  %call83 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef nonnull %call71) #7
  %22 = load i32, ptr @cpu_context_offset, align 4
  %conv2.i138 = trunc i32 %22 to i16
  %call3.i139 = tail call i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext 2048, i16 noundef zeroext %conv2.i138) #7
  %23 = load i32, ptr @cpu_context_offset, align 4
  %conv4.i140 = trunc i32 %23 to i16
  tail call void @omap4_prcm_mpu_write_inst_reg(i32 noundef %call3.i139, i16 noundef signext 2048, i16 noundef zeroext %conv4.i140) #7
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %14, align 4
  %call85 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %25, i8 noundef zeroext 3) #7
  %call86 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.9) #7
  store ptr %call86, ptr @mpuss_pd, align 4
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %do.end91, label %if.end94

do.end91:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end94:                                         ; preds = %if.end81
  %call95 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef nonnull %call86) #7
  %call.i141 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext 1, i16 noundef signext 768, i16 noundef zeroext 36) #7
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %call.i141, i8 noundef zeroext 1, i16 noundef signext 768, i16 noundef zeroext 36) #7
  %26 = load ptr, ptr @sar_base, align 4
  %tobool96.not = icmp eq ptr %26, null
  br i1 %tobool96.not, label %if.end94.if.end101_crit_edge, label %if.then97

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = tail call i32 @omap_type() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call98)
  %cmp99.not.not = icmp eq i32 %call98, 3
  %27 = select i1 %cmp99.not.not, i32 0, i32 16777216
  %28 = load ptr, ptr @sar_base, align 4
  %add.ptr100 = getelementptr i8, ptr %28, i32 4076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %27) #7, !srcloc !45
  tail call fastcc void @save_l2x0_context() #11
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.end94.if.end101_crit_edge
  %call.i142 = tail call i32 @omap_rev() #7
  %and.i143 = and i32 %call.i142, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i143)
  %cmp.i144.not = icmp eq i32 %and.i143, 68
  br i1 %cmp.i144.not, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  store ptr @omap4_finish_suspend, ptr @omap_pm_ops.0, align 4
  store ptr @omap4_cpu_resume, ptr @omap_pm_ops.1, align 4
  store ptr @scu_pwrst_prepare, ptr @omap_pm_ops.2, align 4
  store ptr @omap4_secondary_startup, ptr @omap_pm_ops.3, align 4
  store i32 8, ptr @cpu_context_offset, align 4
  br label %if.end112

if.else105:                                       ; preds = %if.end101
  %call.i146 = tail call i32 @omap_rev() #7
  %and.i147 = and i32 %call.i146, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i147)
  %cmp.i148.not = icmp eq i32 %and.i147, 84
  br i1 %cmp.i148.not, label %if.else105.if.then110_crit_edge, label %lor.lhs.false

if.else105.if.then110_crit_edge:                  ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

lor.lhs.false:                                    ; preds = %if.else105
  %call.i150 = tail call i32 @omap_rev() #7
  %shr.mask.i = and i32 %call.i150, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i)
  %cmp.i151.not = icmp eq i32 %shr.mask.i, 117440512
  br i1 %cmp.i151.not, label %lor.lhs.false.if.then110_crit_edge, label %lor.lhs.false.if.end112_crit_edge

lor.lhs.false.if.end112_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

lor.lhs.false.if.then110_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

if.then110:                                       ; preds = %lor.lhs.false.if.then110_crit_edge, %if.else105.if.then110_crit_edge
  store i32 36, ptr @cpu_context_offset, align 4
  %call.i153 = tail call i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext 512, i16 noundef zeroext 4) #7
  %or.i = or i32 %call.i153, 50331648
  tail call void @omap4_prcm_mpu_write_inst_reg(i32 noundef %or.i, i16 noundef signext 512, i16 noundef zeroext 4) #7
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %lor.lhs.false.if.end112_crit_edge, %if.then104
  %call.i154 = tail call i32 @omap_rev() #7
  %shr.mask.i155 = and i32 %call.i154, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1147142144, i32 %shr.mask.i155)
  %cmp.i156.not = icmp eq i32 %shr.mask.i155, 1147142144
  br i1 %cmp.i156.not, label %if.then115, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  store ptr @omap4460_secondary_startup, ptr @omap_pm_ops.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %if.end112.cleanup_crit_edge, %do.end91, %do.end78, %do.end39, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end91 ], [ -19, %do.end78 ], [ -19, %do.end39 ], [ 0, %if.then115 ], [ 0, %if.end112.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @save_l2x0_context() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @omap4_get_l2cache_base() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr @sar_base, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr = getelementptr i8, ptr %0, i32 4088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = load ptr, ptr @sar_base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #7, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_finish_suspend(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_cpu_resume() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scu_pwrst_prepare(i32 noundef %cpu_id, i32 noundef %cpu_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @omap4_pm_info to i32)
  %2 = inttoptr i32 %add to ptr
  %scu_sar_addr = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %scu_sar_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scu_sar_addr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cpu_state)
  %switch.selectcmp6 = icmp eq i32 %cpu_state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu_state)
  %switch.selectcmp = icmp eq i32 %cpu_state, 0
  %switch.select = select i1 %switch.selectcmp, i32 50331648, i32 0
  %switch.select7 = select i1 %switch.selectcmp6, i32 33554432, i32 %switch.select
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 %switch.select7) #7, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4460_secondary_startup() #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap4_get_cpu1_ns_pa_addr() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @old_cpu1_ns_pa_addr, align 4
  ret i32 %0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4_mpuss_early_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %call.i46 = tail call i32 @omap_rev() #7
  %and.i47 = and i32 %call.i46, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i47)
  %cmp.i48.not = icmp eq i32 %and.i47, 84
  br i1 %cmp.i48.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @omap4_get_sar_ram_base() #7
  store ptr %call3, ptr @sar_base, align 4
  %call.i50 = tail call i32 @omap_rev() #7
  %and.i51 = and i32 %call.i50, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i51)
  %cmp.i52.not = icmp eq i32 %and.i51, 68
  %0 = load ptr, ptr @sar_base, align 4
  %. = select i1 %cmp.i52.not, i32 2568, i32 3588
  %add.ptr7 = getelementptr i8, ptr %0, i32 %.
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !46
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr @old_cpu1_ns_pa_addr, align 4
  %call.i54 = tail call i32 @omap_rev() #7
  %shr.mask.i = and i32 %call.i54, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1143996416, i32 %shr.mask.i)
  %cmp.i55.not = icmp eq i32 %shr.mask.i, 1143996416
  br i1 %cmp.i55.not, label %if.end.if.end36_crit_edge, label %if.else15

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else15:                                        ; preds = %if.end
  %call.i57 = tail call i32 @omap_rev() #7
  %shr.mask.i58 = and i32 %call.i57, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1147142144, i32 %shr.mask.i58)
  %cmp.i59.not = icmp eq i32 %shr.mask.i58, 1147142144
  br i1 %cmp.i59.not, label %if.else15.if.end36_crit_edge, label %if.else23

if.else15.if.end36_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else23:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__boot_cpu_mode to i32))
  %3 = load i32, ptr @__boot_cpu_mode, align 4
  %and = and i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %and)
  %cmp = icmp eq i32 %and, 26
  %.66 = select i1 %cmp, i32 ptrtoint (ptr @omap5_secondary_hyp_startup to i32), i32 ptrtoint (ptr @omap5_secondary_startup to i32)
  br label %if.end36

if.end36:                                         ; preds = %if.else23, %if.else15.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %.sink65 = phi i32 [ ptrtoint (ptr @omap4_secondary_startup to i32), %if.end.if.end36_crit_edge ], [ ptrtoint (ptr @omap4460_secondary_startup to i32), %if.else15.if.end36_crit_edge ], [ %.66, %if.else23 ]
  %call22 = tail call i32 @__phys_addr_symbol(i32 noundef %.sink65) #7
  %call.i61 = tail call i32 @omap_rev() #7
  %and.i62 = and i32 %call.i61, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i62)
  %cmp.i63.not = icmp eq i32 %and.i62, 68
  %4 = tail call i32 @llvm.bswap.i32(i32 %call22)
  %5 = load ptr, ptr @sar_base, align 4
  br i1 %cmp.i63.not, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr40 = getelementptr i8, ptr %5, i32 2568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %4) #7, !srcloc !45
  br label %cleanup

if.else41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr42 = getelementptr i8, ptr %5, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %4) #7, !srcloc !45
  br label %cleanup

cleanup:                                          ; preds = %if.else41, %if.then39, %lor.lhs.false.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4_get_sar_ram_base() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_secondary_hyp_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prminst_write_inst_reg(i32 noundef, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prcm_mpu_write_inst_reg(i32 noundef, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_finish_suspend(i32 noundef %cpu_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap_do_wfi() #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummy_cpu_resume() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummy_scu_prepare(i32 noundef %cpu_id, i32 noundef %cpu_state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_do_wfi() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4_get_l2cache_base() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !16, !17, !19, !21, !22, !23, !25, !27, !29, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 253, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 360, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 376, i32 32}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 378, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @omap4_mpuss_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @omap4_mpuss_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 401, i32 32}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 403, i32 3}
!15 = !{ptr @omap4_mpuss_init._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @omap4_mpuss_init._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 414, i32 26}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 416, i32 3}
!21 = !{ptr @omap4_mpuss_init._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @omap4_mpuss_init._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @sar_base, !24, !"sar_base", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 61, i32 22}
!25 = !{ptr @old_cpu1_ns_pa_addr, !26, !"old_cpu1_ns_pa_addr", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 62, i32 12}
!27 = !{ptr @__pcpu_unique_omap4_pm_info, !28, !"__pcpu_unique_omap4_pm_info", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 90, i32 8}
!29 = !{ptr @omap4_pm_info, !28, !"omap4_pm_info", i1 false, i1 false}
!30 = !{ptr @mpuss_pd, !31, !"mpuss_pd", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 91, i32 28}
!32 = !{ptr @cpu_context_offset, !33, !"cpu_context_offset", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 92, i32 12}
!34 = distinct !{null, !35, !"omap_pm_ops", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/omap-mpuss-lowpower.c", i32 106, i32 26}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 1257627}
!46 = !{i64 1258045}
