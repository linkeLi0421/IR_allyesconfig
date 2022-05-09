; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-spi.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_spi\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_spi\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_spi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_spi\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_spi\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_spi\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_spi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_spi\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.regmap_async_spi = type { %struct.regmap_async, %struct.spi_message, [2 x %struct.spi_transfer] }
%struct.regmap_async = type { %struct.list_head, ptr, ptr }

@__kstrtab___regmap_init_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_spi = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_spi to i32), ptr @__kstrtab___regmap_init_spi, ptr @__kstrtabns___regmap_init_spi }, section "___ksymtab_gpl+__regmap_init_spi", align 4
@__kstrtab___devm_regmap_init_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_spi = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_spi to i32), ptr @__kstrtab___devm_regmap_init_spi, ptr @__kstrtabns___devm_regmap_init_spi }, section "___ksymtab_gpl+__devm_regmap_init_spi", align 4
@__UNIQUE_ID_file230 = internal constant [47 x i8] c"regmap_spi.file=drivers/base/regmap/regmap-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"regmap_spi.license=GPL\00", section ".modinfo", align 1
@regmap_spi = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_spi_write, ptr @regmap_spi_gather_write, ptr @regmap_spi_async_write, ptr null, ptr null, ptr @regmap_spi_read, ptr null, ptr null, ptr @regmap_spi_async_alloc, i8 -128, i32 1, i32 1, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"regmap_spi\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/base/regmap/regmap-spi.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 101, i32 32 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__ksymtab___devm_regmap_init_spi, ptr @__ksymtab___regmap_init_spi, ptr @regmap_spi], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_spi to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_spi(ptr noundef %spi, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i.i, align 8
  %max_message_size.i.i.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %max_message_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %max_message_size.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.spi_max_message_size.exit.i.i_crit_edge, label %if.end.i.i.i

entry.spi_max_message_size.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_max_message_size.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 %3(ptr noundef %spi) #5
  br label %spi_max_message_size.exit.i.i

spi_max_message_size.exit.i.i:                    ; preds = %if.end.i.i.i, %entry.spi_max_message_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.i ], [ -1, %entry.spi_max_message_size.exit.i.i_crit_edge ]
  %max_transfer_size.i.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %max_transfer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %max_transfer_size.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %spi_max_message_size.exit.i.i.spi_max_transfer_size.exit.i_crit_edge, label %if.then.i.i

spi_max_message_size.exit.i.i.spi_max_transfer_size.exit.i_crit_edge: ; preds = %spi_max_message_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_max_transfer_size.exit.i

if.then.i.i:                                      ; preds = %spi_max_message_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = tail call i32 %5(ptr noundef %spi) #5
  br label %spi_max_transfer_size.exit.i

spi_max_transfer_size.exit.i:                     ; preds = %if.then.i.i, %spi_max_message_size.exit.i.i.spi_max_transfer_size.exit.i_crit_edge
  %tr_max.0.i.i = phi i32 [ %call2.i.i, %if.then.i.i ], [ -1, %spi_max_message_size.exit.i.i.spi_max_transfer_size.exit.i_crit_edge ]
  %6 = tail call i32 @llvm.umin.i32(i32 %tr_max.0.i.i, i32 %retval.0.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, -1
  br i1 %cmp.not.i, label %spi_max_transfer_size.exit.i.regmap_get_spi_bus.exit_crit_edge, label %if.then.i

spi_max_transfer_size.exit.i.regmap_get_spi_bus.exit_crit_edge: ; preds = %spi_max_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %regmap_get_spi_bus.exit

if.then.i:                                        ; preds = %spi_max_transfer_size.exit.i
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull @regmap_spi, i32 noundef 64, i32 noundef 3264) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %free_on_exit.i = getelementptr inbounds %struct.regmap_bus, ptr %call1.i, i32 0, i32 15
  %7 = ptrtoint ptr %free_on_exit.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %free_on_exit.i, align 4
  %max_raw_read.i = getelementptr inbounds %struct.regmap_bus, ptr %call1.i, i32 0, i32 13
  %8 = ptrtoint ptr %max_raw_read.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %max_raw_read.i, align 4
  %max_raw_write.i = getelementptr inbounds %struct.regmap_bus, ptr %call1.i, i32 0, i32 14
  %9 = ptrtoint ptr %max_raw_write.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %max_raw_write.i, align 4
  br label %regmap_get_spi_bus.exit

regmap_get_spi_bus.exit:                          ; preds = %if.end.i, %spi_max_transfer_size.exit.i.regmap_get_spi_bus.exit_crit_edge
  %retval.0.i = phi ptr [ %call1.i, %if.end.i ], [ @regmap_spi, %spi_max_transfer_size.exit.i.regmap_get_spi_bus.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %regmap_get_spi_bus.exit.cleanup_crit_edge, label %if.end

regmap_get_spi_bus.exit.cleanup_crit_edge:        ; preds = %regmap_get_spi_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %regmap_get_spi_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @__regmap_init(ptr noundef %spi, ptr noundef nonnull %retval.0.i, ptr noundef %spi, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %regmap_get_spi_bus.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ %retval.0.i, %regmap_get_spi_bus.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i.i, align 8
  %max_message_size.i.i.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %max_message_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %max_message_size.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.spi_max_message_size.exit.i.i_crit_edge, label %if.end.i.i.i

entry.spi_max_message_size.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_max_message_size.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 %3(ptr noundef %spi) #5
  br label %spi_max_message_size.exit.i.i

spi_max_message_size.exit.i.i:                    ; preds = %if.end.i.i.i, %entry.spi_max_message_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.i ], [ -1, %entry.spi_max_message_size.exit.i.i_crit_edge ]
  %max_transfer_size.i.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %max_transfer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %max_transfer_size.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %spi_max_message_size.exit.i.i.spi_max_transfer_size.exit.i_crit_edge, label %if.then.i.i

spi_max_message_size.exit.i.i.spi_max_transfer_size.exit.i_crit_edge: ; preds = %spi_max_message_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_max_transfer_size.exit.i

if.then.i.i:                                      ; preds = %spi_max_message_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = tail call i32 %5(ptr noundef %spi) #5
  br label %spi_max_transfer_size.exit.i

spi_max_transfer_size.exit.i:                     ; preds = %if.then.i.i, %spi_max_message_size.exit.i.i.spi_max_transfer_size.exit.i_crit_edge
  %tr_max.0.i.i = phi i32 [ %call2.i.i, %if.then.i.i ], [ -1, %spi_max_message_size.exit.i.i.spi_max_transfer_size.exit.i_crit_edge ]
  %6 = tail call i32 @llvm.umin.i32(i32 %tr_max.0.i.i, i32 %retval.0.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, -1
  br i1 %cmp.not.i, label %spi_max_transfer_size.exit.i.regmap_get_spi_bus.exit_crit_edge, label %if.then.i

spi_max_transfer_size.exit.i.regmap_get_spi_bus.exit_crit_edge: ; preds = %spi_max_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %regmap_get_spi_bus.exit

if.then.i:                                        ; preds = %spi_max_transfer_size.exit.i
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull @regmap_spi, i32 noundef 64, i32 noundef 3264) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %free_on_exit.i = getelementptr inbounds %struct.regmap_bus, ptr %call1.i, i32 0, i32 15
  %7 = ptrtoint ptr %free_on_exit.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %free_on_exit.i, align 4
  %max_raw_read.i = getelementptr inbounds %struct.regmap_bus, ptr %call1.i, i32 0, i32 13
  %8 = ptrtoint ptr %max_raw_read.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %max_raw_read.i, align 4
  %max_raw_write.i = getelementptr inbounds %struct.regmap_bus, ptr %call1.i, i32 0, i32 14
  %9 = ptrtoint ptr %max_raw_write.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %max_raw_write.i, align 4
  br label %regmap_get_spi_bus.exit

regmap_get_spi_bus.exit:                          ; preds = %if.end.i, %spi_max_transfer_size.exit.i.regmap_get_spi_bus.exit_crit_edge
  %retval.0.i = phi ptr [ %call1.i, %if.end.i ], [ @regmap_spi, %spi_max_transfer_size.exit.i.regmap_get_spi_bus.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %regmap_get_spi_bus.exit.cleanup_crit_edge, label %if.end

regmap_get_spi_bus.exit.cleanup_crit_edge:        ; preds = %regmap_get_spi_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %regmap_get_spi_bus.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @__devm_regmap_init(ptr noundef %spi, ptr noundef nonnull %retval.0.i, ptr noundef %spi, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %regmap_get_spi_bus.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ %retval.0.i, %regmap_get_spi_bus.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spi_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %0 = getelementptr inbounds i8, ptr %t.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %count, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spi_gather_write(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_len, ptr noundef %val, i32 noundef %val_len) #0 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #5
  %0 = getelementptr inbounds i8, ptr %t, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reg, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %reg_len, ptr %len, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1
  %4 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %val, ptr %arrayinit.element, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val_len, ptr %len2, align 4
  %6 = getelementptr inbounds i8, ptr %m, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i9 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i11 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i9, ptr noundef %17, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i11, label %if.end.i.i.i13, label %spi_message_add_tail.exit.spi_message_add_tail.exit14_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit14_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit14

if.end.i.i.i13:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i9, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %transfer_list.i9, align 4
  %prev3.i.i.i12 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i12, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i9, ptr %17, align 4
  br label %spi_message_add_tail.exit14

spi_message_add_tail.exit14:                      ; preds = %if.end.i.i.i13, %spi_message_add_tail.exit.spi_message_add_tail.exit14_crit_edge
  %call8 = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spi_async_write(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_len, ptr noundef %val, i32 noundef %val_len, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %t = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %reg, ptr %t, align 4
  %len = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 2, i32 0, i32 2
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %reg_len, ptr %len, align 4
  %arrayidx4 = getelementptr %struct.regmap_async_spi, ptr %a, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %val, ptr %arrayidx4, align 4
  %len8 = getelementptr %struct.regmap_async_spi, ptr %a, i32 0, i32 2, i32 1, i32 2
  %3 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %val_len, ptr %len8, align 4
  %m = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 1
  %4 = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 1, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 1, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 2, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %m, ptr noundef %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 2, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %spi_message_add_tail.exit.if.end_crit_edge, label %if.then

spi_message_add_tail.exit.if.end_crit_edge:       ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %spi_message_add_tail.exit
  %transfer_list.i33 = getelementptr %struct.regmap_async_spi, ptr %a, i32 0, i32 2, i32 1, i32 18
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i33, ptr noundef %15, ptr noundef %m) #5
  br i1 %call.i.i.i35, label %if.end.i.i.i37, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i.i37:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i33, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m, ptr %transfer_list.i33, align 4
  %prev3.i.i.i36 = getelementptr %struct.regmap_async_spi, ptr %a, i32 0, i32 2, i32 1, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i36, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i33, ptr %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i37, %if.then.if.end_crit_edge, %spi_message_add_tail.exit.if.end_crit_edge
  %complete = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @regmap_spi_complete, ptr %complete, align 4
  %context17 = getelementptr inbounds %struct.regmap_async_spi, ptr %a, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %context17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %a, ptr %context17, align 4
  %call19 = tail call i32 @spi_async(ptr noundef %context, ptr noundef %m) #5
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spi_read(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @spi_write_then_read(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @regmap_spi_async_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 264) #8
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_spi_complete(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.regmap_async_spi, ptr %data, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  tail call void @regmap_async_complete_cb(ptr noundef %data, i32 noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_async_complete_cb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab___regmap_init_spi, !1, !"__ksymtab___regmap_init_spi", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-spi.c", i32 144, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_spi, !3, !"__ksymtab___devm_regmap_init_spi", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-spi.c", i32 158, i32 1}
!4 = !{ptr @__UNIQUE_ID_file230, !5, !"__UNIQUE_ID_file230", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-spi.c", i32 160, i32 1}
!6 = !{ptr @__UNIQUE_ID_license231, !5, !"__UNIQUE_ID_license231", i1 false, i1 false}
!7 = !{ptr @regmap_spi, !8, !"regmap_spi", i1 false, i1 false}
!8 = !{!"../drivers/base/regmap/regmap-spi.c", i32 101, i32 32}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
