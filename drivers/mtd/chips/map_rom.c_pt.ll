; ModuleID = '/llk/IR_all_yes/drivers/mtd/chips/map_rom.c_pt.bc'
source_filename = "../drivers/mtd/chips/map_rom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@maprom_chipdrv = internal global { %struct.mtd_chip_driver, [40 x i8] } { %struct.mtd_chip_driver { ptr @map_rom_probe, ptr null, ptr null, ptr @.str, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_map_rom__185_127_map_rom_init6 = internal global ptr @map_rom_init, section ".initcall6.init", align 4
@__exitcall_map_rom_exit = internal global ptr @map_rom_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [39 x i8] c"map_rom.file=drivers/mtd/chips/map_rom\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [20 x i8] c"map_rom.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [53 x i8] c"map_rom.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [50 x i8] c"map_rom.description=MTD chip driver for ROM chips\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_rom\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"erase-size\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"maprom_chipdrv\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 28, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 30, i32 10 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [31 x i8] c"../drivers/mtd/chips/map_rom.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 38, i32 49 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_map_rom_exit, ptr @__initcall__kmod_map_rom__185_127_map_rom_init6, ptr @map_rom_exit, ptr @maprom_chipdrv, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maprom_chipdrv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @map_rom_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_mtd_chip_driver(ptr noundef nonnull @maprom_chipdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @map_rom_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_mtd_chip_driver(ptr noundef nonnull @maprom_chipdrv) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @map_rom_probe(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1408) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fldrv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 18
  %1 = ptrtoint ptr %fldrv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @maprom_chipdrv, ptr %fldrv, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %map, ptr %priv, align 8
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %name1 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 13
  %5 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %name1, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %call7.i.i, align 8
  %size = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %conv = zext i32 %8 to i64
  %size2 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %size2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %size2, align 8
  %_point = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 22
  %10 = ptrtoint ptr %_point to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @maprom_point, ptr %_point, align 4
  %_unpoint = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 23
  %11 = ptrtoint ptr %_unpoint to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @maprom_unpoint, ptr %_unpoint, align 8
  %_read = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 24
  %12 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @maprom_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 25
  %13 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @maprom_write, ptr %_write, align 8
  %_sync = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 37
  %14 = ptrtoint ptr %_sync to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @maprom_nop, ptr %_sync, align 8
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 21
  %15 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @maprom_erase, ptr %_erase, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags, align 4
  %device_node.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 16
  %17 = ptrtoint ptr %device_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_node.i, align 4
  %call.i = tail call ptr @of_get_property(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  %cond.in.i = select i1 %tobool.not.i, ptr %size, ptr %call.i
  %19 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i, ptr %erasesize, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %writesize, align 4
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %writebufsize, align 8
  tail call void @__module_get(ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @maprom_point(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %virt, ptr noundef writeonly %phys) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %virt1 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %virt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %virt, align 4
  %tobool3.not = icmp eq ptr %phys, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %phys5 = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %phys5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys5, align 4
  %conv6 = add i32 %6, %idx.ext
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv6, ptr %phys, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %8 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @maprom_unpoint(ptr nocapture noundef readnone %mtd, i64 noundef %from, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maprom_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %copy_from = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %copy_from to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %copy_from, align 4
  %conv = trunc i64 %from to i32
  tail call void %3(ptr noundef %1, ptr noundef %buf, i32 noundef %conv, i32 noundef %len) #6
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @maprom_write(ptr nocapture noundef readnone %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef readnone %retlen, ptr nocapture noundef readnone %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @maprom_nop(ptr nocapture noundef %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @maprom_erase(ptr nocapture noundef readnone %mtd, ptr nocapture noundef readnone %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_map_rom__185_127_map_rom_init6, !1, !"__initcall__kmod_map_rom__185_127_map_rom_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/chips/map_rom.c", i32 127, i32 1}
!2 = !{ptr @__exitcall_map_rom_exit, !3, !"__exitcall_map_rom_exit", i1 false, i1 false}
!3 = !{!"../drivers/mtd/chips/map_rom.c", i32 128, i32 1}
!4 = !{ptr @__UNIQUE_ID_file186, !5, !"__UNIQUE_ID_file186", i1 false, i1 false}
!5 = !{!"../drivers/mtd/chips/map_rom.c", i32 130, i32 1}
!6 = !{ptr @__UNIQUE_ID_license187, !5, !"__UNIQUE_ID_license187", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author188, !8, !"__UNIQUE_ID_author188", i1 false, i1 false}
!8 = !{!"../drivers/mtd/chips/map_rom.c", i32 131, i32 1}
!9 = !{ptr @__UNIQUE_ID_description189, !10, !"__UNIQUE_ID_description189", i1 false, i1 false}
!10 = !{!"../drivers/mtd/chips/map_rom.c", i32 132, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/chips/map_rom.c", i32 30, i32 10}
!13 = !{ptr @maprom_chipdrv, !14, !"maprom_chipdrv", i1 false, i1 false}
!14 = !{!"../drivers/mtd/chips/map_rom.c", i32 28, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/chips/map_rom.c", i32 38, i32 49}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
