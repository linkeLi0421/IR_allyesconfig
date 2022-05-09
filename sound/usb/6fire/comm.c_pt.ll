; ModuleID = '/llk/IR_all_yes/sound/usb/6fire/comm.c_pt.bc'
source_filename = "../sound/usb/6fire/comm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comm_runtime = type { ptr, %struct.urb, ptr, i8, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.sfire_chip = type { ptr, ptr, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.midi_runtime = type { ptr, ptr, ptr, i8, %struct.spinlock, %struct.spinlock, ptr, %struct.urb, i8, ptr, i32, ptr }

@usb6fire_comm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 178, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot create comm data receiver.\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb6fire_comm_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/usb/6fire/comm.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb6fire_comm_init._entry_ptr = internal global ptr @usb6fire_comm_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usb6fire_comm_receiver_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 51, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"comm data receiver aborted.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"usb6fire_comm_receiver_handler\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usb6fire_comm_receiver_handler._entry_ptr = internal global ptr @usb6fire_comm_receiver_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 18, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 18, i64 32, i64 33, i64 34]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 178, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [26 x i8] c"../sound/usb/6fire/comm.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 50, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @usb6fire_comm_init._entry, ptr @usb6fire_comm_init._entry_ptr, ptr @usb6fire_comm_receiver_handler._entry, ptr @usb6fire_comm_receiver_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_comm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_comm_receiver_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb6fire_comm_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 148) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 64) #8
  %receiver_buffer = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %receiver_buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i47, ptr %receiver_buffer, align 8
  %tobool3.not = icmp eq ptr %call7.i.i47, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %receiver = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 1
  %serial = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %serial to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %serial, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %chip, ptr %call7.i.i, align 8
  tail call void @usb_init_urb(ptr noundef %receiver) #5
  %init_urb = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %init_urb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @usb6fire_comm_init_urb, ptr %init_urb, align 8
  %write8 = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %write8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @usb6fire_comm_write8, ptr %write8, align 4
  %write16 = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %write16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @usb6fire_comm_write16, ptr %write16, align 8
  %8 = ptrtoint ptr %receiver_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %receiver_buffer, align 8
  %transfer_buffer = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 1, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 1, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 64, ptr %transfer_buffer_length, align 8
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %or9 = or i32 %shl.i, 1073774720
  %pipe = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 1, i32 10
  %16 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or9, ptr %pipe, align 4
  %dev11 = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %13, ptr %dev11, align 4
  %complete = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 1, i32 28
  %18 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @usb6fire_comm_receiver_handler, ptr %complete, align 4
  %context = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 1, i32 27
  %19 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %context, align 8
  %interval = getelementptr inbounds %struct.comm_runtime, ptr %call7.i.i, i32 0, i32 1, i32 25
  %20 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %interval, align 8
  %call12 = tail call i32 @usb_submit_urb(ptr noundef %receiver, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %receiver_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %receiver_buffer, align 8
  tail call void @kfree(ptr noundef %22) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  %dev16 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %comm = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 8
  %25 = ptrtoint ptr %comm to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %comm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then13, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then13 ], [ 0, %if.end17 ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_init_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_comm_init_urb(ptr nocapture noundef readonly %rt, ptr noundef %urb, ptr noundef %buffer, ptr noundef %context, ptr noundef %handler) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_init_urb(ptr noundef %urb) #5
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buffer, ptr %transfer_buffer, align 4
  %1 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, 1073774592
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %pipe, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %handler, ptr %complete, align 4
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %9 = ptrtoint ptr %context1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %context, ptr %context1, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %interval, align 4
  %11 = load ptr, ptr %rt, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev4 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %14 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_comm_write8(ptr nocapture noundef readonly %rt, i8 noundef zeroext %request, i8 noundef zeroext %reg, i8 noundef zeroext %value) #0 align 64 {
entry:
  %actual_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 13) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %call7.i, i32 2
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %request, ptr %arrayidx1.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %call7.i, i32 3
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx2.i, align 1
  %4 = zext i8 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %request, label %if.end.usb6fire_comm_init_buffer.exit_crit_edge [
    i8 2, label %if.end.sw.epilog.sink.split.sink.split.i_crit_edge
    i8 18, label %sw.bb7.i
    i8 32, label %if.end.sw.epilog.sink.split.i_crit_edge
    i8 33, label %if.end.sw.epilog.sink.split.i_crit_edge6
    i8 34, label %if.end.sw.epilog.sink.split.i_crit_edge7
  ]

if.end.sw.epilog.sink.split.i_crit_edge7:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

if.end.sw.epilog.sink.split.i_crit_edge6:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

if.end.sw.epilog.sink.split.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

if.end.sw.epilog.sink.split.sink.split.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.sink.split.i

if.end.usb6fire_comm_init_buffer.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb6fire_comm_init_buffer.exit

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.i = getelementptr i8, ptr %call7.i, i32 1
  %5 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 11, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %call7.i, i32 4
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %call7.i, i32 5
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %call7.i, i32 6
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %arrayidx11.i, align 2
  %arrayidx12.i = getelementptr i8, ptr %call7.i, i32 7
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx12.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %call7.i, i32 8
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx13.i, align 8
  br label %sw.epilog.sink.split.sink.split.i

sw.epilog.sink.split.sink.split.i:                ; preds = %sw.bb7.i, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge
  %.sink5.i = phi i32 [ 9, %sw.bb7.i ], [ 1, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink4.i = phi i8 [ 0, %sw.bb7.i ], [ 5, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink3.ph.i = phi i32 [ 10, %sw.bb7.i ], [ 4, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink2.ph.i = phi i8 [ -98, %sw.bb7.i ], [ %reg, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink1.ph.i = phi i32 [ 11, %sw.bb7.i ], [ 5, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %reg.sink.ph.i = phi i8 [ %reg, %sw.bb7.i ], [ %value, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 12, %sw.bb7.i ], [ 6, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %vl.sink.ph.i = phi i8 [ %value, %sw.bb7.i ], [ 0, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %arrayidx3.i = getelementptr i8, ptr %call7.i, i32 %.sink5.i
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink4.i, ptr %arrayidx3.i, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.epilog.sink.split.sink.split.i, %if.end.sw.epilog.sink.split.i_crit_edge, %if.end.sw.epilog.sink.split.i_crit_edge6, %if.end.sw.epilog.sink.split.i_crit_edge7
  %.sink3.i = phi i32 [ 1, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 1, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ 1, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %.sink3.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %.sink2.i = phi i8 [ 4, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 4, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ 4, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %.sink2.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %.sink1.i = phi i32 [ 4, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 4, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ 4, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %.sink1.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %reg.sink.i = phi i8 [ %reg, %if.end.sw.epilog.sink.split.i_crit_edge ], [ %reg, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ %reg, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %reg.sink.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %.sink.i = phi i32 [ 5, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 5, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ 5, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %.sink.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %vl.sink.i = phi i8 [ %value, %if.end.sw.epilog.sink.split.i_crit_edge ], [ %value, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ %value, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %vl.sink.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %arrayidx19.i = getelementptr i8, ptr %call7.i, i32 %.sink3.i
  %12 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink2.i, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %call7.i, i32 %.sink1.i
  %13 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %reg.sink.i, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %call7.i, i32 %.sink.i
  %14 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %vl.sink.i, ptr %arrayidx21.i, align 1
  br label %usb6fire_comm_init_buffer.exit

usb6fire_comm_init_buffer.exit:                   ; preds = %sw.epilog.sink.split.i, %if.end.usb6fire_comm_init_buffer.exit_crit_edge
  %15 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rt, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i) #5
  %19 = ptrtoint ptr %actual_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %actual_len.i, align 4, !annotation !23
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, 1073774592
  %arrayidx.i = getelementptr i8, ptr %call7.i, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %call1.i = call i32 @usb_interrupt_msg(ptr noundef %18, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef %add.i, ptr noundef nonnull %actual_len.i, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %usb6fire_comm_init_buffer.exit.usb6fire_comm_send_buffer.exit_crit_edge, label %if.else.i

usb6fire_comm_init_buffer.exit.usb6fire_comm_send_buffer.exit_crit_edge: ; preds = %usb6fire_comm_init_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb6fire_comm_send_buffer.exit

if.else.i:                                        ; preds = %usb6fire_comm_init_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %actual_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual_len.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %27 to i32
  %add5.i = add nuw nsw i32 %conv4.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add5.i)
  %cmp6.not.i = icmp eq i32 %25, %add5.i
  %..i = select i1 %cmp6.not.i, i32 0, i32 -5
  br label %usb6fire_comm_send_buffer.exit

usb6fire_comm_send_buffer.exit:                   ; preds = %if.else.i, %usb6fire_comm_init_buffer.exit.usb6fire_comm_send_buffer.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %usb6fire_comm_init_buffer.exit.usb6fire_comm_send_buffer.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i) #5
  call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %usb6fire_comm_send_buffer.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %usb6fire_comm_send_buffer.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_comm_write16(ptr nocapture noundef readonly %rt, i8 noundef zeroext %request, i8 noundef zeroext %reg, i8 noundef zeroext %vl, i8 noundef zeroext %vh) #0 align 64 {
entry:
  %actual_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 13) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %call7.i, i32 2
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %request, ptr %arrayidx1.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %call7.i, i32 3
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx2.i, align 1
  %4 = zext i8 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %request, label %if.end.usb6fire_comm_init_buffer.exit_crit_edge [
    i8 2, label %if.end.sw.epilog.sink.split.sink.split.i_crit_edge
    i8 18, label %sw.bb7.i
    i8 32, label %if.end.sw.epilog.sink.split.i_crit_edge
    i8 33, label %if.end.sw.epilog.sink.split.i_crit_edge6
    i8 34, label %if.end.sw.epilog.sink.split.i_crit_edge7
  ]

if.end.sw.epilog.sink.split.i_crit_edge7:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

if.end.sw.epilog.sink.split.i_crit_edge6:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

if.end.sw.epilog.sink.split.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

if.end.sw.epilog.sink.split.sink.split.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.sink.split.i

if.end.usb6fire_comm_init_buffer.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb6fire_comm_init_buffer.exit

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.i = getelementptr i8, ptr %call7.i, i32 1
  %5 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 11, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %call7.i, i32 4
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %call7.i, i32 5
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %call7.i, i32 6
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %arrayidx11.i, align 2
  %arrayidx12.i = getelementptr i8, ptr %call7.i, i32 7
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx12.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %call7.i, i32 8
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx13.i, align 8
  br label %sw.epilog.sink.split.sink.split.i

sw.epilog.sink.split.sink.split.i:                ; preds = %sw.bb7.i, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge
  %.sink5.i = phi i32 [ 9, %sw.bb7.i ], [ 1, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink4.i = phi i8 [ 0, %sw.bb7.i ], [ 5, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink3.ph.i = phi i32 [ 10, %sw.bb7.i ], [ 4, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink2.ph.i = phi i8 [ -98, %sw.bb7.i ], [ %reg, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink1.ph.i = phi i32 [ 11, %sw.bb7.i ], [ 5, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %reg.sink.ph.i = phi i8 [ %reg, %sw.bb7.i ], [ %vl, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 12, %sw.bb7.i ], [ 6, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %vl.sink.ph.i = phi i8 [ %vl, %sw.bb7.i ], [ %vh, %if.end.sw.epilog.sink.split.sink.split.i_crit_edge ]
  %arrayidx3.i = getelementptr i8, ptr %call7.i, i32 %.sink5.i
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink4.i, ptr %arrayidx3.i, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.epilog.sink.split.sink.split.i, %if.end.sw.epilog.sink.split.i_crit_edge, %if.end.sw.epilog.sink.split.i_crit_edge6, %if.end.sw.epilog.sink.split.i_crit_edge7
  %.sink3.i = phi i32 [ 1, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 1, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ 1, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %.sink3.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %.sink2.i = phi i8 [ 4, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 4, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ 4, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %.sink2.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %.sink1.i = phi i32 [ 4, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 4, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ 4, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %.sink1.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %reg.sink.i = phi i8 [ %reg, %if.end.sw.epilog.sink.split.i_crit_edge ], [ %reg, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ %reg, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %reg.sink.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %.sink.i = phi i32 [ 5, %if.end.sw.epilog.sink.split.i_crit_edge ], [ 5, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ 5, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %.sink.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %vl.sink.i = phi i8 [ %vl, %if.end.sw.epilog.sink.split.i_crit_edge ], [ %vl, %if.end.sw.epilog.sink.split.i_crit_edge6 ], [ %vl, %if.end.sw.epilog.sink.split.i_crit_edge7 ], [ %vl.sink.ph.i, %sw.epilog.sink.split.sink.split.i ]
  %arrayidx19.i = getelementptr i8, ptr %call7.i, i32 %.sink3.i
  %12 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink2.i, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %call7.i, i32 %.sink1.i
  %13 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %reg.sink.i, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %call7.i, i32 %.sink.i
  %14 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %vl.sink.i, ptr %arrayidx21.i, align 1
  br label %usb6fire_comm_init_buffer.exit

usb6fire_comm_init_buffer.exit:                   ; preds = %sw.epilog.sink.split.i, %if.end.usb6fire_comm_init_buffer.exit_crit_edge
  %15 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rt, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i) #5
  %19 = ptrtoint ptr %actual_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %actual_len.i, align 4, !annotation !23
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, 1073774592
  %arrayidx.i = getelementptr i8, ptr %call7.i, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %call1.i = call i32 @usb_interrupt_msg(ptr noundef %18, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef %add.i, ptr noundef nonnull %actual_len.i, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %usb6fire_comm_init_buffer.exit.usb6fire_comm_send_buffer.exit_crit_edge, label %if.else.i

usb6fire_comm_init_buffer.exit.usb6fire_comm_send_buffer.exit_crit_edge: ; preds = %usb6fire_comm_init_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb6fire_comm_send_buffer.exit

if.else.i:                                        ; preds = %usb6fire_comm_init_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %actual_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual_len.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %27 to i32
  %add5.i = add nuw nsw i32 %conv4.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add5.i)
  %cmp6.not.i = icmp eq i32 %25, %add5.i
  %..i = select i1 %cmp6.not.i, i32 0, i32 -5
  br label %usb6fire_comm_send_buffer.exit

usb6fire_comm_send_buffer.exit:                   ; preds = %if.else.i, %usb6fire_comm_init_buffer.exit.usb6fire_comm_send_buffer.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %usb6fire_comm_init_buffer.exit.usb6fire_comm_send_buffer.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i) #5
  call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %usb6fire_comm_send_buffer.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %usb6fire_comm_send_buffer.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_comm_receiver_handler(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %midi = getelementptr inbounds %struct.sfire_chip, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %midi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %midi, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  %receiver_buffer = getelementptr inbounds %struct.comm_runtime, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %receiver_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %receiver_buffer, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %11)
  %cmp = icmp ne i8 %11, 16
  %tobool3.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.then.if.end10_crit_edge, label %if.then4

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %in_received = getelementptr inbounds %struct.midi_runtime, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %in_received to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in_received, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 2
  %arrayidx7 = getelementptr i8, ptr %9, i32 1
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %15 to i32
  tail call void %13(ptr noundef nonnull %5, ptr noundef %add.ptr, i32 noundef %conv8) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %shutdown = getelementptr inbounds %struct.sfire_chip, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %shutdown, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not = icmp eq i8 %19, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then13:                                        ; preds = %if.end10
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %21 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %actual_length, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %do.end, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %dev18 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.5) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then13.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb6fire_comm_abort(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %comm = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %receiver = getelementptr inbounds %struct.comm_runtime, ptr %1, i32 0, i32 1
  tail call void @usb_poison_urb(ptr noundef %receiver) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb6fire_comm_destroy(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %comm = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm, align 4
  %receiver_buffer = getelementptr inbounds %struct.comm_runtime, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %receiver_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %receiver_buffer, align 4
  tail call void @kfree(ptr noundef %3) #5
  tail call void @kfree(ptr noundef %1) #5
  %4 = ptrtoint ptr %comm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %comm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/6fire/comm.c", i32 178, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usb6fire_comm_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usb6fire_comm_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/6fire/comm.c", i32 50, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @usb6fire_comm_receiver_handler._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @usb6fire_comm_receiver_handler._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i8 0, i8 2}
