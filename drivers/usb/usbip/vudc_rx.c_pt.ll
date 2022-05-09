; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vudc_rx.c_pt.bc'
source_filename = "../drivers/usb/usbip/vudc_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usbip_header = type { %struct.usbip_header_basic, %union.anon.145 }
%struct.usbip_header_basic = type { i32, i32, i32, i32, i32 }
%union.anon.145 = type { %struct.usbip_header_cmd_submit }
%struct.usbip_header_cmd_submit = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.urbp = type { ptr, ptr, %struct.list_head, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vep = type { %struct.usb_ep, i8, [8 x i8], ptr, ptr, %struct.list_head, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@v_rx_loop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014usbip_vudc: %s:%d: v_rx exit with error %d\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"v_rx_loop\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/usbip/vudc_rx.c\00", [36 x i8] zeroinitializer }, align 32
@v_rx_loop._entry_ptr = internal global ptr @v_rx_loop._entry, section ".printk_index", align 4
@v_rx_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013usbip_vudc: %s:%d: rx: unknown command\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"v_rx_pdu\00", [23 x i8] zeroinitializer }, align 32
@v_rx_pdu._entry_ptr = internal global ptr @v_rx_pdu._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@v_recv_cmd_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 111, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"request to nonexistent endpoint\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"v_recv_cmd_submit\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@v_recv_cmd_submit._entry_ptr = internal global ptr @v_recv_cmd_submit._entry, section ".printk_index", align 4
@v_recv_cmd_submit._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 136, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CMD_SUBMIT: isoc invalid num packets %d\0A\00", [55 x i8] zeroinitializer }, align 32
@v_recv_cmd_submit._entry_ptr.11 = internal global ptr @v_recv_cmd_submit._entry.9, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 236, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 220, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 111, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [31 x i8] c"../drivers/usb/usbip/vudc_rx.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 134, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @v_recv_cmd_submit._entry, ptr @v_recv_cmd_submit._entry.9, ptr @v_recv_cmd_submit._entry_ptr, ptr @v_recv_cmd_submit._entry_ptr.11, ptr @v_rx_loop._entry, ptr @v_rx_loop._entry_ptr, ptr @v_rx_pdu._entry, ptr @v_rx_pdu._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v_rx_loop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v_rx_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v_recv_cmd_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v_recv_cmd_submit._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v_rx_loop(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %pdu.i = alloca %struct.usbip_header, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call44 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call44, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %data, i32 -1080
  %tcp_socket.i = getelementptr inbounds %struct.usbip_device, ptr %data, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.usbip_device, ptr %data, i32 0, i32 2
  %status.i = getelementptr inbounds %struct.usbip_device, ptr %data, i32 0, i32 1
  %ep.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu.i, i32 0, i32 4
  %direction.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu.i, i32 0, i32 3
  %lock.i26.i = getelementptr i8, ptr %data, i32 432
  %seqnum.i28.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu.i, i32 0, i32 1
  %number_of_packets.i.i = getelementptr inbounds %struct.usbip_header, ptr %pdu.i, i32 0, i32 1, i32 0, i32 3
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.usbip_header, ptr %pdu.i, i32 0, i32 1, i32 0, i32 1
  %setup.i.i.i = getelementptr inbounds %struct.usbip_header, ptr %pdu.i, i32 0, i32 1, i32 0, i32 5
  %urb_queue.i29.i = getelementptr i8, ptr %data, i32 320
  %prev.i.i.i = getelementptr i8, ptr %data, i32 324
  %u.i.i = getelementptr inbounds %struct.usbip_header, ptr %pdu.i, i32 0, i32 1
  %lock_tx.i.i = getelementptr i8, ptr %data, i32 328
  %tx_waitq.i.i = getelementptr i8, ptr %data, i32 380
  br label %while.body

while.body:                                       ; preds = %v_rx_pdu.exit.while.body_crit_edge, %while.body.lr.ph
  %call1 = call i32 @usbip_event_happened(ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pdu.i) #6
  %0 = call ptr @memset(ptr %pdu.i, i32 0, i32 48)
  %1 = ptrtoint ptr %tcp_socket.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tcp_socket.i, align 4
  %call.i = call i32 @usbip_recv(ptr noundef %2, ptr noundef nonnull %pdu.i, i32 noundef 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 48
  br i1 %cmp.not.i, label %if.end3.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @usbip_event_add(ptr noundef %data, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  %spec.select = select i1 %cmp1.i, i32 -32, i32 %call.i
  br label %do.end

if.end3.i:                                        ; preds = %if.end
  call void @usbip_header_correct_endian(ptr noundef nonnull %pdu.i, i32 noundef 0) #6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4.i = icmp eq i32 %4, 2
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  br i1 %cmp4.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usbip_event_add(ptr noundef %data, i32 noundef 5) #6
  br label %do.end

if.end7.i:                                        ; preds = %if.end3.i
  %5 = ptrtoint ptr %pdu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdu.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %if.end7.i
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i26.i) #6
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.bb.i
  %.pn.in.i.i = phi ptr [ %urb_queue.i29.i, %sw.bb.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %.pn.i.i, %urb_queue.i29.i
  br i1 %cmp7.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %seqnum.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %9 = ptrtoint ptr %seqnum.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seqnum.i.i, align 4
  %11 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %u.i.i, align 4
  %cmp10.not.i.i = icmp eq i32 %10, %12
  br i1 %cmp10.not.i.i, label %if.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %seqnum.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 8
  %urb_p.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %13 = ptrtoint ptr %urb_p.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urb_p.0.le.i.i, align 4
  %unlinked.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %unlinked.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -104, ptr %unlinked.i.i, align 4
  %16 = ptrtoint ptr %seqnum.i28.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seqnum.i28.i, align 4
  %18 = ptrtoint ptr %seqnum.i.i.le to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %seqnum.i.i.le, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  call void @v_kick_timer(ptr noundef %add.ptr.i, i32 noundef %19) #6
  br label %v_rx_pdu.exit

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_lock(ptr noundef %lock_tx.i.i) #6
  %20 = ptrtoint ptr %seqnum.i28.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seqnum.i28.i, align 4
  call void @v_enqueue_ret_unlink(ptr noundef %add.ptr.i, i32 noundef %21, i32 noundef 0) #6
  call void @__wake_up(ptr noundef %tx_waitq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  call void @_raw_spin_unlock(ptr noundef %lock_tx.i.i) #6
  br label %v_rx_pdu.exit

sw.bb9.i:                                         ; preds = %if.end7.i
  %call.i.i = call ptr @alloc_urbp() #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i27.i

if.then.i.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usbip_event_add(ptr noundef %data, i32 noundef 9) #6
  br label %do.end

if.end.i27.i:                                     ; preds = %sw.bb9.i
  %22 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ep.i.i, align 4
  %conv.i.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %direction.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 1
  %conv5.i.i = or i8 %conv.i.i, -128
  %address.0.i.i = select i1 %cmp.i.i, i8 %conv5.i.i, i8 %conv.i.i
  call void @_raw_spin_lock_irq(ptr noundef %lock.i26.i) #6
  %call7.i.i = call ptr @vudc_find_endpoint(ptr noundef %add.ptr.i, i8 noundef zeroext %address.0.i.i) #6
  %ep8.i.i = getelementptr inbounds %struct.urbp, ptr %call.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %ep8.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %ep8.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i.i, label %do.end.i.i, label %if.end14.i.i

do.end.i.i:                                       ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i.i = getelementptr i8, ptr %data, i32 -28
  %27 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.5) #9
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i26.i) #6
  call void @usbip_event_add(ptr noundef %data, i32 noundef 5) #6
  br label %free_urbp.i.i

if.end14.i.i:                                     ; preds = %if.end.i27.i
  %type.i.i = getelementptr inbounds %struct.vep, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i = load i8, ptr %type.i.i, align 4
  %bf.lshr.i.i = and i8 %bf.load.i.i, -64
  %type16.i.i = getelementptr inbounds %struct.urbp, ptr %call.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %type16.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load17.i.i = load i8, ptr %type16.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load17.i.i, 63
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.lshr.i.i
  store i8 %bf.set.i.i, ptr %type16.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i26.i) #6
  %31 = ptrtoint ptr %type16.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load19.i.i = load i8, ptr %type16.i.i, align 4
  %bf.set21.i.i = or i8 %bf.load19.i.i, 32
  store i8 %bf.set21.i.i, ptr %type16.i.i, align 4
  %32 = ptrtoint ptr %seqnum.i28.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seqnum.i28.i, align 4
  %seqnum23.i.i = getelementptr inbounds %struct.urbp, ptr %call.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %seqnum23.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %seqnum23.i.i, align 4
  %35 = ptrtoint ptr %ep8.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ep8.i.i, align 4
  %type25.i.i = getelementptr inbounds %struct.vep, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %type25.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load26.i.i = load i8, ptr %type25.i.i, align 4
  %bf.lshr27.mask.i.i = and i8 %bf.load26.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr27.mask.i.i)
  %cmp29.i.i = icmp eq i8 %bf.lshr27.mask.i.i, 64
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.end14.i.i.if.end.i.i.i_crit_edge

if.end14.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then31.i.i:                                    ; preds = %if.end14.i.i
  %38 = ptrtoint ptr %number_of_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %number_of_packets.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp38.i.i = icmp slt i32 %39, 0
  br i1 %cmp38.i.i, label %if.then31.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i

if.then31.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

lor.lhs.false.i.i:                                ; preds = %if.then31.i.i
  %desc.i.i = getelementptr inbounds %struct.vep, ptr %36, i32 0, i32 3
  %40 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i.i, align 4
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %44 = lshr i16 %43, 3
  %45 = and i16 %44, 3
  %narrow.i.i.i = add nuw nsw i16 %45, 1
  %46 = and i16 %43, -249
  %47 = call i16 @llvm.bswap.i16(i16 %46) #6
  %48 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %transfer_buffer_length.i.i, align 4
  %narrow.i.i = mul nuw nsw i16 %narrow.i.i.i, %47
  %mul.i.i = zext i16 %narrow.i.i to i32
  %add.i.i = add i32 %49, -1
  %sub.i.i = add i32 %add.i.i, %mul.i.i
  %div.i.i = udiv i32 %sub.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %div.i.i)
  %cmp42.i.i = icmp ugt i32 %39, %div.i.i
  br i1 %cmp42.i.i, label %lor.lhs.false.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

lor.lhs.false.i.i.cleanup.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %lor.lhs.false.i.i.cleanup.i.i_crit_edge, %if.then31.i.i.cleanup.i.i_crit_edge
  %dev48.i.i = getelementptr i8, ptr %data, i32 -992
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48.i.i, ptr noundef nonnull @.str.10, i32 noundef %39) #9
  br label %free_urbp.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.if.end.i.i.i_crit_edge, %if.end14.i.i.if.end.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 0, %if.end14.i.i.if.end.i.i.i_crit_edge ], [ %39, %lor.lhs.false.i.i.if.end.i.i.i_crit_edge ]
  %call2.i.i.i = call ptr @usb_alloc_urb(i32 noundef %.sink.i.i.i, i32 noundef 3264) #6
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.then63.i.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.if.then63.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @usbip_pack_pdu(ptr noundef nonnull %pdu.i, ptr noundef nonnull %call2.i.i.i, i32 noundef 1, i32 noundef 0) #6
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call2.i.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %transfer_buffer_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp5.not.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp5.not.i.i.i, label %if.end4.i.i.i.if.end14.i.i.i_crit_edge, label %if.end8.i.i.i.i.i

if.end4.i.i.i.if.end14.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.end4.i.i.i
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #10
  %transfer_buffer.i.i.i = getelementptr inbounds %struct.urb, ptr %call2.i.i.i, i32 0, i32 14
  %52 = ptrtoint ptr %transfer_buffer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call9.i.i.i.i.i, ptr %transfer_buffer.i.i.i, align 4
  %tobool11.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool11.not.i.i.i, label %if.end8.i.i.i.i.i.free_urb.i.i.i_crit_edge, label %if.end8.i.i.i.i.i.if.end14.i.i.i_crit_edge

if.end8.i.i.i.i.i.if.end14.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i.i

if.end8.i.i.i.i.i.free_urb.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_urb.i.i.i

if.end14.i.i.i:                                   ; preds = %if.end8.i.i.i.i.i.if.end14.i.i.i_crit_edge, %if.end4.i.i.i.if.end14.i.i.i_crit_edge
  %call16.i.i.i = call ptr @kmemdup(ptr noundef %setup.i.i.i, i32 noundef 8, i32 noundef 3264) #6
  %setup_packet.i.i.i = getelementptr inbounds %struct.urb, ptr %call2.i.i.i, i32 0, i32 21
  %53 = ptrtoint ptr %setup_packet.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call16.i.i.i, ptr %setup_packet.i.i.i, align 4
  %tobool18.not.i.i.i = icmp eq ptr %call16.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %free_buffer.i.i.i, label %if.end65.i.i

free_buffer.i.i.i:                                ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %transfer_buffer23.i.i.i = getelementptr inbounds %struct.urb, ptr %call2.i.i.i, i32 0, i32 14
  %54 = ptrtoint ptr %transfer_buffer23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %transfer_buffer23.i.i.i, align 4
  call void @kfree(ptr noundef %55) #6
  %56 = ptrtoint ptr %transfer_buffer23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %transfer_buffer23.i.i.i, align 4
  br label %free_urb.i.i.i

free_urb.i.i.i:                                   ; preds = %free_buffer.i.i.i, %if.end8.i.i.i.i.i.free_urb.i.i.i_crit_edge
  call void @usb_free_urb(ptr noundef nonnull %call2.i.i.i) #6
  br label %if.then63.i.i

if.then63.i.i:                                    ; preds = %free_urb.i.i.i, %if.end.i.i.i.if.then63.i.i_crit_edge
  call void @usbip_event_add(ptr noundef %data, i32 noundef 9) #6
  br label %free_urbp.i.i

if.end65.i.i:                                     ; preds = %if.end14.i.i.i
  %57 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %direction.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp21.i.i.i = icmp eq i32 %58, 1
  %cond.i.i.i = select i1 %cmp21.i.i.i, i32 128, i32 0
  %pipe.i.i.i = getelementptr inbounds %struct.urb, ptr %call2.i.i.i, i32 0, i32 10
  %59 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pipe.i.i.i, align 4
  %or.i.i.i = or i32 %cond.i.i.i, %60
  store i32 %or.i.i.i, ptr %pipe.i.i.i, align 4
  %61 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call2.i.i.i, ptr %call.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.urb, ptr %call2.i.i.i, i32 0, i32 12
  %62 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -115, ptr %status.i.i, align 4
  %63 = load ptr, ptr %call.i.i, align 4
  %pipe.i.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pipe.i.i, align 4
  %and.i.i = and i32 %65, 1073741823
  store i32 %and.i.i, ptr %pipe.i.i, align 4
  %66 = ptrtoint ptr %ep8.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ep8.i.i, align 4
  %type69.i.i = getelementptr inbounds %struct.vep, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %type69.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load70.i.i = load i8, ptr %type69.i.i, align 4
  %bf.lshr71.i.i = lshr i8 %bf.load70.i.i, 6
  %bf.cast72.i.i = zext i8 %bf.lshr71.i.i to i32
  %69 = zext i32 %bf.cast72.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %bf.cast72.i.i, label %if.end65.unreachabledefault.i.i [
    i32 2, label %if.end65.i.i.sw.epilog.sink.split.i.i_crit_edge
    i32 3, label %sw.bb76.i.i
    i32 0, label %sw.bb80.i.i
    i32 1, label %if.end65.i.i.sw.epilog.i.i_crit_edge
  ]

if.end65.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.end65.i.i.sw.epilog.sink.split.i.i_crit_edge:  ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i.i

sw.bb76.i.i:                                      ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i.i

sw.bb80.i.i:                                      ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i.i

if.end65.unreachabledefault.i.i:                  ; preds = %if.end65.i.i
  unreachable

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb80.i.i, %sw.bb76.i.i, %if.end65.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink174.i.i = phi i32 [ -2147483648, %sw.bb80.i.i ], [ 1073741824, %sw.bb76.i.i ], [ -1073741824, %if.end65.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %70 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i.i, align 4
  %pipe74.i.i = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %pipe74.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pipe74.i.i, align 4
  %or83.i.i = or i32 %73, %.sink174.i.i
  store i32 %or83.i.i, ptr %pipe74.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %if.end65.i.i.sw.epilog.i.i_crit_edge
  %74 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i.i, align 4
  %call90.i.i = call i32 @usbip_recv_xbuff(ptr noundef %data, ptr noundef %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i.i)
  %cmp91.i.i = icmp slt i32 %call90.i.i, 0
  br i1 %cmp91.i.i, label %sw.epilog.i.i.free_urbp.i.i_crit_edge, label %if.end94.i.i

sw.epilog.i.i.free_urbp.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_urbp.i.i

if.end94.i.i:                                     ; preds = %sw.epilog.i.i
  %76 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i.i, align 4
  %call97.i.i = call i32 @usbip_recv_iso(ptr noundef %data, ptr noundef %77) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i.i)
  %cmp98.i.i = icmp slt i32 %call97.i.i, 0
  br i1 %cmp98.i.i, label %if.end94.i.i.free_urbp.i.i_crit_edge, label %do.body103.i.i

if.end94.i.i.free_urbp.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_urbp.i.i

do.body103.i.i:                                   ; preds = %if.end94.i.i
  %call108.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i26.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  call void @v_kick_timer(ptr noundef %add.ptr.i, i32 noundef %78) #6
  %urb_entry.i.i = getelementptr inbounds %struct.urbp, ptr %call.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %urb_entry.i.i, ptr noundef %80, ptr noundef %urb_queue.i29.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body103.i.i.v_rx_pdu.exit_crit_edge

do.body103.i.i.v_rx_pdu.exit_crit_edge:           ; preds = %do.body103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v_rx_pdu.exit

if.end.i.i.i.i:                                   ; preds = %do.body103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %urb_entry.i.i, ptr %prev.i.i.i, align 4
  %82 = ptrtoint ptr %urb_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %urb_queue.i29.i, ptr %urb_entry.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.urbp, ptr %call.i.i, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %urb_entry.i.i, ptr %80, align 4
  br label %v_rx_pdu.exit

free_urbp.i.i:                                    ; preds = %if.end94.i.i.free_urbp.i.i_crit_edge, %sw.epilog.i.i.free_urbp.i.i_crit_edge, %if.then63.i.i, %cleanup.i.i, %do.end.i.i
  %ret.1.i.i = phi i32 [ -90, %cleanup.i.i ], [ -12, %if.then63.i.i ], [ -32, %do.end.i.i ], [ %call97.i.i, %if.end94.i.i.free_urbp.i.i_crit_edge ], [ %call90.i.i, %sw.epilog.i.i.free_urbp.i.i_crit_edge ]
  call void @free_urbp_and_urb(ptr noundef nonnull %call.i.i) #6
  br label %do.end

sw.default.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 220) #9
  br label %do.end

v_rx_pdu.exit:                                    ; preds = %if.end.i.i.i.i, %do.body103.i.i.v_rx_pdu.exit_crit_edge, %for.end.i.i, %if.end.i.i
  %call2.i.i.sink = phi i32 [ %call2.i.i, %for.end.i.i ], [ %call2.i.i, %if.end.i.i ], [ %call108.i.i, %if.end.i.i.i.i ], [ %call108.i.i, %do.body103.i.i.v_rx_pdu.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i26.i, i32 noundef %call2.i.i.sink) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu.i) #6
  %call = call zeroext i1 @kthread_should_stop() #6
  br i1 %call, label %v_rx_pdu.exit.while.end_crit_edge, label %v_rx_pdu.exit.while.body_crit_edge

v_rx_pdu.exit.while.body_crit_edge:               ; preds = %v_rx_pdu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

v_rx_pdu.exit.while.end_crit_edge:                ; preds = %v_rx_pdu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end:                                           ; preds = %sw.default.i, %free_urbp.i.i, %if.then.i.i, %if.then6.i, %if.then.i
  %retval.0.i.ph = phi i32 [ -12, %if.then.i.i ], [ %ret.1.i.i, %free_urbp.i.i ], [ -32, %sw.default.i ], [ -16, %if.then6.i ], [ %spec.select, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu.i) #6
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 236, i32 noundef %retval.0.i.ph) #9
  br label %while.end

while.end:                                        ; preds = %do.end, %v_rx_pdu.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %entry.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ 0, %v_rx_pdu.exit.while.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_event_happened(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_recv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_header_correct_endian(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v_kick_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v_enqueue_ret_unlink(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_urbp() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vudc_find_endpoint(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_recv_xbuff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_recv_iso(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_urbp_and_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_pack_pdu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vudc_rx.c", i32 236, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @v_rx_loop._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @v_rx_loop._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/usbip/vudc_rx.c", i32 220, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @v_rx_pdu._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @v_rx_pdu._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/usbip/vudc_rx.c", i32 111, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @v_recv_cmd_submit._entry, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @v_recv_cmd_submit._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/usbip/vudc_rx.c", i32 134, i32 4}
!20 = !{ptr @v_recv_cmd_submit._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @v_recv_cmd_submit._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
