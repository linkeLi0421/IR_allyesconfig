; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-fixed-rate.c_pt.bc'
source_filename = "../drivers/clk/clk-fixed-rate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_fixed_rate_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_fixed_rate_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_fixed_rate_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_fixed_rate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_fixed_rate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_fixed_rate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__clk_hw_register_fixed_rate\22, \22a\22\09"
module asm "\09.weak\09__crc___clk_hw_register_fixed_rate\09\09\09\09"
module asm "\09.long\09__crc___clk_hw_register_fixed_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_hw_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_hw_register_fixed_rate\22\09\09\09\09\09"
module asm "__kstrtabns___clk_hw_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_register_fixed_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_register_fixed_rate\09\09\09\09"
module asm "\09.long\09__crc_clk_register_fixed_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_fixed_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_unregister_fixed_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_unregister_fixed_rate\09\09\09\09"
module asm "\09.long\09__crc_clk_unregister_fixed_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_unregister_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_unregister_fixed_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_unregister_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_hw_unregister_fixed_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_hw_unregister_fixed_rate\09\09\09\09"
module asm "\09.long\09__crc_clk_hw_unregister_fixed_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister_fixed_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_fixed_rate = type { %struct.clk_hw, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@clk_fixed_rate_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_fixed_rate_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_fixed_rate_recalc_accuracy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_fixed_rate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_fixed_rate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_fixed_rate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_fixed_rate_ops to i32), ptr @__kstrtab_clk_fixed_rate_ops, ptr @__kstrtabns_clk_fixed_rate_ops }, section "___ksymtab_gpl+clk_fixed_rate_ops", align 4
@__kstrtab___clk_hw_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_hw_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_hw_register_fixed_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_hw_register_fixed_rate to i32), ptr @__kstrtab___clk_hw_register_fixed_rate, ptr @__kstrtabns___clk_hw_register_fixed_rate }, section "___ksymtab_gpl+__clk_hw_register_fixed_rate", align 4
@__kstrtab_clk_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_fixed_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_fixed_rate to i32), ptr @__kstrtab_clk_register_fixed_rate, ptr @__kstrtabns_clk_register_fixed_rate }, section "___ksymtab_gpl+clk_register_fixed_rate", align 4
@__kstrtab_clk_unregister_fixed_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_unregister_fixed_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_unregister_fixed_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_unregister_fixed_rate to i32), ptr @__kstrtab_clk_unregister_fixed_rate, ptr @__kstrtabns_clk_unregister_fixed_rate }, section "___ksymtab_gpl+clk_unregister_fixed_rate", align 4
@__kstrtab_clk_hw_unregister_fixed_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister_fixed_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister_fixed_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister_fixed_rate to i32), ptr @__kstrtab_clk_hw_unregister_fixed_rate, ptr @__kstrtabns_clk_hw_unregister_fixed_rate }, section "___ksymtab_gpl+clk_hw_unregister_fixed_rate", align 4
@__of_table_fixed_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_fixed_clk_setup }, section "__clk_of_table", align 4
@__initcall__kmod_clk_fixed_rate__183_219_of_fixed_clk_driver_init6 = internal global ptr @of_fixed_clk_driver_init, section ".initcall6.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clock-accuracy\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@of_fixed_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @of_fixed_clk_probe, ptr @of_fixed_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_fixed_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"of_fixed_clk\00", [19 x i8] zeroinitializer }, align 32
@of_fixed_clk_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"clk_fixed_rate_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 46, i32 22 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 148, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 151, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 153, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"of_fixed_clk_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 211, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 213, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"of_fixed_clk_ids\00", align 1
@___asan_gen_.23 = private constant [32 x i8] c"../drivers/clk/clk-fixed-rate.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 206, i32 34 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_clk_fixed_rate__183_219_of_fixed_clk_driver_init6, ptr @__ksymtab___clk_hw_register_fixed_rate, ptr @__ksymtab_clk_fixed_rate_ops, ptr @__ksymtab_clk_hw_unregister_fixed_rate, ptr @__ksymtab_clk_register_fixed_rate, ptr @__ksymtab_clk_unregister_fixed_rate, ptr @__of_table_fixed_clk, ptr @clk_fixed_rate_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @of_fixed_clk_driver, ptr @.str.3, ptr @of_fixed_clk_ids], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_fixed_rate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fixed_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fixed_clk_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_fixed_rate_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_rate = getelementptr inbounds %struct.clk_fixed_rate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_rate, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_fixed_rate_recalc_accuracy(ptr nocapture noundef readonly %hw, i32 noundef %parent_accuracy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.clk_fixed_rate, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fixed_accuracy = getelementptr inbounds %struct.clk_fixed_rate, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %fixed_accuracy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_accuracy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ %parent_accuracy, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef %dev, ptr noundef %np, ptr noundef %name, ptr noundef %parent_name, ptr noundef %parent_hw, ptr noundef %parent_data, i32 noundef %flags, i32 noundef %fixed_rate, i32 noundef %fixed_accuracy, i32 noundef %clk_fixed_flags) #1 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %parent_hw.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  %1 = ptrtoint ptr %parent_hw.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %parent_hw, ptr %parent_hw.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %2 = getelementptr inbounds i8, ptr %init, i32 20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @clk_fixed_rate_ops, ptr %ops, align 4
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags, ptr %flags3, align 4
  %8 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_name.addr, align 4
  %tobool4.not = icmp eq ptr %9, null
  %parent_name.addr. = select i1 %tobool4.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %10 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %11 = ptrtoint ptr %parent_hw.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent_hw.addr, align 4
  %tobool5.not = icmp eq ptr %12, null
  %cond9 = select i1 %tobool5.not, ptr null, ptr %parent_hw.addr
  %parent_hws = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 4
  %13 = ptrtoint ptr %parent_hws to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond9, ptr %parent_hws, align 4
  %parent_data10 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %14 = ptrtoint ptr %parent_data10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_data, ptr %parent_data10, align 4
  %tobool14.not = icmp eq ptr %parent_data, null
  %or.cond = and i1 %tobool14.not, %tobool5.not
  %or.cond56 = select i1 %tobool4.not, i1 %or.cond, i1 false
  %not.or.cond56 = xor i1 %or.cond56, true
  %spec.select = zext i1 %not.or.cond56 to i8
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %15, align 4
  %flags18 = getelementptr inbounds %struct.clk_fixed_rate, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %clk_fixed_flags, ptr %flags18, align 4
  %fixed_rate19 = getelementptr inbounds %struct.clk_fixed_rate, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %fixed_rate19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %fixed_rate, ptr %fixed_rate19, align 4
  %fixed_accuracy20 = getelementptr inbounds %struct.clk_fixed_rate, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %fixed_accuracy20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %fixed_accuracy, ptr %fixed_accuracy20, align 8
  %init22 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %init22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %init, ptr %init22, align 8
  %tobool24.not = icmp ne ptr %dev, null
  %tobool26.not = icmp eq ptr %np, null
  %or.cond55 = or i1 %tobool24.not, %tobool26.not
  br i1 %or.cond55, label %if.then27, label %if.then31

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #6
  br label %if.end34

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = call i32 @of_clk_hw_register(ptr noundef nonnull %np, ptr noundef nonnull %call7.i.i) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then27
  %ret.0 = phi i32 [ %call28, %if.then27 ], [ %call32, %if.then31 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool35.not = icmp eq i32 %ret.0, 0
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.then36

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %21 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %if.then36 ], [ %call7.i.i, %if.end34.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_register_fixed_rate(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, i32 noundef %fixed_rate) #1 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %parent_hw.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_hw.addr.i)
  %0 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  %1 = ptrtoint ptr %parent_hw.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %parent_hw.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %2 = getelementptr inbounds i8, ptr %init.i, i32 20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %__clk_hw_register_fixed_rate.exit.thread, label %if.end.i

__clk_hw_register_fixed_rate.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_hw.addr.i)
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @clk_fixed_rate_ops, ptr %ops.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %7 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags, ptr %flags3.i, align 4
  %8 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_name.addr.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  %parent_name.addr..i = select i1 %tobool4.not.i, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %10 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %11 = ptrtoint ptr %parent_hw.addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent_hw.addr.i, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  %cond9.i = select i1 %tobool5.not.i, ptr null, ptr %parent_hw.addr.i
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 4
  %13 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond9.i, ptr %parent_hws.i, align 4
  %parent_data10.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %14 = ptrtoint ptr %parent_data10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %parent_data10.i, align 4
  %or.cond56.i = select i1 %tobool4.not.i, i1 %tobool5.not.i, i1 false
  %not.or.cond56.i = xor i1 %or.cond56.i, true
  %spec.select.i = zext i1 %not.or.cond56.i to i8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i, ptr %2, align 4
  %flags18.i = getelementptr inbounds %struct.clk_fixed_rate, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags18.i, align 4
  %fixed_rate19.i = getelementptr inbounds %struct.clk_fixed_rate, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %fixed_rate19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %fixed_rate, ptr %fixed_rate19.i, align 4
  %fixed_accuracy20.i = getelementptr inbounds %struct.clk_fixed_rate, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %fixed_accuracy20.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fixed_accuracy20.i, align 8
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %init.i, ptr %init22.i, align 8
  %call28.i = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool35.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool35.not.i, label %if.end.i.__clk_hw_register_fixed_rate.exit_crit_edge, label %if.then36.i

if.end.i.__clk_hw_register_fixed_rate.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__clk_hw_register_fixed_rate.exit

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  %20 = inttoptr i32 %call28.i to ptr
  br label %__clk_hw_register_fixed_rate.exit

__clk_hw_register_fixed_rate.exit:                ; preds = %if.then36.i, %if.end.i.__clk_hw_register_fixed_rate.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.then36.i ], [ %call7.i.i.i, %if.end.i.__clk_hw_register_fixed_rate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_hw.addr.i)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %__clk_hw_register_fixed_rate.exit.cleanup_crit_edge, label %if.end

__clk_hw_register_fixed_rate.exit.cleanup_crit_edge: ; preds = %__clk_hw_register_fixed_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %__clk_hw_register_fixed_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.clk_hw, ptr %retval.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__clk_hw_register_fixed_rate.exit.cleanup_crit_edge, %__clk_hw_register_fixed_rate.exit.thread
  %retval.0 = phi ptr [ %22, %if.end ], [ inttoptr (i32 -12 to ptr), %__clk_hw_register_fixed_rate.exit.thread ], [ %retval.0.i, %__clk_hw_register_fixed_rate.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_unregister_fixed_rate(ptr noundef %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_get_hw(ptr noundef %clk) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister(ptr noundef %clk) #6
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_fixed_rate(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_hw_unregister(ptr noundef %hw) #6
  tail call void @kfree(ptr noundef %hw) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @of_fixed_clk_setup(ptr noundef %node) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_of_fixed_clk_setup(ptr noundef %node)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_of_fixed_clk_setup(ptr noundef %node) unnamed_addr #1 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %parent_hw.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %clk_name = alloca ptr, align 4
  %rate = alloca i32, align 4
  %accuracy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #6
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #6
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rate, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %accuracy) #6
  %4 = ptrtoint ptr %accuracy to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %accuracy, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %rate, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i26 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %accuracy, i32 noundef 1, i32 noundef 0) #6
  %call3 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.2, ptr noundef nonnull %clk_name) #6
  %5 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_name, align 4
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate, align 4
  %9 = ptrtoint ptr %accuracy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %accuracy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_hw.addr.i)
  %11 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %parent_name.addr.i, align 4
  %12 = ptrtoint ptr %parent_hw.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %parent_hw.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %13 = getelementptr inbounds i8, ptr %init.i, i32 20
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %__clk_hw_register_fixed_rate.exit.thread, label %if.end.i

__clk_hw_register_fixed_rate.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_hw.addr.i)
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %16 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %6, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @clk_fixed_rate_ops, ptr %ops.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %18 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags3.i, align 4
  %19 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent_name.addr.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  %parent_name.addr..i = select i1 %tobool4.not.i, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %21 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %22 = ptrtoint ptr %parent_hw.addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent_hw.addr.i, align 4
  %tobool5.not.i = icmp eq ptr %23, null
  %cond9.i = select i1 %tobool5.not.i, ptr null, ptr %parent_hw.addr.i
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 4
  %24 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cond9.i, ptr %parent_hws.i, align 4
  %parent_data10.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %25 = ptrtoint ptr %parent_data10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %parent_data10.i, align 4
  %or.cond56.i = select i1 %tobool4.not.i, i1 %tobool5.not.i, i1 false
  %not.or.cond56.i = xor i1 %or.cond56.i, true
  %spec.select.i = zext i1 %not.or.cond56.i to i8
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.select.i, ptr %13, align 4
  %flags18.i = getelementptr inbounds %struct.clk_fixed_rate, ptr %call7.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %flags18.i, align 4
  %fixed_rate19.i = getelementptr inbounds %struct.clk_fixed_rate, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %fixed_rate19.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %8, ptr %fixed_rate19.i, align 4
  %fixed_accuracy20.i = getelementptr inbounds %struct.clk_fixed_rate, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %fixed_accuracy20.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %10, ptr %fixed_accuracy20.i, align 8
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %init.i, ptr %init22.i, align 8
  %call28.i = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool35.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool35.not.i, label %if.end.i.__clk_hw_register_fixed_rate.exit_crit_edge, label %if.then36.i

if.end.i.__clk_hw_register_fixed_rate.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__clk_hw_register_fixed_rate.exit

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  %31 = inttoptr i32 %call28.i to ptr
  br label %__clk_hw_register_fixed_rate.exit

__clk_hw_register_fixed_rate.exit:                ; preds = %if.then36.i, %if.end.i.__clk_hw_register_fixed_rate.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.then36.i ], [ %call7.i.i.i, %if.end.i.__clk_hw_register_fixed_rate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_hw.addr.i)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %__clk_hw_register_fixed_rate.exit.cleanup_crit_edge, label %if.end7

__clk_hw_register_fixed_rate.exit.cleanup_crit_edge: ; preds = %__clk_hw_register_fixed_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %__clk_hw_register_fixed_rate.exit
  %call8 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_hw_unregister(ptr noundef %retval.0.i) #6
  call void @kfree(ptr noundef %retval.0.i) #6
  %32 = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %__clk_hw_register_fixed_rate.exit.cleanup_crit_edge, %__clk_hw_register_fixed_rate.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %32, %if.then10 ], [ %retval.0.i, %__clk_hw_register_fixed_rate.exit.cleanup_crit_edge ], [ %retval.0.i, %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %__clk_hw_register_fixed_rate.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %accuracy) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #6
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fixed_clk_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @of_fixed_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fixed_clk_probe(ptr nocapture noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call fastcc ptr @_of_fixed_clk_setup(ptr noundef %1)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fixed_clk_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #6
  tail call void @clk_hw_unregister(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @clk_fixed_rate_ops, !1, !"clk_fixed_rate_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-fixed-rate.c", i32 46, i32 22}
!2 = !{ptr @__ksymtab_clk_fixed_rate_ops, !3, !"__ksymtab_clk_fixed_rate_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-fixed-rate.c", i32 50, i32 1}
!4 = !{ptr @__ksymtab___clk_hw_register_fixed_rate, !5, !"__ksymtab___clk_hw_register_fixed_rate", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-fixed-rate.c", i32 99, i32 1}
!6 = !{ptr @__ksymtab_clk_register_fixed_rate, !7, !"__ksymtab_clk_register_fixed_rate", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-fixed-rate.c", i32 113, i32 1}
!8 = !{ptr @__ksymtab_clk_unregister_fixed_rate, !9, !"__ksymtab_clk_unregister_fixed_rate", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-fixed-rate.c", i32 126, i32 1}
!10 = !{ptr @__ksymtab_clk_hw_unregister_fixed_rate, !11, !"__ksymtab_clk_hw_unregister_fixed_rate", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-fixed-rate.c", i32 137, i32 1}
!12 = !{ptr @__of_table_fixed_clk, !13, !"__of_table_fixed_clk", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-fixed-rate.c", i32 177, i32 1}
!14 = !{ptr @__initcall__kmod_clk_fixed_rate__183_219_of_fixed_clk_driver_init6, !15, !"__initcall__kmod_clk_fixed_rate__183_219_of_fixed_clk_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-fixed-rate.c", i32 219, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-fixed-rate.c", i32 148, i32 33}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-fixed-rate.c", i32 151, i32 29}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-fixed-rate.c", i32 153, i32 32}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-fixed-rate.c", i32 213, i32 11}
!24 = !{ptr @of_fixed_clk_driver, !25, !"of_fixed_clk_driver", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-fixed-rate.c", i32 211, i32 31}
!26 = !{ptr @of_fixed_clk_ids, !27, !"of_fixed_clk_ids", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-fixed-rate.c", i32 206, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
