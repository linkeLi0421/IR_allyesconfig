; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_dotclock.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_dotclock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sun4i_dclk_create\22, \22a\22\09"
module asm "\09.weak\09__crc_sun4i_dclk_create\09\09\09\09"
module asm "\09.long\09__crc_sun4i_dclk_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_dclk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_dclk_create\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_dclk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sun4i_dclk_free\22, \22a\22\09"
module asm "\09.weak\09__crc_sun4i_dclk_free\09\09\09\09"
module asm "\09.long\09__crc_sun4i_dclk_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_dclk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_dclk_free\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_dclk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sun4i_tcon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sun4i_dclk = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sun4i_dclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @sun4i_dclk_enable, ptr @sun4i_dclk_disable, ptr @sun4i_dclk_is_enabled, ptr null, ptr null, ptr null, ptr @sun4i_dclk_recalc_rate, ptr @sun4i_dclk_round_rate, ptr null, ptr null, ptr null, ptr @sun4i_dclk_set_rate, ptr null, ptr null, ptr @sun4i_dclk_get_phase, ptr @sun4i_dclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sun4i_dclk_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_dclk_create = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_dclk_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_dclk_create to i32), ptr @__kstrtab_sun4i_dclk_create, ptr @__kstrtabns_sun4i_dclk_create }, section "___ksymtab+sun4i_dclk_create", align 4
@__kstrtab_sun4i_dclk_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_dclk_free = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_dclk_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_dclk_free to i32), ptr @__kstrtab_sun4i_dclk_free, ptr @__kstrtabns_sun4i_dclk_free }, section "___ksymtab+sun4i_dclk_free", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 174, i32 10 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"sun4i_dclk_ops\00", align 1
@___asan_gen_.5 = private constant [42 x i8] c"../drivers/gpu/drm/sun4i/sun4i_dotclock.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 152, i32 29 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_sun4i_dclk_create, ptr @__ksymtab_sun4i_dclk_free, ptr @.str, ptr @sun4i_dclk_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_dclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_dclk_create(ptr noundef %dev, ptr noundef %tcon) #0 align 64 {
entry:
  %clk_name = alloca ptr, align 4
  %parent_name = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #4
  %0 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #4
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %sclk0 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 4
  %3 = ptrtoint ptr %sclk0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sclk0, align 4
  %call = tail call ptr @__clk_get_name(ptr noundef %4) #4
  %5 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %parent_name, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef 0) #4
  %8 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i33 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i33, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %tcon6 = getelementptr inbounds %struct.sun4i_dclk, ptr %call.i33, i32 0, i32 2
  %9 = ptrtoint ptr %tcon6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tcon, ptr %tcon6, align 4
  %10 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_name, align 4
  %12 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sun4i_dclk_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %15 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %flags, align 4
  %regs = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %regmap = getelementptr inbounds %struct.sun4i_dclk, ptr %call.i33, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %regmap, align 4
  %init7 = getelementptr inbounds %struct.clk_hw, ptr %call.i33, i32 0, i32 2
  %20 = ptrtoint ptr %init7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %init, ptr %init7, align 4
  %call9 = call ptr @clk_register(ptr noundef %dev, ptr noundef nonnull %call.i33) #4
  %dclk10 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 7
  %21 = ptrtoint ptr %dclk10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9, ptr %dclk10, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call9 to i32
  %spec.select = select i1 %cmp.i, i32 %22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_dclk_free(ptr nocapture noundef readonly %tcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dclk = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 7
  %0 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dclk, align 4
  tail call void @clk_unregister(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.sun4i_dclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 68, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_dclk_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.sun4i_dclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 68, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !17
  %regmap = getelementptr inbounds %struct.sun4i_dclk, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 68, ptr noundef nonnull %val) #4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, -2147483648
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !17
  %regmap = getelementptr inbounds %struct.sun4i_dclk, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 68, ptr noundef nonnull %val) #4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %and
  %div = udiv i32 %parent_rate, %spec.store.select
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef writeonly %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tcon1 = getelementptr inbounds %struct.sun4i_dclk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %tcon1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon1, align 4
  %dclk_min_div = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dclk_min_div to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dclk_min_div, align 1
  %dclk_max_div = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dclk_max_div to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dclk_max_div, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp.not73 = icmp ugt i8 %3, %5
  br i1 %cmp.not73, label %entry.cleanup40_crit_edge, label %for.body.lr.ph

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %3 to i32
  %conv4 = zext i32 %rate to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_div.075 = phi i8 [ 1, %for.body.lr.ph ], [ %best_div.1, %for.inc.for.body_crit_edge ]
  %best_parent.074 = phi i32 [ 0, %for.body.lr.ph ], [ %best_parent.1, %for.inc.for.body_crit_edge ]
  %conv5 = sext i32 %i.076 to i64
  %mul = mul nsw i64 %conv5, %conv4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul)
  %cmp6 = icmp ugt i64 %mul, 4294967295
  br i1 %cmp6, label %for.body.cleanup40_crit_edge, label %if.end

for.body.cleanup40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup40

if.end:                                           ; preds = %for.body
  %call8 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #4
  %conv9 = trunc i64 %mul to i32
  %call10 = tail call i32 @clk_hw_round_rate(ptr noundef %call8, i32 noundef %conv9) #4
  %conv11 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv11)
  %cmp12 = icmp eq i64 %mul, %conv11
  br i1 %cmp12, label %if.then14, label %for.inc

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv15 = trunc i32 %i.076 to i8
  br label %cleanup40

for.inc:                                          ; preds = %if.end
  %div = udiv i32 %call10, %i.076
  %sub = sub i32 %rate, %div
  %6 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %conv21 = zext i8 %best_div.075 to i32
  %div22 = udiv i32 %best_parent.074, %conv21
  %sub23 = sub i32 %rate, %div22
  %7 = tail call i32 @llvm.abs.i32(i32 %sub23, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp32 = icmp slt i32 %6, %7
  %conv35 = trunc i32 %i.076 to i8
  %best_parent.1 = select i1 %cmp32, i32 %call10, i32 %best_parent.074
  %best_div.1 = select i1 %cmp32, i8 %conv35, i8 %best_div.075
  %inc = add nuw i32 %i.076, 1
  %8 = ptrtoint ptr %dclk_max_div to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dclk_max_div, align 4
  %conv2 = zext i8 %9 to i32
  %cmp.not.not = icmp ult i32 %i.076, %conv2
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.inc.cleanup40_crit_edge

for.inc.cleanup40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup40

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup40:                                        ; preds = %for.inc.cleanup40_crit_edge, %if.then14, %for.body.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %best_parent.3 = phi i32 [ %call10, %if.then14 ], [ 0, %entry.cleanup40_crit_edge ], [ %best_parent.1, %for.inc.cleanup40_crit_edge ], [ %best_parent.074, %for.body.cleanup40_crit_edge ]
  %best_div.3 = phi i8 [ %conv15, %if.then14 ], [ 1, %entry.cleanup40_crit_edge ], [ %best_div.1, %for.inc.cleanup40_crit_edge ], [ %best_div.075, %for.body.cleanup40_crit_edge ]
  %10 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %best_parent.3, ptr %parent_rate, align 4
  %conv38 = zext i8 %best_div.3 to i32
  %div39 = udiv i32 %best_parent.3, %conv38
  ret i32 %div39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = udiv i32 %parent_rate, %rate
  %regmap = getelementptr inbounds %struct.sun4i_dclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %conv2 = and i32 %div1, 255
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 68, i32 noundef 127, i32 noundef %conv2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_get_phase(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !17
  %regmap = getelementptr inbounds %struct.sun4i_dclk, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 136, ptr noundef nonnull %val) #4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %shr = lshr i32 %4, 28
  %and = and i32 %shr, 3
  %mul = mul nuw nsw i32 %and, 120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_set_phase(ptr nocapture noundef readonly %hw, i32 noundef %degrees) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %degrees, 120
  %shl = shl i32 %div, 28
  %regmap = getelementptr inbounds %struct.sun4i_dclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 136, i32 noundef 805306368, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_dotclock.c", i32 174, i32 10}
!2 = !{ptr @__ksymtab_sun4i_dclk_create, !3, !"__ksymtab_sun4i_dclk_create", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sun4i/sun4i_dotclock.c", i32 199, i32 1}
!4 = !{ptr @__ksymtab_sun4i_dclk_free, !5, !"__ksymtab_sun4i_dclk_free", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sun4i/sun4i_dotclock.c", i32 206, i32 1}
!6 = !{ptr @sun4i_dclk_ops, !7, !"sun4i_dclk_ops", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sun4i/sun4i_dotclock.c", i32 152, i32 29}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
