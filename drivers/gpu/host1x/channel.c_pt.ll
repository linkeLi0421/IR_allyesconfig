; ModuleID = '/llk/IR_all_yes/drivers/gpu/host1x/channel.c_pt.bc'
source_filename = "../drivers/gpu/host1x/channel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+host1x_job_submit\22, \22a\22\09"
module asm "\09.weak\09__crc_host1x_job_submit\09\09\09\09"
module asm "\09.long\09__crc_host1x_job_submit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_job_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_job_submit\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_job_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+host1x_channel_get\22, \22a\22\09"
module asm "\09.weak\09__crc_host1x_channel_get\09\09\09\09"
module asm "\09.long\09__crc_host1x_channel_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_channel_get:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_channel_get\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_channel_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+host1x_channel_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_host1x_channel_stop\09\09\09\09"
module asm "\09.long\09__crc_host1x_channel_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_channel_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_channel_stop\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_channel_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+host1x_channel_put\22, \22a\22\09"
module asm "\09.weak\09__crc_host1x_channel_put\09\09\09\09"
module asm "\09.long\09__crc_host1x_channel_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_channel_put:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_channel_put\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_channel_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+host1x_channel_request\22, \22a\22\09"
module asm "\09.weak\09__crc_host1x_channel_request\09\09\09\09"
module asm "\09.long\09__crc_host1x_channel_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_channel_request:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_channel_request\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_channel_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_channel_ops = type { ptr, ptr }
%struct.host1x_cdma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }

@__kstrtab_host1x_job_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_job_submit = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_job_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_job_submit to i32), ptr @__kstrtab_host1x_job_submit, ptr @__kstrtabns_host1x_job_submit }, section "___ksymtab+host1x_job_submit", align 4
@__kstrtab_host1x_channel_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_channel_get = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_channel_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_channel_get to i32), ptr @__kstrtab_host1x_channel_get, ptr @__kstrtabns_host1x_channel_get }, section "___ksymtab+host1x_channel_get", align 4
@__kstrtab_host1x_channel_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_channel_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_channel_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_channel_stop to i32), ptr @__kstrtab_host1x_channel_stop, ptr @__kstrtabns_host1x_channel_stop }, section "___ksymtab+host1x_channel_stop", align 4
@__kstrtab_host1x_channel_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_channel_put = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_channel_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_channel_put to i32), ptr @__kstrtab_host1x_channel_put, ptr @__kstrtabns_host1x_channel_put }, section "___ksymtab+host1x_channel_put", align 4
@host1x_channel_request.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&channel->submitlock\00", [43 x i8] zeroinitializer }, align 32
@host1x_channel_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize channel\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"host1x_channel_request\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/host1x/channel.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@host1x_channel_request._entry_ptr = internal global ptr @host1x_channel_request._entry, section ".printk_index", align 4
@__kstrtab_host1x_channel_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_channel_request = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_channel_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_channel_request to i32), ptr @__kstrtab_host1x_channel_request, ptr @__kstrtabns_host1x_channel_request }, section "___ksymtab+host1x_channel_request", align 4
@acquire_unused_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to find free channel\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"acquire_unused_channel\00", [41 x i8] zeroinitializer }, align 32
@acquire_unused_channel._entry_ptr = internal global ptr @acquire_unused_channel._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 143, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 160, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [32 x i8] c"../drivers/gpu/host1x/channel.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 113, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_host1x_channel_get, ptr @__ksymtab_host1x_channel_put, ptr @__ksymtab_host1x_channel_request, ptr @__ksymtab_host1x_channel_stop, ptr @__ksymtab_host1x_job_submit, ptr @acquire_unused_channel._entry, ptr @acquire_unused_channel._entry_ptr, ptr @host1x_channel_request._entry, ptr @host1x_channel_request._entry_ptr, ptr @host1x_channel_request.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_channel_request.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_channel_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_unused_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_channel_list_init(ptr nocapture noundef %chlist, i32 noundef %num_channels) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_channels, i32 456) #7
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !35

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %chlist to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %chlist, align 4
  br label %return

if.end7.i.i:                                      ; preds = %entry
  %3 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #10
  %4 = ptrtoint ptr %chlist to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %chlist, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.return_crit_edge, label %if.end

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %if.end7.i.i
  %sub = add nuw nsw i32 %num_channels, 31
  %5 = lshr i32 %sub, 3
  %6 = and i32 %5, 536870908
  %call8.i.i46 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #10
  %allocated_channels = getelementptr inbounds %struct.host1x_channel_list, ptr %chlist, i32 0, i32 1
  %7 = ptrtoint ptr %allocated_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i46, ptr %allocated_channels, align 4
  %tobool4.not = icmp eq ptr %call8.i.i46, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %chlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chlist, align 4
  tail call void @kfree(ptr noundef %9) #7
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = lshr i32 %sub, 3
  %mul.i = and i32 %10, 536870908
  %11 = call ptr @memset(ptr %call8.i.i46, i32 0, i32 %mul.i)
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.end7.i.i.return_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %if.then5 ], [ -12, %if.end7.i.i.return_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_channel_list_free(ptr nocapture noundef readonly %chlist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %allocated_channels = getelementptr inbounds %struct.host1x_channel_list, ptr %chlist, i32 0, i32 1
  %0 = ptrtoint ptr %allocated_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %allocated_channels, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %chlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chlist, align 4
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_job_submit(ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.host1x_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %dev = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %channel_op.i = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %channel_op.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel_op.i, align 4
  %submit.i = getelementptr inbounds %struct.host1x_channel_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %submit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %submit.i, align 4
  %call.i = tail call i32 %11(ptr noundef %job) #7
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @host1x_channel_get(ptr noundef returned %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %channel, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %channel, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %channel, ptr %channel, i32 1, ptr elementtype(i32) %channel) #7, !srcloc !36
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !35

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !37

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %channel, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret ptr %channel
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @host1x_channel_get_index(ptr nocapture noundef readonly %host, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_list = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 23
  %0 = ptrtoint ptr %channel_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel_list, align 4
  %arrayidx = getelementptr %struct.host1x_channel, ptr %1, i32 %index
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %4 = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %arrayidx) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !37

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %arrayidx, i32 noundef 0) #7
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %.arrayidx = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %arrayidx
  ret ptr %.arrayidx
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_channel_stop(ptr noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.host1x_channel, ptr %channel, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %cdma = getelementptr inbounds %struct.host1x_channel, ptr %channel, i32 0, i32 6
  %cdma_op.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %cdma_op.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdma_op.i, align 4
  %stop.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop.i, align 4
  tail call void %9(ptr noundef %cdma) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_channel_put(ptr noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %channel, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %channel, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %channel, ptr %channel, i32 1, ptr elementtype(i32) %channel) #7, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %channel, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  %dev.i.i = getelementptr inbounds %struct.host1x_channel, ptr %channel, i32 0, i32 5
  %1 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %cdma.i.i = getelementptr inbounds %struct.host1x_channel, ptr %channel, i32 0, i32 6
  %cdma_op.i.i.i = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %cdma_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdma_op.i.i.i, align 4
  %stop.i.i.i = getelementptr inbounds %struct.host1x_cdma_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stop.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop.i.i.i, align 4
  tail call void %10(ptr noundef %cdma.i.i) #7
  %call2.i.i = tail call i32 @host1x_cdma_deinit(ptr noundef %cdma.i.i) #7
  %id.i.i = getelementptr inbounds %struct.host1x_channel, ptr %channel, i32 0, i32 1
  %11 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i.i, align 4
  %allocated_channels.i.i = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 23, i32 1
  %13 = ptrtoint ptr %allocated_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %allocated_channels.i.i, align 4
  tail call void @_clear_bit(i32 noundef %12, ptr noundef %14) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @host1x_channel_request(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %allocated_channels.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 23, i32 1
  %10 = ptrtoint ptr %allocated_channels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %allocated_channels.i, align 4
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %11, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %9)
  %cmp.not.i = icmp ult i32 %call.i, %9
  br i1 %cmp.not.i, label %acquire_unused_channel.exit, label %acquire_unused_channel.exit.thread

acquire_unused_channel.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 5
  br label %cleanup.sink.split

acquire_unused_channel.exit:                      ; preds = %entry
  %channel_list.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 23
  %12 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel_list.i, align 4
  %id.i = getelementptr %struct.host1x_channel, ptr %13, i32 %call.i, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %id.i, align 4
  %15 = ptrtoint ptr %allocated_channels.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %allocated_channels.i, align 4
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %16) #7
  %17 = ptrtoint ptr %channel_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel_list.i, align 4
  %arrayidx3.i = getelementptr %struct.host1x_channel, ptr %18, i32 %call.i
  %tobool.not = icmp eq ptr %arrayidx3.i, null
  br i1 %tobool.not, label %acquire_unused_channel.exit.cleanup_crit_edge, label %if.end

acquire_unused_channel.exit.cleanup_crit_edge:    ; preds = %acquire_unused_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %acquire_unused_channel.exit
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %arrayidx3.i, i32 noundef 4) #7
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %arrayidx3.i, align 4
  %submitlock = getelementptr %struct.host1x_channel, ptr %18, i32 %call.i, i32 2
  tail call void @__mutex_init(ptr noundef %submitlock, ptr noundef nonnull @.str, ptr noundef nonnull @host1x_channel_request.__key) #7
  %client2 = getelementptr %struct.host1x_channel, ptr %18, i32 %call.i, i32 4
  %20 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %client, ptr %client2, align 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr %struct.host1x_channel, ptr %18, i32 %call.i, i32 5
  %23 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dev4, align 4
  %id = getelementptr %struct.host1x_channel, ptr %18, i32 %call.i, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %channel_op.i = getelementptr inbounds %struct.host1x, ptr %5, i32 0, i32 17
  %26 = ptrtoint ptr %channel_op.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %channel_op.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i35 = tail call i32 %29(ptr noundef nonnull %arrayidx3.i, ptr noundef %5, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp = icmp slt i32 %call.i35, 0
  br i1 %cmp, label %if.end.fail_crit_edge, label %if.end7

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end7:                                          ; preds = %if.end
  %cdma = getelementptr %struct.host1x_channel, ptr %18, i32 %call.i, i32 6
  %call8 = tail call i32 @host1x_cdma_init(ptr noundef %cdma) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.fail_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

fail:                                             ; preds = %if.end7.fail_crit_edge, %if.end.fail_crit_edge
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %32 = ptrtoint ptr %allocated_channels.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %allocated_channels.i, align 4
  tail call void @_clear_bit(i32 noundef %31, ptr noundef %33) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fail, %acquire_unused_channel.exit.thread
  %dev.i.sink = phi ptr [ %dev.i, %acquire_unused_channel.exit.thread ], [ %dev, %fail ]
  %.str.6.sink = phi ptr [ @.str.6, %acquire_unused_channel.exit.thread ], [ @.str.1, %fail ]
  %34 = ptrtoint ptr %dev.i.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.sink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull %.str.6.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %acquire_unused_channel.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %acquire_unused_channel.exit.cleanup_crit_edge ], [ %arrayidx3.i, %if.end7.cleanup_crit_edge ], [ null, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_cdma_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_cdma_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_host1x_job_submit, !1, !"__ksymtab_host1x_job_submit", i1 false, i1 false}
!1 = !{!"../drivers/gpu/host1x/channel.c", i32 49, i32 1}
!2 = !{ptr @__ksymtab_host1x_channel_get, !3, !"__ksymtab_host1x_channel_get", i1 false, i1 false}
!3 = !{!"../drivers/gpu/host1x/channel.c", i32 57, i32 1}
!4 = !{ptr @__ksymtab_host1x_channel_stop, !5, !"__ksymtab_host1x_channel_stop", i1 false, i1 false}
!5 = !{!"../drivers/gpu/host1x/channel.c", i32 84, i32 1}
!6 = !{ptr @__ksymtab_host1x_channel_put, !7, !"__ksymtab_host1x_channel_put", i1 false, i1 false}
!7 = !{!"../drivers/gpu/host1x/channel.c", i32 103, i32 1}
!8 = !{ptr @host1x_channel_request.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/host1x/channel.c", i32 143, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/host1x/channel.c", i32 160, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @host1x_channel_request._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @host1x_channel_request._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_host1x_channel_request, !20, !"__ksymtab_host1x_channel_request", i1 false, i1 false}
!20 = !{!"../drivers/gpu/host1x/channel.c", i32 164, i32 1}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/host1x/channel.c", i32 113, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @acquire_unused_channel._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @acquire_unused_channel._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2148584146, i64 2148584178, i64 2148584207, i64 2148584241, i64 2148584272, i64 2148584295}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 1068129, i64 1068153, i64 1068174, i64 1068191, i64 1068208}
!39 = !{i64 2148672171}
!40 = !{i64 2148586611, i64 2148586643, i64 2148586672, i64 2148586706, i64 2148586737, i64 2148586760}
!41 = !{i64 2149869944}
