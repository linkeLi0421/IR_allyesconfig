; ModuleID = '/llk/IR_all_yes/net/nfc/hci/hcp.c_pt.bc'
source_filename = "../net/nfc/hci/hcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hci_msg = type { %struct.list_head, %struct.sk_buff_head, i8, ptr, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.90, i32, %struct.spinlock }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfc_hci_dev = type { ptr, i32, i8, %struct.mutex, %struct.list_head, %struct.work_struct, %struct.timer_list, ptr, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head, ptr, ptr, %struct.nfc_hci_init_data, ptr, [256 x i8], [128 x %struct.nfc_hci_pipe], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nfc_hci_init_data = type { i8, [50 x %struct.nfc_hci_gate], [9 x i8] }
%struct.nfc_hci_gate = type { i8, i8 }
%struct.nfc_hci_pipe = type { i8, i8 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.sk_buff = type { %union.anon.70, %union.anon.73, %union.anon.74, [48 x i8], %union.anon.75, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.77, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr, %union.anon.72 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { ptr }
%union.anon.74 = type { i64 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, ptr }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.79, i32, i32, i32, i16, i16, %union.anon.81, i32, %union.anon.82, %union.anon.83, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.79 = type { i32 }
%union.anon.81 = type { i32 }
%union.anon.82 = type { i32 }
%union.anon.83 = type { i16 }
%struct.hcp_packet = type { i8, %struct.hcp_message }
%struct.hcp_message = type { i8, [0 x i8] }

@nfc_hci_hcp_message_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013hci: %s: UNKNOWN MSG Type %d, instruction=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfc_hci_hcp_message_rx\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/nfc/hci/hcp.c\00", [46 x i8] zeroinitializer }, align 32
@nfc_hci_hcp_message_rx._entry_ptr = internal global ptr @nfc_hci_hcp_message_rx._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.14 = private constant [21 x i8] c"../net/nfc/hci/hcp.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 133, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 1984, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @nfc_hci_hcp_message_rx._entry, ptr @nfc_hci_hcp_message_rx._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @skb_queue_head_init.__key, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_hci_hcp_message_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_hcp_message_tx(ptr noundef %hdev, i8 noundef zeroext %pipe, i8 noundef zeroext %type, i8 noundef zeroext %instruction, ptr noundef readonly %payload, i32 noundef %payload_len, ptr noundef %cb, ptr noundef %cb_context, i32 noundef %completion_delay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #7
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup65

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %msg_frags = getelementptr inbounds %struct.hci_msg, ptr %call7.i.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.hci_msg, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  %5 = ptrtoint ptr %msg_frags to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msg_frags, ptr %msg_frags, align 8
  %prev.i.i = getelementptr inbounds %struct.hci_msg, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg_frags, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.hci_msg, ptr %call7.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp2 = icmp eq i8 %type, 0
  %wait_response = getelementptr inbounds %struct.hci_msg, ptr %call7.i.i, i32 0, i32 2
  %frombool = zext i1 %cmp2 to i8
  %8 = ptrtoint ptr %wait_response to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %wait_response, align 8
  %cb4 = getelementptr inbounds %struct.hci_msg, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %cb4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cb, ptr %cb4, align 4
  %cb_context5 = getelementptr inbounds %struct.hci_msg, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %cb_context5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cb_context, ptr %cb_context5, align 8
  %completion_delay6 = getelementptr inbounds %struct.hci_msg, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %completion_delay6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %completion_delay, ptr %completion_delay6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %payload_len)
  %cmp7126 = icmp ult i32 %payload_len, 2147483647
  br i1 %cmp7126, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %add = add nuw nsw i32 %payload_len, 1
  %max_data_link_payload = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 1
  %tx_headroom = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 15
  %tx_tailroom = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 16
  %12 = shl i8 %type, 6
  %13 = and i8 %instruction, 63
  %or117 = or i8 %13, %12
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %firstfrag.0.off0129 = phi i1 [ true, %while.body.lr.ph ], [ false, %cleanup.while.body_crit_edge ]
  %hci_len.0128 = phi i32 [ %add, %while.body.lr.ph ], [ %sub18, %cleanup.while.body_crit_edge ]
  %ptr.0127 = phi ptr [ %payload, %while.body.lr.ph ], [ %ptr.1, %cleanup.while.body_crit_edge ]
  %14 = ptrtoint ptr %max_data_link_payload to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_data_link_payload, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %hci_len.0128, i32 %15)
  %cmp10.not.not = icmp ult i32 %hci_len.0128, %15
  %sub = add i32 %15, -1
  %data_link_len.0 = select i1 %cmp10.not.not, i32 %hci_len.0128, i32 %sub
  %16 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_headroom, align 8
  %18 = ptrtoint ptr %tx_tailroom to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_tailroom, align 4
  %add15 = add i32 %data_link_len.0, 1
  %add16 = add i32 %add15, %17
  %add17 = add i32 %add16, %19
  %sub18 = sub i32 %hci_len.0128, %data_link_len.0
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add17, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %cmp20 = icmp eq ptr %call.i, null
  br i1 %cmp20, label %while.body.out_skb_err_crit_edge, label %if.end23

while.body.out_skb_err_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_skb_err

if.end23:                                         ; preds = %while.body
  %20 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_headroom, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %21
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %25, i32 %21
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call26 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add15) #4
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %pipe, ptr %27, align 1
  %message = getelementptr inbounds %struct.hcp_packet, ptr %27, i32 0, i32 1
  br i1 %firstfrag.0.off0129, label %if.then28, label %if.else41

if.then28:                                        ; preds = %if.end23
  %29 = ptrtoint ptr %message to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or117, ptr %message, align 1
  %tobool34.not = icmp eq ptr %ptr.0127, null
  br i1 %tobool34.not, label %if.then28.if.end44_crit_edge, label %if.then35

if.then28.if.end44_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then35:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %data37 = getelementptr inbounds %struct.hcp_packet, ptr %27, i32 1
  %sub38 = add i32 %data_link_len.0, -1
  %30 = call ptr @memcpy(ptr %data37, ptr %ptr.0127, i32 %sub38)
  %add.ptr = getelementptr i8, ptr %ptr.0127, i32 %sub38
  br label %if.end44

if.else41:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %31 = call ptr @memcpy(ptr %message, ptr %ptr.0127, i32 %data_link_len.0)
  %add.ptr43 = getelementptr i8, ptr %ptr.0127, i32 %data_link_len.0
  br label %if.end44

if.end44:                                         ; preds = %if.else41, %if.then35, %if.then28.if.end44_crit_edge
  %ptr.1 = phi ptr [ %add.ptr, %if.then35 ], [ null, %if.then28.if.end44_crit_edge ], [ %add.ptr43, %if.else41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18)
  %cmp45 = icmp eq i32 %sub18, 0
  br i1 %cmp45, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %27, align 1
  %or50 = or i8 %33, -128
  store i8 %or50, ptr %27, align 1
  tail call void @skb_queue_tail(ptr noundef %msg_frags, ptr noundef nonnull %call.i) #4
  br label %while.end

cleanup:                                          ; preds = %if.end44
  tail call void @skb_queue_tail(ptr noundef %msg_frags, ptr noundef nonnull %call.i) #4
  %cmp7 = icmp sgt i32 %sub18, 0
  br i1 %cmp7, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %if.end.while.end_crit_edge
  %msg_tx_mutex = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %msg_tx_mutex, i32 noundef 0) #4
  %shutting_down = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 2
  %34 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %shutting_down, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool57.not = icmp eq i8 %35, 0
  br i1 %tobool57.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %msg_tx_mutex) #4
  br label %out_skb_err

if.end60:                                         ; preds = %while.end
  %msg_tx_queue = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 4
  %prev.i119 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %prev.i119 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i119, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %37, ptr noundef %msg_tx_queue) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end60.list_add_tail.exit_crit_edge

if.end60.list_add_tail.exit_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %prev.i119 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %prev.i119, align 4
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg_tx_queue, ptr %call7.i.i, align 8
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call7.i.i, ptr %37, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end60.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %msg_tx_mutex) #4
  %msg_tx_work = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i120 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %msg_tx_work) #4
  br label %cleanup65

out_skb_err:                                      ; preds = %if.then58, %while.body.out_skb_err_crit_edge
  %err.2 = phi i32 [ -108, %if.then58 ], [ -12, %while.body.out_skb_err_crit_edge ]
  tail call void @skb_queue_purge(ptr noundef %msg_frags) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup65

cleanup65:                                        ; preds = %out_skb_err, %list_add_tail.exit, %entry.cleanup65_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_skb_err ], [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup65_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_hci_hcp_message_rx(ptr noundef %hdev, i8 noundef zeroext %pipe, i8 noundef zeroext %type, i8 noundef zeroext %instruction, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %do.end [
    i8 2, label %sw.bb
    i8 0, label %sw.bb1
    i8 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nfc_hci_resp_received(ptr noundef %hdev, i8 noundef zeroext %instruction, ptr noundef %skb) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nfc_hci_cmd_received(ptr noundef %hdev, i8 noundef zeroext %pipe, i8 noundef zeroext %instruction, ptr noundef %skb) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nfc_hci_event_received(ptr noundef %hdev, i8 noundef zeroext %pipe, i8 noundef zeroext %instruction, ptr noundef %skb) #4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %type to i32
  %conv4 = zext i8 %instruction to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv4) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_resp_received(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_cmd_received(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_event_received(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/hci/hcp.c", i32 133, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfc_hci_hcp_message_rx._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfc_hci_hcp_message_rx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @skb_queue_head_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i8 0, i8 2}
