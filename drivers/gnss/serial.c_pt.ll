; ModuleID = '/llk/IR_all_yes/drivers/gnss/serial.c_pt.bc'
source_filename = "../drivers/gnss/serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gnss_serial_allocate\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_serial_allocate\09\09\09\09"
module asm "\09.long\09__crc_gnss_serial_allocate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_serial_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_serial_allocate\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_serial_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gnss_serial_free\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_serial_free\09\09\09\09"
module asm "\09.long\09__crc_gnss_serial_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_serial_free:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_serial_free\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_serial_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gnss_serial_register\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_serial_register\09\09\09\09"
module asm "\09.long\09__crc_gnss_serial_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_serial_register:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_serial_register\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_serial_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gnss_serial_deregister\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_serial_deregister\09\09\09\09"
module asm "\09.long\09__crc_gnss_serial_deregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_serial_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_serial_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_serial_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gnss_serial_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_serial_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_gnss_serial_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_serial_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_serial_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_serial_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.gnss_operations = type { ptr, ptr, ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gnss_device = type { %struct.device, %struct.cdev, i32, i32, i32, %struct.rw_semaphore, ptr, i32, i8, %struct.mutex, %struct.kfifo, %struct.wait_queue_head, %struct.mutex, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kfifo = type { %union.anon.67, [0 x i8] }
%union.anon.67 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gnss_serial = type { ptr, ptr, i32, ptr, [0 x i32] }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }

@gnss_serial_gnss_ops = internal constant { %struct.gnss_operations, [20 x i8] } { %struct.gnss_operations { ptr @gnss_serial_open, ptr @gnss_serial_close, ptr @gnss_serial_write_raw }, [20 x i8] zeroinitializer }, align 32
@gnss_serial_serdev_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @gnss_serial_receive_buf, ptr @serdev_device_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_gnss_serial_allocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_serial_allocate = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_serial_allocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_serial_allocate to i32), ptr @__kstrtab_gnss_serial_allocate, ptr @__kstrtabns_gnss_serial_allocate }, section "___ksymtab_gpl+gnss_serial_allocate", align 4
@__kstrtab_gnss_serial_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_serial_free = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_serial_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_serial_free to i32), ptr @__kstrtab_gnss_serial_free, ptr @__kstrtabns_gnss_serial_free }, section "___ksymtab_gpl+gnss_serial_free", align 4
@__kstrtab_gnss_serial_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_serial_register = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_serial_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_serial_register to i32), ptr @__kstrtab_gnss_serial_register, ptr @__kstrtabns_gnss_serial_register }, section "___ksymtab_gpl+gnss_serial_register", align 4
@__kstrtab_gnss_serial_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_serial_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_serial_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_serial_deregister to i32), ptr @__kstrtab_gnss_serial_deregister, ptr @__kstrtabns_gnss_serial_deregister }, section "___ksymtab_gpl+gnss_serial_deregister", align 4
@gnss_serial_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @gnss_serial_prepare, ptr null, ptr @gnss_serial_suspend, ptr @gnss_serial_resume, ptr @gnss_serial_suspend, ptr @gnss_serial_resume, ptr @gnss_serial_suspend, ptr @gnss_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gnss_serial_runtime_suspend, ptr @gnss_serial_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_gnss_serial_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_serial_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_serial_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_serial_pm_ops to i32), ptr @__kstrtab_gnss_serial_pm_ops, ptr @__kstrtabns_gnss_serial_pm_ops }, section "___ksymtab_gpl+gnss_serial_pm_ops", align 4
@__UNIQUE_ID_author229 = internal constant [51 x i8] c"gnss_serial.author=Johan Hovold <johan@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [60 x i8] c"gnss_serial.description=Generic serial GNSS receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [42 x i8] c"gnss_serial.file=drivers/gnss/gnss-serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [27 x i8] c"gnss_serial.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"gnss_serial_gnss_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 77, i32 37 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"gnss_serial_serdev_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 92, i32 39 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"gnss_serial_pm_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 267, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [25 x i8] c"../drivers/gnss/serial.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 116, i32 29 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_gnss_serial_allocate, ptr @__ksymtab_gnss_serial_deregister, ptr @__ksymtab_gnss_serial_free, ptr @__ksymtab_gnss_serial_pm_ops, ptr @__ksymtab_gnss_serial_register, ptr @gnss_serial_gnss_ops, ptr @gnss_serial_serdev_ops, ptr @gnss_serial_pm_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_serial_gnss_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_serial_serdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_serial_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gnss_serial_allocate(ptr noundef %serdev, i32 noundef %data_size) #0 align 64 {
entry:
  %speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %data_size, 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @gnss_allocate_device(ptr noundef %serdev) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %err_free_gserial, label %if.end5

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.gnss_device, ptr %call2, i32 0, i32 6
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @gnss_serial_gnss_ops, ptr %ops, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %serdev, ptr %call9.i.i, align 128
  %gdev7 = getelementptr inbounds %struct.gnss_serial, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %gdev7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %gdev7, align 4
  %driver_data.i.i31 = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i31 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %driver_data.i.i31, align 4
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %5 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gnss_serial_serdev_ops, ptr %ops1.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #6
  %8 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4800, ptr %speed.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %speed.i, i32 noundef 1, i32 noundef 0) #6
  %9 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed.i, align 4
  %speed2.i = getelementptr inbounds %struct.gnss_serial, ptr %call9.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %speed2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %speed2.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #6
  br label %cleanup

err_free_gserial:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_gserial, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %err_free_gserial ], [ %call9.i.i, %if.end5 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gnss_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnss_put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gnss_serial_free(ptr noundef %gserial) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gdev = getelementptr inbounds %struct.gnss_serial, ptr %gserial, i32 0, i32 1
  %0 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gdev, align 4
  tail call void @gnss_put_device(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %gserial) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gnss_serial_register(ptr nocapture noundef readonly %gserial) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gserial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gserial, align 4
  tail call void @pm_runtime_enable(ptr noundef %1) #6
  %gdev = getelementptr inbounds %struct.gnss_serial, ptr %gserial, i32 0, i32 1
  %2 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gdev, align 4
  %call = tail call i32 @gnss_register_device(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %err_disable_rpm

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_disable_rpm:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %err_disable_rpm, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnss_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gnss_serial_deregister(ptr nocapture noundef readonly %gserial) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gserial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gserial, align 4
  %gdev = getelementptr inbounds %struct.gnss_serial, ptr %gserial, i32 0, i32 1
  %2 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gdev, align 4
  tail call void @gnss_deregister_device(ptr noundef %3) #6
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnss_deregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gnss_serial_prepare(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.pm_runtime_suspended.exit.thread_crit_edge

entry.pm_runtime_suspended.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_suspended.exit.thread

pm_runtime_suspended.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  %spec.select = zext i1 %tobool.not.i to i32
  br label %pm_runtime_suspended.exit.thread

pm_runtime_suspended.exit.thread:                 ; preds = %pm_runtime_suspended.exit, %entry.pm_runtime_suspended.exit.thread_crit_edge
  %3 = phi i32 [ 0, %entry.pm_runtime_suspended.exit.thread_crit_edge ], [ %spec.select, %pm_runtime_suspended.exit ]
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_serial_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ops.i = getelementptr inbounds %struct.gnss_serial, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %tobool.not.i4 = icmp eq ptr %6, null
  br i1 %tobool.not.i4, label %if.then.if.end_crit_edge, label %lor.lhs.false.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %8(ptr noundef %1, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %pm_runtime_suspended.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %pm_runtime_suspended.exit.if.end_crit_edge ], [ %call.i, %if.end.i ], [ 0, %lor.lhs.false.i.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_serial_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ops.i = getelementptr inbounds %struct.gnss_serial, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %tobool.not.i4 = icmp eq ptr %6, null
  br i1 %tobool.not.i4, label %if.then.if.end_crit_edge, label %lor.lhs.false.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %8(ptr noundef %1, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %pm_runtime_suspended.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %pm_runtime_suspended.exit.if.end_crit_edge ], [ %call.i, %if.end.i ], [ 0, %lor.lhs.false.i.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_serial_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops.i = getelementptr inbounds %struct.gnss_serial, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.gnss_serial_set_power.exit_crit_edge, label %lor.lhs.false.i

entry.gnss_serial_set_power.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gnss_serial_set_power.exit

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.gnss_serial_set_power.exit_crit_edge, label %if.end.i

lor.lhs.false.i.gnss_serial_set_power.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gnss_serial_set_power.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 2) #6
  br label %gnss_serial_set_power.exit

gnss_serial_set_power.exit:                       ; preds = %if.end.i, %lor.lhs.false.i.gnss_serial_set_power.exit_crit_edge, %entry.gnss_serial_set_power.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %lor.lhs.false.i.gnss_serial_set_power.exit_crit_edge ], [ 0, %entry.gnss_serial_set_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_serial_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops.i = getelementptr inbounds %struct.gnss_serial, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.gnss_serial_set_power.exit_crit_edge, label %lor.lhs.false.i

entry.gnss_serial_set_power.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gnss_serial_set_power.exit

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.gnss_serial_set_power.exit_crit_edge, label %if.end.i

lor.lhs.false.i.gnss_serial_set_power.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gnss_serial_set_power.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 1) #6
  br label %gnss_serial_set_power.exit

gnss_serial_set_power.exit:                       ; preds = %if.end.i, %lor.lhs.false.i.gnss_serial_set_power.exit_crit_edge, %entry.gnss_serial_set_power.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %lor.lhs.false.i.gnss_serial_set_power.exit_crit_edge ], [ 0, %entry.gnss_serial_set_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_serial_open(ptr nocapture noundef readonly %gdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @serdev_device_open(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.gnss_serial, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  %call3 = tail call i32 @serdev_device_set_baudrate(ptr noundef %3, i32 noundef %5) #6
  tail call void @serdev_device_set_flow_control(ptr noundef %3, i1 noundef zeroext false) #6
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !35
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then5.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then5.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then5.pm_runtime_put_noidle.exit_crit_edge
  tail call void @serdev_device_close(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gnss_serial_close(ptr nocapture noundef readonly %gdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @serdev_device_close(ptr noundef %3) #6
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_serial_write_raw(ptr nocapture noundef readonly %gdev, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %gdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @serdev_device_write(ptr noundef %3, ptr noundef %buf, i32 noundef %count, i32 noundef 2147483647) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %count)
  %cmp3 = icmp ult i32 %call2, %count
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serdev_device_wait_until_sent(ptr noundef %3, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_serial_receive_buf(ptr nocapture noundef readonly %serdev, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gdev1 = getelementptr inbounds %struct.gnss_serial, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gdev1, align 4
  %call2 = tail call i32 @gnss_insert_raw(ptr noundef %3, ptr noundef %buf, i32 noundef %count) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_wakeup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnss_insert_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__ksymtab_gnss_serial_allocate, !1, !"__ksymtab_gnss_serial_allocate", i1 false, i1 false}
!1 = !{!"../drivers/gnss/serial.c", i32 162, i32 1}
!2 = !{ptr @__ksymtab_gnss_serial_free, !3, !"__ksymtab_gnss_serial_free", i1 false, i1 false}
!3 = !{!"../drivers/gnss/serial.c", i32 169, i32 1}
!4 = !{ptr @__ksymtab_gnss_serial_register, !5, !"__ksymtab_gnss_serial_register", i1 false, i1 false}
!5 = !{!"../drivers/gnss/serial.c", i32 198, i32 1}
!6 = !{ptr @__ksymtab_gnss_serial_deregister, !7, !"__ksymtab_gnss_serial_deregister", i1 false, i1 false}
!7 = !{!"../drivers/gnss/serial.c", i32 211, i32 1}
!8 = !{ptr @gnss_serial_pm_ops, !9, !"gnss_serial_pm_ops", i1 false, i1 false}
!9 = !{!"../drivers/gnss/serial.c", i32 267, i32 25}
!10 = !{ptr @__ksymtab_gnss_serial_pm_ops, !11, !"__ksymtab_gnss_serial_pm_ops", i1 false, i1 false}
!11 = !{!"../drivers/gnss/serial.c", i32 272, i32 1}
!12 = !{ptr @__UNIQUE_ID_author229, !13, !"__UNIQUE_ID_author229", i1 false, i1 false}
!13 = !{!"../drivers/gnss/serial.c", i32 274, i32 1}
!14 = !{ptr @__UNIQUE_ID_description230, !15, !"__UNIQUE_ID_description230", i1 false, i1 false}
!15 = !{!"../drivers/gnss/serial.c", i32 275, i32 1}
!16 = !{ptr @__UNIQUE_ID_file231, !17, !"__UNIQUE_ID_file231", i1 false, i1 false}
!17 = !{!"../drivers/gnss/serial.c", i32 276, i32 1}
!18 = !{ptr @__UNIQUE_ID_license232, !17, !"__UNIQUE_ID_license232", i1 false, i1 false}
!19 = !{ptr @gnss_serial_gnss_ops, !20, !"gnss_serial_gnss_ops", i1 false, i1 false}
!20 = !{!"../drivers/gnss/serial.c", i32 77, i32 37}
!21 = !{ptr @gnss_serial_serdev_ops, !22, !"gnss_serial_serdev_ops", i1 false, i1 false}
!22 = !{!"../drivers/gnss/serial.c", i32 92, i32 39}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gnss/serial.c", i32 116, i32 29}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2148509065}
!35 = !{i64 995665, i64 995690, i64 995712, i64 995728, i64 995740, i64 995760, i64 995784, i64 995800, i64 995812}
!36 = !{i64 2148509253}
