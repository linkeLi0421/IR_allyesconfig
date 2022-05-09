; ModuleID = '/llk/IR_all_yes/net/bluetooth/leds.c_pt.bc'
source_filename = "../net/bluetooth/leds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hci_basic_led_trigger = type { %struct.led_trigger, ptr }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@hci_dev_list_lock = external dso_local global %struct.rwlock_t, align 4
@hci_dev_list = external dso_local global %struct.list_head, align 4
@bt_power_led_trigger = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bluetooth-power\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"bt_power_led_trigger\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 11, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 89, i32 61 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 94, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [24 x i8] c"../net/bluetooth/leds.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 69, i32 8 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @bt_power_led_trigger, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_power_led_trigger to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_leds_update_powered(ptr nocapture noundef readonly %hdev, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %power_led = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 226
  %0 = ptrtoint ptr %power_led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power_led, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %cond = select i1 %enabled, i32 255, i32 0
  tail call void @led_trigger_event(ptr noundef nonnull %1, i32 noundef %cond) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %enabled, label %if.end12.thread, label %if.then4

if.end12.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %2 = load ptr, ptr @bt_power_led_trigger, align 4
  br label %8

if.then4:                                         ; preds = %if.end
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hci_dev_list to i32))
  %d.024 = load ptr, ptr @hci_dev_list, align 4
  %cmp.not25 = icmp eq ptr %d.024, @hci_dev_list
  br i1 %cmp.not25, label %if.end12.thread29, label %if.then4.for.body_crit_edge

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

if.end12.thread29:                                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_raw_read_unlock(ptr noundef nonnull @hci_dev_list_lock) #2
  %3 = load ptr, ptr @bt_power_led_trigger, align 4
  br label %10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then4.for.body_crit_edge
  %d.027 = phi ptr [ %d.0, %for.body.for.body_crit_edge ], [ %d.024, %if.then4.for.body_crit_edge ]
  %enabled.addr.0.off026 = phi i1 [ %spec.select, %for.body.for.body_crit_edge ], [ false, %if.then4.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.hci_dev, ptr %d.027, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp ne i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i1 true, i1 %enabled.addr.0.off026
  %6 = ptrtoint ptr %d.027 to i32
  call void @__asan_load4_noabort(i32 %6)
  %d.0 = load ptr, ptr %d.027, align 4
  %cmp.not = icmp eq ptr %d.0, @hci_dev_list
  br i1 %cmp.not, label %if.end12, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

if.end12:                                         ; preds = %for.body
  tail call void @_raw_read_unlock(ptr noundef nonnull @hci_dev_list_lock) #2
  %7 = load ptr, ptr @bt_power_led_trigger, align 4
  br i1 %spec.select, label %if.end12._crit_edge, label %if.end12._crit_edge31

if.end12._crit_edge31:                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  br label %10

if.end12._crit_edge:                              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  br label %8

8:                                                ; preds = %if.end12._crit_edge, %if.end12.thread
  %9 = phi ptr [ %2, %if.end12.thread ], [ %7, %if.end12._crit_edge ]
  br label %10

10:                                               ; preds = %8, %if.end12._crit_edge31, %if.end12.thread29
  %11 = phi ptr [ %9, %8 ], [ %7, %if.end12._crit_edge31 ], [ %3, %if.end12.thread29 ]
  %12 = phi i32 [ 255, %8 ], [ 0, %if.end12._crit_edge31 ], [ 0, %if.end12.thread29 ]
  tail call void @led_trigger_event(ptr noundef %11, i32 noundef %12) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_leds_init(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 84, i32 noundef 3520) #2
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.led_allocate_basic.exit_crit_edge, label %if.end.i

entry.led_allocate_basic.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %led_allocate_basic.exit

if.end.i:                                         ; preds = %entry
  %hdev1.i = getelementptr inbounds %struct.hci_basic_led_trigger, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hdev, ptr %hdev1.i, align 4
  %activate2.i = getelementptr inbounds %struct.led_trigger, ptr %call.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %activate2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @power_activate, ptr %activate2.i, align 4
  %name4.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %call5.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev.i, i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %name4.i, ptr noundef nonnull @.str) #2
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5.i, ptr %call.i.i, align 4
  %tobool10.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool10.not.i, label %if.end.i.err_alloc.i_crit_edge, label %if.end12.i

if.end.i.err_alloc.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %err_alloc.i

if.end12.i:                                       ; preds = %if.end.i
  %call15.i = tail call i32 @devm_led_trigger_register(ptr noundef %dev.i, ptr noundef nonnull %call.i.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end12.i.led_allocate_basic.exit_crit_edge, label %err_register.i

if.end12.i.led_allocate_basic.exit_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %led_allocate_basic.exit

err_register.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  %3 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i.i, align 4
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef %4) #2
  br label %err_alloc.i

err_alloc.i:                                      ; preds = %err_register.i, %if.end.i.err_alloc.i_crit_edge
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef nonnull %call.i.i) #2
  br label %led_allocate_basic.exit

led_allocate_basic.exit:                          ; preds = %err_alloc.i, %if.end12.i.led_allocate_basic.exit_crit_edge, %entry.led_allocate_basic.exit_crit_edge
  %retval.0.i = phi ptr [ null, %err_alloc.i ], [ null, %entry.led_allocate_basic.exit_crit_edge ], [ %call.i.i, %if.end12.i.led_allocate_basic.exit_crit_edge ]
  %power_led = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 226
  %5 = ptrtoint ptr %power_led to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %retval.0.i, ptr %power_led, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_activate(ptr nocapture noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 4
  %hdev = getelementptr inbounds %struct.hci_basic_led_trigger, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %flags = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  %cond = select i1 %tobool.not, i32 0, i32 255
  tail call void @led_trigger_event(ptr noundef %1, i32 noundef %cond) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bt_leds_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str.1, ptr noundef nonnull @bt_power_led_trigger) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bt_leds_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bt_power_led_trigger, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister_simple(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/leds.c", i32 89, i32 61}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bluetooth/leds.c", i32 94, i32 30}
!4 = !{ptr @bt_power_led_trigger, !5, !"bt_power_led_trigger", i1 false, i1 false}
!5 = !{!"../net/bluetooth/leds.c", i32 11, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/leds.c", i32 69, i32 8}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
