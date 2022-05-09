; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/display.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon.78, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon.78 = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.omap_hwmod_class = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }
%struct.omap_hwmod_opt_clk = type { ptr, ptr, ptr }
%struct.omap_dss_dispc_dev_attr = type { i8, i8 }

@omap_dss_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013dss_core: hwmod data doesn't contain reset data\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_dss_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-omap2/display.c\00", [34 x i8] zeroinitializer }, align 32
@omap_dss_reset._entry_ptr = internal global ptr @omap_dss_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_dss_reset._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014dss_core: waiting for reset to finish failed\0A\00", [48 x i8] zeroinitializer }, align 32
@omap_dss_reset._entry_ptr.5 = internal global ptr @omap_dss_reset._entry.3, section ".printk_index", align 4
@omap_dss_reset.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"display\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dss_core: softreset done\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_dispc\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"display: could not disable outputs during reset - could not find dss_dispc hwmod\0A\00", [46 x i8] zeroinitializer }, align 32
@dispc_disable_outputs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013display: could not disable outputs during reset due to missing dev_attr\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dispc_disable_outputs\00", [42 x i8] zeroinitializer }, align 32
@dispc_disable_outputs._entry_ptr = internal global ptr @dispc_disable_outputs._entry, section ".printk_index", align 4
@dispc_disable_outputs._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013didn't get FRAMEDONE1/2/3 or TV interrupt\0A\00", [51 x i8] zeroinitializer }, align 32
@dispc_disable_outputs._entry_ptr.14 = internal global ptr @dispc_disable_outputs._entry.12, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 383, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 409, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 411, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 285, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 287, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 292, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [33 x i8] c"../arch/arm/mach-omap2/display.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 369, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @dispc_disable_outputs._entry, ptr @dispc_disable_outputs._entry.12, ptr @dispc_disable_outputs._entry_ptr, ptr @dispc_disable_outputs._entry_ptr.14, ptr @omap_dss_reset._entry, ptr @omap_dss_reset._entry.3, ptr @omap_dss_reset._entry_ptr, ptr @omap_dss_reset._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dss_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dss_reset._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_disable_outputs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_disable_outputs._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_dss_reset(ptr noundef %oh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 1
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class, align 4
  %sysc = getelementptr inbounds %struct.omap_hwmod_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sysc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysc, align 4
  %sysc_flags = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sysc_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sysc_flags, align 4
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %opt_clks_cnt = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 22
  %7 = ptrtoint ptr %opt_clks_cnt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %opt_clks_cnt, align 1
  %opt_clks = getelementptr inbounds %struct.omap_hwmod, ptr %oh, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp85.not = icmp eq i8 %8, 0
  br i1 %cmp85.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %9 = ptrtoint ptr %opt_clks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %opt_clks, align 4
  %conv1 = zext i8 %8 to i32
  br label %for.body

for.body:                                         ; preds = %clk_prepare_enable.exit.for.body_crit_edge, %for.body.preheader
  %oc.087 = phi ptr [ %incdec.ptr, %clk_prepare_enable.exit.for.body_crit_edge ], [ %10, %for.body.preheader ]
  %i.086 = phi i32 [ %dec, %clk_prepare_enable.exit.for.body_crit_edge ], [ %conv1, %for.body.preheader ]
  %_clk = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %oc.087, i32 0, i32 2
  %11 = ptrtoint ptr %_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %12) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %for.body.clk_prepare_enable.exit_crit_edge
  %dec = add nsw i32 %i.086, -1
  %incdec.ptr = getelementptr %struct.omap_hwmod_opt_clk, ptr %oc.087, i32 1
  %cmp = icmp sgt i32 %i.086, 1
  br i1 %cmp, label %clk_prepare_enable.exit.for.body_crit_edge, label %clk_prepare_enable.exit.for.end_crit_edge

clk_prepare_enable.exit.for.end_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

clk_prepare_enable.exit.for.body_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %clk_prepare_enable.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i76 = tail call ptr @omap_hwmod_lookup(ptr noundef nonnull @.str.8) #3
  %tobool.not.i77 = icmp eq ptr %call.i76, null
  br i1 %tobool.not.i77, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.9) #3
  br label %dispc_disable_outputs.exit

if.end17.i:                                       ; preds = %for.end
  %dev_attr.i = getelementptr inbounds %struct.omap_hwmod, ptr %call.i76, i32 0, i32 11
  %13 = ptrtoint ptr %dev_attr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_attr.i, align 4
  %tobool18.not.i = icmp eq ptr %14, null
  br i1 %tobool18.not.i, label %do.end22.i, label %if.end25.i

do.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #5
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #6
  br label %dispc_disable_outputs.exit

if.end25.i:                                       ; preds = %if.end17.i
  %call27.i = tail call i32 @omap_hwmod_read(ptr noundef nonnull %call.i76, i16 noundef zeroext 64) #3
  %and.i = and i32 %call27.i, 1
  %and29.i = and i32 %call27.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.i = icmp ugt i8 %16, 2
  br i1 %cmp.i, label %if.end38.i, label %if.end25.i.if.end48.i_crit_edge

if.end25.i.if.end48.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.end38.i:                                       ; preds = %if.end25.i
  %call34.i = tail call i32 @omap_hwmod_read(ptr noundef nonnull %call.i76, i16 noundef zeroext 568) #3
  %and35.i = and i32 %call34.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.i = icmp ne i32 %and35.i, 0
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr.i = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr.i)
  %cmp41.i = icmp ugt i8 %.pr.i, 3
  br i1 %cmp41.i, label %if.then43.i, label %if.end38.i.if.end48.i_crit_edge

if.end38.i.if.end48.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.then43.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #5
  %call44.i = tail call i32 @omap_hwmod_read(ptr noundef nonnull %call.i76, i16 noundef zeroext 2120) #3
  %and45.i = and i32 %call44.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.i = icmp ne i32 %and45.i, 0
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %if.end38.i.if.end48.i_crit_edge, %if.end25.i.if.end48.i_crit_edge
  %lcd2_en.0.off0163.i = phi i1 [ %tobool36.i, %if.then43.i ], [ %tobool36.i, %if.end38.i.if.end48.i_crit_edge ], [ false, %if.end25.i.if.end48.i_crit_edge ]
  %lcd3_en.0.off0.i = phi i1 [ %tobool46.i, %if.then43.i ], [ false, %if.end38.i.if.end48.i_crit_edge ], [ false, %if.end25.i.if.end48.i_crit_edge ]
  %and29.lobit.i = lshr exact i32 %and29.i, 1
  %or.i = or i32 %and29.lobit.i, %and.i
  %conv54.i = zext i1 %lcd2_en.0.off0163.i to i32
  %or55.i = or i32 %or.i, %conv54.i
  %conv57.i = zext i1 %lcd3_en.0.off0.i to i32
  %or58.i = or i32 %or55.i, %conv57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or58.i)
  %tobool59.not.i = icmp eq i32 %or58.i, 0
  br i1 %tobool59.not.i, label %if.end48.i.dispc_disable_outputs.exit_crit_edge, label %if.end61.i

if.end48.i.dispc_disable_outputs.exit_crit_edge:  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dispc_disable_outputs.exit

if.end61.i:                                       ; preds = %if.end48.i
  br i1 %tobool30.not.i, label %if.end61.i.if.end73.i_crit_edge, label %if.then67.i

if.end61.i.if.end73.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73.i

if.then67.i:                                      ; preds = %if.end61.i
  %has_framedonetv_irq.i = getelementptr inbounds %struct.omap_dss_dispc_dev_attr, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %has_framedonetv_irq.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_framedonetv_irq.i, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool68.not.i = icmp eq i8 %19, 0
  br i1 %tobool68.not.i, label %if.else.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #5
  %or70.i = or i32 %and.i, 16777216
  br label %if.end73.i

if.else.i:                                        ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #5
  %or71.i = or i32 %and.i, 12
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else.i, %if.then69.i, %if.end61.i.if.end73.i_crit_edge
  %irq_mask.1.i = phi i32 [ %or70.i, %if.then69.i ], [ %or71.i, %if.else.i ], [ %and.i, %if.end61.i.if.end73.i_crit_edge ]
  %or76.i = or i32 %irq_mask.1.i, 4194304
  %spec.select160.i = select i1 %lcd2_en.0.off0163.i, i32 %or76.i, i32 %irq_mask.1.i
  %or80.i = or i32 %spec.select160.i, 1073741824
  %irq_mask.3.i = select i1 %lcd3_en.0.off0.i, i32 %or80.i, i32 %spec.select160.i
  tail call void @omap_hwmod_write(i32 noundef %irq_mask.3.i, ptr noundef nonnull %call.i76, i16 noundef zeroext 24) #3
  %call82.i = tail call i32 @omap_hwmod_read(ptr noundef nonnull %call.i76, i16 noundef zeroext 64) #3
  %and83.i = and i32 %call82.i, -4
  tail call void @omap_hwmod_write(i32 noundef %and83.i, ptr noundef nonnull %call.i76, i16 noundef zeroext 64) #3
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp86.i = icmp ugt i8 %21, 2
  br i1 %cmp86.i, label %if.end91.i, label %if.end73.i.if.end99.i_crit_edge

if.end73.i.if.end99.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end99.i

if.end91.i:                                       ; preds = %if.end73.i
  %call89.i = tail call i32 @omap_hwmod_read(ptr noundef nonnull %call.i76, i16 noundef zeroext 568) #3
  %and90.i = and i32 %call89.i, -2
  tail call void @omap_hwmod_write(i32 noundef %and90.i, ptr noundef nonnull %call.i76, i16 noundef zeroext 568) #3
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr164.i = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr164.i)
  %cmp94.i = icmp ugt i8 %.pr164.i, 3
  br i1 %cmp94.i, label %if.then96.i, label %if.end91.i.if.end99.i_crit_edge

if.end91.i.if.end99.i_crit_edge:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end99.i

if.then96.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #5
  %call97.i = tail call i32 @omap_hwmod_read(ptr noundef nonnull %call.i76, i16 noundef zeroext 2120) #3
  %and98.i = and i32 %call97.i, -2
  tail call void @omap_hwmod_write(i32 noundef %and98.i, ptr noundef nonnull %call.i76, i16 noundef zeroext 2120) #3
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then96.i, %if.end91.i.if.end99.i_crit_edge, %if.end73.i.if.end99.i_crit_edge
  %call100166.i = tail call i32 @omap_hwmod_read(ptr noundef nonnull %call.i76, i16 noundef zeroext 24) #3
  %and101167.i = and i32 %call100166.i, %irq_mask.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and101167.i, i32 %irq_mask.3.i)
  %cmp102.not168.i = icmp eq i32 %and101167.i, %irq_mask.3.i
  br i1 %cmp102.not168.i, label %if.end99.i.dispc_disable_outputs.exit_crit_edge, label %if.end99.i.while.body.i_crit_edge

if.end99.i.while.body.i_crit_edge:                ; preds = %if.end99.i
  br label %while.body.i

if.end99.i.dispc_disable_outputs.exit_crit_edge:  ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dispc_disable_outputs.exit

while.body.i:                                     ; preds = %if.end112.i.while.body.i_crit_edge, %if.end99.i.while.body.i_crit_edge
  %i.0169.i = phi i32 [ %inc.i, %if.end112.i.while.body.i_crit_edge ], [ 0, %if.end99.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0169.i)
  %exitcond.i = icmp eq i32 %i.0169.i, 100
  br i1 %exitcond.i, label %do.end109.i, label %if.end112.i

do.end109.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #6
  br label %dispc_disable_outputs.exit

if.end112.i:                                      ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %i.0169.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #3
  %call100.i = tail call i32 @omap_hwmod_read(ptr noundef nonnull %call.i76, i16 noundef zeroext 24) #3
  %and101.i = and i32 %call100.i, %irq_mask.3.i
  %cmp102.not.i = icmp eq i32 %and101.i, %irq_mask.3.i
  br i1 %cmp102.not.i, label %if.end112.i.dispc_disable_outputs.exit_crit_edge, label %if.end112.i.while.body.i_crit_edge

if.end112.i.while.body.i_crit_edge:               ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end112.i.dispc_disable_outputs.exit_crit_edge: ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dispc_disable_outputs.exit

dispc_disable_outputs.exit:                       ; preds = %if.end112.i.dispc_disable_outputs.exit_crit_edge, %do.end109.i, %if.end99.i.dispc_disable_outputs.exit_crit_edge, %if.end48.i.dispc_disable_outputs.exit_crit_edge, %do.end22.i, %do.end.i
  %call.i78 = tail call i32 @omap_rev() #3
  %shr.mask.i = and i32 %call.i78, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 875560960, i32 %shr.mask.i)
  %cmp.i79.not = icmp eq i32 %shr.mask.i, 875560960
  br i1 %cmp.i79.not, label %if.then6, label %dispc_disable_outputs.exit.if.end7_crit_edge

dispc_disable_outputs.exit.if.end7_crit_edge:     ; preds = %dispc_disable_outputs.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then6:                                         ; preds = %dispc_disable_outputs.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %oh, i16 noundef zeroext 68) #3
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %oh, i16 noundef zeroext 72) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %dispc_disable_outputs.exit.if.end7_crit_edge
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %oh, i16 noundef zeroext 64) #3
  br label %for.body11

for.body11:                                       ; preds = %if.end19.for.body11_crit_edge, %if.end7
  %c.088 = phi i32 [ 0, %if.end7 ], [ %inc, %if.end19.for.body11_crit_edge ]
  %24 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %class, align 4
  %sysc13 = getelementptr inbounds %struct.omap_hwmod_class, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %sysc13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sysc13, align 4
  %syss_offs = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %syss_offs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %syss_offs, align 4
  %conv14 = trunc i32 %29 to i16
  %call15 = tail call i32 @omap_hwmod_read(ptr noundef %oh, i16 noundef zeroext %conv14) #3
  %and16 = and i32 %call15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %do.body30

if.end19:                                         ; preds = %for.body11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #3
  %inc = add nuw nsw i32 %c.088, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.end27, label %if.end19.for.body11_crit_edge

if.end19.for.body11_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body11

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %if.end40

do.body30:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_dss_reset.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_dss_reset, %if.then36)) #3
          to label %if.end40 [label %if.then36], !srcloc !37

if.then36:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_dss_reset.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.7) #3
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %do.body30, %do.end27
  %cmp2281 = phi i32 [ 0, %if.then36 ], [ -110, %do.end27 ], [ 0, %do.body30 ]
  %31 = ptrtoint ptr %opt_clks_cnt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %opt_clks_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp4589.not = icmp eq i8 %32, 0
  br i1 %cmp4589.not, label %if.end40.cleanup_crit_edge, label %for.body47.preheader

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body47.preheader:                             ; preds = %if.end40
  %33 = ptrtoint ptr %opt_clks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %opt_clks, align 4
  %conv42 = zext i8 %32 to i32
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.body47.preheader
  %oc.191 = phi ptr [ %incdec.ptr51, %for.body47.for.body47_crit_edge ], [ %34, %for.body47.preheader ]
  %i.190 = phi i32 [ %dec50, %for.body47.for.body47_crit_edge ], [ %conv42, %for.body47.preheader ]
  %_clk48 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %oc.191, i32 0, i32 2
  %35 = ptrtoint ptr %_clk48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_clk48, align 4
  tail call void @clk_disable(ptr noundef %36) #3
  tail call void @clk_unprepare(ptr noundef %36) #3
  %dec50 = add nsw i32 %i.190, -1
  %incdec.ptr51 = getelementptr %struct.omap_hwmod_opt_clk, ptr %oc.191, i32 1
  %cmp45 = icmp ugt i32 %i.190, 1
  br i1 %cmp45, label %for.body47.for.body47_crit_edge, label %for.body47.cleanup_crit_edge

for.body47.cleanup_crit_edge:                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body47

cleanup:                                          ; preds = %for.body47.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %cmp2281, %if.end40.cleanup_crit_edge ], [ %cmp2281, %for.body47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_hwmod_write(i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_hwmod_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/display.c", i32 383, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap_dss_reset._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap_dss_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/display.c", i32 409, i32 3}
!8 = !{ptr @omap_dss_reset._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @omap_dss_reset._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/display.c", i32 411, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @omap_dss_reset.__UNIQUE_ID_ddebug288, !11, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/display.c", i32 285, i32 25}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/display.c", i32 287, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/display.c", i32 292, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dispc_disable_outputs._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @dispc_disable_outputs._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/display.c", i32 369, i32 4}
!25 = !{ptr @dispc_disable_outputs._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dispc_disable_outputs._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
!37 = !{i64 2148714920, i64 2148714925, i64 2148714938, i64 2148714982, i64 2148715016, i64 2148715037}
