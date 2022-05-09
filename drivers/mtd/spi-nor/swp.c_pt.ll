; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/swp.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/swp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_nor_locking_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.76, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.70 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.76 = type { ptr, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }
%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }

@spi_nor_sr_locking_ops = internal constant { %struct.spi_nor_locking_ops, [20 x i8] } { %struct.spi_nor_locking_ops { ptr @spi_nor_sr_lock, ptr @spi_nor_sr_unlock, ptr @spi_nor_sr_is_locked }, [20 x i8] zeroinitializer }, align 32
@spi_nor_try_unlock_all.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_nor\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spi_nor_try_unlock_all\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mtd/spi-nor/swp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unprotecting entire flash array\0A\00", [63 x i8] zeroinitializer }, align 32
@spi_nor_try_unlock_all.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to unlock the entire flash memory array\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [23 x i8] c"spi_nor_sr_locking_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 335, i32 41 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 410, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [29 x i8] c"../drivers/mtd/spi-nor/swp.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 414, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @spi_nor_sr_locking_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_sr_locking_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @spi_nor_init_default_locking_ops(ptr nocapture noundef readonly %nor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %locking_ops = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %locking_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @spi_nor_sr_locking_ops, ptr %locking_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spi_nor_try_unlock_all(ptr noundef %nor) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_try_unlock_all.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_try_unlock_all, %if.then4)) #4
          to label %do.end [label %if.then4], !srcloc !20

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_try_unlock_all.__UNIQUE_ID_ddebug236, ptr noundef %3, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %call1.i = tail call i32 @spi_nor_lock_and_prep(ptr noundef %nor) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %spi_nor_unlock.exit, label %do.end.do.body9_crit_edge

do.end.do.body9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body9

spi_nor_unlock.exit:                              ; preds = %do.end
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %locking_ops.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %locking_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %locking_ops.i, align 4
  %unlock.i = getelementptr inbounds %struct.spi_nor_locking_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unlock.i, align 4
  %call2.i = tail call i32 %13(ptr noundef %nor, i64 noundef 0, i64 noundef %7) #4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %nor) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  br i1 %tobool7.not, label %spi_nor_unlock.exit.cleanup_crit_edge, label %spi_nor_unlock.exit.do.body9_crit_edge

spi_nor_unlock.exit.do.body9_crit_edge:           ; preds = %spi_nor_unlock.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body9

spi_nor_unlock.exit.cleanup_crit_edge:            ; preds = %spi_nor_unlock.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body9:                                         ; preds = %spi_nor_unlock.exit.do.body9_crit_edge, %do.end.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_try_unlock_all.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_try_unlock_all, %if.then21)) #4
          to label %cleanup [label %if.then21], !srcloc !20

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %dev22 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %14 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_try_unlock_all.__UNIQUE_ID_ddebug237, ptr noundef %15, ptr noundef nonnull @.str.4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body9, %spi_nor_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_unlock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %params = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %locking_ops = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %locking_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locking_ops, align 4
  %unlock = getelementptr inbounds %struct.spi_nor_locking_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unlock, align 4
  %call2 = tail call i32 %5(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %mtd) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @spi_nor_set_mtd_locking_ops(ptr nocapture noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %locking_ops = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %locking_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locking_ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %_lock = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 38
  %4 = ptrtoint ptr %_lock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @spi_nor_lock, ptr %_lock, align 4
  %_unlock = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 39
  %5 = ptrtoint ptr %_unlock to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @spi_nor_unlock, ptr %_unlock, align 8
  %_is_locked = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 40
  %6 = ptrtoint ptr %_is_locked to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @spi_nor_is_locked, ptr %_is_locked, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_lock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %params = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %locking_ops = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %locking_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locking_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 %5(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %mtd) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_is_locked(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %params = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %locking_ops = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %locking_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locking_ops, align 4
  %is_locked = getelementptr inbounds %struct.spi_nor_locking_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %is_locked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_locked, align 4
  %call2 = tail call i32 %5(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %mtd) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_sr_lock(ptr noundef %nor, i64 noundef %ofs, i64 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i8 28, i8 60
  %retval.0.i = select i1 %tobool.not.i, i8 %..i, i8 92
  %and.i182 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i182)
  %tobool.not.i183 = icmp eq i32 %and.i182, 0
  %..i184 = select i1 %tobool.not.i183, i8 32, i8 64
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %2 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bouncebuf, align 4
  %call3 = tail call i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bouncebuf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i32
  %call.i = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %nor, i64 noundef %ofs, i64 noundef %len, i8 noundef zeroext %7, i1 noundef zeroext true) #4
  br i1 %call.i, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i185 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %nor, i64 noundef 0, i64 noundef %ofs, i8 noundef zeroext %7, i1 noundef zeroext true) #4
  %8 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %extract.t = icmp ne i32 %8, 0
  %spec.select = select i1 %call.i185, i1 %extract.t, i1 false
  %add = add i64 %len, %ofs
  %size = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size, align 8
  %sub = sub i64 %10, %add
  %call.i186 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %nor, i64 noundef %add, i64 noundef %sub, i8 noundef zeroext %7, i1 noundef zeroext true) #4
  %brmerge = select i1 %spec.select, i1 true, i1 %call.i186
  br i1 %brmerge, label %if.end22, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  br i1 %call.i186, label %if.then26, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size, align 8
  %sub28 = sub i64 %12, %ofs
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end22.if.end30_crit_edge
  %lock_len.0 = phi i64 [ %sub28, %if.then26 ], [ %add, %if.end22.if.end30_crit_edge ]
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %lock_len.0, i64 %14)
  %cmp = icmp eq i64 %lock_len.0, %14
  br i1 %cmp, label %if.end30.if.end86_crit_edge, label %cond.false.i

if.end30.if.end86_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = zext i8 %retval.0.i to i32
  br label %if.end86

cond.false.i:                                     ; preds = %if.end30
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %17 = select i1 %tobool4.not.i.i, i32 28, i32 60
  %conv57.i = select i1 %tobool.not.i.i, i32 %17, i32 92
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv57.i) #4
  %shl.i = shl nuw i32 1, %call.i.i
  %sub.i = add i32 %shl.i, -2
  %info.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %18 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info.i, align 4
  %n_sectors.i = getelementptr inbounds %struct.flash_info, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %n_sectors.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %n_sectors.i, align 8
  %conv75.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i.i.i = icmp eq i16 %21, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %conv75.i, i1 true) #4, !range !21
  %sub.i.op.i.i = xor i32 %22, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %sector_size.i = getelementptr inbounds %struct.flash_info, ptr %19, i32 0, i32 3
  %23 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sector_size.i, align 4
  %25 = call i32 @llvm.usub.sat.i32(i32 %sub.i.i, i32 %sub.i)
  %retval.0.in.i = shl i32 %24, %25
  %shr.i.i = lshr i64 %lock_len.0, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i188 = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i188, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #4, !range !21
  %add.i.i = sub nuw nsw i32 64, %26
  br label %__ilog2_u64.exit

if.end.i.i:                                       ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i.i = trunc i64 %lock_len.0 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #4, !range !21
  %sub.i6.i.i = sub nuw nsw i32 32, %27
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %__ilog2_u64.exit

__ilog2_u64.exit:                                 ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i189 = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i190 = add nsw i32 %retval.0.i.i189, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i)
  %tobool.not.i5.i.i196 = icmp eq i32 %retval.0.in.i, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %retval.0.in.i, i1 true) #4, !range !21
  %sub.i6.i.i197.op.neg = add nuw nsw i32 %28, 33
  %sub.i201.neg = select i1 %tobool.not.i5.i.i196, i32 1, i32 %sub.i6.i.i197.op.neg
  %sub57 = add nsw i32 %sub.i201.neg, %sub.i190
  %sub57.tr = trunc i32 %sub57 to i8
  %29 = shl i8 %sub57.tr, 2
  %conv61 = add i8 %29, 4
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %and63 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %32 = and i8 %conv61, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool68.not = icmp eq i8 %32, 0
  %or.cond = select i1 %tobool64.not, i1 true, i1 %tobool68.not
  %and71 = and i8 %conv61, -100
  %or = or i8 %and71, 64
  %val.0 = select i1 %or.cond, i8 %conv61, i8 %or
  %conv74 = zext i8 %val.0 to i32
  %conv75 = zext i8 %retval.0.i to i32
  %neg = xor i32 %conv75, -1
  %and76 = and i32 %conv74, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp ne i32 %and76, 0
  %and82178 = and i8 %val.0, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and82178)
  %tobool83.not = icmp eq i8 %and82178, 0
  %or.cond180 = select i1 %tobool77.not, i1 true, i1 %tobool83.not
  br i1 %or.cond180, label %__ilog2_u64.exit.cleanup_crit_edge, label %__ilog2_u64.exit.if.end86_crit_edge

__ilog2_u64.exit.if.end86_crit_edge:              ; preds = %__ilog2_u64.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

__ilog2_u64.exit.cleanup_crit_edge:               ; preds = %__ilog2_u64.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end86:                                         ; preds = %__ilog2_u64.exit.if.end86_crit_edge, %if.end30.if.end86_crit_edge
  %conv93.pre-phi = phi i32 [ %.pre, %if.end30.if.end86_crit_edge ], [ %conv74, %__ilog2_u64.exit.if.end86_crit_edge ]
  %33 = or i8 %retval.0.i, %..i184
  %34 = zext i8 %33 to i32
  %35 = xor i32 %34, -1
  %and92 = and i32 %conv, %35
  %conv90 = zext i8 %..i184 to i32
  %or99 = select i1 %call.i186, i32 0, i32 %conv90
  %or94 = or i32 %or99, %and92
  %or95 = or i32 %or94, %conv93.pre-phi
  %status_new.0 = or i32 %or95, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %status_new.0, i32 %conv)
  %cmp101 = icmp eq i32 %status_new.0, %conv
  br i1 %cmp101, label %if.end86.cleanup_crit_edge, label %if.end104

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end104:                                        ; preds = %if.end86
  %conv87 = zext i8 %retval.0.i to i32
  %and106 = and i32 %or95, %conv87
  %and108179 = and i8 %7, %retval.0.i
  %and108 = zext i8 %and108179 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and106, i32 %and108)
  %cmp109 = icmp ult i32 %and106, %and108
  br i1 %cmp109, label %if.end104.cleanup_crit_edge, label %if.end112

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end112:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  %conv113 = trunc i32 %status_new.0 to i8
  %call114 = tail call i32 @spi_nor_write_sr_and_check(ptr noundef %nor, i8 noundef zeroext %conv113) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.end104.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %__ilog2_u64.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call114, %if.end112 ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %__ilog2_u64.exit.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ], [ -22, %if.end104.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_sr_unlock(ptr noundef %nor, i64 noundef %ofs, i64 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i8 28, i8 60
  %retval.0.i = select i1 %tobool.not.i, i8 %..i, i8 92
  %and.i174 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  %..i176 = select i1 %tobool.not.i175, i8 32, i8 64
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %2 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bouncebuf, align 4
  %call3 = tail call i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bouncebuf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i32
  %call.i = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %nor, i64 noundef %ofs, i64 noundef %len, i8 noundef zeroext %7, i1 noundef zeroext false) #4
  br i1 %call.i, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i177 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %nor, i64 noundef 0, i64 noundef %ofs, i8 noundef zeroext %7, i1 noundef zeroext false) #4
  %add = add i64 %len, %ofs
  %size = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  %sub = sub i64 %9, %add
  %call.i178 = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %nor, i64 noundef %add, i64 noundef %sub, i8 noundef zeroext %7, i1 noundef zeroext false) #4
  %10 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %extract.t = icmp ne i32 %10, 0
  %can_be_bottom.0.off0 = select i1 %call.i178, i1 %extract.t, i1 false
  %brmerge = select i1 %can_be_bottom.0.off0, i1 true, i1 %call.i177
  br i1 %brmerge, label %if.end22, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  br i1 %call.i177, label %if.then26, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size, align 8
  %sub29 = sub i64 %12, %add
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end22.if.end30_crit_edge
  %lock_len.0 = phi i64 [ %sub29, %if.then26 ], [ %ofs, %if.end22.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %lock_len.0)
  %cmp = icmp eq i64 %lock_len.0, 0
  br i1 %cmp, label %if.end30.if.end79_crit_edge, label %cond.false.i

if.end30.if.end79_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

cond.false.i:                                     ; preds = %if.end30
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %15 = select i1 %tobool4.not.i.i, i32 28, i32 60
  %conv57.i = select i1 %tobool.not.i.i, i32 %15, i32 92
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv57.i) #4
  %shl.i = shl nuw i32 1, %call.i.i
  %sub.i = add i32 %shl.i, -2
  %info.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info.i, align 4
  %n_sectors.i = getelementptr inbounds %struct.flash_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %n_sectors.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %n_sectors.i, align 8
  %conv75.i = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i.i.i = icmp eq i16 %19, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %conv75.i, i1 true) #4, !range !21
  %sub.i.op.i.i = xor i32 %20, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %sector_size.i = getelementptr inbounds %struct.flash_info, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sector_size.i, align 4
  %23 = call i32 @llvm.usub.sat.i32(i32 %sub.i.i, i32 %sub.i)
  %retval.0.in.i = shl i32 %22, %23
  %shr.i.i = lshr i64 %lock_len.0, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i180 = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i180, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #4, !range !21
  %add.i.i = sub nuw nsw i32 64, %24
  br label %__ilog2_u64.exit

if.end.i.i:                                       ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i.i = trunc i64 %lock_len.0 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %25 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #4, !range !21
  %sub.i6.i.i = sub nuw nsw i32 32, %25
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %__ilog2_u64.exit

__ilog2_u64.exit:                                 ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i181 = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i182 = add nsw i32 %retval.0.i.i181, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i)
  %tobool.not.i5.i.i188 = icmp eq i32 %retval.0.in.i, 0
  %26 = tail call i32 @llvm.ctlz.i32(i32 %retval.0.in.i, i1 true) #4, !range !21
  %sub.i6.i.i189.op.neg = add nuw nsw i32 %26, 33
  %sub.i193.neg = select i1 %tobool.not.i5.i.i188, i32 1, i32 %sub.i6.i.i189.op.neg
  %sub56 = add nsw i32 %sub.i193.neg, %sub.i182
  %sub56.tr = trunc i32 %sub56 to i8
  %27 = shl i8 %sub56.tr, 2
  %conv60 = add i8 %27, 4
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and62 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %30 = and i8 %conv60, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool67.not = icmp eq i8 %30, 0
  %or.cond = select i1 %tobool63.not, i1 true, i1 %tobool67.not
  %and70 = and i8 %conv60, -100
  %or = or i8 %and70, 64
  %val.0 = select i1 %or.cond, i8 %conv60, i8 %or
  %conv73 = zext i8 %val.0 to i32
  %conv74 = zext i8 %retval.0.i to i32
  %neg = xor i32 %conv74, -1
  %and75 = and i32 %conv73, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %__ilog2_u64.exit.if.end79_crit_edge, label %__ilog2_u64.exit.cleanup_crit_edge

__ilog2_u64.exit.cleanup_crit_edge:               ; preds = %__ilog2_u64.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

__ilog2_u64.exit.if.end79_crit_edge:              ; preds = %__ilog2_u64.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.end79:                                         ; preds = %__ilog2_u64.exit.if.end79_crit_edge, %if.end30.if.end79_crit_edge
  %val.1 = phi i8 [ %val.0, %__ilog2_u64.exit.if.end79_crit_edge ], [ 0, %if.end30.if.end79_crit_edge ]
  %conv83 = zext i8 %..i176 to i32
  %31 = or i8 %retval.0.i, %..i176
  %32 = zext i8 %31 to i32
  %33 = xor i32 %32, -1
  %and85 = and i32 %conv, %33
  %conv86 = zext i8 %val.1 to i32
  %or87 = or i32 %and85, %conv86
  %and91 = and i32 %or87, 127
  %spec.select = select i1 %cmp, i32 %and91, i32 %or87
  %or96 = select i1 %call.i177, i32 0, i32 %conv83
  %status_new.1 = or i32 %spec.select, %or96
  call void @__sanitizer_cov_trace_cmp4(i32 %status_new.1, i32 %conv)
  %cmp98 = icmp eq i32 %status_new.1, %conv
  br i1 %cmp98, label %if.end79.cleanup_crit_edge, label %if.end101

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end101:                                        ; preds = %if.end79
  %conv80 = zext i8 %retval.0.i to i32
  %and103 = and i32 %status_new.1, %conv80
  %and105172 = and i8 %7, %retval.0.i
  %and105 = zext i8 %and105172 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and103, i32 %and105)
  %cmp106 = icmp ugt i32 %and103, %and105
  br i1 %cmp106, label %if.end101.cleanup_crit_edge, label %if.end109

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  %conv110 = trunc i32 %status_new.1 to i8
  %call111 = tail call i32 @spi_nor_write_sr_and_check(ptr noundef %nor, i8 noundef zeroext %conv110) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.end101.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %__ilog2_u64.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call111, %if.end109 ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %__ilog2_u64.exit.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ], [ -22, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_sr_is_locked(ptr noundef %nor, i64 noundef %ofs, i64 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  %call = tail call i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bouncebuf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %call.i = tail call fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr noundef %nor, i64 noundef %ofs, i64 noundef %len, i8 noundef zeroext %5, i1 noundef zeroext true) #4
  %conv = zext i1 %call.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_sr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_sr_and_check(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @spi_nor_check_lock_status_sr(ptr nocapture noundef readonly %nor, i64 noundef %ofs, i64 noundef %len, i8 noundef zeroext %sr, i1 noundef zeroext %locked) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %tobool.not = icmp eq i64 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %..i.i = select i1 %tobool4.not.i.i, i8 28, i8 60
  %retval.0.i.i = select i1 %tobool.not.i.i, i8 %..i.i, i8 92
  %and57.i = and i8 %retval.0.i.i, %sr
  %2 = and i8 %and57.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool8.not.i = icmp eq i8 %2, 0
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool8.not.i
  %and10.i = and i8 %sr, 28
  %or.i = or i8 %and10.i, 32
  %val.0.i = select i1 %or.cond.i, i8 %and57.i, i8 %or.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.0.i)
  %tobool14.not.i = icmp eq i8 %val.0.i, 0
  br i1 %tobool14.not.i, label %if.end.spi_nor_get_locked_range_sr.exit_crit_edge, label %if.end16.i

if.end.spi_nor_get_locked_range_sr.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_nor_get_locked_range_sr.exit

if.end16.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and.i61.i = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool.not.i62.i = icmp eq i32 %and.i61.i, 0
  %..i63.i = select i1 %tobool.not.i62.i, i8 32, i8 64
  %3 = lshr exact i8 %val.0.i, 2
  %conv57.i.i = zext i8 %retval.0.i.i to i32
  %call.i.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv57.i.i) #4
  %shl.i.i = shl nuw i32 1, %call.i.i.i
  %sub.i.i = add i32 %shl.i.i, -2
  %info.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %4 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i.i, align 4
  %n_sectors.i.i = getelementptr inbounds %struct.flash_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %n_sectors.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %n_sectors.i.i, align 8
  %conv75.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i.i.i = icmp eq i16 %7, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %conv75.i.i, i1 true) #4, !range !21
  %sub.i.op.i.i.i = xor i32 %8, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %sector_size.i.i = getelementptr inbounds %struct.flash_info, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sector_size.i.i, align 4
  %11 = call i32 @llvm.usub.sat.i32(i32 %sub.i.i.i, i32 %sub.i.i)
  %retval.0.in.i.i = shl i32 %10, %11
  %retval.0.i64.i = zext i32 %retval.0.in.i.i to i64
  %conv18.i = zext i8 %3 to i32
  %sub.i = add nsw i32 %conv18.i, -1
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %retval.0.i64.i, %sh_prom.i
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 2
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size.i, align 8
  %14 = tail call i64 @llvm.umin.i64(i64 %shl.i, i64 %13) #4
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and24.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %and2958.i = and i8 %..i63.i, %sr
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2958.i)
  %tobool30.not.i = icmp eq i8 %and2958.i, 0
  %or.cond59.i = select i1 %tobool25.not.i, i1 true, i1 %tobool30.not.i
  %sub33.i = sub i64 %13, %14
  %spec.select16 = select i1 %or.cond59.i, i64 %sub33.i, i64 0
  br label %spi_nor_get_locked_range_sr.exit

spi_nor_get_locked_range_sr.exit:                 ; preds = %if.end16.i, %if.end.spi_nor_get_locked_range_sr.exit_crit_edge
  %lock_offs.0 = phi i64 [ 0, %if.end.spi_nor_get_locked_range_sr.exit_crit_edge ], [ %spec.select16, %if.end16.i ]
  %lock_len.0 = phi i64 [ 0, %if.end.spi_nor_get_locked_range_sr.exit_crit_edge ], [ %14, %if.end16.i ]
  %add = add i64 %lock_len.0, %lock_offs.0
  %add1 = add i64 %len, %ofs
  br i1 %locked, label %if.then3, label %if.else

if.then3:                                         ; preds = %spi_nor_get_locked_range_sr.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %add1, i64 %add)
  %cmp.not = icmp sle i64 %add1, %add
  call void @__sanitizer_cov_trace_cmp8(i64 %lock_offs.0, i64 %ofs)
  %cmp4 = icmp sle i64 %lock_offs.0, %ofs
  %spec.select = and i1 %cmp4, %cmp.not
  br label %cleanup

if.else:                                          ; preds = %spi_nor_get_locked_range_sr.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %ofs)
  %cmp5.not = icmp sle i64 %add, %ofs
  call void @__sanitizer_cov_trace_cmp8(i64 %add1, i64 %lock_offs.0)
  %cmp6 = icmp sle i64 %add1, %lock_offs.0
  %spec.select15 = or i1 %cmp6, %cmp5.not
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %spec.select, %if.then3 ], [ %spec.select15, %if.else ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_lock_and_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_unlock_and_unprep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/swp.c", i32 410, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @spi_nor_try_unlock_all.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/spi-nor/swp.c", i32 414, i32 3}
!8 = !{ptr @spi_nor_try_unlock_all.__UNIQUE_ID_ddebug237, !7, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!9 = !{ptr @spi_nor_sr_locking_ops, !10, !"spi_nor_sr_locking_ops", i1 false, i1 false}
!10 = !{!"../drivers/mtd/spi-nor/swp.c", i32 335, i32 41}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2148732785, i64 2148732790, i64 2148732803, i64 2148732847, i64 2148732881, i64 2148732902}
!21 = !{i32 0, i32 33}
