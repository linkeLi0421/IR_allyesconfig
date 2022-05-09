; ModuleID = '/llk/IR_all_yes/drivers/reset/tegra/reset-bpmp.c_pt.bc'
source_filename = "../drivers/reset/tegra/reset-bpmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.tegra_bpmp = type { ptr, ptr, ptr, %struct.anon.45, %struct.spinlock, ptr, ptr, ptr, %struct.anon.46, %struct.list_head, %struct.spinlock, ptr, i32, %struct.reset_controller_dev, %struct.genpd_onecell_data, ptr }
%struct.anon.45 = type { %struct.mbox_client, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.anon.46 = type { ptr, ptr, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.tegra_bpmp_soc = type { %struct.anon, ptr, i32 }
%struct.anon = type { %struct.anon.0, %struct.anon.0, %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i32 }
%struct.mrq_reset_request = type { i32, i32 }
%struct.tegra_bpmp_message = type { i32, %struct.anon.49, %struct.anon.50 }
%struct.anon.49 = type { ptr, i32 }
%struct.anon.50 = type { ptr, i32, i32 }

@tegra_bpmp_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @tegra_bpmp_reset_module, ptr @tegra_bpmp_reset_assert, ptr @tegra_bpmp_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"tegra_bpmp_reset_ops\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/reset/tegra/reset-bpmp.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 54, i32 39 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @tegra_bpmp_reset_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_bpmp_init_resets(ptr noundef %bpmp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rstc = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 13
  %0 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tegra_bpmp_reset_ops, ptr %rstc, align 4
  %owner = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %owner, align 4
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %of_node3 = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 13, i32 5
  %6 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %of_node3, align 4
  %7 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bpmp, align 4
  %num_resets = getelementptr inbounds %struct.tegra_bpmp_soc, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_resets, align 4
  %nr_resets = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 13, i32 8
  %11 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nr_resets, align 4
  %call = tail call i32 @devm_reset_controller_register(ptr noundef %3, ptr noundef %rstc) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_reset_module(ptr noundef %rstc, i32 noundef %id) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_reset_request, align 8
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %rstc, i32 -228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %request.i) #3
  %0 = getelementptr inbounds %struct.mrq_reset_request, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #3
  %1 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %request.i, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %0, align 4
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %msg.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %request.i, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %2, align 4
  %call2.i = call i32 @tegra_bpmp_transfer(ptr noundef %add.ptr.i.i, ptr noundef nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %request.i) #3
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_reset_assert(ptr noundef %rstc, i32 noundef %id) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_reset_request, align 8
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %rstc, i32 -228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %request.i) #3
  %0 = getelementptr inbounds %struct.mrq_reset_request, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #3
  %1 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %request.i, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %0, align 4
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %msg.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %request.i, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %2, align 4
  %call2.i = call i32 @tegra_bpmp_transfer(ptr noundef %add.ptr.i.i, ptr noundef nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %request.i) #3
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_reset_deassert(ptr noundef %rstc, i32 noundef %id) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_reset_request, align 8
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %rstc, i32 -228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %request.i) #3
  %0 = getelementptr inbounds %struct.mrq_reset_request, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #3
  %1 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %request.i, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %0, align 4
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %msg.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %request.i, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %2, align 4
  %call2.i = call i32 @tegra_bpmp_transfer(ptr noundef %add.ptr.i.i, ptr noundef nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %request.i) #3
  ret i32 %call2.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_transfer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @tegra_bpmp_reset_ops, !1, !"tegra_bpmp_reset_ops", i1 false, i1 false}
!1 = !{!"../drivers/reset/tegra/reset-bpmp.c", i32 54, i32 39}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
