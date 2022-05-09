; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/busnv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/busnv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_bus_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv04_i2c_bus = type { %struct.nvkm_i2c_bus, i8, i8 }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvkm_i2c_pad = type { ptr, ptr, i32, i32, %struct.mutex, %struct.list_head }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }

@nv04_i2c_bus_func = internal constant { %struct.nvkm_i2c_bus_func, [40 x i8] } { %struct.nvkm_i2c_bus_func { ptr null, ptr @nv04_i2c_bus_drive_scl, ptr @nv04_i2c_bus_drive_sda, ptr @nv04_i2c_bus_sense_scl, ptr @nv04_i2c_bus_sense_sda, ptr @nvkm_i2c_bit_xfer }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"nv04_i2c_bus_func\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/busnv04.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 74, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nv04_i2c_bus_func], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_i2c_bus_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_i2c_bus_new(ptr noundef %pad, i32 noundef %id, i8 noundef zeroext %drive, i8 noundef zeroext %sense, ptr nocapture noundef writeonly %pbus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1488) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %pbus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pbus, align 4
  %call2 = tail call i32 @nvkm_i2c_bus_ctor(ptr noundef nonnull @nv04_i2c_bus_func, ptr noundef %pad, i32 noundef %id, ptr noundef nonnull %call7.i.i) #3
  %drive3 = getelementptr inbounds %struct.nv04_i2c_bus, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %drive3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %drive, ptr %drive3, align 8
  %sense4 = getelementptr inbounds %struct.nv04_i2c_bus, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %sense4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %sense, ptr %sense4, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_i2c_bus_drive_scl(ptr nocapture noundef readonly %base, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %device2 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 4
  %drive = getelementptr inbounds %struct.nv04_i2c_bus, ptr %base, i32 0, i32 1
  %6 = ptrtoint ptr %drive to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %drive, align 8
  %call = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %8 = and i8 %call, -34
  %9 = ptrtoint ptr %drive to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %drive, align 8
  %val.0 = select i1 %tobool.not, i8 1, i8 33
  %11 = or i8 %val.0, %8
  tail call void @nvkm_wrvgac(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %10, i8 noundef zeroext %11) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_i2c_bus_drive_sda(ptr nocapture noundef readonly %base, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %device2 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 4
  %drive = getelementptr inbounds %struct.nv04_i2c_bus, ptr %base, i32 0, i32 1
  %6 = ptrtoint ptr %drive to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %drive, align 8
  %call = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %8 = and i8 %call, -18
  %9 = ptrtoint ptr %drive to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %drive, align 8
  %val.0 = select i1 %tobool.not, i8 1, i8 17
  %11 = or i8 %val.0, %8
  tail call void @nvkm_wrvgac(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %10, i8 noundef zeroext %11) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_i2c_bus_sense_scl(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %device2 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 4
  %sense = getelementptr inbounds %struct.nv04_i2c_bus, ptr %base, i32 0, i32 2
  %6 = ptrtoint ptr %sense to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sense, align 1
  %call = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %7) #3
  %8 = lshr i8 %call, 2
  %.lobit = and i8 %8, 1
  %9 = zext i8 %.lobit to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_i2c_bus_sense_sda(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad, align 4
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %device2 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 4
  %sense = getelementptr inbounds %struct.nv04_i2c_bus, ptr %base, i32 0, i32 2
  %6 = ptrtoint ptr %sense to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sense, align 1
  %call = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %7) #3
  %8 = lshr i8 %call, 3
  %.lobit = and i8 %8, 1
  %9 = zext i8 %.lobit to i32
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bit_xfer(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgac(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_wrvgac(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nv04_i2c_bus_func, !1, !"nv04_i2c_bus_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/busnv04.c", i32 74, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
