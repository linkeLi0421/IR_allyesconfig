; ModuleID = '/llk/IR_all_yes/drivers/gpu/host1x/intr.c_pt.bc'
source_filename = "../drivers/gpu/host1x/intr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.host1x_waitlist = type { %struct.list_head, %struct.kref, i32, i32, %struct.atomic_t, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_intr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@host1x_intr_add_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\014%s: NULL waiter\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"host1x_intr_add_action\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpu/host1x/intr.c\00", [38 x i8] zeroinitializer }, align 32
@host1x_intr_add_action._entry_ptr = internal global ptr @host1x_intr_add_action._entry, section ".printk_index", align 4
@host1x_intr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&host->intr_mutex\00", [46 x i8] zeroinitializer }, align 32
@host1x_intr_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&syncpt->intr.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"host1x_sp_%02u\00", [17 x i8] zeroinitializer }, align 32
@host1x_intr_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s cannot stop syncpt intr id=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"host1x_intr_stop\00", [47 x i8] zeroinitializer }, align 32
@host1x_intr_stop._entry_ptr = internal global ptr @host1x_intr_stop._entry, section ".printk_index", align 4
@action_handlers = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @action_submit_complete, ptr @action_wakeup, ptr @action_wakeup_interruptible, ptr @action_signal_fence], [16 x i8] zeroinitializer }, align 32
@__tracepoint_host1x_channel_submit_complete = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/host1x.h\00", [34 x i8] zeroinitializer }, align 32
@trace_host1x_channel_submit_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 219, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 287, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 293, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 297, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 347, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"action_handlers\00", align 1
@___asan_gen_.49 = private constant [29 x i8] c"../drivers/gpu/host1x/intr.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 134, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [33 x i8] c"../include/trace/events/host1x.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 179, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 108, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @host1x_intr_add_action._entry, ptr @host1x_intr_add_action._entry_ptr, ptr @host1x_intr_stop._entry, ptr @host1x_intr_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @host1x_intr_init.__key, ptr @.str.3, ptr @host1x_intr_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @action_handlers, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_intr_add_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_intr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_intr_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_intr_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @action_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_intr_add_action(ptr noundef %host, ptr noundef %syncpt, i32 noundef %thresh, i32 noundef %action, ptr noundef %data, ptr noundef %waiter, ptr noundef writeonly %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %waiter, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %waiter, ptr %waiter, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %waiter, ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount, align 4
  %tobool.not = icmp eq ptr %ref, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then1:                                         ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !39
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then1.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !40

if.then1.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then1
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end3_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !41

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end3_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then1.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then1.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end3

if.end3:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %thresh4 = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 2
  %5 = ptrtoint ptr %thresh4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %thresh, ptr %thresh4, align 4
  %action5 = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 3
  %6 = ptrtoint ptr %action5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %action, ptr %action5, align 4
  %state = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %state, align 4
  %data6 = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 5
  %8 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %data6, align 4
  %count = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 6
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %count, align 4
  %intr = getelementptr inbounds %struct.host1x_syncpt, ptr %syncpt, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %intr) #9
  %wait_head = getelementptr inbounds %struct.host1x_syncpt, ptr %syncpt, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %wait_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %wait_head, align 4
  %cmp.i.not = icmp eq ptr %11, %wait_head
  %12 = ptrtoint ptr %thresh4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %thresh4, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end3
  %queue.pn.i = phi ptr [ %wait_head, %if.end3 ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %pos.0.in.i = getelementptr inbounds %struct.list_head, ptr %queue.pn.i, i32 0, i32 1
  %14 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pos.0.i, %wait_head
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %thresh2.i = getelementptr inbounds %struct.host1x_waitlist, ptr %pos.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %thresh2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %thresh2.i, align 4
  %sub.i = sub i32 %16, %13
  %cmp3.i = icmp slt i32 %sub.i, 1
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %17 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pos.0.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %pos.0.i, ptr noundef %18) #9
  br i1 %call.i.i.i, label %add_waiter_to_queue.exit, label %if.then.i.if.end17_crit_edge

if.then.i.if.end17_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

for.end.i:                                        ; preds = %for.cond.i
  %call.i.i20.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %wait_head, ptr noundef %11) #9
  br i1 %call.i.i20.i, label %add_waiter_to_queue.exit.thread44, label %for.end.i.if.then12_crit_edge

for.end.i.if.then12_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

add_waiter_to_queue.exit.thread44:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i21.i47 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i21.i47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %waiter, ptr %prev1.i.i21.i47, align 4
  %20 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %waiter, align 4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %wait_head, ptr %prev.i, align 4
  %22 = ptrtoint ptr %wait_head to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %waiter, ptr %wait_head, align 4
  br label %if.then12

add_waiter_to_queue.exit:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i21.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %waiter, ptr %prev1.i.i21.i, align 4
  %24 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %waiter, align 4
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pos.0.i, ptr %prev.i, align 4
  %26 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %waiter, ptr %pos.0.i, align 4
  br label %if.end17

if.then12:                                        ; preds = %add_waiter_to_queue.exit.thread44, %for.end.i.if.then12_crit_edge
  %id = getelementptr inbounds %struct.host1x_syncpt, ptr %syncpt, i32 0, i32 1
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %intr_op.i = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 16
  %29 = ptrtoint ptr %intr_op.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intr_op.i, align 4
  %set_syncpt_threshold.i = getelementptr inbounds %struct.host1x_intr_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %set_syncpt_threshold.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_syncpt_threshold.i, align 4
  tail call void %32(ptr noundef %host, i32 noundef %28, i32 noundef %thresh) #9
  br i1 %cmp.i.not, label %if.then14, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  %35 = ptrtoint ptr %intr_op.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intr_op.i, align 4
  %enable_syncpt_intr.i = getelementptr inbounds %struct.host1x_intr_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %enable_syncpt_intr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %enable_syncpt_intr.i, align 4
  tail call void %38(ptr noundef %host, i32 noundef %34) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then12.if.end17_crit_edge, %add_waiter_to_queue.exit, %if.then.i.if.end17_crit_edge
  br i1 %tobool.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %waiter, ptr %ref, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %intr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_intr_put_ref(ptr nocapture noundef readonly %host, i32 noundef %id, ptr noundef %ref, i1 noundef zeroext %flush) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.host1x_waitlist, ptr %ref, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 0, i32 2, ptr elementtype(i32) %state) #9, !srcloc !43
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  %syncpt1 = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 3
  %1 = ptrtoint ptr %syncpt1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %syncpt1, align 4
  %intr = getelementptr %struct.host1x_syncpt, ptr %2, i32 %id, i32 9
  tail call void @_raw_spin_lock(ptr noundef %intr) #9
  %call.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i23

do.body.i.i.i23:                                  ; preds = %do.body.i.i.i23.do.body.i.i.i23_crit_edge, %atomic_cmpxchg.exit
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 2, i32 3, ptr elementtype(i32) %state) #9, !srcloc !43
  %asmresult.i.i.i21 = extractvalue { i32, i32 } %3, 0
  %tobool.not.i.i.i22 = icmp eq i32 %asmresult.i.i.i21, 0
  br i1 %tobool.not.i.i.i22, label %atomic_cmpxchg.exit25, label %do.body.i.i.i23.do.body.i.i.i23_crit_edge

do.body.i.i.i23.do.body.i.i.i23_crit_edge:        ; preds = %do.body.i.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i23

atomic_cmpxchg.exit25:                            ; preds = %do.body.i.i.i23
  %asmresult3.i.i.i24 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i.i24)
  %cmp = icmp eq i32 %asmresult3.i.i.i24, 2
  br i1 %cmp, label %if.then, label %atomic_cmpxchg.exit25.if.end_crit_edge

atomic_cmpxchg.exit25.if.end_crit_edge:           ; preds = %atomic_cmpxchg.exit25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %atomic_cmpxchg.exit25
  %call.i.i27 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ref) #9
  br i1 %call.i.i27, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ref, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ref, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %ref, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ref, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.host1x_waitlist, ptr %ref, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  tail call void @kfree(ptr noundef %ref) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %atomic_cmpxchg.exit25.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %intr) #9
  br i1 %flush, label %while.cond.preheader, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

while.cond.preheader:                             ; preds = %if.end
  %call.i.i2637 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #9
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp10.not38 = icmp eq i32 %14, 3
  br i1 %cmp10.not38, label %while.cond.preheader.if.end11_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end11_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @schedule() #9
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #9
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state, align 4
  %cmp10.not = icmp eq i32 %16, 3
  br i1 %cmp10.not, label %while.body.if.end11_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %while.body.if.end11_crit_edge, %while.cond.preheader.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %refcount12 = getelementptr inbounds %struct.host1x_waitlist, ptr %ref, i32 0, i32 1
  %call.i.i.i.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount12, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %refcount12, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount12, ptr %refcount12, i32 1, ptr elementtype(i32) %refcount12) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i.i29 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i29)
  %cmp.i.i.i.i30 = icmp eq i32 %asmresult.i.i.i.i.i.i.i29, 1
  br i1 %cmp.i.i.i.i30, label %if.then.i35, label %if.end5.i.i.i.i32

if.end5.i.i.i.i32:                                ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i29)
  %.not.i.i.i.i31 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i29, 0
  br i1 %.not.i.i.i.i31, label %if.end5.i.i.i.i32.kref_put.exit36_crit_edge, label %if.then10.i.i.i.i33, !prof !41

if.end5.i.i.i.i32.kref_put.exit36_crit_edge:      ; preds = %if.end5.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit36

if.then10.i.i.i.i33:                              ; preds = %if.end5.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount12, i32 noundef 3) #9
  br label %kref_put.exit36

if.then.i35:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  tail call void @kfree(ptr noundef %ref) #9
  br label %kref_put.exit36

kref_put.exit36:                                  ; preds = %if.then.i35, %if.then10.i.i.i.i33, %if.end5.i.i.i.i32.kref_put.exit36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_intr_init(ptr noundef %host, i32 noundef %irq_sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @host1x_syncpt_nb_pts(ptr noundef %host) #9
  %intr_mutex = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %intr_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @host1x_intr_init.__key) #9
  %intr_syncpt_irq = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 14
  %0 = ptrtoint ptr %intr_syncpt_irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %irq_sync, ptr %intr_syncpt_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp17.not = icmp eq i32 %call, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %syncpt1 = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %id.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %syncpt1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %syncpt1, align 4
  %intr = getelementptr %struct.host1x_syncpt, ptr %2, i32 %id.018, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %intr, ptr noundef nonnull @.str.5, ptr noundef nonnull @host1x_intr_init.__key.4, i16 noundef signext 3) #9
  %wait_head = getelementptr %struct.host1x_syncpt, ptr %2, i32 %id.018, i32 9, i32 1
  %3 = ptrtoint ptr %wait_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %wait_head, ptr %wait_head, align 4
  %prev.i = getelementptr %struct.host1x_syncpt, ptr %2, i32 %id.018, i32 9, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wait_head, ptr %prev.i, align 4
  %thresh_irq_name = getelementptr %struct.host1x_syncpt, ptr %2, i32 %id.018, i32 9, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %thresh_irq_name, i32 noundef 12, ptr noundef nonnull @.str.6, i32 noundef %id.018)
  %inc = add nuw i32 %id.018, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_nb_pts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @host1x_intr_deinit(ptr nocapture noundef %host) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_intr_start(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #9
  %intr_mutex = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %intr_mutex, i32 noundef 0) #9
  %sub = add i32 %call, 999999
  %div = udiv i32 %sub, 1000000
  %intr_op.i = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 16
  %2 = ptrtoint ptr %intr_op.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr_op.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %host, i32 noundef %div, ptr noundef nonnull @syncpt_thresh_work) #9
  tail call void @mutex_unlock(ptr noundef %intr_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @syncpt_thresh_work(ptr noundef %work) #0 align 64 {
entry:
  %completed.i = alloca [4 x %struct.list_head], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id4 = getelementptr i8, ptr %work, i32 -96
  %0 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id4, align 4
  %host5 = getelementptr i8, ptr %work, i32 -72
  %2 = ptrtoint ptr %host5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host5, align 4
  %syncpt6 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %syncpt6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %syncpt6, align 4
  %add.ptr7 = getelementptr %struct.host1x_syncpt, ptr %5, i32 %1
  %call = tail call i32 @host1x_syncpt_load(ptr noundef %add.ptr7) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %completed.i) #9
  %6 = getelementptr inbounds %struct.list_head, ptr %completed.i, i32 0, i32 1
  %7 = getelementptr inbounds [4 x %struct.list_head], ptr %completed.i, i32 0, i32 1
  %8 = getelementptr inbounds [4 x %struct.list_head], ptr %completed.i, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds [4 x %struct.list_head], ptr %completed.i, i32 0, i32 2
  %10 = getelementptr inbounds [4 x %struct.list_head], ptr %completed.i, i32 0, i32 2, i32 1
  %11 = getelementptr inbounds [4 x %struct.list_head], ptr %completed.i, i32 0, i32 3
  %12 = getelementptr inbounds [4 x %struct.list_head], ptr %completed.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %completed.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %completed.i, ptr %completed.i, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %completed.i, ptr %6, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %7, ptr %7, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %7, ptr %8, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %9, ptr %9, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %10, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %11, ptr %11, align 4
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %12, align 4
  %intr.i = getelementptr i8, ptr %work, i32 -64
  call void @_raw_spin_lock(ptr noundef %intr.i) #9
  %wait_head.i = getelementptr i8, ptr %work, i32 -20
  %21 = ptrtoint ptr %wait_head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wait_head.i, align 4
  %cmp.not55.i.i = icmp eq ptr %22, %wait_head.i
  br i1 %cmp.not55.i.i, label %entry.remove_completed_waiters.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.remove_completed_waiters.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_completed_waiters.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %waiter.056.i.i = phi ptr [ %next.058.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %22, %entry.for.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %waiter.056.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %next.058.i.i = load ptr, ptr %waiter.056.i.i, align 4
  %thresh.i.i = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter.056.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %thresh.i.i, align 4
  %sub.i.i = sub i32 %25, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp7.i.i, label %for.body.i.i.remove_completed_waiters.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.remove_completed_waiters.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_completed_waiters.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %action.i.i = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter.056.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %action.i.i, align 4
  %add.ptr8.i.i = getelementptr %struct.list_head, ptr %completed.i, i32 %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10.i.i = icmp eq i32 %27, 0
  br i1 %cmp10.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end20.i.i_crit_edge

if.end.i.i.if.end20.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %28 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %add.ptr8.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %29, %add.ptr8.i.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i.if.end20.i.i_crit_edge, label %if.then11.i.i

land.lhs.true.i.i.if.end20.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %6, align 4
  %data.i.i = getelementptr inbounds %struct.host1x_waitlist, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %data16.i.i = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter.056.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %data16.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data16.i.i, align 4
  %cmp17.i.i = icmp eq ptr %33, %35
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.then11.i.i.if.end20.i.i_crit_edge

if.then11.i.i.if.end20.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %count.i.i = getelementptr inbounds %struct.host1x_waitlist, ptr %31, i32 0, i32 6
  %36 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i.i, align 4
  %inc.i.i = add i32 %37, 1
  store i32 %inc.i.i, ptr %count.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.then11.i.i.if.end20.i.i_crit_edge, %land.lhs.true.i.i.if.end20.i.i_crit_edge, %if.end.i.i.if.end20.i.i_crit_edge
  %dest.0.i.i = phi ptr [ %add.ptr8.i.i, %land.lhs.true.i.i.if.end20.i.i_crit_edge ], [ null, %if.then18.i.i ], [ %add.ptr8.i.i, %if.then11.i.i.if.end20.i.i_crit_edge ], [ %add.ptr8.i.i, %if.end.i.i.if.end20.i.i_crit_edge ]
  %state.i.i = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter.056.i.i, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @llvm.prefetch.p0(ptr %state.i.i, i32 1, i32 3, i32 1) #9
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i.i, ptr %state.i.i, i32 1, ptr elementtype(i32) %state.i.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult.i.i.i.i.i.i)
  %cmp22.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 3
  %tobool23.not.i.i = icmp eq ptr %dest.0.i.i, null
  %or.cond.i.i = select i1 %cmp22.i.i, i1 true, i1 %tobool23.not.i.i
  %call.i.i49.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %waiter.056.i.i) #9
  br i1 %or.cond.i.i, label %if.then24.i.i, label %if.else.i.i

if.then24.i.i:                                    ; preds = %if.end20.i.i
  br i1 %call.i.i49.i.i, label %if.end.i.i.i.i, label %if.then24.i.i.list_del.exit.i.i_crit_edge

if.then24.i.i.list_del.exit.i.i_crit_edge:        ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %waiter.056.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i.i, align 4
  %41 = ptrtoint ptr %waiter.056.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %waiter.056.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then24.i.i.list_del.exit.i.i_crit_edge
  %45 = ptrtoint ptr %waiter.056.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter.056.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %waiter.056.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter.056.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !41

if.end5.i.i.i.i.i.i.for.inc.i.i_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %for.inc.i.i

if.then.i.i.i:                                    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void @kfree(ptr noundef %waiter.056.i.i) #9
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.end20.i.i
  br i1 %call.i.i49.i.i, label %if.end.i.i53.i.i, label %if.else.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.else.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i.i

if.end.i.i53.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i51.i.i = getelementptr inbounds %struct.list_head, ptr %waiter.056.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i51.i.i, align 4
  %50 = ptrtoint ptr %waiter.056.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %waiter.056.i.i, align 4
  %prev1.i.i.i52.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i52.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i52.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i53.i.i, %if.else.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %prev.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %dest.0.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %waiter.056.i.i, ptr noundef %55, ptr noundef nonnull %dest.0.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge

__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %waiter.056.i.i, ptr %prev.i2.i.i.i, align 4
  %57 = ptrtoint ptr %waiter.056.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dest.0.i.i, ptr %waiter.056.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %waiter.056.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %waiter.056.i.i, ptr %55, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.for.inc.i.i_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.inc.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %next.058.i.i, %wait_head.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.remove_completed_waiters.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.remove_completed_waiters.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_completed_waiters.exit.i

remove_completed_waiters.exit.i:                  ; preds = %for.inc.i.i.remove_completed_waiters.exit.i_crit_edge, %for.body.i.i.remove_completed_waiters.exit.i_crit_edge, %entry.remove_completed_waiters.exit.i_crit_edge
  %60 = ptrtoint ptr %wait_head.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %wait_head.i, align 4
  %cmp.i.not.i = icmp eq ptr %61, %wait_head.i
  %62 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id4, align 4
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %remove_completed_waiters.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %intr_op.i.i = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 16
  %64 = ptrtoint ptr %intr_op.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %intr_op.i.i, align 4
  %disable_syncpt_intr.i.i = getelementptr inbounds %struct.host1x_intr_ops, ptr %65, i32 0, i32 3
  br label %if.end.i

if.else.i:                                        ; preds = %remove_completed_waiters.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %thresh1.i.i = getelementptr inbounds %struct.host1x_waitlist, ptr %61, i32 0, i32 2
  %66 = ptrtoint ptr %thresh1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %thresh1.i.i, align 4
  %intr_op.i.i.i = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 16
  %68 = ptrtoint ptr %intr_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %intr_op.i.i.i, align 4
  %set_syncpt_threshold.i.i.i = getelementptr inbounds %struct.host1x_intr_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %set_syncpt_threshold.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_syncpt_threshold.i.i.i, align 4
  call void %71(ptr noundef %3, i32 noundef %63, i32 noundef %67) #9
  %72 = ptrtoint ptr %intr_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %intr_op.i.i.i, align 4
  %enable_syncpt_intr.i.i.i = getelementptr inbounds %struct.host1x_intr_ops, ptr %73, i32 0, i32 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %enable_syncpt_intr.i.i.sink.i = phi ptr [ %enable_syncpt_intr.i.i.i, %if.else.i ], [ %disable_syncpt_intr.i.i, %if.then.i ]
  %74 = ptrtoint ptr %enable_syncpt_intr.i.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %enable_syncpt_intr.i.i.sink.i, align 4
  call void %75(ptr noundef %3, i32 noundef %63) #9
  call void @_raw_spin_unlock(ptr noundef %intr.i) #9
  br label %for.body.i1.i

for.body.i1.i:                                    ; preds = %for.end.i.i.for.body.i1.i_crit_edge, %if.end.i
  %head.057.i.i = phi ptr [ %completed.i, %if.end.i ], [ %incdec.ptr.i.i, %for.end.i.i.for.body.i1.i_crit_edge ]
  %i.056.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i18.i, %for.end.i.i.for.body.i1.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @action_handlers, i32 0, i32 %i.056.i.i
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i, align 4
  %78 = ptrtoint ptr %head.057.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.057.i.i, align 4
  %cmp8.not53.i.i = icmp eq ptr %79, %head.057.i.i
  br i1 %cmp8.not53.i.i, label %for.body.i1.i.for.end.i.i_crit_edge, label %for.body.i1.i.for.body9.i.i_crit_edge

for.body.i1.i.for.body9.i.i_crit_edge:            ; preds = %for.body.i1.i
  br label %for.body9.i.i

for.body.i1.i.for.end.i.i_crit_edge:              ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body9.i.i:                                    ; preds = %kref_put.exit.i.i.for.body9.i.i_crit_edge, %for.body.i1.i.for.body9.i.i_crit_edge
  %waiter.054.i.i = phi ptr [ %next.055.i.i, %kref_put.exit.i.i.for.body9.i.i_crit_edge ], [ %79, %for.body.i1.i.for.body9.i.i_crit_edge ]
  %80 = ptrtoint ptr %waiter.054.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %next.055.i.i = load ptr, ptr %waiter.054.i.i, align 4
  %call.i.i51.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %waiter.054.i.i) #9
  br i1 %call.i.i51.i.i, label %if.end.i.i.i4.i, label %for.body9.i.i.list_del.exit.i8.i_crit_edge

for.body9.i.i.list_del.exit.i8.i_crit_edge:       ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i8.i

if.end.i.i.i4.i:                                  ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i2.i = getelementptr inbounds %struct.list_head, ptr %waiter.054.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i2.i, align 4
  %83 = ptrtoint ptr %waiter.054.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %waiter.054.i.i, align 4
  %prev1.i.i.i.i3.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i3.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del.exit.i8.i

list_del.exit.i8.i:                               ; preds = %if.end.i.i.i4.i, %for.body9.i.i.list_del.exit.i8.i_crit_edge
  %87 = ptrtoint ptr %waiter.054.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter.054.i.i, align 4
  %prev.i.i5.i = getelementptr inbounds %struct.list_head, ptr %waiter.054.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i5.i, align 4
  call void %77(ptr noundef %waiter.054.i.i) #9
  %state.i6.i = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter.054.i.i, i32 0, i32 4
  %call.i.i.i7.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i6.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  call void @llvm.prefetch.p0(ptr %state.i6.i, i32 1, i32 3, i32 1) #9
  %89 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 3, ptr %state.i6.i) #9, !srcloc !52
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %89, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp11.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp11.not.i.i, label %list_del.exit.i8.i.if.end.i13.i_crit_edge, label %do.end.i.i, !prof !41

list_del.exit.i8.i.if.end.i13.i_crit_edge:        ; preds = %list_del.exit.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i13.i

do.end.i.i:                                       ; preds = %list_del.exit.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 154, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i13.i

if.end.i13.i:                                     ; preds = %do.end.i.i, %list_del.exit.i8.i.if.end.i13.i_crit_edge
  %refcount.i9.i = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter.054.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i9.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @llvm.prefetch.p0(ptr %refcount.i9.i, i32 1, i32 3, i32 1) #9
  %90 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i9.i, ptr %refcount.i9.i, i32 1, ptr elementtype(i32) %refcount.i9.i) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i11.i = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i11.i)
  %cmp.i.i.i.i.i12.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i11.i, 1
  br i1 %cmp.i.i.i.i.i12.i, label %if.then.i.i17.i, label %if.end5.i.i.i.i.i15.i

if.end5.i.i.i.i.i15.i:                            ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i11.i)
  %.not.i.i.i.i.i14.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i11.i, 0
  br i1 %.not.i.i.i.i.i14.i, label %if.end5.i.i.i.i.i15.i.kref_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i16.i, !prof !41

if.end5.i.i.i.i.i15.i.kref_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit.i.i

if.then10.i.i.i.i.i16.i:                          ; preds = %if.end5.i.i.i.i.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i9.i, i32 noundef 3) #9
  br label %kref_put.exit.i.i

if.then.i.i17.i:                                  ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void @kfree(ptr noundef %waiter.054.i.i) #9
  br label %kref_put.exit.i.i

kref_put.exit.i.i:                                ; preds = %if.then.i.i17.i, %if.then10.i.i.i.i.i16.i, %if.end5.i.i.i.i.i15.i.kref_put.exit.i.i_crit_edge
  %cmp8.not.i.i = icmp eq ptr %next.055.i.i, %head.057.i.i
  br i1 %cmp8.not.i.i, label %kref_put.exit.i.i.for.end.i.i_crit_edge, label %kref_put.exit.i.i.for.body9.i.i_crit_edge

kref_put.exit.i.i.for.body9.i.i_crit_edge:        ; preds = %kref_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9.i.i

kref_put.exit.i.i.for.end.i.i_crit_edge:          ; preds = %kref_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %kref_put.exit.i.i.for.end.i.i_crit_edge, %for.body.i1.i.for.end.i.i_crit_edge
  %inc.i18.i = add nuw nsw i32 %i.056.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.list_head, ptr %head.057.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i18.i, 4
  br i1 %exitcond.not.i.i, label %process_wait_list.exit, label %for.end.i.i.for.body.i1.i_crit_edge

for.end.i.i.for.body.i1.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i1.i

process_wait_list.exit:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %completed.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_intr_stop(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %syncpt1 = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %syncpt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %syncpt1, align 4
  %call = tail call i32 @host1x_syncpt_nb_pts(ptr noundef %host) #9
  %intr_mutex = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %intr_mutex, i32 noundef 0) #9
  %intr_op.i = getelementptr inbounds %struct.host1x, ptr %host, i32 0, i32 16
  %2 = ptrtoint ptr %intr_op.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr_op.i, align 4
  %disable_all_syncpt_intrs.i = getelementptr inbounds %struct.host1x_intr_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %disable_all_syncpt_intrs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_all_syncpt_intrs.i, align 4
  tail call void %5(ptr noundef %host) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp67.not = icmp eq i32 %call, 0
  br i1 %cmp67.not, label %entry.for.end34_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end34

for.body:                                         ; preds = %for.inc33.critedge.for.body_crit_edge, %entry.for.body_crit_edge
  %id.068 = phi i32 [ %inc, %for.inc33.critedge.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %wait_head = getelementptr %struct.host1x_syncpt, ptr %1, i32 %id.068, i32 9, i32 1
  %6 = ptrtoint ptr %wait_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait_head, align 4
  %cmp12.not64 = icmp eq ptr %7, %wait_head
  br i1 %cmp12.not64, label %for.body.for.end_crit_edge, label %for.body.for.body13_crit_edge

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %waiter.065 = phi ptr [ %next.066, %for.inc.for.body13_crit_edge ], [ %7, %for.body.for.body13_crit_edge ]
  %8 = ptrtoint ptr %waiter.065 to i32
  call void @__asan_load4_noabort(i32 %8)
  %next.066 = load ptr, ptr %waiter.065, align 4
  %state = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter.065, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %for.body13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 2, i32 3, ptr elementtype(i32) %state) #9, !srcloc !43
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i.i)
  %cmp15 = icmp eq i32 %asmresult3.i.i.i, 2
  br i1 %cmp15, label %if.then, label %atomic_cmpxchg.exit.for.inc_crit_edge

atomic_cmpxchg.exit.for.inc_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %atomic_cmpxchg.exit
  %call.i.i60 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %waiter.065) #9
  br i1 %call.i.i60, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %waiter.065, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %waiter.065 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %waiter.065, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %16 = ptrtoint ptr %waiter.065 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter.065, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %waiter.065, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter.065, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %for.inc

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  tail call void @kfree(ptr noundef %waiter.065) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %atomic_cmpxchg.exit.for.inc_crit_edge
  %cmp12.not = icmp eq ptr %next.066, %wait_head
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %19 = ptrtoint ptr %wait_head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %wait_head, align 4
  %cmp.i.not = icmp eq ptr %20, %wait_head
  br i1 %cmp.i.not, label %for.inc33.critedge, label %if.then27

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %intr_mutex) #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %id.068) #12
  br label %cleanup37

for.inc33.critedge:                               ; preds = %for.end
  %inc = add nuw i32 %id.068, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc33.critedge.for.end34_crit_edge, label %for.inc33.critedge.for.body_crit_edge

for.inc33.critedge.for.body_crit_edge:            ; preds = %for.inc33.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc33.critedge.for.end34_crit_edge:           ; preds = %for.inc33.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end34

for.end34:                                        ; preds = %for.inc33.critedge.for.end34_crit_edge, %entry.for.end34_crit_edge
  %21 = ptrtoint ptr %intr_op.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intr_op.i, align 4
  %free_syncpt_irq.i = getelementptr inbounds %struct.host1x_intr_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %free_syncpt_irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free_syncpt_irq.i, align 4
  %call.i = tail call i32 %24(ptr noundef %host) #9
  tail call void @mutex_unlock(ptr noundef %intr_mutex) #9
  br label %cleanup37

cleanup37:                                        ; preds = %for.end34, %if.then27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @action_submit_complete(ptr nocapture noundef readonly %waiter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cdma = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 6
  tail call void @host1x_cdma_update(ptr noundef %cdma) #9
  %dev = getelementptr inbounds %struct.host1x_channel, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %count = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 6
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %thresh = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 2
  %10 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %thresh, align 4
  tail call fastcc void @trace_host1x_channel_submit_complete(ptr noundef %retval.0.i, i32 noundef %9, i32 noundef %11)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @action_wakeup(ptr nocapture noundef readonly %waiter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @__wake_up(ptr noundef %1, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @action_wakeup_interruptible(ptr nocapture noundef readonly %waiter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @__wake_up(ptr noundef %1, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @action_signal_fence(ptr nocapture noundef readonly %waiter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.host1x_waitlist, ptr %waiter, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @host1x_fence_signal(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_cdma_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_host1x_channel_submit_complete(ptr noundef %name, i32 noundef %count, i32 noundef %thresh) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit_complete, i32 0, i32 1), ptr blockaddress(@trace_host1x_channel_submit_complete, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !54

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !41

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %call42 = tail call i32 @__traceiter_host1x_channel_submit_complete(ptr noundef null, ptr noundef %name, i32 noundef %count, i32 noundef %thresh) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !41

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit_complete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit_complete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_host1x_channel_submit_complete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_host1x_channel_submit_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 198, ptr noundef nonnull @.str.10) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_channel_submit_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_fence_signal(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/host1x/intr.c", i32 219, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @host1x_intr_add_action._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @host1x_intr_add_action._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @host1x_intr_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/host1x/intr.c", i32 287, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @host1x_intr_init.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/host1x/intr.c", i32 293, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/host1x/intr.c", i32 297, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/host1x/intr.c", i32 347, i32 4}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @host1x_intr_stop._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @host1x_intr_stop._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @action_handlers, !20, !"action_handlers", i1 false, i1 false}
!20 = !{!"../drivers/gpu/host1x/intr.c", i32 134, i32 29}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/trace/events/host1x.h", i32 179, i32 1}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!25 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2148248135, i64 2148248167, i64 2148248196, i64 2148248230, i64 2148248261, i64 2148248284}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2148348428}
!43 = !{i64 730341, i64 730365, i64 730386, i64 730403, i64 730420}
!44 = !{i64 2148348654}
!45 = !{i64 2148336136}
!46 = !{i64 2148250600, i64 2148250632, i64 2148250661, i64 2148250695, i64 2148250726, i64 2148250749}
!47 = !{i64 2149818030}
!48 = !{i64 2148332016}
!49 = !{i64 2148247325, i64 2148247357, i64 2148247386, i64 2148247420, i64 2148247451, i64 2148247474}
!50 = !{i64 2148332245}
!51 = !{i64 2148506445}
!52 = !{i64 753373, i64 753390, i64 753414, i64 753440, i64 753458}
!53 = !{i64 2148506815}
!54 = !{i64 2148728420, i64 2148728425, i64 2148728438, i64 2148728482, i64 2148728516, i64 2148728537}
!55 = !{i64 2153235974}
!56 = !{i64 2153236235}
!57 = !{i64 2149304506}
!58 = !{i64 2149305542}
