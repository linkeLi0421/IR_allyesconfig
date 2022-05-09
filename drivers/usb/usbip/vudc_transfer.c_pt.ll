; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vudc_transfer.c_pt.bc'
source_filename = "../drivers/usb/usbip/vudc_transfer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vudc = type { %struct.usb_gadget, ptr, ptr, %struct.usb_device_descriptor, %struct.usbip_device, %struct.transfer_timer, %struct.timespec64, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.spinlock, ptr, i32, i16, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.transfer_timer = type { %struct.timer_list, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vep = type { %struct.usb_ep, i8, [8 x i8], ptr, ptr, %struct.list_head, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@v_init_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&t->timer)\00", [20 x i8] zeroinitializer }, align 32
@v_start_timer.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip_vudc\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"v_start_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/usbip/vudc_transfer.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer start\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@v_kick_timer.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"v_kick_timer\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer kick\00", [21 x i8] zeroinitializer }, align 32
@v_stop_timer.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"v_stop_timer\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer stop\00", [21 x i8] zeroinitializer }, align 32
@switch.table.v_timer = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 96, i32 1216, i32 53248, i32 96, i32 490000], [44 x i8] zeroinitializer }, align 32
@switch.table.v_start_timer = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 96, i32 1216, i32 53248, i32 -1, i32 490000], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 130]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 450, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 458, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 476, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [37 x i8] c"../drivers/usb/usbip/vudc_transfer.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 494, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"switch.table.v_timer\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"switch.table.v_start_timer\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @v_init_timer.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.v_timer, ptr @switch.table.v_start_timer], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v_init_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.v_timer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.v_start_timer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v_init_timer(ptr noundef %udc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tr_timer = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %tr_timer, ptr noundef nonnull @v_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @v_init_timer.__key) #3
  %state = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1320
  %lock = getelementptr i8, ptr %t, i32 192
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %speed = getelementptr i8, ptr %t, i32 -1256
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 8
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.hole_check, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %switch.hole_check.if.then_crit_edge, %entry.if.then_crit_edge
  %state = getelementptr inbounds %struct.transfer_timer, ptr %t, i32 0, i32 1
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state, align 4
  br label %cleanup207

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %4 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.lobit.not = icmp eq i8 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then_crit_edge, label %switch.lookup

switch.hole_check.if.then_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.v_timer, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %frame_start = getelementptr inbounds %struct.transfer_timer, ptr %t, i32 0, i32 2
  %6 = ptrtoint ptr %frame_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_start, align 4
  %add = add i32 %7, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12 = icmp slt i32 %sub, 0
  %frame_limit = getelementptr inbounds %struct.transfer_timer, ptr %t, i32 0, i32 3
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %frame_limit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load, ptr %frame_limit, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %frame_start to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %frame_start, align 4
  br label %if.end17

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %frame_limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_limit, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %total.0 = phi i32 [ %switch.load, %if.then14 ], [ %13, %if.else ]
  %ep18 = getelementptr i8, ptr %t, i32 236
  %14 = ptrtoint ptr %ep18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep18, align 4
  %already_seen = getelementptr inbounds %struct.vep, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %already_seen to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %already_seen, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %already_seen, align 4
  %ep_list = getelementptr i8, ptr %t, i32 -1264
  %17 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn325 = load ptr, ptr %ep_list, align 4
  %cmp26.not326 = icmp eq ptr %.pn325, %ep_list
  br i1 %cmp26.not326, label %if.end17.restart.preheader_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.restart.preheader_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %restart.preheader

restart.preheader:                                ; preds = %for.body.restart.preheader_crit_edge, %if.end17.restart.preheader_crit_edge
  %urb_queue = getelementptr i8, ptr %t, i32 80
  %state57 = getelementptr inbounds %struct.transfer_timer, ptr %t, i32 0, i32 1
  %devstatus127.i = getelementptr i8, ptr %t, i32 244
  %b_hnp_enable.i = getelementptr i8, ptr %t, i32 -284
  %address.i = getelementptr i8, ptr %t, i32 240
  %driver = getelementptr i8, ptr %t, i32 -272
  %lock_tx = getelementptr i8, ptr %t, i32 88
  %tx_waitq = getelementptr i8, ptr %t, i32 140
  %18 = ptrtoint ptr %urb_queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb_queue, align 8
  %cmp49.not407428 = icmp eq ptr %19, %urb_queue
  br i1 %cmp49.not407428, label %restart.preheader.for.end193_crit_edge, label %restart.preheader.for.body52_crit_edge

restart.preheader.for.body52_crit_edge:           ; preds = %restart.preheader
  br label %for.body52

restart.preheader.for.end193_crit_edge:           ; preds = %restart.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end193

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17.for.body_crit_edge
  %.pn327 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn325, %if.end17.for.body_crit_edge ]
  %already_seen29 = getelementptr i8, ptr %.pn327, i32 60
  %20 = ptrtoint ptr %already_seen29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load30 = load i8, ptr %already_seen29, align 4
  %bf.clear31 = and i8 %bf.load30, -33
  store i8 %bf.clear31, ptr %already_seen29, align 4
  %21 = ptrtoint ptr %.pn327 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn327, align 4
  %cmp26.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp26.not, label %for.body.restart.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.restart.preheader_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %restart.preheader

restart.loopexit:                                 ; preds = %if.else183, %if.then182
  tail call void @__wake_up(ptr noundef %tx_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  tail call void @_raw_spin_unlock(ptr noundef %lock_tx) #3
  %22 = ptrtoint ptr %urb_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb_queue, align 8
  %cmp49.not407 = icmp eq ptr %23, %urb_queue
  br i1 %cmp49.not407, label %restart.loopexit.for.end193_crit_edge, label %restart.loopexit.for.body52.backedge_crit_edge

restart.loopexit.for.body52.backedge_crit_edge:   ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body52.backedge

restart.loopexit.for.end193_crit_edge:            ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end193

for.body52:                                       ; preds = %for.body52.backedge, %restart.preheader.for.body52_crit_edge
  %.pn300.in413 = phi ptr [ %.pn300.in413.be, %for.body52.backedge ], [ %19, %restart.preheader.for.body52_crit_edge ]
  %total.2408 = phi i32 [ %total.2408.be, %for.body52.backedge ], [ %total.0, %restart.preheader.for.body52_crit_edge ]
  %urb_p.0419 = getelementptr i8, ptr %.pn300.in413, i32 -8
  %24 = ptrtoint ptr %.pn300.in413 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn300425 = load ptr, ptr %.pn300.in413, align 4
  %25 = ptrtoint ptr %urb_p.0419 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb_p.0419, align 4
  %ep54 = getelementptr i8, ptr %.pn300.in413, i32 -4
  %27 = ptrtoint ptr %ep54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep54, align 4
  %unlinked = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end56, label %for.body52.return_urb_crit_edge

for.body52.return_urb_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #5
  br label %return_urb

if.end56:                                         ; preds = %for.body52
  %31 = ptrtoint ptr %state57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp58.not = icmp eq i32 %32, 0
  br i1 %cmp58.not, label %if.end61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %tobool62.not = icmp eq ptr %28, null
  br i1 %tobool62.not, label %return_urb.thread315, label %if.end64

return_urb.thread315:                             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  %unlinked.le371 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 1
  %status = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 12
  %33 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -71, ptr %status, align 4
  br label %if.end178

if.end64:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %total.2408)
  %cmp65 = icmp slt i32 %total.2408, 1
  br i1 %cmp65, label %land.lhs.true, label %if.end64.if.end71_crit_edge

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end71

land.lhs.true:                                    ; preds = %if.end64
  %type = getelementptr inbounds %struct.vep, ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load67 = load i8, ptr %type, align 4
  %bf.lshr.mask = and i8 %bf.load67, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr.mask)
  %cmp68 = icmp eq i8 %bf.lshr.mask, -128
  br i1 %cmp68, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end71_crit_edge

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end71

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end71:                                         ; preds = %land.lhs.true.if.end71_crit_edge, %if.end64.if.end71_crit_edge
  %already_seen72 = getelementptr inbounds %struct.vep, ptr %28, i32 0, i32 6
  %35 = ptrtoint ptr %already_seen72 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load73 = load i8, ptr %already_seen72, align 4
  %36 = and i8 %bf.load73, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool77.not = icmp eq i8 %36, 0
  br i1 %tobool77.not, label %if.end79, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end79:                                         ; preds = %if.end71
  %bf.set83 = or i8 %bf.load73, 32
  %37 = ptrtoint ptr %already_seen72 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %bf.set83, ptr %already_seen72, align 4
  %38 = ptrtoint ptr %ep18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ep18, align 4
  %cmp86 = icmp eq ptr %28, %39
  br i1 %cmp86, label %land.lhs.true88, label %if.end79.if.end102_crit_edge

if.end79.if.end102_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end102

land.lhs.true88:                                  ; preds = %if.end79
  %new = getelementptr i8, ptr %.pn300.in413, i32 12
  %40 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load89 = load i8, ptr %new, align 4
  %41 = and i8 %bf.load89, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool93.not = icmp eq i8 %41, 0
  br i1 %tobool93.not, label %land.lhs.true88.if.end102_crit_edge, label %if.then94

land.lhs.true88.if.end102_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end102

if.then94:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #5
  %bf.set97 = or i8 %bf.load73, 48
  %42 = ptrtoint ptr %already_seen72 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %bf.set97, ptr %already_seen72, align 4
  %43 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load99 = load i8, ptr %new, align 4
  %bf.clear100 = and i8 %bf.load99, -33
  store i8 %bf.clear100, ptr %new, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then94, %land.lhs.true88.if.end102_crit_edge, %if.end79.if.end102_crit_edge
  %44 = ptrtoint ptr %already_seen72 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load103 = load i8, ptr %already_seen72, align 4
  %45 = and i8 %bf.load103, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %45)
  %46 = icmp eq i8 %45, -128
  br i1 %46, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #5
  %unlinked.le369 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 1
  %status115 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 12
  %47 = ptrtoint ptr %status115 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -32, ptr %status115, align 4
  br label %if.then169

if.end116:                                        ; preds = %if.end102
  %48 = and i8 %bf.load103, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool113.not = icmp eq i8 %48, 0
  %49 = ptrtoint ptr %ep18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ep18, align 4
  %cmp119 = icmp ne ptr %28, %50
  %brmerge = select i1 %cmp119, i1 true, i1 %tobool113.not
  br i1 %brmerge, label %if.end153, label %if.then128

if.then128:                                       ; preds = %if.end116
  %bf.clear135 = and i8 %bf.load103, 111
  %51 = ptrtoint ptr %already_seen72 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %bf.clear135, ptr %already_seen72, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 21
  %52 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %setup_packet, align 4
  %status137 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 12
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %wIndex.i, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #3
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %53, i32 0, i32 2
  %57 = ptrtoint ptr %wValue.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %wValue.i, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #3
  %conv1.i = zext i16 %59 to i32
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %53, i32 0, i32 1
  %60 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bRequest.i, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i8 %61, label %if.then128.if.end147_crit_edge [
    i8 5, label %sw.bb.i
    i8 3, label %sw.bb5.i
    i8 1, label %sw.bb46.i
    i8 0, label %sw.bb86.i
  ]

if.then128.if.end147_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end147

sw.bb.i:                                          ; preds = %if.then128
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp.not.i = icmp eq i8 %64, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.i.if.end147_crit_edge

sw.bb.i.if.end147_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end147

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %65 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv1.i, ptr %address.i, align 8
  br label %if.end147.thread320

sw.bb5.i:                                         ; preds = %if.then128
  %66 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %53, align 1
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %67, label %sw.bb5.i.if.end147_crit_edge [
    i8 0, label %if.then10.i
    i8 2, label %if.then32.i
  ]

sw.bb5.i.if.end147_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end147

if.then10.i:                                      ; preds = %sw.bb5.i
  %69 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %59, label %if.then10.i.if.else151_crit_edge [
    i16 1, label %if.then10.i.if.then24.i_crit_edge
    i16 3, label %if.then10.i.if.then24.sink.split.i_crit_edge
    i16 4, label %sw.bb12.i
    i16 5, label %sw.bb17.i
  ]

if.then10.i.if.then24.sink.split.i_crit_edge:     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then24.sink.split.i

if.then10.i.if.then24.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then24.i

if.then10.i.if.else151_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else151

sw.bb12.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then24.sink.split.i

sw.bb17.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then24.sink.split.i

if.then24.sink.split.i:                           ; preds = %sw.bb17.i, %sw.bb12.i, %if.then10.i.if.then24.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 67108864, %sw.bb17.i ], [ 134217728, %sw.bb12.i ], [ 268435456, %if.then10.i.if.then24.sink.split.i_crit_edge ]
  %70 = ptrtoint ptr %b_hnp_enable.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load19.i = load i32, ptr %b_hnp_enable.i, align 4
  %bf.set21.i = or i32 %bf.load19.i, %.sink.i
  store i32 %bf.set21.i, ptr %b_hnp_enable.i, align 4
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.then24.sink.split.i, %if.then10.i.if.then24.i_crit_edge
  %shl.i = shl nuw nsw i32 1, %conv1.i
  %71 = ptrtoint ptr %devstatus127.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %devstatus127.i, align 4
  %73 = trunc i32 %shl.i to i16
  %conv26.i = or i16 %72, %73
  store i16 %conv26.i, ptr %devstatus127.i, align 4
  br label %if.end147.thread320

if.then32.i:                                      ; preds = %sw.bb5.i
  %conv33.i = trunc i16 %56 to i8
  %call.i = tail call ptr @vudc_find_endpoint(ptr noundef %add.ptr, i8 noundef zeroext %conv33.i) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then32.i.if.else151_crit_edge, label %lor.lhs.false.i

if.then32.i.if.else151_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else151

lor.lhs.false.i:                                  ; preds = %if.then32.i
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 1
  %74 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name.i, align 4
  %76 = ptrtoint ptr %ep18 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ep18, align 4
  %name36.i = getelementptr inbounds %struct.usb_ep, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %name36.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name36.i, align 4
  %cmp37.i = icmp eq ptr %75, %79
  br i1 %cmp37.i, label %lor.lhs.false.i.if.else151_crit_edge, label %if.end40.i

lor.lhs.false.i.if.else151_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else151

if.end40.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  %halted.i = getelementptr inbounds %struct.vep, ptr %call.i, i32 0, i32 6
  %80 = ptrtoint ptr %halted.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load41.i = load i8, ptr %halted.i, align 4
  %bf.set43.i = or i8 %bf.load41.i, -128
  store i8 %bf.set43.i, ptr %halted.i, align 4
  br label %if.end147.thread320

sw.bb46.i:                                        ; preds = %if.then128
  %81 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %53, align 1
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %82, label %sw.bb46.i.if.end147_crit_edge [
    i8 0, label %if.then51.i
    i8 2, label %if.then69.i
  ]

sw.bb46.i.if.end147_crit_edge:                    ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end147

if.then51.i:                                      ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %58)
  %cond.i = icmp eq i16 %58, 256
  br i1 %cond.i, label %if.then58.i, label %if.then51.i.if.else151_crit_edge

if.then51.i.if.else151_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else151

if.then58.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #5
  %84 = ptrtoint ptr %devstatus127.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %devstatus127.i, align 4
  %conv62.i = and i16 %85, -3
  store i16 %conv62.i, ptr %devstatus127.i, align 4
  br label %if.end147.thread320

if.then69.i:                                      ; preds = %sw.bb46.i
  %conv70.i = trunc i16 %56 to i8
  %call71.i = tail call ptr @vudc_find_endpoint(ptr noundef %add.ptr, i8 noundef zeroext %conv70.i) #3
  %tobool72.not.i = icmp eq ptr %call71.i, null
  br i1 %tobool72.not.i, label %if.then69.i.if.else151_crit_edge, label %if.end74.i

if.then69.i.if.else151_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else151

if.end74.i:                                       ; preds = %if.then69.i
  %wedged.i = getelementptr inbounds %struct.vep, ptr %call71.i, i32 0, i32 6
  %86 = ptrtoint ptr %wedged.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load75.i = load i8, ptr %wedged.i, align 4
  %87 = and i8 %bf.load75.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool77.not.i = icmp eq i8 %87, 0
  br i1 %tobool77.not.i, label %if.then78.i, label %if.end74.i.if.end147.thread320_crit_edge

if.end74.i.if.end147.thread320_crit_edge:         ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end147.thread320

if.then78.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #5
  %bf.clear81.i = and i8 %bf.load75.i, 127
  %88 = ptrtoint ptr %wedged.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %bf.clear81.i, ptr %wedged.i, align 4
  br label %if.end147.thread320

sw.bb86.i:                                        ; preds = %if.then128
  %89 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %90)
  %switch.i = icmp slt i8 %90, -125
  br i1 %switch.i, label %if.then101.i, label %sw.bb86.i.if.end147_crit_edge

sw.bb86.i.if.end147_crit_edge:                    ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end147

if.then101.i:                                     ; preds = %sw.bb86.i
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %91 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 19
  %93 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %transfer_buffer_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp102.not.i = icmp eq i32 %94, 0
  br i1 %cmp102.not.i, label %if.then101.i.if.end140.i_crit_edge, label %if.then104.i

if.then101.i.if.end140.i_crit_edge:               ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end140.i

if.then104.i:                                     ; preds = %if.then101.i
  %95 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %90, label %if.then104.i.if.end134.i_crit_edge [
    i8 -126, label %if.then109.i
    i8 -128, label %if.then126.i
  ]

if.then104.i.if.end134.i_crit_edge:               ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134.i

if.then109.i:                                     ; preds = %if.then104.i
  %conv110.i = trunc i16 %56 to i8
  %call111.i = tail call ptr @vudc_find_endpoint(ptr noundef %add.ptr, i8 noundef zeroext %conv110.i) #3
  %tobool112.not.i = icmp eq ptr %call111.i, null
  br i1 %tobool112.not.i, label %if.then109.i.if.else151_crit_edge, label %if.end114.i

if.then109.i.if.else151_crit_edge:                ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else151

if.end114.i:                                      ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #5
  %halted115.i = getelementptr inbounds %struct.vep, ptr %call111.i, i32 0, i32 6
  %96 = ptrtoint ptr %halted115.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load116.i = load i8, ptr %halted115.i, align 4
  %bf.lshr117.i = lshr i8 %bf.load116.i, 7
  br label %if.end134.i

if.then126.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #5
  %97 = ptrtoint ptr %devstatus127.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %devstatus127.i, align 4
  %conv128.i = trunc i16 %98 to i8
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then126.i, %if.end114.i, %if.then104.i.if.end134.i_crit_edge
  %bf.lshr117.sink.i = phi i8 [ %bf.lshr117.i, %if.end114.i ], [ %conv128.i, %if.then126.i ], [ 0, %if.then104.i.if.end134.i_crit_edge ]
  %99 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %bf.lshr117.sink.i, ptr %92, align 1
  %100 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pr.i = load i32, ptr %transfer_buffer_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp136.i = icmp ugt i32 %.pr.i, 1
  br i1 %cmp136.i, label %if.then138.i, label %if.end134.i.if.end140.i_crit_edge

if.end134.i.if.end140.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end140.i

if.then138.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx139.i = getelementptr i8, ptr %92, i32 1
  %101 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %arrayidx139.i, align 1
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then138.i, %if.end134.i.if.end140.i_crit_edge, %if.then101.i.if.end140.i_crit_edge
  %102 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %transfer_buffer_length.i, align 4
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 2) #3
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 20
  %105 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %actual_length.i, align 4
  br label %if.end147.thread320

if.end147.thread320:                              ; preds = %if.end140.i, %if.then78.i, %if.end74.i.if.end147.thread320_crit_edge, %if.then58.i, %if.end40.i, %if.then24.i, %if.end.i
  %106 = ptrtoint ptr %status137 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %status137, align 4
  br label %treat_control_like_bulk

if.end147:                                        ; preds = %sw.bb86.i.if.end147_crit_edge, %sw.bb46.i.if.end147_crit_edge, %sw.bb5.i.if.end147_crit_edge, %sw.bb.i.if.end147_crit_edge, %if.then128.if.end147_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #3
  %107 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %setup, align 4
  %111 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %setup_packet, align 4
  %call145 = tail call i32 %110(ptr noundef %add.ptr, ptr noundef %112) #3
  tail call void @_raw_spin_lock(ptr noundef %lock) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call145)
  %cmp148 = icmp sgt i32 %call145, -1
  br i1 %cmp148, label %if.end147.treat_control_like_bulk_crit_edge, label %if.end147.if.else151_crit_edge

if.end147.if.else151_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else151

if.end147.treat_control_like_bulk_crit_edge:      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #5
  br label %treat_control_like_bulk

if.else151:                                       ; preds = %if.end147.if.else151_crit_edge, %if.then109.i.if.else151_crit_edge, %if.then69.i.if.else151_crit_edge, %if.then51.i.if.else151_crit_edge, %lor.lhs.false.i.if.else151_crit_edge, %if.then32.i.if.else151_crit_edge, %if.then10.i.if.else151_crit_edge
  %unlinked.le = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 1
  %113 = ptrtoint ptr %status137 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -32, ptr %status137, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 20
  %114 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %actual_length, align 4
  br label %if.then169

if.end153:                                        ; preds = %if.end116
  %type154 = getelementptr inbounds %struct.vep, ptr %28, i32 0, i32 1
  %115 = ptrtoint ptr %type154 to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load155 = load i8, ptr %type154, align 4
  %bf.lshr156.mask = and i8 %bf.load155, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr156.mask)
  %cond = icmp eq i8 %bf.lshr156.mask, 64
  br i1 %cond, label %sw.bb, label %if.end153.treat_control_like_bulk_crit_edge

if.end153.treat_control_like_bulk_crit_edge:      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #5
  br label %treat_control_like_bulk

sw.bb:                                            ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #5
  %status158 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 12
  %116 = ptrtoint ptr %status158 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -18, ptr %status158, align 4
  br label %sw.epilog

treat_control_like_bulk:                          ; preds = %if.end153.treat_control_like_bulk_crit_edge, %if.end147.treat_control_like_bulk_crit_edge, %if.end147.thread320
  %req_queue.i = getelementptr inbounds %struct.vep, ptr %28, i32 0, i32 5
  %transfer_buffer_length.i302 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 19
  %actual_length.i303 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 20
  %pipe.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 10
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %28, i32 0, i32 7
  %transfer_buffer.i304 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 13
  %status104.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 12
  br label %top.i

top.i:                                            ; preds = %.top.i_crit_edge, %treat_control_like_bulk
  %sent.0.i = phi i32 [ 0, %treat_control_like_bulk ], [ %sent.27.i, %.top.i_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %.for.cond.i_crit_edge, %top.i
  %sent.1.i = phi i32 [ %sent.0.i, %top.i ], [ %sent.27.i, %.for.cond.i_crit_edge ]
  %.pn.in.i = phi ptr [ %req_queue.i, %top.i ], [ %.pn.i, %.for.cond.i_crit_edge ]
  %117 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %req.0.i = getelementptr i8, ptr %.pn.i, i32 -60
  %cmp.not.i305 = icmp eq ptr %.pn.i, %req_queue.i
  br i1 %cmp.not.i305, label %for.cond.i.transfer.exit_crit_edge, label %for.body.i

for.cond.i.transfer.exit_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %transfer.exit

for.body.i:                                       ; preds = %for.cond.i
  %118 = ptrtoint ptr %transfer_buffer_length.i302 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %transfer_buffer_length.i302, align 4
  %120 = ptrtoint ptr %actual_length.i303 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %actual_length.i303, align 4
  %sub.i = sub i32 %119, %121
  %length.i = getelementptr i8, ptr %.pn.i, i32 -56
  %122 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %length.i, align 4
  %actual.i = getelementptr i8, ptr %.pn.i, i32 -8
  %124 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %actual.i, align 4
  %sub4.i = sub i32 %123, %125
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp6.i = icmp ult i32 %sub.i, %sub4.i
  %126 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub4.i) #3
  %127 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pipe.i, align 4
  %and.i = and i32 %128, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp7.i = icmp eq i32 %126, 0
  br i1 %cmp7.i, label %for.body.i.if.then48.i_crit_edge, label %if.else.i, !prof !26

for.body.i.if.then48.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then48.i

if.else.i:                                        ; preds = %for.body.i
  %129 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %bf.cast.i)
  %cmp11.not.i = icmp ult i32 %126, %bf.cast.i
  br i1 %cmp11.not.i, label %if.else.i.if.end28.i_crit_edge, label %if.then12.i

if.else.i.if.end28.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %rem.i = urem i32 %126, %bf.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp18.not.i = icmp ne i32 %rem.i, 0
  %spec.select.i = zext i1 %cmp18.not.i to i32
  %sub26.i = sub i32 %126, %rem.i
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then12.i, %if.else.i.if.end28.i_crit_edge
  %len.0.i = phi i32 [ %sub26.i, %if.then12.i ], [ %126, %if.else.i.if.end28.i_crit_edge ]
  %rescan.1.i = phi i32 [ %spec.select.i, %if.then12.i ], [ 0, %if.else.i.if.end28.i_crit_edge ]
  %130 = ptrtoint ptr %transfer_buffer.i304 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %transfer_buffer.i304, align 4
  %add.ptr30.i = getelementptr i8, ptr %131, i32 %121
  %132 = ptrtoint ptr %req.0.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %req.0.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %133, i32 %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool37.not.i, label %if.else39.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #5
  %134 = call ptr @memcpy(ptr %add.ptr30.i, ptr %add.ptr34.i, i32 %len.0.i)
  br label %if.end46.i

if.else39.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #5
  %135 = call ptr @memcpy(ptr %add.ptr34.i, ptr %add.ptr30.i, i32 %len.0.i)
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else39.i, %if.then38.i
  %136 = ptrtoint ptr %actual_length.i303 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %actual_length.i303, align 4
  %add.i = add i32 %137, %len.0.i
  store i32 %add.i, ptr %actual_length.i303, align 4
  %138 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %actual.i, align 4
  %add44.i = add i32 %139, %len.0.i
  store i32 %add44.i, ptr %actual.i, align 4
  %add45.i = add i32 %len.0.i, %sent.1.i
  br i1 %cmp11.not.i, label %if.end46.i.if.then48.i_crit_edge, label %if.else76.i

if.end46.i.if.then48.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then48.i

if.then48.i:                                      ; preds = %if.end46.i.if.then48.i_crit_edge, %for.body.i.if.then48.i_crit_edge
  %sent.28.i = phi i32 [ %add45.i, %if.end46.i.if.then48.i_crit_edge ], [ %sent.1.i, %for.body.i.if.then48.i_crit_edge ]
  %rescan.26.i = phi i32 [ %rescan.1.i, %if.end46.i.if.then48.i_crit_edge ], [ 0, %for.body.i.if.then48.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp49.i = icmp eq i32 %sub.i, %sub4.i
  br i1 %cmp49.i, label %if.then50.i, label %if.else53.i

if.then50.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #5
  %status.i = getelementptr i8, ptr %.pn.i, i32 -12
  %140 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %status.i, align 4
  %141 = ptrtoint ptr %status104.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %status104.i, align 4
  br label %if.end107.i

if.else53.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool54.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool54.not.i, label %if.else64.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.else53.i
  %status57.i = getelementptr i8, ptr %.pn.i, i32 -12
  %142 = ptrtoint ptr %status57.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %status57.i, align 4
  br i1 %cmp6.i, label %if.then59.i, label %if.else61.i

if.then59.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #5
  %143 = ptrtoint ptr %status104.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -75, ptr %status104.i, align 4
  br label %if.end107.i

if.else61.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #5
  %144 = ptrtoint ptr %status104.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %status104.i, align 4
  br label %if.end107.i

if.else64.i:                                      ; preds = %if.else53.i
  %145 = ptrtoint ptr %status104.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %status104.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp66.i = icmp ugt i32 %sub.i, %sub4.i
  %status69.i = getelementptr i8, ptr %.pn.i, i32 -12
  br i1 %cmp66.i, label %if.then67.i, label %if.else70.i

if.then67.i:                                      ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #5
  %146 = ptrtoint ptr %status69.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 -75, ptr %status69.i, align 4
  br label %if.end107.i

if.else70.i:                                      ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #5
  %147 = ptrtoint ptr %status69.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %status69.i, align 4
  br label %if.end107.i

if.else76.i:                                      ; preds = %if.end46.i
  %148 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %add44.i)
  %cmp81.i = icmp eq i32 %149, %add44.i
  br i1 %cmp81.i, label %if.then82.i, label %if.else76.i.if.end93.i_crit_edge

if.else76.i.if.end93.i_crit_edge:                 ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93.i

if.then82.i:                                      ; preds = %if.else76.i
  %zero.i = getelementptr i8, ptr %.pn.i, i32 -36
  %150 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %bf.load84.i = load i32, ptr %zero.i, align 4
  %151 = and i32 %bf.load84.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool86.not.i = icmp eq i32 %151, 0
  %or.cond.i = select i1 %tobool86.not.i, i1 true, i1 %tobool37.not.i
  br i1 %or.cond.i, label %if.else89.i, label %if.then82.i.if.end93.i_crit_edge

if.then82.i.if.end93.i_crit_edge:                 ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93.i

if.else89.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #5
  %status91.i = getelementptr i8, ptr %.pn.i, i32 -12
  %152 = ptrtoint ptr %status91.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %status91.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.else89.i, %if.then82.i.if.end93.i_crit_edge, %if.else76.i.if.end93.i_crit_edge
  %rescan.3.i = phi i32 [ %rescan.1.i, %if.else89.i ], [ %rescan.1.i, %if.else76.i.if.end93.i_crit_edge ], [ 1, %if.then82.i.if.end93.i_crit_edge ]
  %153 = ptrtoint ptr %transfer_buffer_length.i302 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %transfer_buffer_length.i302, align 4
  %155 = ptrtoint ptr %actual_length.i303 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %actual_length.i303, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %156)
  %cmp96.i = icmp eq i32 %154, %156
  br i1 %cmp96.i, label %if.then97.i, label %if.end93.i.if.end107.i_crit_edge

if.end93.i.if.end107.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end107.i

if.then97.i:                                      ; preds = %if.end93.i
  %157 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %transfer_flags.i, align 4
  %and98.i = and i32 %158, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp ne i32 %and98.i, 0
  %or.cond1.i = select i1 %tobool99.not.i, i1 %tobool37.not.i, i1 false
  br i1 %or.cond1.i, label %if.then97.i.if.end107.i_crit_edge, label %if.else103.i

if.then97.i.if.end107.i_crit_edge:                ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end107.i

if.else103.i:                                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #5
  %159 = ptrtoint ptr %status104.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %status104.i, align 4
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.else103.i, %if.then97.i.if.end107.i_crit_edge, %if.end93.i.if.end107.i_crit_edge, %if.else70.i, %if.then67.i, %if.else61.i, %if.then59.i, %if.then50.i
  %sent.27.i = phi i32 [ %sent.28.i, %if.then50.i ], [ %sent.28.i, %if.then59.i ], [ %sent.28.i, %if.else61.i ], [ %sent.28.i, %if.then67.i ], [ %sent.28.i, %if.else70.i ], [ %add45.i, %if.else103.i ], [ %add45.i, %if.end93.i.if.end107.i_crit_edge ], [ %add45.i, %if.then97.i.if.end107.i_crit_edge ]
  %rescan.4.i = phi i32 [ %rescan.26.i, %if.then50.i ], [ %rescan.26.i, %if.then59.i ], [ %rescan.26.i, %if.else61.i ], [ %rescan.26.i, %if.then67.i ], [ %rescan.26.i, %if.else70.i ], [ %rescan.3.i, %if.else103.i ], [ %rescan.3.i, %if.end93.i.if.end107.i_crit_edge ], [ 1, %if.then97.i.if.end107.i_crit_edge ]
  %status109.i = getelementptr i8, ptr %.pn.i, i32 -12
  %160 = ptrtoint ptr %status109.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %status109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %161)
  %cmp110.not.i = icmp eq i32 %161, -115
  br i1 %cmp110.not.i, label %if.end116.i, label %if.then111.i

if.then111.i:                                     ; preds = %if.end107.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then111.i.if.end116.thread.i_crit_edge

if.then111.i.if.end116.thread.i_crit_edge:        ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end116.thread.i

if.end.i.i.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %prev.i.i.i, align 4
  %164 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %163, ptr %prev1.i.i.i.i, align 4
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %165, ptr %163, align 4
  br label %if.end116.thread.i

if.end116.thread.i:                               ; preds = %if.end.i.i.i, %if.then111.i.if.end116.thread.i_crit_edge
  %168 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %.pn.i, ptr %.pn.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %169 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %.pn.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #3
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %28, ptr noundef %req.0.i) #3
  tail call void @_raw_spin_lock(ptr noundef %lock) #3
  br label %170

if.end116.i:                                      ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rescan.4.i)
  %tobool121.not.i = icmp eq i32 %rescan.4.i, 0
  %spec.select14.i = select i1 %tobool121.not.i, i32 0, i32 2
  br label %170

170:                                              ; preds = %if.end116.i, %if.end116.thread.i
  %171 = phi i32 [ 2, %if.end116.thread.i ], [ %spec.select14.i, %if.end116.i ]
  %172 = ptrtoint ptr %status104.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %cmp118.not13.in.i = load i32, ptr %status104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %cmp118.not13.in.i)
  %cmp118.not13.i = icmp eq i32 %cmp118.not13.in.i, -115
  %cleanup.dest.slot.0.i = select i1 %cmp118.not13.i, i32 %171, i32 3
  %173 = zext i32 %cleanup.dest.slot.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cleanup.dest.slot.0.i, label %unreachable.i [
    i32 0, label %.for.cond.i_crit_edge
    i32 3, label %.transfer.exit_crit_edge
    i32 2, label %.top.i_crit_edge
  ]

.top.i_crit_edge:                                 ; preds = %170
  call void @__sanitizer_cov_trace_pc() #5
  br label %top.i

.transfer.exit_crit_edge:                         ; preds = %170
  call void @__sanitizer_cov_trace_pc() #5
  br label %transfer.exit

.for.cond.i_crit_edge:                            ; preds = %170
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

unreachable.i:                                    ; preds = %170
  unreachable

transfer.exit:                                    ; preds = %.transfer.exit_crit_edge, %for.cond.i.transfer.exit_crit_edge
  %sent.3.i = phi i32 [ %sent.27.i, %.transfer.exit_crit_edge ], [ %sent.1.i, %for.cond.i.transfer.exit_crit_edge ]
  %sub162 = sub i32 %total.2408, %sent.3.i
  br label %sw.epilog

sw.epilog:                                        ; preds = %transfer.exit, %sw.bb
  %total.3 = phi i32 [ %sub162, %transfer.exit ], [ %total.2408, %sw.bb ]
  %status163 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 12
  %174 = ptrtoint ptr %status163 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %status163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %175)
  %cmp164 = icmp eq i32 %175, -115
  br i1 %cmp164, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.return_urb_crit_edge

sw.epilog.return_urb_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %return_urb

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

return_urb:                                       ; preds = %sw.epilog.return_urb_crit_edge, %for.body52.return_urb_crit_edge
  %total.4 = phi i32 [ %total.3, %sw.epilog.return_urb_crit_edge ], [ %total.2408, %for.body52.return_urb_crit_edge ]
  %unlinked.le373 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 1
  %tobool168.not = icmp eq ptr %28, null
  br i1 %tobool168.not, label %return_urb.if.end178_crit_edge, label %return_urb.if.then169_crit_edge

return_urb.if.then169_crit_edge:                  ; preds = %return_urb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then169

return_urb.if.end178_crit_edge:                   ; preds = %return_urb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end178

if.then169:                                       ; preds = %return_urb.if.then169_crit_edge, %if.else151, %if.then114
  %unlinked357 = phi ptr [ %unlinked.le373, %return_urb.if.then169_crit_edge ], [ %unlinked.le, %if.else151 ], [ %unlinked.le369, %if.then114 ]
  %total.4313 = phi i32 [ %total.4, %return_urb.if.then169_crit_edge ], [ %total.2408, %if.else151 ], [ %total.2408, %if.then114 ]
  %setup_stage170 = getelementptr inbounds %struct.vep, ptr %28, i32 0, i32 6
  %176 = ptrtoint ptr %setup_stage170 to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load171 = load i8, ptr %setup_stage170, align 4
  %bf.clear176 = and i8 %bf.load171, -49
  store i8 %bf.clear176, ptr %setup_stage170, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then169, %return_urb.if.end178_crit_edge, %return_urb.thread315
  %unlinked358 = phi ptr [ %unlinked357, %if.then169 ], [ %unlinked.le373, %return_urb.if.end178_crit_edge ], [ %unlinked.le371, %return_urb.thread315 ]
  %total.4314 = phi i32 [ %total.4313, %if.then169 ], [ %total.4, %return_urb.if.end178_crit_edge ], [ %total.2408, %return_urb.thread315 ]
  tail call void @_raw_spin_lock(ptr noundef %lock_tx) #3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn300.in413) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end178.list_del.exit_crit_edge

if.end178.list_del.exit_crit_edge:                ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn300.in413, i32 0, i32 1
  %177 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %prev.i.i, align 4
  %179 = ptrtoint ptr %.pn300.in413 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %.pn300.in413, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %178, ptr %prev1.i.i.i, align 4
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %180, ptr %178, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end178.list_del.exit_crit_edge
  %183 = ptrtoint ptr %.pn300.in413 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn300.in413, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn300.in413, i32 0, i32 1
  %184 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %185 = ptrtoint ptr %unlinked358 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %unlinked358, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool181.not = icmp eq i32 %186, 0
  br i1 %tobool181.not, label %if.then182, label %if.else183

if.then182:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @v_enqueue_ret_submit(ptr noundef %add.ptr, ptr noundef %urb_p.0419) #3
  br label %restart.loopexit

if.else183:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  %seqnum = getelementptr i8, ptr %.pn300.in413, i32 8
  %187 = ptrtoint ptr %seqnum to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %seqnum, align 4
  tail call void @v_enqueue_ret_unlink(ptr noundef %add.ptr, i32 noundef %188, i32 noundef %186) #3
  tail call void @free_urbp_and_urb(ptr noundef %urb_p.0419) #3
  br label %restart.loopexit

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end56.cleanup_crit_edge
  %total.5 = phi i32 [ %total.3, %sw.epilog.cleanup_crit_edge ], [ %total.2408, %if.end71.cleanup_crit_edge ], [ %total.2408, %land.lhs.true.cleanup_crit_edge ], [ %total.2408, %if.end56.cleanup_crit_edge ]
  %cmp49.not = icmp eq ptr %.pn300425, %urb_queue
  br i1 %cmp49.not, label %cleanup.for.end193_crit_edge, label %cleanup.for.body52.backedge_crit_edge

cleanup.for.body52.backedge_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body52.backedge

cleanup.for.end193_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end193

for.body52.backedge:                              ; preds = %cleanup.for.body52.backedge_crit_edge, %restart.loopexit.for.body52.backedge_crit_edge
  %.pn300.in413.be = phi ptr [ %.pn300425, %cleanup.for.body52.backedge_crit_edge ], [ %23, %restart.loopexit.for.body52.backedge_crit_edge ]
  %total.2408.be = phi i32 [ %total.5, %cleanup.for.body52.backedge_crit_edge ], [ %total.4314, %restart.loopexit.for.body52.backedge_crit_edge ]
  br label %for.body52

for.end193:                                       ; preds = %cleanup.for.end193_crit_edge, %restart.loopexit.for.end193_crit_edge, %restart.preheader.for.end193_crit_edge
  %189 = ptrtoint ptr %urb_queue to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile ptr, ptr %urb_queue, align 4
  %cmp.i.not = icmp eq ptr %190, %urb_queue
  br i1 %cmp.i.not, label %if.then197, label %if.else199

if.then197:                                       ; preds = %for.end193
  call void @__sanitizer_cov_trace_pc() #5
  %191 = ptrtoint ptr %state57 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %state57, align 4
  br label %cleanup207

if.else199:                                       ; preds = %for.end193
  call void @__sanitizer_cov_trace_pc() #5
  %192 = ptrtoint ptr %frame_start to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %frame_start, align 4
  %add203 = add i32 %193, 1
  %call204 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add203) #3
  br label %cleanup207

cleanup207:                                       ; preds = %if.else199, %if.then197, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v_start_timer(ptr noundef %udc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v_start_timer.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v_start_timer, %do.end)) #3
          to label %if.then [label %do.end], !srcloc !27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pdev = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v_start_timer.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.4) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %3, label %do.end.cleanup_crit_edge [
    i32 2, label %sw.bb5
    i32 1, label %sw.bb4
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb4:                                           ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %tr_timer.i = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v_kick_timer.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v_start_timer, %do.end.i)) #3
          to label %if.then.i [label %do.end.i], !srcloc !27

if.then.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %pdev.i = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 2
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v_kick_timer.__UNIQUE_ID_ddebug246, ptr noundef %dev.i, ptr noundef nonnull @.str.6) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %9, label %do.end.i.cleanup_crit_edge [
    i32 2, label %do.end.i.sw.bb6.i_crit_edge
    i32 1, label %sw.bb4.i
  ]

do.end.i.sw.bb6.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb6.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb4.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state, align 4
  br label %sw.bb6.i

sw.bb6.i:                                         ; preds = %sw.bb4.i, %do.end.i.sw.bb6.i_crit_edge
  %call7.i = tail call i32 @mod_timer(ptr noundef %tr_timer.i, i32 noundef %5) #3
  br label %cleanup

sw.bb5:                                           ; preds = %do.end
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %frame_start = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %frame_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %frame_start, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 8
  %switch.tableidx = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 5
  br i1 %17, label %switch.lookup, label %sw.bb5.get_frame_limit.exit_crit_edge

sw.bb5.get_frame_limit.exit_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_frame_limit.exit

switch.lookup:                                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.v_start_timer, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_frame_limit.exit

get_frame_limit.exit:                             ; preds = %switch.lookup, %sw.bb5.get_frame_limit.exit_crit_edge
  %retval.0.i15 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %sw.bb5.get_frame_limit.exit_crit_edge ]
  %frame_limit = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %frame_limit to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i15, ptr %frame_limit, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %tr_timer.i16 = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v_kick_timer.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v_start_timer, %do.end.i21)) #3
          to label %if.then.i19 [label %do.end.i21], !srcloc !27

if.then.i19:                                      ; preds = %get_frame_limit.exit
  call void @__sanitizer_cov_trace_pc() #5
  %pdev.i17 = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 2
  %21 = ptrtoint ptr %pdev.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i17, align 4
  %dev.i18 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v_kick_timer.__UNIQUE_ID_ddebug246, ptr noundef %dev.i18, ptr noundef nonnull @.str.6) #3
  br label %do.end.i21

do.end.i21:                                       ; preds = %if.then.i19, %get_frame_limit.exit
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %24, label %do.end.i21.cleanup_crit_edge [
    i32 2, label %do.end.i21.sw.bb6.i24_crit_edge
    i32 1, label %sw.bb4.i22
  ]

do.end.i21.sw.bb6.i24_crit_edge:                  ; preds = %do.end.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb6.i24

do.end.i21.cleanup_crit_edge:                     ; preds = %do.end.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb4.i22:                                       ; preds = %do.end.i21
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %state, align 4
  br label %sw.bb6.i24

sw.bb6.i24:                                       ; preds = %sw.bb4.i22, %do.end.i21.sw.bb6.i24_crit_edge
  %call7.i23 = tail call i32 @mod_timer(ptr noundef %tr_timer.i16, i32 noundef %20) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6.i24, %do.end.i21.cleanup_crit_edge, %sw.bb6.i, %do.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v_kick_timer(ptr noundef %udc, i32 noundef %time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tr_timer = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v_kick_timer.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v_kick_timer, %do.end)) #3
          to label %if.then [label %do.end], !srcloc !27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pdev = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v_kick_timer.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.6) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %3, label %do.end.cleanup_crit_edge [
    i32 2, label %do.end.sw.bb6_crit_edge
    i32 1, label %sw.bb4
  ]

do.end.sw.bb6_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %do.end.sw.bb6_crit_edge
  %call7 = tail call i32 @mod_timer(ptr noundef %tr_timer, i32 noundef %time) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v_stop_timer(ptr nocapture noundef %udc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v_stop_timer.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v_stop_timer, %do.end)) #3
          to label %if.then [label %do.end], !srcloc !27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pdev = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v_stop_timer.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.8) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v_enqueue_ret_submit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v_enqueue_ret_unlink(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_urbp_and_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vudc_find_endpoint(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @v_init_timer.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vudc_transfer.c", i32 450, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/usb/usbip/vudc_transfer.c", i32 458, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @v_start_timer.__UNIQUE_ID_ddebug245, !4, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/usbip/vudc_transfer.c", i32 476, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @v_kick_timer.__UNIQUE_ID_ddebug246, !10, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/usbip/vudc_transfer.c", i32 494, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @v_stop_timer.__UNIQUE_ID_ddebug247, !14, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2148943542, i64 2148943547, i64 2148943560, i64 2148943604, i64 2148943638, i64 2148943659}
