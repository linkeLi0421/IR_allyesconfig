; ModuleID = '/llk/IR_all_yes/drivers/mtd/chips/map_ram.c_pt.bc'
source_filename = "../drivers/mtd/chips/map_ram.c"
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
%struct.erase_info = type { i64, i64, i64 }

@mapram_chipdrv = internal global { %struct.mtd_chip_driver, [40 x i8] } { %struct.mtd_chip_driver { ptr @map_ram_probe, ptr null, ptr null, ptr @.str, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_map_ram__185_153_map_ram_init6 = internal global ptr @map_ram_init, section ".initcall6.init", align 4
@__exitcall_map_ram_exit = internal global ptr @map_ram_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [39 x i8] c"map_ram.file=drivers/mtd/chips/map_ram\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [20 x i8] c"map_ram.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [53 x i8] c"map_ram.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [50 x i8] c"map_ram.description=MTD chip driver for RAM chips\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_ram\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"mapram_chipdrv\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 28, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [31 x i8] c"../drivers/mtd/chips/map_ram.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 30, i32 10 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_map_ram_exit, ptr @__initcall__kmod_map_ram__185_153_map_ram_init6, ptr @map_ram_exit, ptr @mapram_chipdrv, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mapram_chipdrv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @map_ram_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_mtd_chip_driver(ptr noundef nonnull @mapram_chipdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @map_ram_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_mtd_chip_driver(ptr noundef nonnull @mapram_chipdrv) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @map_ram_probe(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1408) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fldrv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 18
  %1 = ptrtoint ptr %fldrv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mapram_chipdrv, ptr %fldrv, align 4
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
  store i8 1, ptr %call7.i.i, align 8
  %size = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %conv = zext i32 %8 to i64
  %size2 = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %size2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %size2, align 8
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 21
  %10 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mapram_erase, ptr %_erase, align 8
  %_read = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 24
  %11 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mapram_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 25
  %12 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mapram_write, ptr %_write, align 8
  %_panic_write = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 26
  %13 = ptrtoint ptr %_panic_write to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mapram_write, ptr %_panic_write, align 4
  %_point = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 22
  %14 = ptrtoint ptr %_point to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mapram_point, ptr %_point, align 4
  %_sync = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 37
  %15 = ptrtoint ptr %_sync to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mapram_nop, ptr %_sync, align 8
  %_unpoint = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 23
  %16 = ptrtoint ptr %_unpoint to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mapram_unpoint, ptr %_unpoint, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7168, ptr %flags, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %writesize, align 4
  %19 = load i64, ptr %size2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %storemerge = phi i32 [ 4096, %if.end ], [ %shr, %while.cond.while.cond_crit_edge ]
  %sub = add nsw i32 %storemerge, -1
  %conv5 = zext i32 %sub to i64
  %and = and i64 %19, %conv5
  %tobool6.not = icmp eq i64 %and, 0
  %shr = lshr i32 %storemerge, 1
  br i1 %tobool6.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %erasesize, align 8
  tail call void @__module_get(ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mapram_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #2 align 64 {
entry:
  %tmp.sroa.0 = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 6
  %2 = call ptr @memset(ptr %tmp.sroa.0, i32 255, i32 32)
  %3 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bankwidth.i, align 4, !noalias !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.i = icmp slt i32 %4, 4
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw i32 %4, 3
  %div9.i = and i32 %add.i, -4
  %5 = call ptr @memset(ptr %tmp.sroa.0, i32 255, i32 %div9.i)
  br label %map_word_ff.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl i32 %4, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  %6 = ptrtoint ptr %tmp.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.i, ptr %tmp.sroa.0, align 4, !alias.scope !24
  br label %map_word_ff.exit

map_word_ff.exit:                                 ; preds = %if.then.i, %for.body.preheader.i
  %7 = ptrtoint ptr %tmp.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.sroa.0.0.tmp.sroa.0.0.tmp.sroa.0.0.allff.sroa.0.0.copyload = load i32, ptr %tmp.sroa.0, align 4
  %tmp.sroa.0.4.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 4
  %8 = ptrtoint ptr %tmp.sroa.0.4.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.sroa.0.4.tmp.sroa.0.4.tmp.sroa.0.4.allff.sroa.5.0.copyload = load i32, ptr %tmp.sroa.0.4.tmp.sroa_idx, align 4
  %tmp.sroa.0.8.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 8
  %9 = ptrtoint ptr %tmp.sroa.0.8.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.sroa.0.8.tmp.sroa.0.8.tmp.sroa.0.8.allff.sroa.7.0.copyload = load i32, ptr %tmp.sroa.0.8.tmp.sroa_idx, align 4
  %tmp.sroa.0.12.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 12
  %10 = ptrtoint ptr %tmp.sroa.0.12.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp.sroa.0.12.tmp.sroa.0.12.tmp.sroa.0.12.allff.sroa.9.0.copyload = load i32, ptr %tmp.sroa.0.12.tmp.sroa_idx, align 4
  %tmp.sroa.0.16.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 16
  %11 = ptrtoint ptr %tmp.sroa.0.16.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.sroa.0.16.tmp.sroa.0.16.tmp.sroa.0.16.allff.sroa.11.0.copyload = load i32, ptr %tmp.sroa.0.16.tmp.sroa_idx, align 4
  %tmp.sroa.0.20.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 20
  %12 = ptrtoint ptr %tmp.sroa.0.20.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.sroa.0.20.tmp.sroa.0.20.tmp.sroa.0.20.allff.sroa.13.0.copyload = load i32, ptr %tmp.sroa.0.20.tmp.sroa_idx, align 4
  %tmp.sroa.0.24.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 24
  %13 = ptrtoint ptr %tmp.sroa.0.24.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.sroa.0.24.tmp.sroa.0.24.tmp.sroa.0.24.allff.sroa.15.0.copyload = load i32, ptr %tmp.sroa.0.24.tmp.sroa_idx, align 4
  %tmp.sroa.0.28.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp.sroa.0, i32 28
  %14 = ptrtoint ptr %tmp.sroa.0.28.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.sroa.0.28.tmp.sroa.0.28.tmp.sroa.0.28.allff.sroa.17.0.copyload = load i32, ptr %tmp.sroa.0.28.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.sroa.0)
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp18.not = icmp eq i64 %16, 0
  br i1 %cmp18.not, label %map_word_ff.exit.for.end_crit_edge, label %for.body.lr.ph

map_word_ff.exit.for.end_crit_edge:               ; preds = %map_word_ff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %map_word_ff.exit
  %write = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %tmp.sroa.0.0.tmp.sroa.0.0.tmp.sroa.0.0.allff.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %tmp.sroa.0.4.tmp.sroa.0.4.tmp.sroa.0.4.allff.sroa.5.0.copyload, 1
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %tmp.sroa.0.8.tmp.sroa.0.8.tmp.sroa.0.8.allff.sroa.7.0.copyload, 2
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %tmp.sroa.0.12.tmp.sroa.0.12.tmp.sroa.0.12.allff.sroa.9.0.copyload, 3
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %tmp.sroa.0.16.tmp.sroa.0.16.tmp.sroa.0.16.allff.sroa.11.0.copyload, 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %tmp.sroa.0.20.tmp.sroa.0.20.tmp.sroa.0.20.allff.sroa.13.0.copyload, 5
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %tmp.sroa.0.24.tmp.sroa.0.24.tmp.sroa.0.24.allff.sroa.15.0.copyload, 6
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %tmp.sroa.0.28.tmp.sroa.0.28.tmp.sroa.0.28.allff.sroa.17.0.copyload, 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %add4, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  %19 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %instr, align 8
  %21 = trunc i64 %20 to i32
  %conv3 = add i32 %i.019, %21
  tail call void %18(ptr noundef %1, [8 x i32] %.fca.7.insert, i32 noundef %conv3) #8
  %22 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bankwidth.i, align 4
  %add4 = add i32 %23, %i.019
  %conv = zext i32 %add4 to i64
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %len, align 8
  %cmp = icmp ugt i64 %25, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %map_word_ff.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mapram_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %3(ptr noundef %1, ptr noundef %buf, i32 noundef %conv, i32 noundef %len) #8
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mapram_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %copy_to = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %copy_to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %copy_to, align 4
  %conv = trunc i64 %to to i32
  tail call void %3(ptr noundef %1, i32 noundef %conv, ptr noundef %buf, i32 noundef %len) #8
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mapram_point(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %virt, ptr noundef writeonly %phys) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
define internal void @mapram_nop(ptr nocapture noundef %mtd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mapram_unpoint(ptr nocapture noundef readnone %mtd, i64 noundef %from, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_map_ram__185_153_map_ram_init6, !1, !"__initcall__kmod_map_ram__185_153_map_ram_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/chips/map_ram.c", i32 153, i32 1}
!2 = !{ptr @__exitcall_map_ram_exit, !3, !"__exitcall_map_ram_exit", i1 false, i1 false}
!3 = !{!"../drivers/mtd/chips/map_ram.c", i32 154, i32 1}
!4 = !{ptr @__UNIQUE_ID_file186, !5, !"__UNIQUE_ID_file186", i1 false, i1 false}
!5 = !{!"../drivers/mtd/chips/map_ram.c", i32 156, i32 1}
!6 = !{ptr @__UNIQUE_ID_license187, !5, !"__UNIQUE_ID_license187", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author188, !8, !"__UNIQUE_ID_author188", i1 false, i1 false}
!8 = !{!"../drivers/mtd/chips/map_ram.c", i32 157, i32 1}
!9 = !{ptr @__UNIQUE_ID_description189, !10, !"__UNIQUE_ID_description189", i1 false, i1 false}
!10 = !{!"../drivers/mtd/chips/map_ram.c", i32 158, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/chips/map_ram.c", i32 30, i32 10}
!13 = !{ptr @mapram_chipdrv, !14, !"mapram_chipdrv", i1 false, i1 false}
!14 = !{!"../drivers/mtd/chips/map_ram.c", i32 28, i32 31}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"map_word_ff: %agg.result"}
!26 = distinct !{!26, !"map_word_ff"}
