; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-cpu.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-cpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.samsung_cpu_clock = type { i32, ptr, i32, i32, i32, i32, ptr }
%struct.exynos_cpuclk_cfg_data = type { i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.exynos_cpuclk = type { %struct.clk_hw, ptr, ptr, ptr, ptr, i32, %struct.notifier_block, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@exynos_register_cpu_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: invalid parent clock(s)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exynos_register_cpu_clock\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/samsung/clk-cpu.c\00", [34 x i8] zeroinitializer }, align 32
@exynos_register_cpu_clock._entry_ptr = internal global ptr @exynos_register_cpu_clock._entry, section ".printk_index", align 4
@exynos_cpuclk_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_cpuclk_recalc_rate, ptr @exynos_cpuclk_round_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@exynos_register_cpu_clock._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: failed to register clock notifier for %s\0A\00", [48 x i8] zeroinitializer }, align 32
@exynos_register_cpu_clock._entry_ptr.5 = internal global ptr @exynos_register_cpu_clock._entry.3, section ".printk_index", align 4
@exynos_register_cpu_clock._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: could not register cpuclk %s\0A\00", [60 x i8] zeroinitializer }, align 32
@exynos_register_cpu_clock._entry_ptr.8 = internal global ptr @exynos_register_cpu_clock._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wait_until_mux_stable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: re-parenting mux timed-out\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wait_until_mux_stable\00", [42 x i8] zeroinitializer }, align 32
@wait_until_mux_stable._entry_ptr = internal global ptr @wait_until_mux_stable._entry, section ".printk_index", align 4
@wait_until_divider_stable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: timeout in divider stablization\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wait_until_divider_stable\00", [38 x i8] zeroinitializer }, align 32
@wait_until_divider_stable._entry_ptr = internal global ptr @wait_until_divider_stable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 415, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"exynos_cpuclk_clk_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 127, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 444, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 457, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 101, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [33 x i8] c"../drivers/clk/samsung/clk-cpu.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 81, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @exynos_register_cpu_clock._entry, ptr @exynos_register_cpu_clock._entry.3, ptr @exynos_register_cpu_clock._entry.6, ptr @exynos_register_cpu_clock._entry_ptr, ptr @exynos_register_cpu_clock._entry_ptr.5, ptr @exynos_register_cpu_clock._entry_ptr.8, ptr @wait_until_divider_stable._entry, ptr @wait_until_divider_stable._entry_ptr, ptr @wait_until_mux_stable._entry, ptr @wait_until_mux_stable._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @exynos_cpuclk_clk_ops, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_register_cpu_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_cpuclk_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_register_cpu_clock._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_register_cpu_clock._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_until_mux_stable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_until_divider_stable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_cpu(ptr noundef %ctx, ptr nocapture noundef readonly %list, i32 noundef %nr_clk) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hws1 = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clk)
  %cmp23.not = icmp eq i32 %nr_clk, 0
  br i1 %cmp23.not, label %entry.for.end9_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end9

for.cond2.preheader:                              ; preds = %for.end.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %idx.025 = phi i32 [ %inc8, %for.end.for.cond2.preheader_crit_edge ], [ 0, %entry.for.cond2.preheader_crit_edge ]
  %list.addr.024 = phi ptr [ %incdec.ptr, %for.end.for.cond2.preheader_crit_edge ], [ %list, %entry.for.cond2.preheader_crit_edge ]
  %cfg = getelementptr inbounds %struct.samsung_cpu_clock, ptr %list.addr.024, i32 0, i32 6
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.for.cond2_crit_edge, %for.cond2.preheader
  %num_cfgs.0 = phi i32 [ %inc, %for.cond2.for.cond2_crit_edge ], [ 0, %for.cond2.preheader ]
  %arrayidx = getelementptr %struct.exynos_cpuclk_cfg_data, ptr %1, i32 %num_cfgs.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %cmp3.not = icmp eq i32 %3, 0
  %inc = add i32 %num_cfgs.0, 1
  br i1 %cmp3.not, label %for.end, label %for.cond2.for.cond2_crit_edge

for.cond2.for.cond2_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %4 = ptrtoint ptr %list.addr.024 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %list.addr.024, align 4
  %name = getelementptr inbounds %struct.samsung_cpu_clock, ptr %list.addr.024, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %parent_id = getelementptr inbounds %struct.samsung_cpu_clock, ptr %list.addr.024, i32 0, i32 2
  %8 = ptrtoint ptr %parent_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_id, align 4
  %arrayidx5 = getelementptr ptr, ptr %hws1, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  %alt_parent_id = getelementptr inbounds %struct.samsung_cpu_clock, ptr %list.addr.024, i32 0, i32 3
  %12 = ptrtoint ptr %alt_parent_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alt_parent_id, align 4
  %arrayidx6 = getelementptr ptr, ptr %hws1, i32 %13
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  %offset = getelementptr inbounds %struct.samsung_cpu_clock, ptr %list.addr.024, i32 0, i32 5
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %flags = getelementptr inbounds %struct.samsung_cpu_clock, ptr %list.addr.024, i32 0, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  tail call fastcc void @exynos_register_cpu_clock(ptr noundef %ctx, i32 noundef %5, ptr noundef %7, ptr noundef %11, ptr noundef %15, i32 noundef %17, ptr noundef %1, i32 noundef %num_cfgs.0, i32 noundef %19) #11
  %inc8 = add nuw i32 %idx.025, 1
  %incdec.ptr = getelementptr %struct.samsung_cpu_clock, ptr %list.addr.024, i32 1
  %exitcond.not = icmp eq i32 %inc8, %nr_clk
  br i1 %exitcond.not, label %for.end.for.end9_crit_edge, label %for.end.for.cond2.preheader_crit_edge

for.end.for.cond2.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader

for.end.for.end9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end9

for.end9:                                         ; preds = %for.end.for.end9_crit_edge, %entry.for.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_register_cpu_clock(ptr noundef %ctx, i32 noundef %lookup_id, ptr noundef %name, ptr noundef %parent, ptr noundef %alt_parent, i32 noundef %offset, ptr noundef %cfg, i32 noundef %num_cfgs, i32 noundef %flags) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #8
  %cmp.i = icmp ugt ptr %parent, inttoptr (i32 -4096 to ptr)
  %cmp.i1 = icmp ugt ptr %alt_parent, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %cmp.i, %cmp.i1
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @clk_hw_get_name(ptr noundef %parent) #8
  %3 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %parent_name, align 4
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %flags8 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %flags8, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @exynos_cpuclk_clk_ops, ptr %ops, align 4
  %alt_parent9 = getelementptr inbounds %struct.exynos_cpuclk, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %alt_parent9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %alt_parent, ptr %alt_parent9, align 4
  %init10 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %init10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %init, ptr %init10, align 8
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %offset
  %ctrl_base = getelementptr inbounds %struct.exynos_cpuclk, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %ctrl_base, align 8
  %lock = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 2
  %lock11 = getelementptr inbounds %struct.exynos_cpuclk, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %lock11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock, ptr %lock11, align 4
  %flags12 = getelementptr inbounds %struct.exynos_cpuclk, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags, ptr %flags12, align 4
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool13.not, ptr @exynos_cpuclk_notifier_cb, ptr @exynos5433_cpuclk_notifier_cb
  %16 = getelementptr inbounds %struct.exynos_cpuclk, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select, ptr %16, align 8
  %clk = getelementptr inbounds %struct.clk_hw, ptr %parent, i32 0, i32 1
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %call19 = call i32 @clk_notifier_register(ptr noundef %19, ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %name) #12
  br label %free_cpuclk

if.end27:                                         ; preds = %if.end5
  %mul = mul i32 %num_cfgs, 12
  %call28 = call ptr @kmemdup(ptr noundef %cfg, i32 noundef %mul, i32 noundef 3264) #8
  %cfg29 = getelementptr inbounds %struct.exynos_cpuclk, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %cfg29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call28, ptr %cfg29, align 8
  %tobool31.not = icmp eq ptr %call28, null
  br i1 %tobool31.not, label %if.end27.unregister_clk_nb_crit_edge, label %if.end33

if.end27.unregister_clk_nb_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %unregister_clk_nb

if.end33:                                         ; preds = %if.end27
  %call35 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %name) #12
  %21 = ptrtoint ptr %cfg29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg29, align 8
  call void @kfree(ptr noundef %22) #8
  br label %unregister_clk_nb

if.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void @samsung_clk_add_lookup(ptr noundef %ctx, ptr noundef nonnull %call7.i.i, i32 noundef %lookup_id) #8
  br label %cleanup

unregister_clk_nb:                                ; preds = %do.end40, %if.end27.unregister_clk_nb_crit_edge
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  %call48 = call i32 @clk_notifier_unregister(ptr noundef %24, ptr noundef %16) #8
  br label %free_cpuclk

free_cpuclk:                                      ; preds = %unregister_clk_nb, %do.end24
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_cpuclk, %if.end43, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5433_cpuclk_notifier_cb(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr i8, ptr %nb, i32 -16
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.if.end4_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then2
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %cfg.i = getelementptr i8, ptr %nb, i32 -8
  %3 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg.i, align 4
  %alt_parent.i = getelementptr i8, ptr %nb, i32 -20
  %5 = ptrtoint ptr %alt_parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alt_parent.i, align 4
  %call.i = tail call i32 @clk_hw_get_rate(ptr noundef %6) #8
  %new_rate.i = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %new_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_rate.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  %mul127.i = mul i32 %10, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul127.i, i32 %8)
  %cmp.not128.i = icmp eq i32 %mul127.i, %8
  br i1 %cmp.not128.i, label %if.then.do.body3.i_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.do.body3.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %11 = phi i32 [ %13, %if.end.i.while.body.i_crit_edge ], [ %10, %if.then.while.body.i_crit_edge ]
  %cfg_data.0129.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %4, %if.then.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i = icmp eq i32 %11, 0
  br i1 %cmp2.i, label %while.body.i.if.end4_crit_edge, label %if.end.i

while.body.i.if.end4_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.exynos_cpuclk_cfg_data, ptr %cfg_data.0129.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.i, align 4
  %mul.i = mul i32 %13, 1000
  %cmp.not.i = icmp eq i32 %mul.i, %8
  br i1 %cmp.not.i, label %if.end.i.do.body3.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i.do.body3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.end.i.do.body3.i_crit_edge, %if.then.do.body3.i_crit_edge
  %cfg_data.0.lcssa.i = phi ptr [ %4, %if.then.do.body3.i_crit_edge ], [ %incdec.ptr.i, %if.end.i.do.body3.i_crit_edge ]
  %lock.i = getelementptr i8, ptr %nb, i32 -12
  %14 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock.i, align 4
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %div09.i = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %cfg_data.0.lcssa.i, i32 0, i32 1
  %16 = ptrtoint ptr %div09.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div09.i, align 4
  %div110.i = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %cfg_data.0.lcssa.i, i32 0, i32 2
  %18 = ptrtoint ptr %div110.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div110.i, align 4
  %old_rate.i = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %old_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %21)
  %cmp11.i = icmp ugt i32 %call.i, %21
  br i1 %cmp11.i, label %do.body3.i.if.then17.i_crit_edge, label %lor.lhs.false.i

do.body3.i.if.then17.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %do.body3.i
  %22 = ptrtoint ptr %new_rate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %new_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp15.i = icmp ugt i32 %21, %23
  br i1 %cmp15.i, label %lor.lhs.false.i.if.then17.i_crit_edge, label %lor.lhs.false.i.if.end50.i_crit_edge

lor.lhs.false.i.if.end50.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %do.body3.i.if.then17.i_crit_edge
  %24 = ptrtoint ptr %new_rate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %new_rate.i, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %21, i32 %25) #8
  %add.i = add i32 %call.i, -1
  %sub.i = add i32 %add.i, %26
  %div.i = udiv i32 %sub.i, %26
  %sub23.i = add i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub23.i)
  %cmp24.i = icmp ugt i32 %sub23.i, 7
  br i1 %cmp24.i, label %do.end36.i, label %if.then17.i.if.end42.i_crit_edge, !prof !35

if.then17.i.if.end42.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

do.end36.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 314, i32 noundef 9, ptr noundef null) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end36.i, %if.then17.i.if.end42.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1024
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %28 = and i32 %27, -117440513
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  %and2.i.i = and i32 %sub23.i, 7
  %or.i.i = or i32 %29, %and2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #8, !srcloc !39
  %add.ptr4.i.i = getelementptr i8, ptr %1, i32 1280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i = xor i32 %31, -1
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i.do.body.i.i.i_crit_edge, %if.end42.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %33 = and i32 %32, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.exynos5433_set_safe_div.exit.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.exynos5433_set_safe_div.exit.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos5433_set_safe_div.exit.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = add i32 %34, %add.neg.i.i.i
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.cond.i.i.i.do.body.i.i.i_crit_edge, label %do.end.i.i.i

do.cond.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.cond.i.i.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %36 = and i32 %35, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool9.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool9.not.i.i.i, label %do.end.i.i.i.exynos5433_set_safe_div.exit.i_crit_edge, label %do.end14.i.i.i

do.end.i.i.i.exynos5433_set_safe_div.exit.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos5433_set_safe_div.exit.i

do.end14.i.i.i:                                   ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %exynos5433_set_safe_div.exit.i

exynos5433_set_safe_div.exit.i:                   ; preds = %do.end14.i.i.i, %do.end.i.i.i.exynos5433_set_safe_div.exit.i_crit_edge, %do.body.i.i.i.exynos5433_set_safe_div.exit.i_crit_edge
  %or.i = or i32 %sub23.i, %17
  br label %if.end50.i

if.end50.i:                                       ; preds = %exynos5433_set_safe_div.exit.i, %lor.lhs.false.i.if.end50.i_crit_edge
  %div0.0.i = phi i32 [ %or.i, %exynos5433_set_safe_div.exit.i ], [ %17, %lor.lhs.false.i.if.end50.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %38 = or i32 %37, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #8, !srcloc !39
  %add.ptr59.i = getelementptr i8, ptr %1, i32 520
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = xor i32 %39, -1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end50.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  %41 = and i32 %40, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 33554432
  br i1 %cmp.i.i, label %do.body.i.i.wait_until_mux_stable.exit.i_crit_edge, label %do.cond.i.i

do.body.i.i.wait_until_mux_stable.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_mux_stable.exit.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %42, %add.neg.i.i
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.end.i.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.cond.i.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  %44 = and i32 %43, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %44)
  %cmp11.i.i = icmp eq i32 %44, 33554432
  br i1 %cmp11.i.i, label %do.end.i.i.wait_until_mux_stable.exit.i_crit_edge, label %do.end16.i.i

do.end.i.i.wait_until_mux_stable.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_mux_stable.exit.i

do.end16.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  br label %wait_until_mux_stable.exit.i

wait_until_mux_stable.exit.i:                     ; preds = %do.end16.i.i, %do.end.i.i.wait_until_mux_stable.exit.i_crit_edge, %do.body.i.i.wait_until_mux_stable.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %div0.0.i) #8
  %add.ptr63.i = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i, i32 %45) #8, !srcloc !39
  %add.ptr64.i = getelementptr i8, ptr %1, i32 1280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i107.i = xor i32 %46, -1
  br label %do.body.i108.i

do.body.i108.i:                                   ; preds = %do.cond.i111.i.do.body.i108.i_crit_edge, %wait_until_mux_stable.exit.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i, label %do.body.i108.i.wait_until_divider_stable.exit.i_crit_edge, label %do.cond.i111.i

do.body.i108.i.wait_until_divider_stable.exit.i_crit_edge: ; preds = %do.body.i108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_divider_stable.exit.i

do.cond.i111.i:                                   ; preds = %do.body.i108.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub.i109.i = add i32 %48, %add.neg.i107.i
  %cmp.i110.i = icmp slt i32 %sub.i109.i, 0
  br i1 %cmp.i110.i, label %do.cond.i111.i.do.body.i108.i_crit_edge, label %do.end.i112.i

do.cond.i111.i.do.body.i108.i_crit_edge:          ; preds = %do.cond.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i108.i

do.end.i112.i:                                    ; preds = %do.cond.i111.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool9.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool9.not.i.i, label %do.end.i112.i.wait_until_divider_stable.exit.i_crit_edge, label %do.end14.i.i

do.end.i112.i.wait_until_divider_stable.exit.i_crit_edge: ; preds = %do.end.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_divider_stable.exit.i

do.end14.i.i:                                     ; preds = %do.end.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %wait_until_divider_stable.exit.i

wait_until_divider_stable.exit.i:                 ; preds = %do.end14.i.i, %do.end.i112.i.wait_until_divider_stable.exit.i_crit_edge, %do.body.i108.i.wait_until_divider_stable.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %add.ptr68.i = getelementptr i8, ptr %1, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %50) #8, !srcloc !39
  %add.ptr69.i = getelementptr i8, ptr %1, i32 1284
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i113.i = xor i32 %51, -1
  br label %do.body.i115.i

do.body.i115.i:                                   ; preds = %do.cond.i118.i.do.body.i115.i_crit_edge, %wait_until_divider_stable.exit.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i114.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i114.i, label %do.body.i115.i.if.end4.sink.split_crit_edge, label %do.cond.i118.i

do.body.i115.i.if.end4.sink.split_crit_edge:      ; preds = %do.body.i115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split

do.cond.i118.i:                                   ; preds = %do.body.i115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub.i116.i = add i32 %53, %add.neg.i113.i
  %cmp.i117.i = icmp slt i32 %sub.i116.i, 0
  br i1 %cmp.i117.i, label %do.cond.i118.i.do.body.i115.i_crit_edge, label %do.end.i120.i

do.cond.i118.i.do.body.i115.i_crit_edge:          ; preds = %do.cond.i118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i115.i

do.end.i120.i:                                    ; preds = %do.cond.i118.i
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool9.not.i119.i = icmp eq i32 %54, 0
  br i1 %tobool9.not.i119.i, label %do.end.i120.i.if.end4.sink.split_crit_edge, label %do.end.i120.i.if.end4.sink.split.sink.split_crit_edge

do.end.i120.i.if.end4.sink.split.sink.split_crit_edge: ; preds = %do.end.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split.sink.split

do.end.i120.i.if.end4.sink.split_crit_edge:       ; preds = %do.end.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split

if.then2:                                         ; preds = %entry
  %lock.i11 = getelementptr i8, ptr %nb, i32 -12
  %55 = ptrtoint ptr %lock.i11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock.i11, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %56) #8
  %add.ptr.i12 = getelementptr i8, ptr %1, i32 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %58 = and i32 %57, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %58) #8, !srcloc !39
  %add.ptr12.i = getelementptr i8, ptr %1, i32 520
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i13 = xor i32 %59, -1
  br label %do.body.i.i15

do.body.i.i15:                                    ; preds = %do.cond.i.i18.do.body.i.i15_crit_edge, %if.then2
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  %61 = and i32 %60, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %61)
  %cmp.i.i14 = icmp eq i32 %61, 16777216
  br i1 %cmp.i.i14, label %do.body.i.i15.wait_until_mux_stable.exit.i26_crit_edge, label %do.cond.i.i18

do.body.i.i15.wait_until_mux_stable.exit.i26_crit_edge: ; preds = %do.body.i.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_mux_stable.exit.i26

do.cond.i.i18:                                    ; preds = %do.body.i.i15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i16 = add i32 %62, %add.neg.i.i13
  %cmp3.i.i17 = icmp slt i32 %sub.i.i16, 0
  br i1 %cmp3.i.i17, label %do.cond.i.i18.do.body.i.i15_crit_edge, label %do.end.i.i20

do.cond.i.i18.do.body.i.i15_crit_edge:            ; preds = %do.cond.i.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i15

do.end.i.i20:                                     ; preds = %do.cond.i.i18
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  %64 = and i32 %63, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %64)
  %cmp11.i.i19 = icmp eq i32 %64, 16777216
  br i1 %cmp11.i.i19, label %do.end.i.i20.wait_until_mux_stable.exit.i26_crit_edge, label %do.end16.i.i22

do.end.i.i20.wait_until_mux_stable.exit.i26_crit_edge: ; preds = %do.end.i.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_mux_stable.exit.i26

do.end16.i.i22:                                   ; preds = %do.end.i.i20
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  br label %wait_until_mux_stable.exit.i26

wait_until_mux_stable.exit.i26:                   ; preds = %do.end16.i.i22, %do.end.i.i20.wait_until_mux_stable.exit.i26_crit_edge, %do.body.i.i15.wait_until_mux_stable.exit.i26_crit_edge
  %add.ptr.i.i23 = getelementptr i8, ptr %1, i32 1024
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %66 = and i32 %65, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %66) #8, !srcloc !39
  %add.ptr4.i.i24 = getelementptr i8, ptr %1, i32 1280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i25 = xor i32 %67, -1
  br label %do.body.i.i.i28

do.body.i.i.i28:                                  ; preds = %do.cond.i.i.i31.do.body.i.i.i28_crit_edge, %wait_until_mux_stable.exit.i26
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i24) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %69 = and i32 %68, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i.i27 = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i.i27, label %do.body.i.i.i28.if.end4.sink.split_crit_edge, label %do.cond.i.i.i31

do.body.i.i.i28.if.end4.sink.split_crit_edge:     ; preds = %do.body.i.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split

do.cond.i.i.i31:                                  ; preds = %do.body.i.i.i28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i29 = add i32 %70, %add.neg.i.i.i25
  %cmp.i.i.i30 = icmp slt i32 %sub.i.i.i29, 0
  br i1 %cmp.i.i.i30, label %do.cond.i.i.i31.do.body.i.i.i28_crit_edge, label %do.end.i.i.i33

do.cond.i.i.i31.do.body.i.i.i28_crit_edge:        ; preds = %do.cond.i.i.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i28

do.end.i.i.i33:                                   ; preds = %do.cond.i.i.i31
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i24) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %72 = and i32 %71, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool9.not.i.i.i32 = icmp eq i32 %72, 0
  br i1 %tobool9.not.i.i.i32, label %do.end.i.i.i33.if.end4.sink.split_crit_edge, label %do.end.i.i.i33.if.end4.sink.split.sink.split_crit_edge

do.end.i.i.i33.if.end4.sink.split.sink.split_crit_edge: ; preds = %do.end.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split.sink.split

do.end.i.i.i33.if.end4.sink.split_crit_edge:      ; preds = %do.end.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split

if.end4.sink.split.sink.split:                    ; preds = %do.end.i.i.i33.if.end4.sink.split.sink.split_crit_edge, %do.end.i120.i.if.end4.sink.split.sink.split_crit_edge
  %lock.i.sink.ph = phi ptr [ %lock.i, %do.end.i120.i.if.end4.sink.split.sink.split_crit_edge ], [ %lock.i11, %do.end.i.i.i33.if.end4.sink.split.sink.split_crit_edge ]
  %call6.i.sink.ph = phi i32 [ %call6.i, %do.end.i120.i.if.end4.sink.split.sink.split_crit_edge ], [ %call2.i, %do.end.i.i.i33.if.end4.sink.split.sink.split_crit_edge ]
  %call16.i.i.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.end4.sink.split.sink.split, %do.end.i.i.i33.if.end4.sink.split_crit_edge, %do.body.i.i.i28.if.end4.sink.split_crit_edge, %do.end.i120.i.if.end4.sink.split_crit_edge, %do.body.i115.i.if.end4.sink.split_crit_edge
  %lock.i.sink = phi ptr [ %lock.i, %do.end.i120.i.if.end4.sink.split_crit_edge ], [ %lock.i11, %do.end.i.i.i33.if.end4.sink.split_crit_edge ], [ %lock.i.sink.ph, %if.end4.sink.split.sink.split ], [ %lock.i, %do.body.i115.i.if.end4.sink.split_crit_edge ], [ %lock.i11, %do.body.i.i.i28.if.end4.sink.split_crit_edge ]
  %call6.i.sink = phi i32 [ %call6.i, %do.end.i120.i.if.end4.sink.split_crit_edge ], [ %call2.i, %do.end.i.i.i33.if.end4.sink.split_crit_edge ], [ %call6.i.sink.ph, %if.end4.sink.split.sink.split ], [ %call6.i, %do.body.i115.i.if.end4.sink.split_crit_edge ], [ %call2.i, %do.body.i.i.i28.if.end4.sink.split_crit_edge ]
  %73 = ptrtoint ptr %lock.i.sink to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lock.i.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %74, i32 noundef %call6.i.sink) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %while.body.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %75 = phi i32 [ 1, %entry.if.end4_crit_edge ], [ 1, %if.end4.sink.split ], [ 32791, %while.body.i.if.end4_crit_edge ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_cpuclk_notifier_cb(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr i8, ptr %nb, i32 -16
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %event, label %entry.if.end4_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then2
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %cfg.i = getelementptr i8, ptr %nb, i32 -8
  %3 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg.i, align 4
  %alt_parent.i = getelementptr i8, ptr %nb, i32 -20
  %5 = ptrtoint ptr %alt_parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alt_parent.i, align 4
  %call.i = tail call i32 @clk_hw_get_rate(ptr noundef %6) #8
  %new_rate.i = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %new_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_rate.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  %mul169.i = mul i32 %10, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul169.i, i32 %8)
  %cmp.not170.i = icmp eq i32 %mul169.i, %8
  br i1 %cmp.not170.i, label %if.then.do.body3.i_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.do.body3.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %11 = phi i32 [ %13, %if.end.i.while.body.i_crit_edge ], [ %10, %if.then.while.body.i_crit_edge ]
  %cfg_data.0171.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %4, %if.then.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i = icmp eq i32 %11, 0
  br i1 %cmp2.i, label %while.body.i.if.end4_crit_edge, label %if.end.i

while.body.i.if.end4_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.exynos_cpuclk_cfg_data, ptr %cfg_data.0171.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.i, align 4
  %mul.i = mul i32 %13, 1000
  %cmp.not.i = icmp eq i32 %mul.i, %8
  br i1 %cmp.not.i, label %if.end.i.do.body3.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i.do.body3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.end.i.do.body3.i_crit_edge, %if.then.do.body3.i_crit_edge
  %cfg_data.0.lcssa.i = phi ptr [ %4, %if.then.do.body3.i_crit_edge ], [ %incdec.ptr.i, %if.end.i.do.body3.i_crit_edge ]
  %lock.i = getelementptr i8, ptr %nb, i32 -12
  %14 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock.i, align 4
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %div09.i = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %cfg_data.0.lcssa.i, i32 0, i32 1
  %16 = ptrtoint ptr %div09.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div09.i, align 4
  %flags10.i = getelementptr i8, ptr %nb, i32 12
  %18 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags10.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body3.i.if.end27.i_crit_edge, label %if.then11.i

do.body3.i.if.end27.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then11.i:                                      ; preds = %do.body3.i
  %div112.i = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %cfg_data.0.lcssa.i, i32 0, i32 2
  %20 = ptrtoint ptr %div112.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %div112.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %23 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not.i = icmp eq i32 %23, 0
  br i1 %tobool17.not.i, label %if.then11.i.if.end27.i_crit_edge, label %if.then18.i

if.then11.i.if.end27.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr21.i = getelementptr i8, ptr %1, i32 772
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #8, !srcloc !36
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %and25.i = and i32 %25, 119
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then18.i, %if.then11.i.if.end27.i_crit_edge, %do.body3.i.if.end27.i_crit_edge
  %div1.0.i = phi i32 [ %and25.i, %if.then18.i ], [ %21, %if.then11.i.if.end27.i_crit_edge ], [ 0, %do.body3.i.if.end27.i_crit_edge ]
  %old_rate.i = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %old_rate.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %27)
  %cmp28.i = icmp ugt i32 %call.i, %27
  br i1 %cmp28.i, label %if.end27.i.if.then34.i_crit_edge, label %lor.lhs.false.i

if.end27.i.if.then34.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34.i

lor.lhs.false.i:                                  ; preds = %if.end27.i
  %28 = ptrtoint ptr %new_rate.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %new_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp32.i = icmp ugt i32 %27, %29
  br i1 %cmp32.i, label %lor.lhs.false.i.if.then34.i_crit_edge, label %lor.lhs.false.i.if.end75.i_crit_edge

lor.lhs.false.i.if.end75.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

lor.lhs.false.i.if.then34.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34.i

if.then34.i:                                      ; preds = %lor.lhs.false.i.if.then34.i_crit_edge, %if.end27.i.if.then34.i_crit_edge
  %30 = ptrtoint ptr %new_rate.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %new_rate.i, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %27, i32 %31) #8
  %add.i = add i32 %call.i, -1
  %sub.i = add i32 %add.i, %32
  %div.i = udiv i32 %sub.i, %32
  %sub40.i = add i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub40.i)
  %cmp41.i = icmp ugt i32 %sub40.i, 7
  br i1 %cmp41.i, label %do.end54.i, label %if.then34.i.if.end60.i_crit_edge, !prof !35

if.then34.i.if.end60.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

do.end54.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 9, ptr noundef null) #8
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end54.i, %if.then34.i.if.end60.i_crit_edge
  %33 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags10.i, align 4
  %and69.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  %or.i = or i32 %sub40.i, 458752
  %spec.select.i = select i1 %tobool70.not.i, i32 7, i32 458759
  %spec.select147.i = select i1 %tobool70.not.i, i32 %sub40.i, i32 %or.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 768
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !36
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  %neg.i.i = xor i32 %spec.select.i, -1
  %and.i.i = and i32 %36, %neg.i.i
  %and2.i.i = and i32 %spec.select.i, %spec.select147.i
  %or.i.i = or i32 %and.i.i, %and2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %37) #8, !srcloc !39
  %add.ptr4.i.i = getelementptr i8, ptr %1, i32 1024
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i = xor i32 %38, -1
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i.do.body.i.i.i_crit_edge, %if.end60.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !36
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %and.i.i.i = and i32 %40, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.exynos_set_safe_div.exit.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.exynos_set_safe_div.exit.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos_set_safe_div.exit.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = add i32 %41, %add.neg.i.i.i
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.cond.i.i.i.do.body.i.i.i_crit_edge, label %do.end.i.i.i

do.cond.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.cond.i.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !36
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %and8.i.i.i = and i32 %43, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %do.end.i.i.i.exynos_set_safe_div.exit.i_crit_edge, label %do.end14.i.i.i

do.end.i.i.i.exynos_set_safe_div.exit.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos_set_safe_div.exit.i

do.end14.i.i.i:                                   ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %exynos_set_safe_div.exit.i

exynos_set_safe_div.exit.i:                       ; preds = %do.end14.i.i.i, %do.end.i.i.i.exynos_set_safe_div.exit.i_crit_edge, %do.body.i.i.i.exynos_set_safe_div.exit.i_crit_edge
  %or74.i = or i32 %spec.select147.i, %17
  br label %if.end75.i

if.end75.i:                                       ; preds = %exynos_set_safe_div.exit.i, %lor.lhs.false.i.if.end75.i_crit_edge
  %div0.0.i = phi i32 [ %or74.i, %exynos_set_safe_div.exit.i ], [ %17, %lor.lhs.false.i.if.end75.i_crit_edge ]
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %45 = or i32 %44, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %45) #8, !srcloc !39
  %add.ptr87.i = getelementptr i8, ptr %1, i32 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = xor i32 %46, -1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end75.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  %48 = and i32 %47, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %48)
  %cmp.i.i = icmp eq i32 %48, 512
  br i1 %cmp.i.i, label %do.body.i.i.wait_until_mux_stable.exit.i_crit_edge, label %do.cond.i.i

do.body.i.i.wait_until_mux_stable.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_mux_stable.exit.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %49, %add.neg.i.i
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.end.i.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.cond.i.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  %51 = and i32 %50, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %51)
  %cmp11.i.i = icmp eq i32 %51, 512
  br i1 %cmp11.i.i, label %do.end.i.i.wait_until_mux_stable.exit.i_crit_edge, label %do.end16.i.i

do.end.i.i.wait_until_mux_stable.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_mux_stable.exit.i

do.end16.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  br label %wait_until_mux_stable.exit.i

wait_until_mux_stable.exit.i:                     ; preds = %do.end16.i.i, %do.end.i.i.wait_until_mux_stable.exit.i_crit_edge, %do.body.i.i.wait_until_mux_stable.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %div0.0.i) #8
  %add.ptr91.i = getelementptr i8, ptr %1, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 %52) #8, !srcloc !39
  %add.ptr92.i = getelementptr i8, ptr %1, i32 1024
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i149.i = xor i32 %53, -1
  br label %do.body.i150.i

do.body.i150.i:                                   ; preds = %do.cond.i153.i.do.body.i150.i_crit_edge, %wait_until_mux_stable.exit.i
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i, label %do.body.i150.i.wait_until_divider_stable.exit.i_crit_edge, label %do.cond.i153.i

do.body.i150.i.wait_until_divider_stable.exit.i_crit_edge: ; preds = %do.body.i150.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_divider_stable.exit.i

do.cond.i153.i:                                   ; preds = %do.body.i150.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub.i151.i = add i32 %55, %add.neg.i149.i
  %cmp.i152.i = icmp slt i32 %sub.i151.i, 0
  br i1 %cmp.i152.i, label %do.cond.i153.i.do.body.i150.i_crit_edge, label %do.end.i154.i

do.cond.i153.i.do.body.i150.i_crit_edge:          ; preds = %do.cond.i153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i150.i

do.end.i154.i:                                    ; preds = %do.cond.i153.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool9.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool9.not.i.i, label %do.end.i154.i.wait_until_divider_stable.exit.i_crit_edge, label %do.end14.i.i

do.end.i154.i.wait_until_divider_stable.exit.i_crit_edge: ; preds = %do.end.i154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_divider_stable.exit.i

do.end14.i.i:                                     ; preds = %do.end.i154.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %wait_until_divider_stable.exit.i

wait_until_divider_stable.exit.i:                 ; preds = %do.end14.i.i, %do.end.i154.i.wait_until_divider_stable.exit.i_crit_edge, %do.body.i150.i.wait_until_divider_stable.exit.i_crit_edge
  %57 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags10.i, align 4
  %and94.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %wait_until_divider_stable.exit.i.if.end4.sink.split_crit_edge, label %do.body97.i

wait_until_divider_stable.exit.i.if.end4.sink.split_crit_edge: ; preds = %wait_until_divider_stable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split

do.body97.i:                                      ; preds = %wait_until_divider_stable.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %59 = tail call i32 @llvm.bswap.i32(i32 %div1.0.i) #8
  %add.ptr100.i = getelementptr i8, ptr %1, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100.i, i32 %59) #8, !srcloc !39
  %add.ptr101.i = getelementptr i8, ptr %1, i32 1028
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i155.i = xor i32 %60, -1
  br label %do.body.i157.i

do.body.i157.i:                                   ; preds = %do.cond.i160.i.do.body.i157.i_crit_edge, %do.body97.i
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i156.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i156.i, label %do.body.i157.i.if.end4.sink.split_crit_edge, label %do.cond.i160.i

do.body.i157.i.if.end4.sink.split_crit_edge:      ; preds = %do.body.i157.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split

do.cond.i160.i:                                   ; preds = %do.body.i157.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub.i158.i = add i32 %62, %add.neg.i155.i
  %cmp.i159.i = icmp slt i32 %sub.i158.i, 0
  br i1 %cmp.i159.i, label %do.cond.i160.i.do.body.i157.i_crit_edge, label %do.end.i162.i

do.cond.i160.i.do.body.i157.i_crit_edge:          ; preds = %do.cond.i160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i157.i

do.end.i162.i:                                    ; preds = %do.cond.i160.i
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool9.not.i161.i = icmp eq i32 %63, 0
  br i1 %tobool9.not.i161.i, label %do.end.i162.i.if.end4.sink.split_crit_edge, label %do.end.i162.i.if.end4.sink.split.sink.split_crit_edge

do.end.i162.i.if.end4.sink.split.sink.split_crit_edge: ; preds = %do.end.i162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split.sink.split

do.end.i162.i.if.end4.sink.split_crit_edge:       ; preds = %do.end.i162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split

if.then2:                                         ; preds = %entry
  %cfg.i11 = getelementptr i8, ptr %nb, i32 -8
  %64 = ptrtoint ptr %cfg.i11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i11, align 4
  %flags1.i = getelementptr i8, ptr %nb, i32 12
  %66 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags1.i, align 4
  %and.i12 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %if.then2.do.body6.i_crit_edge, label %while.cond.preheader.i

if.then2.do.body6.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i

while.cond.preheader.i:                           ; preds = %if.then2
  %new_rate.i14 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %68 = ptrtoint ptr %new_rate.i14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %new_rate.i14, align 4
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %65, align 4
  %mul46.i = mul i32 %71, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul46.i, i32 %69)
  %cmp.not47.i = icmp eq i32 %mul46.i, %69
  br i1 %cmp.not47.i, label %while.cond.preheader.i.do.body6.i_crit_edge, label %while.cond.preheader.i.while.body.i15_crit_edge

while.cond.preheader.i.while.body.i15_crit_edge:  ; preds = %while.cond.preheader.i
  br label %while.body.i15

while.cond.preheader.i.do.body6.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i

while.body.i15:                                   ; preds = %if.end.i19.while.body.i15_crit_edge, %while.cond.preheader.i.while.body.i15_crit_edge
  %72 = phi i32 [ %74, %if.end.i19.while.body.i15_crit_edge ], [ %71, %while.cond.preheader.i.while.body.i15_crit_edge ]
  %cfg_data.048.i = phi ptr [ %incdec.ptr.i16, %if.end.i19.while.body.i15_crit_edge ], [ %65, %while.cond.preheader.i.while.body.i15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp3.i = icmp eq i32 %72, 0
  br i1 %cmp3.i, label %while.body.i15.if.end4_crit_edge, label %if.end.i19

while.body.i15.if.end4_crit_edge:                 ; preds = %while.body.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i19:                                       ; preds = %while.body.i15
  %incdec.ptr.i16 = getelementptr %struct.exynos_cpuclk_cfg_data, ptr %cfg_data.048.i, i32 1
  %73 = ptrtoint ptr %incdec.ptr.i16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %incdec.ptr.i16, align 4
  %mul.i17 = mul i32 %74, 1000
  %cmp.not.i18 = icmp eq i32 %mul.i17, %69
  br i1 %cmp.not.i18, label %if.end.i19.do.body6.i_crit_edge, label %if.end.i19.while.body.i15_crit_edge

if.end.i19.while.body.i15_crit_edge:              ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i15

if.end.i19.do.body6.i_crit_edge:                  ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.end.i19.do.body6.i_crit_edge, %while.cond.preheader.i.do.body6.i_crit_edge, %if.then2.do.body6.i_crit_edge
  %cfg_data.1.i = phi ptr [ %65, %if.then2.do.body6.i_crit_edge ], [ %65, %while.cond.preheader.i.do.body6.i_crit_edge ], [ %incdec.ptr.i16, %if.end.i19.do.body6.i_crit_edge ]
  %lock.i20 = getelementptr i8, ptr %nb, i32 -12
  %75 = ptrtoint ptr %lock.i20 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lock.i20, align 4
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %76) #8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %78 = and i32 %77, -257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %78) #8, !srcloc !39
  %add.ptr19.i = getelementptr i8, ptr %1, i32 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i21 = xor i32 %79, -1
  br label %do.body.i.i23

do.body.i.i23:                                    ; preds = %do.cond.i.i26.do.body.i.i23_crit_edge, %do.body6.i
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  %81 = and i32 %80, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %81)
  %cmp.i.i22 = icmp eq i32 %81, 256
  br i1 %cmp.i.i22, label %do.body.i.i23.wait_until_mux_stable.exit.i31_crit_edge, label %do.cond.i.i26

do.body.i.i23.wait_until_mux_stable.exit.i31_crit_edge: ; preds = %do.body.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_mux_stable.exit.i31

do.cond.i.i26:                                    ; preds = %do.body.i.i23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i24 = add i32 %82, %add.neg.i.i21
  %cmp3.i.i25 = icmp slt i32 %sub.i.i24, 0
  br i1 %cmp3.i.i25, label %do.cond.i.i26.do.body.i.i23_crit_edge, label %do.end.i.i28

do.cond.i.i26.do.body.i.i23_crit_edge:            ; preds = %do.cond.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i23

do.end.i.i28:                                     ; preds = %do.cond.i.i26
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #8, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  %84 = and i32 %83, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %84)
  %cmp11.i.i27 = icmp eq i32 %84, 256
  br i1 %cmp11.i.i27, label %do.end.i.i28.wait_until_mux_stable.exit.i31_crit_edge, label %do.end16.i.i30

do.end.i.i28.wait_until_mux_stable.exit.i31_crit_edge: ; preds = %do.end.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_until_mux_stable.exit.i31

do.end16.i.i30:                                   ; preds = %do.end.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  br label %wait_until_mux_stable.exit.i31

wait_until_mux_stable.exit.i31:                   ; preds = %do.end16.i.i30, %do.end.i.i28.wait_until_mux_stable.exit.i31_crit_edge, %do.body.i.i23.wait_until_mux_stable.exit.i31_crit_edge
  %85 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags1.i, align 4
  %and21.i = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %wait_until_mux_stable.exit.i31.if.end26.i_crit_edge, label %if.then23.i

wait_until_mux_stable.exit.i31.if.end26.i_crit_edge: ; preds = %wait_until_mux_stable.exit.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then23.i:                                      ; preds = %wait_until_mux_stable.exit.i31
  call void @__sanitizer_cov_trace_pc() #10
  %div0.i = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %cfg_data.1.i, i32 0, i32 1
  %87 = ptrtoint ptr %div0.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %div0.i, align 4
  %and24.i = and i32 %88, 458752
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %wait_until_mux_stable.exit.i31.if.end26.i_crit_edge
  %div_mask.0.i = phi i32 [ 458759, %if.then23.i ], [ 7, %wait_until_mux_stable.exit.i31.if.end26.i_crit_edge ]
  %div.0.i = phi i32 [ %and24.i, %if.then23.i ], [ 0, %wait_until_mux_stable.exit.i31.if.end26.i_crit_edge ]
  %add.ptr.i.i32 = getelementptr i8, ptr %1, i32 768
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #8, !srcloc !36
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  %neg.i.i33 = xor i32 %div_mask.0.i, -1
  %and.i44.i = and i32 %90, %neg.i.i33
  %and2.i.i34 = and i32 %div.0.i, %div_mask.0.i
  %or.i.i35 = or i32 %and.i44.i, %and2.i.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i.i35) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %91) #8, !srcloc !39
  %add.ptr4.i.i36 = getelementptr i8, ptr %1, i32 1024
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i37 = xor i32 %92, -1
  br label %do.body.i.i.i40

do.body.i.i.i40:                                  ; preds = %do.cond.i.i.i43.do.body.i.i.i40_crit_edge, %if.end26.i
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i36) #8, !srcloc !36
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %and.i.i.i38 = and i32 %94, %div_mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i38)
  %tobool.not.i.i.i39 = icmp eq i32 %and.i.i.i38, 0
  br i1 %tobool.not.i.i.i39, label %do.body.i.i.i40.if.end4.sink.split_crit_edge, label %do.cond.i.i.i43

do.body.i.i.i40.if.end4.sink.split_crit_edge:     ; preds = %do.body.i.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split

do.cond.i.i.i43:                                  ; preds = %do.body.i.i.i40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i41 = add i32 %95, %add.neg.i.i.i37
  %cmp.i.i.i42 = icmp slt i32 %sub.i.i.i41, 0
  br i1 %cmp.i.i.i42, label %do.cond.i.i.i43.do.body.i.i.i40_crit_edge, label %do.end.i.i.i46

do.cond.i.i.i43.do.body.i.i.i40_crit_edge:        ; preds = %do.cond.i.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i40

do.end.i.i.i46:                                   ; preds = %do.cond.i.i.i43
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i36) #8, !srcloc !36
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %and8.i.i.i44 = and i32 %97, %div_mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i44)
  %tobool9.not.i.i.i45 = icmp eq i32 %and8.i.i.i44, 0
  br i1 %tobool9.not.i.i.i45, label %do.end.i.i.i46.if.end4.sink.split_crit_edge, label %do.end.i.i.i46.if.end4.sink.split.sink.split_crit_edge

do.end.i.i.i46.if.end4.sink.split.sink.split_crit_edge: ; preds = %do.end.i.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split.sink.split

do.end.i.i.i46.if.end4.sink.split_crit_edge:      ; preds = %do.end.i.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.sink.split

if.end4.sink.split.sink.split:                    ; preds = %do.end.i.i.i46.if.end4.sink.split.sink.split_crit_edge, %do.end.i162.i.if.end4.sink.split.sink.split_crit_edge
  %lock.i20.sink.ph = phi ptr [ %lock.i, %do.end.i162.i.if.end4.sink.split.sink.split_crit_edge ], [ %lock.i20, %do.end.i.i.i46.if.end4.sink.split.sink.split_crit_edge ]
  %call8.i.sink.ph = phi i32 [ %call6.i, %do.end.i162.i.if.end4.sink.split.sink.split_crit_edge ], [ %call8.i, %do.end.i.i.i46.if.end4.sink.split.sink.split_crit_edge ]
  %call16.i.i.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.end4.sink.split.sink.split, %do.end.i.i.i46.if.end4.sink.split_crit_edge, %do.body.i.i.i40.if.end4.sink.split_crit_edge, %do.end.i162.i.if.end4.sink.split_crit_edge, %do.body.i157.i.if.end4.sink.split_crit_edge, %wait_until_divider_stable.exit.i.if.end4.sink.split_crit_edge
  %lock.i20.sink = phi ptr [ %lock.i, %do.end.i162.i.if.end4.sink.split_crit_edge ], [ %lock.i, %wait_until_divider_stable.exit.i.if.end4.sink.split_crit_edge ], [ %lock.i20, %do.end.i.i.i46.if.end4.sink.split_crit_edge ], [ %lock.i20.sink.ph, %if.end4.sink.split.sink.split ], [ %lock.i, %do.body.i157.i.if.end4.sink.split_crit_edge ], [ %lock.i20, %do.body.i.i.i40.if.end4.sink.split_crit_edge ]
  %call8.i.sink = phi i32 [ %call6.i, %do.end.i162.i.if.end4.sink.split_crit_edge ], [ %call6.i, %wait_until_divider_stable.exit.i.if.end4.sink.split_crit_edge ], [ %call8.i, %do.end.i.i.i46.if.end4.sink.split_crit_edge ], [ %call8.i.sink.ph, %if.end4.sink.split.sink.split ], [ %call6.i, %do.body.i157.i.if.end4.sink.split_crit_edge ], [ %call8.i, %do.body.i.i.i40.if.end4.sink.split_crit_edge ]
  %98 = ptrtoint ptr %lock.i20.sink to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lock.i20.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %99, i32 noundef %call8.i.sink) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %while.body.i15.if.end4_crit_edge, %while.body.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %100 = phi i32 [ 1, %entry.if.end4_crit_edge ], [ 1, %if.end4.sink.split ], [ 32791, %while.body.i.if.end4_crit_edge ], [ 32791, %while.body.i15.if.end4_crit_edge ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_add_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exynos_cpuclk_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %parent_rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_cpuclk_round_rate(ptr noundef %hw, i32 noundef %drate, ptr nocapture noundef writeonly %prate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %call1 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %drate) #8
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %prate, align 4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-cpu.c", i32 415, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @exynos_register_cpu_clock._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @exynos_register_cpu_clock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/samsung/clk-cpu.c", i32 444, i32 3}
!8 = !{ptr @exynos_register_cpu_clock._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @exynos_register_cpu_clock._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/samsung/clk-cpu.c", i32 457, i32 3}
!12 = !{ptr @exynos_register_cpu_clock._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @exynos_register_cpu_clock._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @exynos_cpuclk_clk_ops, !15, !"exynos_cpuclk_clk_ops", i1 false, i1 false}
!15 = !{!"../drivers/clk/samsung/clk-cpu.c", i32 127, i32 29}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/samsung/clk-cpu.c", i32 101, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wait_until_mux_stable._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @wait_until_mux_stable._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/samsung/clk-cpu.c", i32 81, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @wait_until_divider_stable._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @wait_until_divider_stable._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 700622}
!37 = !{i64 2152573407}
!38 = !{i64 2152573623}
!39 = !{i64 700204}
!40 = !{i64 2152560039}
!41 = !{i64 2152560863}
!42 = !{i64 2152576782}
!43 = !{i64 2152577005}
!44 = !{i64 2152562955}
!45 = !{i64 2152563781}
!46 = !{i64 2152577421}
!47 = !{i64 2152577827}
!48 = !{i64 2152578847}
!49 = !{i64 2152579071}
!50 = !{i64 2152567089}
!51 = !{i64 2152567571}
!52 = !{i64 2152565862}
!53 = !{i64 2152566078}
!54 = !{i64 2152570291}
!55 = !{i64 2152570518}
!56 = !{i64 2152570956}
!57 = !{i64 2152571371}
!58 = !{i64 2152572393}
!59 = !{i64 2152572621}
