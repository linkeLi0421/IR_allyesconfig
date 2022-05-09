; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/firmware.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lbs_get_firmware_async\22, \22a\22\09"
module asm "\09.weak\09__crc_lbs_get_firmware_async\09\09\09\09"
module asm "\09.long\09__crc_lbs_get_firmware_async\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbs_get_firmware_async:\09\09\09\09\09"
module asm "\09.asciz \09\22lbs_get_firmware_async\22\09\09\09\09\09"
module asm "__kstrtabns_lbs_get_firmware_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lbs_get_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_lbs_get_firmware\09\09\09\09"
module asm "\09.long\09__crc_lbs_get_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbs_get_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22lbs_get_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_lbs_get_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kfifo = type { %union.anon.114, [0 x i8] }
%union.anon.114 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lbs_fw_table = type { i32, ptr, ptr }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/marvell/libertas/firmware.c\00", [47 x i8] zeroinitializer }, align 32
@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@lbs_get_firmware_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017libertas fw: firmware load already in progress\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lbs_get_firmware_async\00", [41 x i8] zeroinitializer }, align 32
@lbs_get_firmware_async._entry_ptr = internal global ptr @lbs_get_firmware_async._entry, section ".printk_index", align 4
@lbs_get_firmware_async._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libertas fw: Starting async firmware load\0A\00", [51 x i8] zeroinitializer }, align 32
@lbs_get_firmware_async._entry_ptr.5 = internal global ptr @lbs_get_firmware_async._entry.3, section ".printk_index", align 4
@__kstrtab_lbs_get_firmware_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbs_get_firmware_async = external dso_local constant [0 x i8], align 1
@__ksymtab_lbs_get_firmware_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbs_get_firmware_async to i32), ptr @__kstrtab_lbs_get_firmware_async, ptr @__kstrtabns_lbs_get_firmware_async }, section "___ksymtab_gpl+lbs_get_firmware_async", align 4
@__kstrtab_lbs_get_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbs_get_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_lbs_get_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbs_get_firmware to i32), ptr @__kstrtab_lbs_get_firmware, ptr @__kstrtabns_lbs_get_firmware }, section "___ksymtab_gpl+lbs_get_firmware", align 4
@lbs_fw_loaded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 20, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libertas fw: firmware load complete, code %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lbs_fw_loaded\00", [18 x i8] zeroinitializer }, align 32
@lbs_fw_loaded._entry_ptr = internal global ptr @lbs_fw_loaded._entry, section ".printk_index", align 4
@do_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017libertas fw: Requesting %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_load_firmware\00", [47 x i8] zeroinitializer }, align 32
@do_load_firmware._entry_ptr = internal global ptr @do_load_firmware._entry, section ".printk_index", align 4
@do_load_firmware._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017libertas fw: request_firmware_nowait error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@do_load_firmware._entry_ptr.12 = internal global ptr @do_load_firmware._entry.10, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 116, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 139, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 151, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 20, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 36, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [52 x i8] c"../drivers/net/wireless/marvell/libertas/firmware.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 40, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_lbs_get_firmware, ptr @__ksymtab_lbs_get_firmware_async, ptr @do_load_firmware._entry, ptr @do_load_firmware._entry.10, ptr @do_load_firmware._entry_ptr, ptr @do_load_firmware._entry_ptr.12, ptr @lbs_fw_loaded._entry, ptr @lbs_fw_loaded._entry_ptr, ptr @lbs_get_firmware_async._entry, ptr @lbs_get_firmware_async._entry.3, ptr @lbs_get_firmware_async._entry_ptr, ptr @lbs_get_firmware_async._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_get_firmware_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_get_firmware_async._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_fw_loaded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_load_firmware._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_wait_for_firmware_load(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 116) #4
  %fw_callback = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 105
  %0 = ptrtoint ptr %fw_callback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_callback, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.do.end9_crit_edge, label %if.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %fw_waitq = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 100
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %fw_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %3 = ptrtoint ptr %fw_callback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_callback, align 4
  %cmp516 = icmp eq ptr %4, null
  br i1 %cmp516, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #4
  %call = call i32 @prepare_to_wait_event(ptr noundef %fw_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %5 = ptrtoint ptr %fw_callback to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_callback, align 4
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %fw_waitq, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %do.end9

do.end9:                                          ; preds = %for.end, %entry.do.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_get_firmware_async(ptr noundef %priv, ptr noundef %device, i32 noundef %card_model, ptr noundef %fw_table, ptr noundef %callback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #4
  %fw_callback = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 105
  %0 = ptrtoint ptr %fw_callback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_callback, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end17, label %do.body5

do.body5:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %do.body5.do.end15_crit_edge, label %do.end11

do.body5.do.end15_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %do.end15

do.end15:                                         ; preds = %do.end11, %do.body5.do.end15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #4
  br label %cleanup

if.end17:                                         ; preds = %entry
  %fw_device = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 101
  %3 = ptrtoint ptr %fw_device to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %device, ptr %fw_device, align 4
  %4 = ptrtoint ptr %fw_callback to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %callback, ptr %fw_callback, align 4
  %fw_table19 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 103
  %5 = ptrtoint ptr %fw_table19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fw_table, ptr %fw_table19, align 4
  %fw_iter = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 104
  %6 = ptrtoint ptr %fw_iter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw_iter, align 4
  %fw_model = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 99
  %7 = ptrtoint ptr %fw_model to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %card_model, ptr %fw_model, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %8 = load i32, ptr @lbs_debug, align 4
  %and22 = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23.not = icmp eq i32 %and22, 0
  br i1 %cmp23.not, label %if.end17.do.end33_crit_edge, label %do.end28

if.end17.do.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33

do.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %do.end33

do.end33:                                         ; preds = %do.end28, %if.end17.do.end33_crit_edge
  tail call fastcc void @load_next_firmware_from_table(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end15
  %retval.0 = phi i32 [ -16, %do.end15 ], [ 0, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @load_next_firmware_from_table(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_iter = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 104
  %0 = ptrtoint ptr %fw_iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_iter, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fw_table = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 103
  %2 = ptrtoint ptr %fw_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_table, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr %struct.lbs_fw_table, ptr %1, i32 1
  %4 = ptrtoint ptr %fw_iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %incdec.ptr, ptr %fw_iter, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %iter.0 = phi ptr [ %incdec.ptr, %if.else ], [ %3, %if.then ]
  %helper_fw = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 102
  %5 = ptrtoint ptr %helper_fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %helper_fw, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @release_firmware(ptr noundef nonnull %6) #4
  %7 = ptrtoint ptr %helper_fw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %helper_fw, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %helper31 = getelementptr inbounds %struct.lbs_fw_table, ptr %iter.0, i32 0, i32 1
  %8 = ptrtoint ptr %helper31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %helper31, align 4
  %tobool7.not32 = icmp eq ptr %9, null
  br i1 %tobool7.not32, label %if.end6.if.then8_crit_edge, label %if.end9.lr.ph

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.end9.lr.ph:                                    ; preds = %if.end6
  %fw_model = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 99
  %10 = ptrtoint ptr %fw_model to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_model, align 4
  br label %if.end9

if.then8:                                         ; preds = %if.then10.if.then8_crit_edge, %if.end6.if.then8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %12 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.then8.lbs_fw_loaded.exit_crit_edge, label %do.end.i

if.then8.lbs_fw_loaded.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %lbs_fw_loaded.exit

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef -2) #7
  br label %lbs_fw_loaded.exit

lbs_fw_loaded.exit:                               ; preds = %do.end.i, %if.then8.lbs_fw_loaded.exit_crit_edge
  %fw_callback.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 105
  %13 = ptrtoint ptr %fw_callback.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_callback.i, align 4
  tail call void %14(ptr noundef %priv, i32 noundef -2, ptr noundef null, ptr noundef null) #4
  %driver_lock.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #4
  %15 = ptrtoint ptr %fw_callback.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %fw_callback.i, align 4
  %fw_waitq.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 100
  tail call void @__wake_up(ptr noundef %fw_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call9.i) #4
  br label %cleanup

if.end9:                                          ; preds = %if.then10.if.end9_crit_edge, %if.end9.lr.ph
  %iter.133 = phi ptr [ %iter.0, %if.end9.lr.ph ], [ %incdec.ptr11, %if.then10.if.end9_crit_edge ]
  %16 = ptrtoint ptr %iter.133 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iter.133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %11)
  %cmp.not = icmp eq i32 %17, %11
  br i1 %cmp.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end9
  %incdec.ptr11 = getelementptr %struct.lbs_fw_table, ptr %iter.133, i32 1
  %helper = getelementptr %struct.lbs_fw_table, ptr %iter.133, i32 1, i32 1
  %18 = ptrtoint ptr %helper to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %helper, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.then10.if.then8_crit_edge, label %if.then10.if.end9_crit_edge

if.then10.if.end9_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then10.if.then8_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %helper.le = getelementptr inbounds %struct.lbs_fw_table, ptr %iter.133, i32 0, i32 1
  %20 = ptrtoint ptr %fw_iter to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %iter.133, ptr %fw_iter, align 4
  %21 = ptrtoint ptr %helper.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %helper.le, align 4
  tail call fastcc void @do_load_firmware(ptr noundef %priv, ptr noundef %22, ptr noundef nonnull @helper_firmware_cb)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lbs_fw_loaded.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_get_firmware(ptr noundef %dev, i32 noundef %card_model, ptr noundef readonly %fw_table, ptr noundef %helper, ptr noundef %mainfw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %helper, null
  br i1 %cmp, label %do.body2, label %do.body8, !prof !38

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/firmware.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #4, !srcloc !39
  unreachable

do.body8:                                         ; preds = %entry
  %cmp9 = icmp eq ptr %mainfw, null
  br i1 %cmp9, label %do.body17, label %while.cond.preheader, !prof !38

while.cond.preheader:                             ; preds = %do.body8
  %tobool26.not76 = icmp eq ptr %fw_table, null
  br i1 %tobool26.not76, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/firmware.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #4, !srcloc !40
  unreachable

land.rhs:                                         ; preds = %next.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %iter.077 = phi ptr [ %incdec.ptr, %next.land.rhs_crit_edge ], [ %fw_table, %while.cond.preheader.land.rhs_crit_edge ]
  %helper27 = getelementptr inbounds %struct.lbs_fw_table, ptr %iter.077, i32 0, i32 1
  %0 = ptrtoint ptr %helper27 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %helper27, align 4
  %tobool28.not = icmp eq ptr %1, null
  br i1 %tobool28.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %2 = ptrtoint ptr %iter.077 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iter.077, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %card_model)
  %cmp29.not = icmp eq i32 %3, %card_model
  br i1 %cmp29.not, label %if.end31, label %while.body.next_crit_edge

while.body.next_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %next

if.end31:                                         ; preds = %while.body
  %4 = ptrtoint ptr %helper to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %helper, align 4
  %cmp32 = icmp eq ptr %5, null
  br i1 %cmp32, label %if.then33, label %if.end31.if.end41_crit_edge

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then33:                                        ; preds = %if.end31
  %call = tail call i32 @request_firmware(ptr noundef nonnull %helper, ptr noundef nonnull %1, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %if.end37, label %if.then33.next_crit_edge

if.then33.next_crit_edge:                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %next

if.end37:                                         ; preds = %if.then33
  %fwname = getelementptr inbounds %struct.lbs_fw_table, ptr %iter.077, i32 0, i32 2
  %6 = ptrtoint ptr %fwname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwname, align 4
  %cmp38 = icmp eq ptr %7, null
  br i1 %cmp38, label %if.end37.cleanup_crit_edge, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %if.end37.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %8 = ptrtoint ptr %mainfw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mainfw, align 4
  %cmp42 = icmp eq ptr %9, null
  br i1 %cmp42, label %if.then43, label %if.end41.if.end49_crit_edge

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then43:                                        ; preds = %if.end41
  %fwname44 = getelementptr inbounds %struct.lbs_fw_table, ptr %iter.077, i32 0, i32 2
  %10 = ptrtoint ptr %fwname44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fwname44, align 4
  %call45 = tail call i32 @request_firmware(ptr noundef nonnull %mainfw, ptr noundef %11, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then43.if.end49_crit_edge, label %if.end49.thread

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.end49.thread:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %helper to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %helper, align 4
  tail call void @release_firmware(ptr noundef %13) #4
  %14 = ptrtoint ptr %helper to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %helper, align 4
  br label %next

if.end49:                                         ; preds = %if.then43.if.end49_crit_edge, %if.end41.if.end49_crit_edge
  %15 = ptrtoint ptr %helper to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %helper, align 4
  %tobool50.not = icmp eq ptr %.pr, null
  br i1 %tobool50.not, label %if.end49.next_crit_edge, label %land.lhs.true

if.end49.next_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %next

land.lhs.true:                                    ; preds = %if.end49
  %16 = ptrtoint ptr %mainfw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mainfw, align 4
  %tobool51.not = icmp eq ptr %17, null
  br i1 %tobool51.not, label %land.lhs.true.next_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.next_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %next

next:                                             ; preds = %land.lhs.true.next_crit_edge, %if.end49.next_crit_edge, %if.end49.thread, %if.then33.next_crit_edge, %while.body.next_crit_edge
  %incdec.ptr = getelementptr %struct.lbs_fw_table, ptr %iter.077, i32 1
  %tobool26.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool26.not, label %next.while.end_crit_edge, label %next.land.rhs_crit_edge

next.land.rhs_crit_edge:                          ; preds = %next
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

next.while.end_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %next.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %18 = ptrtoint ptr %helper to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %helper, align 4
  tail call void @release_firmware(ptr noundef %19) #4
  %20 = ptrtoint ptr %helper to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %helper, align 4
  %21 = ptrtoint ptr %mainfw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mainfw, align 4
  tail call void @release_firmware(ptr noundef %22) #4
  %23 = ptrtoint ptr %mainfw to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mainfw, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %land.lhs.true.cleanup_crit_edge, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %while.end ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_load_firmware(ptr noundef %priv, ptr noundef %name, ptr noundef %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %0 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %fw_device = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 101
  %1 = ptrtoint ptr %fw_device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw_device, align 4
  %call4 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %name, ptr noundef %2, i32 noundef 3264, ptr noundef %priv, ptr noundef %cb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end3.if.end18_crit_edge, label %do.body6

do.end3.if.end18_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

do.body6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %3 = load i32, ptr @lbs_debug, align 4
  %and7 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %do.body6.do.end17_crit_edge, label %do.end12

do.body6.do.end17_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end17

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call4) #7
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.body6.do.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %4 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %do.end17.lbs_fw_loaded.exit_crit_edge, label %do.end.i

do.end17.lbs_fw_loaded.exit_crit_edge:            ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %lbs_fw_loaded.exit

do.end.i:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call4) #7
  br label %lbs_fw_loaded.exit

lbs_fw_loaded.exit:                               ; preds = %do.end.i, %do.end17.lbs_fw_loaded.exit_crit_edge
  %fw_callback.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 105
  %5 = ptrtoint ptr %fw_callback.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_callback.i, align 4
  tail call void %6(ptr noundef %priv, i32 noundef %call4, ptr noundef null, ptr noundef null) #4
  %driver_lock.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #4
  %7 = ptrtoint ptr %fw_callback.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fw_callback.i, align 4
  %fw_waitq.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 100
  tail call void @__wake_up(ptr noundef %fw_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call9.i) #4
  br label %if.end18

if.end18:                                         ; preds = %lbs_fw_loaded.exit, %do.end3.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @helper_firmware_cb(ptr noundef %firmware, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %firmware, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @load_next_firmware_from_table(ptr noundef %context)
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_iter = getelementptr inbounds %struct.lbs_private, ptr %context, i32 0, i32 104
  %0 = ptrtoint ptr %fw_iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_iter, align 4
  %fwname = getelementptr inbounds %struct.lbs_fw_table, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fwname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwname, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %helper_fw = getelementptr inbounds %struct.lbs_private, ptr %context, i32 0, i32 102
  %4 = ptrtoint ptr %helper_fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %firmware, ptr %helper_fw, align 4
  %5 = ptrtoint ptr %fwname to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwname, align 4
  tail call fastcc void @do_load_firmware(ptr noundef %context, ptr noundef %6, ptr noundef nonnull @main_firmware_cb)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %7 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.else.lbs_fw_loaded.exit_crit_edge, label %do.end.i

if.else.lbs_fw_loaded.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %lbs_fw_loaded.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 0) #7
  br label %lbs_fw_loaded.exit

lbs_fw_loaded.exit:                               ; preds = %do.end.i, %if.else.lbs_fw_loaded.exit_crit_edge
  %fw_callback.i = getelementptr inbounds %struct.lbs_private, ptr %context, i32 0, i32 105
  %8 = ptrtoint ptr %fw_callback.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_callback.i, align 4
  tail call void %9(ptr noundef %context, i32 noundef 0, ptr noundef nonnull %firmware, ptr noundef null) #4
  %driver_lock.i = getelementptr inbounds %struct.lbs_private, ptr %context, i32 0, i32 87
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #4
  %10 = ptrtoint ptr %fw_callback.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %fw_callback.i, align 4
  %fw_waitq.i = getelementptr inbounds %struct.lbs_private, ptr %context, i32 0, i32 100
  tail call void @__wake_up(ptr noundef %fw_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call9.i) #4
  br label %cleanup

cleanup:                                          ; preds = %lbs_fw_loaded.exit, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @main_firmware_cb(ptr noundef %firmware, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %firmware, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @load_next_firmware_from_table(ptr noundef %context)
  br label %cleanup

if.end:                                           ; preds = %entry
  %helper_fw = getelementptr inbounds %struct.lbs_private, ptr %context, i32 0, i32 102
  %0 = ptrtoint ptr %helper_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %helper_fw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.lbs_fw_loaded.exit_crit_edge, label %do.end.i

if.end.lbs_fw_loaded.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lbs_fw_loaded.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 0) #7
  br label %lbs_fw_loaded.exit

lbs_fw_loaded.exit:                               ; preds = %do.end.i, %if.end.lbs_fw_loaded.exit_crit_edge
  %fw_callback.i = getelementptr inbounds %struct.lbs_private, ptr %context, i32 0, i32 105
  %3 = ptrtoint ptr %fw_callback.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_callback.i, align 4
  tail call void %4(ptr noundef %context, i32 noundef 0, ptr noundef %1, ptr noundef nonnull %firmware) #4
  %driver_lock.i = getelementptr inbounds %struct.lbs_private, ptr %context, i32 0, i32 87
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #4
  %5 = ptrtoint ptr %fw_callback.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fw_callback.i, align 4
  %fw_waitq.i = getelementptr inbounds %struct.lbs_private, ptr %context, i32 0, i32 100
  tail call void @__wake_up(ptr noundef %fw_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call9.i) #4
  %6 = ptrtoint ptr %helper_fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %helper_fw, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lbs_fw_loaded.exit.if.end6_crit_edge, label %if.then3

lbs_fw_loaded.exit.if.end6_crit_edge:             ; preds = %lbs_fw_loaded.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %lbs_fw_loaded.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @release_firmware(ptr noundef nonnull %7) #4
  %8 = ptrtoint ptr %helper_fw to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %helper_fw, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %lbs_fw_loaded.exit.if.end6_crit_edge
  tail call void @release_firmware(ptr noundef nonnull %firmware) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/firmware.c", i32 116, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas/firmware.c", i32 139, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @lbs_get_firmware_async._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @lbs_get_firmware_async._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/marvell/libertas/firmware.c", i32 151, i32 2}
!9 = !{ptr @lbs_get_firmware_async._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @lbs_get_firmware_async._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_lbs_get_firmware_async, !12, !"__ksymtab_lbs_get_firmware_async", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/libertas/firmware.c", i32 155, i32 1}
!13 = !{ptr @__ksymtab_lbs_get_firmware, !14, !"__ksymtab_lbs_get_firmware", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/libertas/firmware.c", i32 228, i32 1}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/libertas/firmware.c", i32 20, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @lbs_fw_loaded._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @lbs_fw_loaded._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/libertas/firmware.c", i32 36, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @do_load_firmware._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @do_load_firmware._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/libertas/firmware.c", i32 40, i32 3}
!27 = !{ptr @do_load_firmware._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @do_load_firmware._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2156537672, i64 2156538185, i64 2156537709, i64 2156537765, i64 2156537799, i64 2156537823, i64 2156537864, i64 2156537885, i64 2156537913, i64 2156537947}
!40 = !{i64 2156539369, i64 2156539882, i64 2156539406, i64 2156539462, i64 2156539496, i64 2156539520, i64 2156539561, i64 2156539582, i64 2156539610, i64 2156539644}
