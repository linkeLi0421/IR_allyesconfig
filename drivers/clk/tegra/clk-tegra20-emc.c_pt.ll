; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra20-emc.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra20-emc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tegra20_clk_set_emc_round_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra20_clk_set_emc_round_callback\09\09\09\09"
module asm "\09.long\09__crc_tegra20_clk_set_emc_round_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_clk_set_emc_round_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_clk_set_emc_round_callback\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_clk_set_emc_round_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra20_clk_prepare_emc_mc_same_freq\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra20_clk_prepare_emc_mc_same_freq\09\09\09\09"
module asm "\09.long\09__crc_tegra20_clk_prepare_emc_mc_same_freq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_clk_prepare_emc_mc_same_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_clk_prepare_emc_mc_same_freq\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_clk_prepare_emc_mc_same_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_clk_emc = type { %struct.clk_hw, ptr, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_tegra20_clk_set_emc_round_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_clk_set_emc_round_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_clk_set_emc_round_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_clk_set_emc_round_callback to i32), ptr @__kstrtab_tegra20_clk_set_emc_round_callback, ptr @__kstrtabns_tegra20_clk_set_emc_round_callback }, section "___ksymtab_gpl+tegra20_clk_set_emc_round_callback", align 4
@tegra_clk_emc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @emc_recalc_rate, ptr null, ptr @emc_determine_rate, ptr @emc_set_parent, ptr @emc_get_parent, ptr @emc_set_rate, ptr @emc_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@emc_parent_clk_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], [16 x i8] zeroinitializer }, align 32
@__kstrtab_tegra20_clk_prepare_emc_mc_same_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_clk_prepare_emc_mc_same_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_clk_prepare_emc_mc_same_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_clk_prepare_emc_mc_same_freq to i32), ptr @__kstrtab_tegra20_clk_prepare_emc_mc_same_freq, ptr @__kstrtabns_tegra20_clk_prepare_emc_mc_same_freq }, section "___ksymtab_gpl+tegra20_clk_prepare_emc_mc_same_freq", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@emc_determine_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@emc_determine_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013tegra-emc-clk: can't find parent for rate %lu emc_rate %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"emc_determine_rate\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clk/tegra/clk-tegra20-emc.c\00", [60 x i8] zeroinitializer }, align 32
@emc_determine_rate._entry_ptr = internal global ptr @emc_determine_rate._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_m\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_c\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_p\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_m\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 227, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"tegra_clk_emc_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 215, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"emc_parent_clk_names\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 35, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 207, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 36, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 36, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 36, i32 20 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [39 x i8] c"../drivers/clk/tegra/clk-tegra20-emc.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 36, i32 29 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_tegra20_clk_prepare_emc_mc_same_freq, ptr @__ksymtab_tegra20_clk_set_emc_round_callback, ptr @emc_determine_rate._entry, ptr @emc_determine_rate._entry_ptr, ptr @.str, ptr @tegra_clk_emc_ops, ptr @emc_parent_clk_names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_emc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_parent_clk_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_determine_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra20_clk_set_emc_round_callback(ptr noundef %round_cb, ptr noundef %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_lookup(ptr noundef nonnull @.str) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call ptr @__clk_get_hw(ptr noundef nonnull %call) #7
  %round_cb3 = getelementptr inbounds %struct.tegra_clk_emc, ptr %call1, i32 0, i32 4
  %0 = ptrtoint ptr %round_cb3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %round_cb, ptr %round_cb3, align 4
  %cb_arg4 = getelementptr inbounds %struct.tegra_clk_emc, ptr %call1, i32 0, i32 5
  %1 = ptrtoint ptr %cb_arg4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cb_arg, ptr %cb_arg4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tegra20_clk_emc_driver_available(ptr nocapture noundef readonly %emc_hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %round_cb = getelementptr inbounds %struct.tegra_clk_emc, ptr %emc_hw, i32 0, i32 4
  %0 = ptrtoint ptr %round_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %round_cb, align 4
  %cmp = icmp ne ptr %1, null
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra20_clk_register_emc(ptr noundef %ioaddr, i1 noundef zeroext %low_jitter) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %low_jitter to i8
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tegra_clk_emc_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2048, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @emc_parent_clk_names, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %num_parents, align 4
  %reg = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ioaddr, ptr %reg, align 4
  %init1 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init1, align 8
  %want_low_jitter = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %want_low_jitter to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %want_low_jitter, align 1
  %call5 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then7 ], [ null, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra20_clk_prepare_emc_mc_same_freq(ptr noundef %emc_clk, i1 noundef zeroext %same) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %emc_clk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %same to i8
  %call = tail call ptr @__clk_get_hw(ptr noundef nonnull %emc_clk) #7
  %mc_same_freq = getelementptr inbounds %struct.tegra_clk_emc, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mc_same_freq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %mc_same_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !34
  %3 = lshr i32 %2, 24
  %mul = shl i32 %parent_rate, 1
  %add = add nuw nsw i32 %3, 2
  %add2 = add i32 %mul, -1
  %sub = add i32 %add2, %add
  %div4 = udiv i32 %sub, %add
  ret i32 %div4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %round_cb = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %round_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %round_cb, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_rate, align 4
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_rate, align 4
  %cb_arg = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb_arg, align 4
  %call1 = tail call i32 %1(i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %call3 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 0) #7
  %10 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %best_parent_hw, align 4
  %cmp4 = icmp eq ptr %11, %call3
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %best_parent_rate, align 4
  br label %if.end7

if.else:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @clk_hw_get_rate(ptr noundef %call3) #7
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %parent_rate.0 = phi i32 [ %13, %if.then5 ], [ %call6, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %parent_rate.0)
  %cmp8 = icmp ugt i32 %call1, %parent_rate.0
  br i1 %cmp8, label %if.end7.for.inc_crit_edge, label %if.end10

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @div_frac_get(i32 noundef %call1, i32 noundef %parent_rate.0, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %mul = shl i32 %parent_rate.0, 1
  %add = add i32 %call11, 2
  %add12 = add i32 %mul, -1
  %sub = add i32 %add12, %add
  %div14 = udiv i32 %sub, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div14, i32 %call1)
  %cmp15.not = icmp eq i32 %div14, %call1
  br i1 %cmp15.not, label %if.end10.for.end.thread_crit_edge, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end10.for.end.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end10.3.for.end.thread_crit_edge, %if.end10.2.for.end.thread_crit_edge, %if.end10.1.for.end.thread_crit_edge, %if.end10.for.end.thread_crit_edge
  %parent_rate.0.lcssa = phi i32 [ %parent_rate.0, %if.end10.for.end.thread_crit_edge ], [ %parent_rate.0.1, %if.end10.1.for.end.thread_crit_edge ], [ %parent_rate.0.2, %if.end10.2.for.end.thread_crit_edge ], [ %parent_rate.0.3, %if.end10.3.for.end.thread_crit_edge ]
  %call3.lcssa = phi ptr [ %call3, %if.end10.for.end.thread_crit_edge ], [ %call3.1, %if.end10.1.for.end.thread_crit_edge ], [ %call3.2, %if.end10.2.for.end.thread_crit_edge ], [ %call3.3, %if.end10.3.for.end.thread_crit_edge ]
  %14 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %parent_rate.0.lcssa, ptr %best_parent_rate, align 4
  %15 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3.lcssa, ptr %best_parent_hw, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call1, ptr %req, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %call3.1 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 1) #7
  %17 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %best_parent_hw, align 4
  %cmp4.1 = icmp eq ptr %18, %call3.1
  br i1 %cmp4.1, label %if.then5.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call6.1 = tail call i32 @clk_hw_get_rate(ptr noundef %call3.1) #7
  br label %if.end7.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %best_parent_rate, align 4
  br label %if.end7.1

if.end7.1:                                        ; preds = %if.then5.1, %if.else.1
  %parent_rate.0.1 = phi i32 [ %20, %if.then5.1 ], [ %call6.1, %if.else.1 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %parent_rate.0.1)
  %cmp8.1 = icmp ugt i32 %call1, %parent_rate.0.1
  br i1 %cmp8.1, label %if.end7.1.for.inc.1_crit_edge, label %if.end10.1

if.end7.1.for.inc.1_crit_edge:                    ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end10.1:                                       ; preds = %if.end7.1
  %call11.1 = tail call i32 @div_frac_get(i32 noundef %call1, i32 noundef %parent_rate.0.1, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %mul.1 = shl i32 %parent_rate.0.1, 1
  %add.1 = add i32 %call11.1, 2
  %add12.1 = add i32 %mul.1, -1
  %sub.1 = add i32 %add12.1, %add.1
  %div14.1 = udiv i32 %sub.1, %add.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.1, i32 %call1)
  %cmp15.not.1 = icmp eq i32 %div14.1, %call1
  br i1 %cmp15.not.1, label %if.end10.1.for.end.thread_crit_edge, label %if.end10.1.for.inc.1_crit_edge

if.end10.1.for.inc.1_crit_edge:                   ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end10.1.for.end.thread_crit_edge:              ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.inc.1:                                        ; preds = %if.end10.1.for.inc.1_crit_edge, %if.end7.1.for.inc.1_crit_edge
  %call3.2 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 2) #7
  %21 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %best_parent_hw, align 4
  %cmp4.2 = icmp eq ptr %22, %call3.2
  br i1 %cmp4.2, label %if.then5.2, label %if.else.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %call6.2 = tail call i32 @clk_hw_get_rate(ptr noundef %call3.2) #7
  br label %if.end7.2

if.then5.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %best_parent_rate, align 4
  br label %if.end7.2

if.end7.2:                                        ; preds = %if.then5.2, %if.else.2
  %parent_rate.0.2 = phi i32 [ %24, %if.then5.2 ], [ %call6.2, %if.else.2 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %parent_rate.0.2)
  %cmp8.2 = icmp ugt i32 %call1, %parent_rate.0.2
  br i1 %cmp8.2, label %if.end7.2.for.inc.2_crit_edge, label %if.end10.2

if.end7.2.for.inc.2_crit_edge:                    ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end10.2:                                       ; preds = %if.end7.2
  %call11.2 = tail call i32 @div_frac_get(i32 noundef %call1, i32 noundef %parent_rate.0.2, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %mul.2 = shl i32 %parent_rate.0.2, 1
  %add.2 = add i32 %call11.2, 2
  %add12.2 = add i32 %mul.2, -1
  %sub.2 = add i32 %add12.2, %add.2
  %div14.2 = udiv i32 %sub.2, %add.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.2, i32 %call1)
  %cmp15.not.2 = icmp eq i32 %div14.2, %call1
  br i1 %cmp15.not.2, label %if.end10.2.for.end.thread_crit_edge, label %if.end10.2.for.inc.2_crit_edge

if.end10.2.for.inc.2_crit_edge:                   ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end10.2.for.end.thread_crit_edge:              ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.inc.2:                                        ; preds = %if.end10.2.for.inc.2_crit_edge, %if.end7.2.for.inc.2_crit_edge
  %call3.3 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 3) #7
  %25 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %best_parent_hw, align 4
  %cmp4.3 = icmp eq ptr %26, %call3.3
  br i1 %cmp4.3, label %if.then5.3, label %if.else.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %call6.3 = tail call i32 @clk_hw_get_rate(ptr noundef %call3.3) #7
  br label %if.end7.3

if.then5.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %best_parent_rate, align 4
  br label %if.end7.3

if.end7.3:                                        ; preds = %if.then5.3, %if.else.3
  %parent_rate.0.3 = phi i32 [ %28, %if.then5.3 ], [ %call6.3, %if.else.3 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %parent_rate.0.3)
  %cmp8.3 = icmp ugt i32 %call1, %parent_rate.0.3
  br i1 %cmp8.3, label %if.end7.3.land.end_crit_edge, label %if.end10.3

if.end7.3.land.end_crit_edge:                     ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end10.3:                                       ; preds = %if.end7.3
  %call11.3 = tail call i32 @div_frac_get(i32 noundef %call1, i32 noundef %parent_rate.0.3, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %mul.3 = shl i32 %parent_rate.0.3, 1
  %add.3 = add i32 %call11.3, 2
  %add12.3 = add i32 %mul.3, -1
  %sub.3 = add i32 %add12.3, %add.3
  %div14.3 = udiv i32 %sub.3, %add.3
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.3, i32 %call1)
  %cmp15.not.3 = icmp eq i32 %div14.3, %call1
  br i1 %cmp15.not.3, label %if.end10.3.for.end.thread_crit_edge, label %if.end10.3.land.end_crit_edge

if.end10.3.land.end_crit_edge:                    ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end10.3.for.end.thread_crit_edge:              ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.end:                                         ; preds = %if.end10.3.land.end_crit_edge, %if.end7.3.land.end_crit_edge
  %.b71 = load i1, ptr @emc_determine_rate.__already_done, align 1
  br i1 %.b71, label %land.end.cleanup_crit_edge, label %if.then27, !prof !35

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @emc_determine_rate.__already_done, align 1
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %req, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %30, i32 noundef %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %land.end.cleanup_crit_edge, %for.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.then27 ], [ -22, %land.end.cleanup_crit_edge ], [ 0, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !34
  %3 = and i32 %2, -193
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i8 %index to i32
  %shl = shl i32 %conv, 30
  %or = or i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp = icmp eq i8 %index, 0
  %and2 = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp5 = icmp eq i32 %and2, 0
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %land.lhs.true7, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true7:                                   ; preds = %entry
  %want_low_jitter = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %want_low_jitter to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %want_low_jitter, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true7.if.else_crit_edge, label %if.then

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  %or9 = or i32 %or, 536870912
  br label %if.end

if.else:                                          ; preds = %land.lhs.true7.if.else_crit_edge, %entry.if.else_crit_edge
  %and10 = and i32 %or, -536870913
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %or9, %if.then ], [ %and10, %if.else ]
  %mc_same_freq = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %mc_same_freq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mc_same_freq, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  %and15 = and i32 %val.0, -65537
  %masksel = select i1 %tobool11.not, i32 0, i32 65536
  %val.1 = or i32 %masksel, %and15
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !37
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @emc_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !34
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 6
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @div_frac_get(i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %reg = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !34
  %3 = and i32 %2, 16777215
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %or)
  %cmp = icmp ult i32 %or, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3 = icmp eq i32 %call1, 0
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %land.lhs.true4, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true4:                                   ; preds = %entry
  %want_low_jitter = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %want_low_jitter to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %want_low_jitter, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true4.if.else_crit_edge, label %if.then

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  %or5 = or i32 %or, 536870912
  br label %if.end

if.else:                                          ; preds = %land.lhs.true4.if.else_crit_edge, %entry.if.else_crit_edge
  %and6 = and i32 %or, -536870913
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %or5, %if.then ], [ %and6, %if.else ]
  %mc_same_freq = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %mc_same_freq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mc_same_freq, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  %and11 = and i32 %val.0, -65537
  %masksel = select i1 %tobool7.not, i32 0, i32 65536
  %val.1 = or i32 %masksel, %and11
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !37
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_set_rate_and_parent(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @div_frac_get(i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %reg = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !34
  %conv = zext i8 %index to i32
  %shl = shl i32 %conv, 30
  %3 = and i32 %2, 16777023
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and3 = or i32 %4, %shl
  %or4 = or i32 %and3, %call1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp = icmp eq i8 %index, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp7 = icmp eq i32 %call1, 0
  %or.cond = select i1 %cmp, i1 %cmp7, i1 false
  br i1 %or.cond, label %land.lhs.true9, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true9:                                   ; preds = %entry
  %want_low_jitter = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %want_low_jitter to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %want_low_jitter, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true9.if.else_crit_edge, label %if.then

land.lhs.true9.if.else_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  %or11 = or i32 %or4, 536870912
  br label %if.end

if.else:                                          ; preds = %land.lhs.true9.if.else_crit_edge, %entry.if.else_crit_edge
  %and12 = and i32 %or4, -536870913
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %or11, %if.then ], [ %and12, %if.else ]
  %mc_same_freq = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %mc_same_freq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mc_same_freq, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  %and17 = and i32 %val.0, -65537
  %masksel = select i1 %tobool13.not, i32 0, i32 65536
  %val.1 = or i32 %masksel, %and17
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !37
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @div_frac_get(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 227, i32 33}
!2 = !{ptr @__ksymtab_tegra20_clk_set_emc_round_callback, !3, !"__ksymtab_tegra20_clk_set_emc_round_callback", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 239, i32 1}
!4 = !{ptr @__ksymtab_tegra20_clk_prepare_emc_mc_same_freq, !5, !"__ksymtab_tegra20_clk_prepare_emc_mc_same_freq", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 296, i32 1}
!6 = !{ptr @tegra_clk_emc_ops, !7, !"tegra_clk_emc_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 215, i32 29}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 207, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @emc_determine_rate._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @emc_determine_rate._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 36, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 36, i32 11}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 36, i32 20}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 36, i32 29}
!23 = !{ptr @emc_parent_clk_names, !24, !"emc_parent_clk_names", i1 false, i1 false}
!24 = !{!"../drivers/clk/tegra/clk-tegra20-emc.c", i32 35, i32 27}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 4046138}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i8 0, i8 2}
!37 = !{i64 4045720}
!38 = !{i64 2152561530}
!39 = !{i64 2152564062}
!40 = !{i64 2152567286}
