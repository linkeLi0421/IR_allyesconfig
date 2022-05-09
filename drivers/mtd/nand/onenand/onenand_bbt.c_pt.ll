; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/onenand/onenand_bbt.c_pt.bc'
source_filename = "../drivers/mtd/nand/onenand/onenand_bbt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.onenand_chip = type { ptr, i32, [2 x i32], [2 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.onenand_bufferram], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.onenand_bufferram = type { i32 }
%struct.bbm_info = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }

@largepage_memorybased = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 0, [8 x i32] zeroinitializer, i32 0, i32 0, [8 x i8] zeroinitializer, i32 2, i32 0, i32 0, ptr @scan_ff_pattern }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@scan_ff_pattern = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\FF", [30 x i8] zeroinitializer }, align 32
@onenand_scan_bbt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013onenand_scan_bbt: Can't scan flash and build the RAM-based BBT\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"onenand_scan_bbt\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/mtd/nand/onenand/onenand_bbt.c\00", [57 x i8] zeroinitializer }, align 32
@onenand_scan_bbt._entry_ptr = internal global ptr @onenand_scan_bbt._entry, section ".printk_index", align 4
@onenand_isbad_bbt.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"onenand\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"onenand_isbad_bbt\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"onenand_isbad_bbt: bbt info for offs 0x%08x: (block %d) 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@create_bbt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016Scanning device for bad blocks\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"create_bbt\00", [21 x i8] zeroinitializer }, align 32
@create_bbt._entry_ptr = internal global ptr @create_bbt._entry, section ".printk_index", align 4
@create_bbt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016OneNAND eraseblock %d is an initial bad block\0A\00", [47 x i8] zeroinitializer }, align 32
@create_bbt._entry_ptr.10 = internal global ptr @create_bbt._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"largepage_memorybased\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 215, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"scan_ff_pattern\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 213, i32 16 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 201, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 155, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 67, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [42 x i8] c"../drivers/mtd/nand/onenand/onenand_bbt.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 104, i32 5 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @create_bbt._entry, ptr @create_bbt._entry.8, ptr @create_bbt._entry_ptr, ptr @create_bbt._entry_ptr.10, ptr @onenand_scan_bbt._entry, ptr @onenand_scan_bbt._entry_ptr, ptr @largepage_memorybased, ptr @scan_ff_pattern, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @largepage_memorybased to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_ff_pattern to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_scan_bbt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_bbt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_bbt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @onenand_default_bbt(ptr noundef %mtd) local_unnamed_addr #0 align 64 {
entry:
  %ops.i.i.i = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #9
  %bbm1 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 40
  %3 = ptrtoint ptr %bbm1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %bbm1, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %badblock_pattern = getelementptr inbounds %struct.bbm_info, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %badblock_pattern to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %badblock_pattern, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %badblock_pattern to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @largepage_memorybased, ptr %badblock_pattern, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %7 = ptrtoint ptr %badblock_pattern to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %badblock_pattern, align 8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %bbm1.i = getelementptr inbounds %struct.onenand_chip, ptr %10, i32 0, i32 40
  %11 = ptrtoint ptr %bbm1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bbm1.i, align 8
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %10, i32 0, i32 11
  %chipsize.i = getelementptr inbounds %struct.onenand_chip, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %chipsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chipsize.i, align 8
  %15 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %erase_shift.i, align 4
  %add.i = add i32 %16, 2
  %shr.i = lshr i32 %14, %add.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shr.i, i32 noundef 3520) #10
  %bbt.i = getelementptr inbounds %struct.bbm_info, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %bbt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i.i, ptr %bbt.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %18 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %erase_shift.i, align 4
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %12, align 4
  %isbad_bbt.i = getelementptr inbounds %struct.bbm_info, ptr %12, i32 0, i32 3
  %21 = ptrtoint ptr %isbad_bbt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %isbad_bbt.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %isbad_bbt.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @onenand_isbad_bbt, ptr %isbad_bbt.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %page_buf.i.i = getelementptr inbounds %struct.onenand_chip, ptr %25, i32 0, i32 36
  %26 = ptrtoint ptr %page_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page_buf.i.i, align 8
  %bbm1.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %25, i32 0, i32 40
  %28 = ptrtoint ptr %bbm1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bbm1.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i.i.i) #6
  %30 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i.i, i32 0, i32 3
  %33 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i.i, i32 0, i32 4
  %34 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i.i, i32 0, i32 5
  %35 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i.i, i32 0, i32 7
  %36 = getelementptr inbounds i8, ptr %ops.i.i.i, i32 24
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %36, align 4
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  %len2.i.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %8, i32 0, i32 5
  %38 = ptrtoint ptr %len2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len2.i.i.i, align 4
  %chipsize.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %25, i32 0, i32 4
  %40 = ptrtoint ptr %chipsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chipsize.i.i.i, align 8
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %29, align 4
  %sub.i.i.i = add i32 %43, -1
  %shr.i.i.i = lshr i32 %41, %sub.i.i.i
  %44 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %ops.i.i.i, align 4
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %39, ptr %32, align 4
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %27, ptr %35, align 4
  %47 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %33, align 4
  %48 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %31, align 4
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %34, align 4
  %50 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i.i)
  %cmp9.i.i.i = icmp sgt i32 %shr.i.i.i, 0
  br i1 %cmp9.i.i.i, label %for.cond4.preheader.lr.ph.i.i.i, label %if.end7.i.onenand_memory_bbt.exit.thread.i_crit_edge

if.end7.i.onenand_memory_bbt.exit.thread.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %onenand_memory_bbt.exit.thread.i

for.cond4.preheader.lr.ph.i.i.i:                  ; preds = %if.end7.i
  %writesize.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %25, i32 0, i32 14
  %offs.i.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %8, i32 0, i32 2
  %pattern.i.i.i.i = getelementptr inbounds %struct.nand_bbt_descr, ptr %8, i32 0, i32 8
  %bbt.i.i.i = getelementptr inbounds %struct.bbm_info, ptr %29, i32 0, i32 2
  %badblocks.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 2
  %device_id.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %25, i32 0, i32 5
  %eraseregions.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  br label %for.cond4.preheader.i.i.i

for.cond4.preheader.i.i.i:                        ; preds = %cleanup.i.i.i.for.cond4.preheader.i.i.i_crit_edge, %for.cond4.preheader.lr.ph.i.i.i
  %from.012.i.i.i = phi i64 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %from.1.i.i.i, %cleanup.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %i.010.i.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %add29.i.i.i, %cleanup.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %offs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offs.i.i.i, align 4
  %conv7.i.i.i = sext i32 %52 to i64
  %add8.i.i.i = add i64 %from.012.i.i.i, %conv7.i.i.i
  %call9.i.i28.i = call i32 @onenand_bbt_read_oob(ptr noundef %mtd, i64 noundef %add8.i.i.i, ptr noundef nonnull %ops.i.i.i) #6
  %53 = zext i32 %call9.i.i28.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call9.i.i28.i, label %for.cond4.preheader.i.i.i.if.then16.i.i.i_crit_edge [
    i32 4, label %for.cond4.preheader.i.i.i.do.end.i_crit_edge
    i32 0, label %lor.lhs.false.i.i.i
  ]

for.cond4.preheader.i.i.i.do.end.i_crit_edge:     ; preds = %for.cond4.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.cond4.preheader.i.i.i.if.then16.i.i.i_crit_edge: ; preds = %for.cond4.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.cond4.preheader.i.i.i
  %54 = ptrtoint ptr %len2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1.i.i.i.i = icmp sgt i32 %55, 0
  br i1 %cmp1.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i
  %56 = ptrtoint ptr %pattern.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pattern.i.i.i.i, align 4
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.02.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %55
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.for.inc.i.i.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.for.inc.i.i.i_crit_edge:         ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.02.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr i8, ptr %27, i32 %i.02.i.i.i.i
  %58 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %arrayidx2.i.i.i.i = getelementptr i8, ptr %57, i32 %i.02.i.i.i.i
  %60 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp4.not.i.i.i.i = icmp eq i8 %59, %61
  br i1 %cmp4.not.i.i.i.i, label %for.cond.i.i.i.i, label %for.body.i.i.i.i.if.then16.i.i.i_crit_edge

for.body.i.i.i.i.if.then16.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i.i.i

if.then16.i.i.i:                                  ; preds = %for.body.i.1.i.i.i.if.then16.i.i.i_crit_edge, %for.inc.i.i.i.if.then16.i.i.i_crit_edge, %for.body.i.i.i.i.if.then16.i.i.i_crit_edge, %for.cond4.preheader.i.i.i.if.then16.i.i.i_crit_edge
  %and.i.i.i = and i32 %i.010.i.i.i, 6
  %shl.i.i.i = shl nuw nsw i32 3, %and.i.i.i
  %62 = ptrtoint ptr %bbt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bbt.i.i.i, align 4
  %shr17.i.i.i = ashr i32 %i.010.i.i.i, 3
  %arrayidx18.i.i.i = getelementptr i8, ptr %63, i32 %shr17.i.i.i
  %64 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx18.i.i.i, align 1
  %66 = trunc i32 %shl.i.i.i to i8
  %conv20.i.i.i = or i8 %65, %66
  store i8 %conv20.i.i.i, ptr %arrayidx18.i.i.i, align 1
  %shr25.i.i.i = ashr exact i32 %i.010.i.i.i, 1
  %call26.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %shr25.i.i.i) #11
  %67 = ptrtoint ptr %badblocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %badblocks.i.i.i, align 4
  %inc.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i, ptr %badblocks.i.i.i, align 4
  br label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %for.cond.i.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge
  %69 = ptrtoint ptr %writesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %writesize.i.i.i, align 8
  %conv.1.i.i.i = zext i32 %70 to i64
  %add.1.i.i.i = add i64 %from.012.i.i.i, %conv.1.i.i.i
  %71 = ptrtoint ptr %offs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %offs.i.i.i, align 4
  %conv7.1.i.i.i = sext i32 %72 to i64
  %add8.1.i.i.i = add i64 %add.1.i.i.i, %conv7.1.i.i.i
  %call9.1.i.i.i = call i32 @onenand_bbt_read_oob(ptr noundef %mtd, i64 noundef %add8.1.i.i.i, ptr noundef nonnull %ops.i.i.i) #6
  %73 = zext i32 %call9.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call9.1.i.i.i, label %for.inc.i.i.i.if.then16.i.i.i_crit_edge [
    i32 4, label %for.inc.i.i.i.do.end.i_crit_edge
    i32 0, label %lor.lhs.false.1.i.i.i
  ]

for.inc.i.i.i.do.end.i_crit_edge:                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.i.if.then16.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i.i.i

lor.lhs.false.1.i.i.i:                            ; preds = %for.inc.i.i.i
  %74 = ptrtoint ptr %len2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp1.i.1.i.i.i = icmp sgt i32 %75, 0
  br i1 %cmp1.i.1.i.i.i, label %for.body.lr.ph.i.1.i.i.i, label %lor.lhs.false.1.i.i.i.for.end.i.i.i_crit_edge

lor.lhs.false.1.i.i.i.for.end.i.i.i_crit_edge:    ; preds = %lor.lhs.false.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.body.lr.ph.i.1.i.i.i:                         ; preds = %lor.lhs.false.1.i.i.i
  %76 = ptrtoint ptr %pattern.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pattern.i.i.i.i, align 4
  br label %for.body.i.1.i.i.i

for.body.i.1.i.i.i:                               ; preds = %for.cond.i.1.i.i.i.for.body.i.1.i.i.i_crit_edge, %for.body.lr.ph.i.1.i.i.i
  %i.02.i.1.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.1.i.i.i ], [ %inc.i.1.i.i.i, %for.cond.i.1.i.i.i.for.body.i.1.i.i.i_crit_edge ]
  %arrayidx.i.1.i.i.i = getelementptr i8, ptr %27, i32 %i.02.i.1.i.i.i
  %78 = ptrtoint ptr %arrayidx.i.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.1.i.i.i, align 1
  %arrayidx2.i.1.i.i.i = getelementptr i8, ptr %77, i32 %i.02.i.1.i.i.i
  %80 = ptrtoint ptr %arrayidx2.i.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx2.i.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %81)
  %cmp4.not.i.1.i.i.i = icmp eq i8 %79, %81
  br i1 %cmp4.not.i.1.i.i.i, label %for.cond.i.1.i.i.i, label %for.body.i.1.i.i.i.if.then16.i.i.i_crit_edge

for.body.i.1.i.i.i.if.then16.i.i.i_crit_edge:     ; preds = %for.body.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i.i.i

for.cond.i.1.i.i.i:                               ; preds = %for.body.i.1.i.i.i
  %inc.i.1.i.i.i = add nuw nsw i32 %i.02.i.1.i.i.i, 1
  %exitcond.not.i.1.i.i.i = icmp eq i32 %inc.i.1.i.i.i, %75
  br i1 %exitcond.not.i.1.i.i.i, label %for.cond.i.1.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.i.1.i.i.i.for.body.i.1.i.i.i_crit_edge

for.cond.i.1.i.i.i.for.body.i.1.i.i.i_crit_edge:  ; preds = %for.cond.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.1.i.i.i

for.cond.i.1.i.i.i.for.end.i.i.i_crit_edge:       ; preds = %for.cond.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.cond.i.1.i.i.i.for.end.i.i.i_crit_edge, %lor.lhs.false.1.i.i.i.for.end.i.i.i_crit_edge, %if.then16.i.i.i
  %add29.i.i.i = add i32 %i.010.i.i.i, 2
  %82 = ptrtoint ptr %device_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %device_id.i.i.i, align 4
  %and30.i.i.i = and i32 %83, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %and30.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %if.else.i.i.i, label %if.then32.i.i.i

if.then32.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i.i.i = call i32 @flexonenand_region(ptr noundef %mtd, i64 noundef %from.012.i.i.i) #6
  %84 = ptrtoint ptr %eraseregions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %eraseregions.i.i.i, align 4
  %erasesize.i.i.i = getelementptr %struct.mtd_erase_region_info, ptr %85, i32 %call33.i.i.i, i32 1
  %86 = ptrtoint ptr %erasesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %erasesize.i.i.i, align 8
  %conv35.i.i.i = zext i32 %87 to i64
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %29, align 4
  %shl38.i.i.i = shl nuw i32 1, %89
  %conv39.i.i.i = sext i32 %shl38.i.i.i to i64
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.else.i.i.i, %if.then32.i.i.i
  %conv35.pn.i.i.i = phi i64 [ %conv35.i.i.i, %if.then32.i.i.i ], [ %conv39.i.i.i, %if.else.i.i.i ]
  %from.1.i.i.i = add i64 %conv35.pn.i.i.i, %from.012.i.i.i
  %cmp.i.i29.i = icmp slt i32 %add29.i.i.i, %shr.i.i.i
  br i1 %cmp.i.i29.i, label %cleanup.i.i.i.for.cond4.preheader.i.i.i_crit_edge, label %cleanup.i.i.i.onenand_memory_bbt.exit.thread.i_crit_edge

cleanup.i.i.i.onenand_memory_bbt.exit.thread.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %onenand_memory_bbt.exit.thread.i

cleanup.i.i.i.for.cond4.preheader.i.i.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader.i.i.i

onenand_memory_bbt.exit.thread.i:                 ; preds = %cleanup.i.i.i.onenand_memory_bbt.exit.thread.i_crit_edge, %if.end7.i.onenand_memory_bbt.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i.i.i) #6
  br label %cleanup

do.end.i:                                         ; preds = %for.inc.i.i.i.do.end.i_crit_edge, %for.cond4.preheader.i.i.i.do.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i.i.i) #6
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %90 = ptrtoint ptr %bbt.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bbt.i, align 4
  call void @kfree(ptr noundef %91) #6
  %92 = ptrtoint ptr %bbt.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %bbt.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %onenand_memory_bbt.exit.thread.i, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -5, %do.end.i ], [ 0, %onenand_memory_bbt.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_isbad_bbt(ptr nocapture noundef readonly %mtd, i64 noundef %offs, i32 noundef %allowbbt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bbm1 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %bbm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbm1, align 8
  %call = tail call i32 @onenand_block(ptr noundef %1, i64 noundef %offs) #6
  %shl = shl i32 %call, 1
  %bbt = getelementptr inbounds %struct.bbm_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bbt, align 4
  %shr = ashr i32 %shl, 3
  %arrayidx = getelementptr i8, ptr %5, i32 %shr
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %shl, 6
  %shr2 = lshr i32 %conv, %and
  %8 = trunc i32 %shr2 to i8
  %conv4 = and i8 %8, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_isbad_bbt.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_isbad_bbt, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = trunc i64 %offs to i32
  %shr9 = ashr exact i32 %shl, 1
  %conv10 = zext i8 %conv4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_isbad_bbt.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.5, i32 noundef %conv8, i32 noundef %shr9, i32 noundef %conv10) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv11 = zext i8 %conv4 to i32
  %9 = zext i32 %conv11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %conv11, label %sw.epilog [
    i32 0, label %do.end.cleanup_crit_edge
    i32 1, label %sw.bb12
    i32 2, label %sw.bb13
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allowbbt)
  %tobool14.not = icmp eq i32 %allowbbt, 0
  %cond = zext i1 %tobool14.not to i32
  br label %cleanup

sw.epilog:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb13, %sw.bb12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ %cond, %sw.bb13 ], [ 1, %sw.bb12 ], [ %conv11, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @onenand_block(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @onenand_bbt_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexonenand_region(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @largepage_memorybased, !1, !"largepage_memorybased", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/onenand/onenand_bbt.c", i32 215, i32 30}
!2 = !{ptr @scan_ff_pattern, !3, !"scan_ff_pattern", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/onenand/onenand_bbt.c", i32 213, i32 16}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/onenand/onenand_bbt.c", i32 201, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @onenand_scan_bbt._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @onenand_scan_bbt._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/onenand/onenand_bbt.c", i32 155, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @onenand_isbad_bbt.__UNIQUE_ID_ddebug185, !11, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/nand/onenand/onenand_bbt.c", i32 67, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @create_bbt._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @create_bbt._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/onenand/onenand_bbt.c", i32 104, i32 5}
!22 = !{ptr @create_bbt._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @create_bbt._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148205930, i64 2148205935, i64 2148205948, i64 2148205992, i64 2148206026, i64 2148206047}
