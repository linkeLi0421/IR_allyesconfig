; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vudc_tx.c_pt.bc'
source_filename = "../drivers/usb/usbip/vudc_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.usbip_header = type { %struct.usbip_header_basic, %union.anon.146 }
%struct.usbip_header_basic = type { i32, i32, i32, i32, i32 }
%union.anon.146 = type { %struct.usbip_header_cmd_submit }
%struct.usbip_header_cmd_submit = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.tx_item = type { %struct.list_head, i32, %union.anon.145 }
%union.anon.145 = type { ptr }
%struct.v_unlink = type { i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.transfer_timer = type { %struct.timer_list, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.urbp = type { ptr, ptr, %struct.list_head, i32, i8 }

@v_tx_loop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014usbip_vudc: %s:%d: v_tx exit with error %d\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"v_tx_loop\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/usbip/vudc_tx.c\00", [36 x i8] zeroinitializer }, align 32
@v_tx_loop._entry_ptr = internal global ptr @v_tx_loop._entry, section ".printk_index", align 4
@v_send_ret_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 91, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"urb: actual_length %d transfer_buffer null\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"v_send_ret_submit\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@v_send_ret_submit._entry_ptr = internal global ptr @v_send_ret_submit._entry, section ".printk_index", align 4
@usbip_debug_flag = external dso_local local_unnamed_addr global i32, align 4
@v_send_ret_submit.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip_vudc\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"setup txdata seqnum: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"usbip_vudc: %s:%d: setup txdata seqnum: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 232, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 89, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [31 x i8] c"../drivers/usb/usbip/vudc_tx.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 110, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @v_send_ret_submit._entry, ptr @v_send_ret_submit._entry_ptr, ptr @v_tx_loop._entry, ptr @v_tx_loop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v_tx_loop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v_send_ret_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v_tx_loop(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.msghdr, align 8
  %iov.i.i = alloca [1 x %struct.kvec], align 8
  %pdu_header.i.i = alloca %struct.usbip_header, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -1080
  %call64 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call64, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lock_tx.i = getelementptr i8, ptr %data, i32 328
  %tx_queue.i = getelementptr i8, ptr %data, i32 372
  %0 = getelementptr inbounds %struct.kvec, ptr %iov.i.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %pdu_header.i.i, i32 24
  %seqnum2.i.i.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header.i.i, i32 0, i32 1
  %devid.i.i.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header.i.i, i32 0, i32 2
  %ep.i.i.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header.i.i, i32 0, i32 4
  %direction.i.i.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header.i.i, i32 0, i32 3
  %u.i.i.i = getelementptr inbounds %struct.usbip_header, ptr %pdu_header.i.i, i32 0, i32 1
  %tcp_socket.i.i = getelementptr i8, ptr %data, i32 148
  %tx_waitq = getelementptr i8, ptr %data, i32 380
  br label %while.body

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %call2 = call i32 @usbip_event_happened(ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock_tx.i) #7
  %2 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tx_queue.i, align 4
  %cmp.i.not52.i = icmp eq ptr %3, %tx_queue.i
  br i1 %cmp.i.not52.i, label %v_send_ret.exit.thread49, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

v_send_ret.exit.thread49:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_tx.i, i32 noundef %call2.i) #7
  br label %if.end7

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %4 = phi ptr [ %39, %if.end.i.while.body.i_crit_edge ], [ %3, %if.end.while.body.i_crit_edge ]
  %flags.055.i = phi i32 [ %call23.i, %if.end.i.while.body.i_crit_edge ], [ %call2.i, %if.end.while.body.i_crit_edge ]
  %total_size.054.i = phi i32 [ %add.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %ret.053.i = phi i32 [ %ret.149.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_tx.i, i32 noundef %flags.055.i) #7
  %type.i = getelementptr inbounds %struct.tx_item, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %sw.epilog.thread.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb10.i
  ]

sw.epilog.thread.i:                               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef %4) #7
  br label %if.end.i

sw.bb.i:                                          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = getelementptr inbounds %struct.tx_item, ptr %4, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call9.i = call fastcc i32 @v_send_ret_submit(ptr noundef %add.ptr, ptr noundef %18) #7
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %list_del.exit.i
  %19 = getelementptr inbounds %struct.tx_item, ptr %4, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pdu_header.i.i) #7
  %22 = call ptr @memset(ptr %1, i32 0, i32 24)
  %23 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  %26 = ptrtoint ptr %pdu_header.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %pdu_header.i.i, align 4
  %27 = ptrtoint ptr %seqnum2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %seqnum2.i.i.i.i, align 4
  %28 = ptrtoint ptr %devid.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %devid.i.i.i.i, align 4
  %29 = ptrtoint ptr %ep.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ep.i.i.i.i, align 4
  %30 = ptrtoint ptr %direction.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %direction.i.i.i.i, align 4
  %status.i.i.i = getelementptr inbounds %struct.v_unlink, ptr %21, i32 0, i32 1
  %31 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status.i.i.i, align 4
  %33 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %u.i.i.i, align 4
  call void @usbip_header_correct_endian(ptr noundef nonnull %pdu_header.i.i, i32 noundef 1) #7
  %34 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pdu_header.i.i, ptr %iov.i.i, align 8
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 48, ptr %0, align 4
  %36 = ptrtoint ptr %tcp_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tcp_socket.i.i, align 4
  %call.i.i = call i32 @kernel_sendmsg(ptr noundef %37, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %iov.i.i, i32 noundef 1, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 48
  br i1 %cmp.not.i.i, label %if.end5.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @usbip_event_add(ptr noundef %data, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp3.i.i = icmp sgt i32 %call.i.i, -1
  %.call.i.i = select i1 %cmp3.i.i, i32 -32, i32 %call.i.i
  br label %v_send_ret_unlink.exit.i

if.end5.i.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef %21) #7
  br label %v_send_ret_unlink.exit.i

v_send_ret_unlink.exit.i:                         ; preds = %if.end5.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ 48, %if.end5.i.i ], [ %.call.i.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %v_send_ret_unlink.exit.i, %sw.bb.i
  %ret.1.i = phi i32 [ %retval.0.i.i, %v_send_ret_unlink.exit.i ], [ %call9.i, %sw.bb.i ]
  call void @kfree(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp12.i = icmp slt i32 %ret.1.i, 0
  br i1 %cmp12.i, label %sw.epilog.i.do.end_crit_edge, label %sw.epilog.i.if.end.i_crit_edge

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %sw.epilog.i.if.end.i_crit_edge, %sw.epilog.thread.i
  %ret.149.i = phi i32 [ %ret.053.i, %sw.epilog.thread.i ], [ %ret.1.i, %sw.epilog.i.if.end.i_crit_edge ]
  %add.i = add i32 %ret.149.i, %total_size.054.i
  %call23.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock_tx.i) #7
  %38 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %tx_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %39, %tx_queue.i
  br i1 %cmp.i.not.i, label %v_send_ret.exit, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

v_send_ret.exit:                                  ; preds = %if.end.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_tx.i, i32 noundef %call23.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp = icmp slt i32 %add.i, 0
  br i1 %cmp, label %v_send_ret.exit.do.end_crit_edge, label %v_send_ret.exit.if.end7_crit_edge

v_send_ret.exit.if.end7_crit_edge:                ; preds = %v_send_ret.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

v_send_ret.exit.do.end_crit_edge:                 ; preds = %v_send_ret.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %v_send_ret.exit.do.end_crit_edge, %sw.epilog.i.do.end_crit_edge
  %retval.0.i48 = phi i32 [ %ret.1.i, %sw.epilog.i.do.end_crit_edge ], [ %add.i, %v_send_ret.exit.do.end_crit_edge ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef %retval.0.i48) #10
  br label %while.end

if.end7:                                          ; preds = %v_send_ret.exit.if.end7_crit_edge, %v_send_ret.exit.thread49
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 237) #7
  %40 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %tx_queue.i, align 4
  %cmp.i.not = icmp eq ptr %41, %tx_queue.i
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end7.if.end32_crit_edge

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

lor.lhs.false:                                    ; preds = %if.end7
  %call16 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call16, label %lor.lhs.false.if.end32_crit_edge, label %if.then17

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then17:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %42 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call1960 = call i32 @prepare_to_wait_event(ptr noundef %tx_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %43 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %tx_queue.i, align 4
  %cmp.i44.not61 = icmp eq ptr %44, %tx_queue.i
  br i1 %cmp.i44.not61, label %if.then17.lor.lhs.false23_crit_edge, label %if.then17.for.end_crit_edge

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then17.lor.lhs.false23_crit_edge:              ; preds = %if.then17
  br label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %cleanup.lor.lhs.false23_crit_edge, %if.then17.lor.lhs.false23_crit_edge
  %call1962 = phi i32 [ %call19, %cleanup.lor.lhs.false23_crit_edge ], [ %call1960, %if.then17.lor.lhs.false23_crit_edge ]
  %call24 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call24, label %lor.lhs.false23.for.end_crit_edge, label %if.end26

lor.lhs.false23.for.end_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end26:                                         ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1962)
  %tobool27.not = icmp eq i32 %call1962, 0
  br i1 %tobool27.not, label %cleanup, label %if.end26.__out_crit_edge

if.end26.__out_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end26
  call void @schedule() #7
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %tx_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %45 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %tx_queue.i, align 4
  %cmp.i44.not = icmp eq ptr %46, %tx_queue.i
  br i1 %cmp.i44.not, label %cleanup.lor.lhs.false23_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.lor.lhs.false23_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false23

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false23.for.end_crit_edge, %if.then17.for.end_crit_edge
  call void @finish_wait(ptr noundef %tx_waitq, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end26.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end32

if.end32:                                         ; preds = %__out, %lor.lhs.false.if.end32_crit_edge, %if.end7.if.end32_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #7
  br i1 %call, label %if.end32.while.end_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %do.end, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_event_happened(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v_enqueue_ret_unlink(ptr noundef %udc, i32 noundef %seqnum, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ud = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 4
  tail call void @usbip_event_add(ptr noundef %ud, i32 noundef 9) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 8) #11
  %tobool2.not = icmp eq ptr %call7.i.i18, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %ud4 = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 4
  tail call void @usbip_event_add(ptr noundef %ud4, i32 noundef 9) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i18 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %seqnum, ptr %call7.i.i18, align 8
  %status7 = getelementptr inbounds %struct.v_unlink, ptr %call7.i.i18, i32 0, i32 1
  %3 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %status, ptr %status7, align 4
  %type = getelementptr inbounds %struct.tx_item, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 8
  %5 = getelementptr inbounds %struct.tx_item, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i18, ptr %5, align 4
  %tx_queue = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %8, ptr noundef %tx_queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx_queue, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end5.cleanup_crit_edge, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v_enqueue_ret_submit(ptr noundef %udc, ptr noundef %urb_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ud = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 4
  tail call void @usbip_event_add(ptr noundef %ud, i32 noundef 9) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.tx_item, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 8
  %2 = getelementptr inbounds %struct.tx_item, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %urb_p, ptr %2, align 4
  %tx_queue = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %5, ptr noundef %tx_queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tx_queue, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v_send_ret_submit(ptr noundef %udc, ptr noundef %urb_p) unnamed_addr #0 align 64 {
entry:
  %pdu_header = alloca %struct.usbip_header, align 4
  %msg = alloca %struct.msghdr, align 8
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %urb_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb_p, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pdu_header) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  %2 = call ptr @memset(ptr %pdu_header, i32 0, i32 48)
  %3 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %actual_length = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %5) #10
  br label %cleanup117

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.urbp, ptr %urb_p, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %type, align 4
  %bf.lshr.mask = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp3 = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number_of_packets, align 4
  %add = add i32 %10, 2
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %iovnum.0 = phi i32 [ %add, %if.then4 ], [ 2, %if.end.if.end5_crit_edge ]
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %iovnum.0, i32 8) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end5.if.then7_crit_edge, label %if.end7.i.i, !prof !27

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end7.i.i:                                      ; preds = %if.end5
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #12
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end7.i.i.if.then7_crit_edge, label %if.end8

if.end7.i.i.if.then7_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %if.end7.i.i.if.then7_crit_edge, %if.end5.if.then7_crit_edge
  %ud = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 4
  tail call void @usbip_event_add(ptr noundef %ud, i32 noundef 9) #7
  br label %out

if.end8:                                          ; preds = %if.end7.i.i
  %seqnum.i = getelementptr inbounds %struct.urbp, ptr %urb_p, i32 0, i32 3
  %14 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seqnum.i, align 4
  %16 = ptrtoint ptr %pdu_header to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %pdu_header, align 4
  %seqnum2.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 1
  %17 = ptrtoint ptr %seqnum2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %seqnum2.i.i, align 4
  %devid.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 2
  %18 = ptrtoint ptr %devid.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %devid.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 4
  %19 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ep.i.i, align 4
  %direction.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 3
  %20 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %direction.i.i, align 4
  %21 = ptrtoint ptr %urb_p to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %urb_p, align 4
  call void @usbip_pack_pdu(ptr noundef nonnull %pdu_header, ptr noundef %22, i32 noundef 3, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %23 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end8.do.end24_crit_edge, label %do.body12

if.end8.do.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v_send_ret_submit.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v_send_ret_submit, %do.end24)) #7
          to label %if.then18 [label %do.end24], !srcloc !28

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %seqnum2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %seqnum2.i.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @v_send_ret_submit.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef 111, i32 noundef %25) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %do.body12, %if.end8.do.end24_crit_edge
  call void @usbip_header_correct_endian(ptr noundef nonnull %pdu_header, i32 noundef 1) #7
  %26 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pdu_header, ptr %call8.i.i, align 128
  %iov_len = getelementptr inbounds %struct.kvec, ptr %call8.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 48, ptr %iov_len, align 4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load28 = load i8, ptr %type, align 4
  %bf.lshr29.mask = and i8 %bf.load28, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr29.mask)
  %cmp31.not = icmp eq i8 %bf.lshr29.mask, 64
  %pipe55 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %pipe55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pipe55, align 4
  %and56 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %cmp31.not, label %land.lhs.true54, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %do.end24
  br i1 %tobool57.not, label %land.lhs.true32.if.end83_crit_edge, label %land.lhs.true35

land.lhs.true32.if.end83_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %31 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp37.not = icmp eq i32 %32, 0
  br i1 %cmp37.not, label %land.lhs.true35.if.end83_crit_edge, label %if.then38

land.lhs.true35.if.end83_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then38:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  %transfer_buffer39 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transfer_buffer39, align 4
  %arrayidx40 = getelementptr %struct.kvec, ptr %call8.i.i, i32 1
  %35 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx40, align 8
  %36 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual_length, align 4
  %iov_len44 = getelementptr %struct.kvec, ptr %call8.i.i, i32 1, i32 1
  %38 = ptrtoint ptr %iov_len44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %iov_len44, align 4
  %39 = load i32, ptr %actual_length, align 4
  %add47 = add i32 %39, 48
  br label %if.end83

land.lhs.true54:                                  ; preds = %do.end24
  br i1 %tobool57.not, label %land.lhs.true54.if.end83_crit_edge, label %for.cond.preheader

land.lhs.true54.if.end83_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

for.cond.preheader:                               ; preds = %land.lhs.true54
  %number_of_packets59 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %40 = ptrtoint ptr %number_of_packets59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %number_of_packets59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp60219 = icmp sgt i32 %41, 0
  br i1 %cmp60219, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %transfer_buffer61 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %inc75, %for.body.for.body_crit_edge ]
  %txsize.0221 = phi i32 [ 48, %for.body.lr.ph ], [ %add74, %for.body.for.body_crit_edge ]
  %iovnum.1220 = phi i32 [ 1, %for.body.lr.ph ], [ %inc70, %for.body.for.body_crit_edge ]
  %42 = ptrtoint ptr %transfer_buffer61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %transfer_buffer61, align 4
  %arrayidx62 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.0222
  %44 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx62, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 %45
  %arrayidx63 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.1220
  %46 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr, ptr %arrayidx63, align 8
  %actual_length67 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %i.0222, i32 2
  %47 = ptrtoint ptr %actual_length67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual_length67, align 4
  %iov_len69 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.1220, i32 1
  %49 = ptrtoint ptr %iov_len69 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %iov_len69, align 4
  %inc70 = add nuw i32 %iovnum.1220, 1
  %50 = load i32, ptr %actual_length67, align 4
  %add74 = add i32 %50, %txsize.0221
  %inc75 = add nuw nsw i32 %i.0222, 1
  %51 = ptrtoint ptr %number_of_packets59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %number_of_packets59, align 4
  %cmp60 = icmp slt i32 %inc75, %52
  br i1 %cmp60, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %iovnum.1.lcssa = phi i32 [ 1, %for.cond.preheader.for.end_crit_edge ], [ %inc70, %for.body.for.end_crit_edge ]
  %txsize.0.lcssa = phi i32 [ 48, %for.cond.preheader.for.end_crit_edge ], [ %add74, %for.body.for.end_crit_edge ]
  %53 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %actual_length, align 4
  %add77 = add i32 %54, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %txsize.0.lcssa, i32 %add77)
  %cmp78.not = icmp eq i32 %txsize.0.lcssa, %add77
  br i1 %cmp78.not, label %for.end.if.end83_crit_edge, label %cleanup

for.end.if.end83_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

cleanup:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %ud80 = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 4
  call void @usbip_event_add(ptr noundef %ud80, i32 noundef 5) #7
  br label %out

if.end83:                                         ; preds = %for.end.if.end83_crit_edge, %land.lhs.true54.if.end83_crit_edge, %if.then38, %land.lhs.true35.if.end83_crit_edge, %land.lhs.true32.if.end83_crit_edge
  %iovnum.2 = phi i32 [ 2, %if.then38 ], [ 1, %land.lhs.true54.if.end83_crit_edge ], [ 1, %land.lhs.true35.if.end83_crit_edge ], [ 1, %land.lhs.true32.if.end83_crit_edge ], [ %iovnum.1.lcssa, %for.end.if.end83_crit_edge ]
  %txsize.1 = phi i32 [ %add47, %if.then38 ], [ 48, %land.lhs.true54.if.end83_crit_edge ], [ 48, %land.lhs.true35.if.end83_crit_edge ], [ 48, %land.lhs.true32.if.end83_crit_edge ], [ %txsize.0.lcssa, %for.end.if.end83_crit_edge ]
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load85 = load i8, ptr %type, align 4
  %bf.lshr86.mask = and i8 %bf.load85, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr86.mask)
  %cmp88 = icmp eq i8 %bf.lshr86.mask, 64
  br i1 %cmp88, label %if.then89, label %if.end83.if.end104_crit_edge

if.end83.if.end104_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then89:                                        ; preds = %if.end83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %56 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %len, align 4
  %call90 = call ptr @usbip_alloc_iso_desc_pdu(ptr noundef %1, ptr noundef nonnull %len) #7
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %cleanup101, label %cleanup101.thread

cleanup101.thread:                                ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx95 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.2
  %57 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call90, ptr %arrayidx95, align 8
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  %iov_len98 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.2, i32 1
  %60 = ptrtoint ptr %iov_len98 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %iov_len98, align 4
  %add99 = add i32 %59, %txsize.1
  %inc100 = add i32 %iovnum.2, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  br label %if.end104

cleanup101:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %ud93 = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 4
  call void @usbip_event_add(ptr noundef %ud93, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  br label %out

if.end104:                                        ; preds = %cleanup101.thread, %if.end83.if.end104_crit_edge
  %iso_buffer.0 = phi ptr [ null, %if.end83.if.end104_crit_edge ], [ %call90, %cleanup101.thread ]
  %iovnum.4 = phi i32 [ %iovnum.2, %if.end83.if.end104_crit_edge ], [ %inc100, %cleanup101.thread ]
  %txsize.3 = phi i32 [ %txsize.1, %if.end83.if.end104_crit_edge ], [ %add99, %cleanup101.thread ]
  %tcp_socket = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 4, i32 5
  %61 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tcp_socket, align 4
  %call106 = call i32 @kernel_sendmsg(ptr noundef %62, ptr noundef nonnull %msg, ptr noundef nonnull %call8.i.i, i32 noundef %iovnum.4, i32 noundef %txsize.3) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call106, i32 %txsize.3)
  %cmp107.not = icmp eq i32 %call106, %txsize.3
  br i1 %cmp107.not, label %if.end104.out_crit_edge, label %if.then108

if.end104.out_crit_edge:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %ud105 = getelementptr inbounds %struct.vudc, ptr %udc, i32 0, i32 4
  call void @usbip_event_add(ptr noundef %ud105, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call106)
  %cmp110 = icmp sgt i32 %call106, -1
  %spec.select = select i1 %cmp110, i32 -32, i32 %call106
  br label %out

out:                                              ; preds = %if.then108, %if.end104.out_crit_edge, %cleanup101, %cleanup, %if.then7
  %retval.0.i.i199 = phi ptr [ %call8.i.i, %cleanup101 ], [ %call8.i.i, %if.end104.out_crit_edge ], [ %call8.i.i, %cleanup ], [ null, %if.then7 ], [ %call8.i.i, %if.then108 ]
  %iso_buffer.1 = phi ptr [ null, %cleanup101 ], [ %iso_buffer.0, %if.end104.out_crit_edge ], [ null, %cleanup ], [ null, %if.then7 ], [ %iso_buffer.0, %if.then108 ]
  %ret.3 = phi i32 [ -12, %cleanup101 ], [ %txsize.3, %if.end104.out_crit_edge ], [ -32, %cleanup ], [ -12, %if.then7 ], [ %spec.select, %if.then108 ]
  %txsize.4 = phi i32 [ %txsize.1, %cleanup101 ], [ %txsize.3, %if.end104.out_crit_edge ], [ %txsize.0.lcssa, %cleanup ], [ 0, %if.then7 ], [ %txsize.3, %if.then108 ]
  call void @kfree(ptr noundef %retval.0.i.i199) #7
  call void @kfree(ptr noundef %iso_buffer.1) #7
  call void @free_urbp_and_urb(ptr noundef %urb_p) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp114 = icmp slt i32 %ret.3, 0
  %spec.select224 = select i1 %cmp114, i32 %ret.3, i32 %txsize.4
  br label %cleanup117

cleanup117:                                       ; preds = %out, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %spec.select224, %out ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_header_correct_endian(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbip_alloc_iso_desc_pdu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_urbp_and_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_pack_pdu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vudc_tx.c", i32 232, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @v_tx_loop._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @v_tx_loop._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/usbip/vudc_tx.c", i32 89, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @v_send_ret_submit._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @v_send_ret_submit._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/usbip/vudc_tx.c", i32 110, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @v_send_ret_submit.__UNIQUE_ID_ddebug462, !14, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2148247497, i64 2148247502, i64 2148247515, i64 2148247559, i64 2148247593, i64 2148247614}
