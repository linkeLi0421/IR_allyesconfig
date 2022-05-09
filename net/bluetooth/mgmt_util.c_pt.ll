; ModuleID = '/llk/IR_all_yes/net/bluetooth/mgmt_util.c_pt.bc'
source_filename = "../net/bluetooth/mgmt_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mgmt_hdr = type { i16, i16, i16 }
%struct.mgmt_ev_cmd_status = type <{ i16, i8 }>
%struct.hci_mon_hdr = type { i16, i16, i16 }
%struct.mgmt_ev_cmd_complete = type <{ i16, i8, [0 x i8] }>
%struct.mgmt_pending_cmd = type { %struct.list_head, i16, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }

@mgmt_cmd_status.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mgmt_cmd_status\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/bluetooth/mgmt_util.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sock %p, index %u, cmd %u, status %u\0A\00", [58 x i8] zeroinitializer }, align 32
@mgmt_cmd_complete.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mgmt_cmd_complete\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sock %p\0A\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 133, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [29 x i8] c"../net/bluetooth/mgmt_util.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 177, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mgmt_alloc_skb(ptr noundef %hdev, i16 noundef zeroext %opcode, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 6
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 6
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 6
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hdev, ptr %4, align 8
  %opcode4 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %opcode4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %opcode, ptr %opcode4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgmt_send_event_skb(i16 noundef zeroext %channel, ptr noundef %skb, i32 noundef %flag, ptr noundef %skip_sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i.i, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %channel)
  %cmp = icmp eq i16 %channel, 3
  br i1 %cmp, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %opcode = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %opcode, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len1, align 4
  %conv8 = trunc i32 %12 to i16
  tail call void @hci_send_monitor_ctrl_event(ptr noundef %4, i16 noundef zeroext %8, ptr noundef %10, i16 noundef zeroext %conv8, i64 noundef %call.i.i, i32 noundef %flag, ptr noundef %skip_sk) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %call10 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 6) #6
  %opcode13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %13 = ptrtoint ptr %opcode13 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %opcode13, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %call10 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %call10, align 1
  %tobool15.not = icmp eq ptr %4, null
  br i1 %tobool15.not, label %if.end9.if.end18_crit_edge, label %if.then16

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 4
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id, align 8
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end9.if.end18_crit_edge
  %.sink = phi i16 [ %19, %if.then16 ], [ -1, %if.end9.if.end18_crit_edge ]
  %20 = getelementptr inbounds %struct.mgmt_hdr, ptr %call10, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %.sink, ptr %20, align 1
  %conv19 = trunc i32 %1 to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv19)
  %len20 = getelementptr inbounds %struct.mgmt_hdr, ptr %call10, i32 0, i32 2
  %23 = ptrtoint ptr %len20 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %len20, align 1
  tail call void @hci_send_to_channel(i16 noundef zeroext %channel, ptr noundef nonnull %skb, i32 noundef %flag, ptr noundef %skip_sk) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_send_monitor_ctrl_event(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_send_to_channel(i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgmt_send_event(i16 noundef zeroext %event, ptr noundef %hdev, i16 noundef zeroext %channel, ptr noundef readonly %data, i16 noundef zeroext %data_len, i32 noundef %flag, ptr noundef %skip_sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %data_len to i32
  %add.i = add nuw nsw i32 %conv, 6
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 6
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 6
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hdev, ptr %4, align 8
  %opcode4.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %opcode4.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %event, ptr %opcode4.i, align 4
  %tobool1.not = icmp eq ptr %data, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv) #6
  %7 = call ptr @memcpy(ptr %call.i, ptr %data, i32 %conv)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @mgmt_send_event_skb(i16 noundef zeroext %channel, ptr noundef nonnull %call.i.i, i32 noundef %flag, ptr noundef %skip_sk)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgmt_cmd_status(ptr noundef %sk, i16 noundef zeroext %index, i16 noundef zeroext %cmd, i8 noundef zeroext %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mgmt_cmd_status.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mgmt_cmd_status, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %index to i32
  %conv3 = zext i16 %cmd to i32
  %conv4 = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mgmt_cmd_status.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.3, ptr noundef %sk, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 9, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call9 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 6) #6
  %0 = ptrtoint ptr %call9 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 512, ptr %call9, align 1
  %1 = tail call i16 @llvm.bswap.i16(i16 %index)
  %index10 = getelementptr inbounds %struct.mgmt_hdr, ptr %call9, i32 0, i32 1
  %2 = ptrtoint ptr %index10 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %index10, align 1
  %len = getelementptr inbounds %struct.mgmt_hdr, ptr %call9, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 768, ptr %len, align 1
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #6
  %status12 = getelementptr inbounds %struct.mgmt_ev_cmd_status, ptr %call11, i32 0, i32 1
  %4 = ptrtoint ptr %status12 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %status, ptr %status12, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %cmd)
  %6 = ptrtoint ptr %call11 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %call11, align 1
  %7 = ptrtoint ptr %index10 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %index10, align 1
  %call15 = tail call i32 @hci_sock_get_cookie(ptr noundef %sk) #6
  %call16 = tail call fastcc ptr @create_monitor_ctrl_event(i16 noundef zeroext %8, i32 noundef %call15, i16 noundef zeroext 2, i16 noundef zeroext 3, ptr noundef %call11)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  %.sink = phi i64 [ %call.i.i, %if.else ], [ %11, %if.then18 ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %.sink, ptr %12, align 8
  %call20 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then22, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  br i1 %tobool17.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call16, i32 noundef 0, ptr noundef null) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call16, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ %call20, %if.then25 ], [ %call20, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_monitor_ctrl_event(i16 noundef zeroext %index, i32 noundef %cookie, i16 noundef zeroext %opcode, i16 noundef zeroext %len, ptr noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  %add.i = add nuw nsw i32 %conv, 14
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %cookie) #6
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %call1, align 1
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #6
  %6 = tail call i16 @llvm.bswap.i16(i16 %opcode) #6
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %call2, align 1
  %tobool3.not = icmp eq ptr %buf, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv) #6
  %8 = call ptr @memcpy(ptr %call.i, ptr %buf, i32 %conv)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %call.i.i26 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  %9 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call.i.i26, ptr %9, align 8
  %call8 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 6) #6
  %11 = ptrtoint ptr %call8 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 4352, ptr %call8, align 1
  %index10 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call8, i32 0, i32 1
  %12 = ptrtoint ptr %index10 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %index, ptr %index10, align 1
  %len11 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len11, align 4
  %15 = trunc i32 %14 to i16
  %conv12 = add i16 %15, -6
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %len13 = getelementptr inbounds %struct.hci_mon_hdr, ptr %call8, i32 0, i32 2
  %17 = ptrtoint ptr %len13 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %len13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_sock_get_cookie(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgmt_cmd_complete(ptr noundef %sk, i16 noundef zeroext %index, i16 noundef zeroext %cmd, i8 noundef zeroext %status, ptr noundef readonly %rp, i32 noundef %rp_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mgmt_cmd_complete.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mgmt_cmd_complete, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mgmt_cmd_complete.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.5, ptr noundef %sk) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add = add i32 %rp_len, 9
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 6) #6
  %0 = ptrtoint ptr %call7 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 256, ptr %call7, align 1
  %1 = tail call i16 @llvm.bswap.i16(i16 %index)
  %index8 = getelementptr inbounds %struct.mgmt_hdr, ptr %call7, i32 0, i32 1
  %2 = ptrtoint ptr %index8 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %index8, align 1
  %add9 = add i32 %rp_len, 3
  %conv = trunc i32 %add9 to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %len = getelementptr inbounds %struct.mgmt_hdr, ptr %call7, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %len, align 1
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add9) #6
  %5 = tail call i16 @llvm.bswap.i16(i16 %cmd)
  %6 = ptrtoint ptr %call11 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %call11, align 1
  %status13 = getelementptr inbounds %struct.mgmt_ev_cmd_complete, ptr %call11, i32 0, i32 1
  %7 = ptrtoint ptr %status13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %status, ptr %status13, align 1
  %tobool14.not = icmp eq ptr %rp, null
  br i1 %tobool14.not, label %if.end6.if.end16_crit_edge, label %if.then15

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.mgmt_ev_cmd_complete, ptr %call11, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %data, ptr %rp, i32 %rp_len)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end6.if.end16_crit_edge
  %9 = ptrtoint ptr %index8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %index8, align 1
  %call18 = tail call i32 @hci_sock_get_cookie(ptr noundef %sk) #6
  %call21 = tail call fastcc ptr @create_monitor_ctrl_event(i16 noundef zeroext %10, i32 noundef %call18, i16 noundef zeroext 1, i16 noundef zeroext %conv, ptr noundef %call11)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  %.sink = phi i64 [ %call.i.i, %if.else ], [ %13, %if.then23 ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %.sink, ptr %14, align 8
  %call25 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.then27, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  br i1 %tobool22.not, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %call21, i32 noundef 0, ptr noundef null) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call21, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ %call25, %if.then30 ], [ %call25, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mgmt_pending_find(i16 noundef zeroext %channel, i16 noundef zeroext %opcode, ptr noundef readonly %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_pending = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 184
  %0 = ptrtoint ptr %mgmt_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %cmd.022 = load ptr, ptr %mgmt_pending, align 4
  %cmp.not23 = icmp eq ptr %cmd.022, %mgmt_pending
  br i1 %cmp.not23, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cmd.024 = phi ptr [ %cmd.0, %for.inc.for.body_crit_edge ], [ %cmd.022, %entry.for.body_crit_edge ]
  %sk = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %cmd.024, i32 0, i32 5
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 4
  %call = tail call zeroext i16 @hci_sock_get_channel(ptr noundef %2) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %call, i16 %channel)
  %cmp3.not = icmp eq i16 %call, %channel
  br i1 %cmp3.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %opcode5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %cmd.024, i32 0, i32 1
  %3 = ptrtoint ptr %opcode5 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %opcode5, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %opcode)
  %cmp8 = icmp eq i16 %4, %opcode
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %cmd.024 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cmd.0 = load ptr, ptr %cmd.024, align 4
  %cmp.not = icmp eq ptr %cmd.0, %mgmt_pending
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %cmd.024, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hci_sock_get_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mgmt_pending_find_data(i16 noundef zeroext %channel, i16 noundef zeroext %opcode, ptr noundef readonly %hdev, ptr noundef readnone %data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_pending = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 184
  %0 = ptrtoint ptr %mgmt_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %cmd.019 = load ptr, ptr %mgmt_pending, align 4
  %cmp.not20 = icmp eq ptr %cmd.019, %mgmt_pending
  br i1 %cmp.not20, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cmd.021 = phi ptr [ %cmd.0, %for.inc.for.body_crit_edge ], [ %cmd.019, %entry.for.body_crit_edge ]
  %user_data = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %cmd.021, i32 0, i32 7
  %1 = ptrtoint ptr %user_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %user_data, align 4
  %cmp2.not = icmp eq ptr %2, %data
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %opcode3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %cmd.021, i32 0, i32 1
  %3 = ptrtoint ptr %opcode3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %opcode3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %opcode)
  %cmp5 = icmp eq i16 %4, %opcode
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %cmd.021 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cmd.0 = load ptr, ptr %cmd.021, align 4
  %cmp.not = icmp eq ptr %cmd.0, %mgmt_pending
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %cmd.021, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mgmt_pending_foreach(i16 noundef zeroext %opcode, ptr noundef readonly %hdev, ptr nocapture noundef readonly %cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_pending = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 184
  %0 = ptrtoint ptr %mgmt_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgmt_pending, align 8
  %cmp.not27 = icmp eq ptr %1, %mgmt_pending
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %opcode)
  %cmp8.not = icmp eq i16 %opcode, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmd.028 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.029, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %cmd.028 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.029 = load ptr, ptr %cmd.028, align 4
  br i1 %cmp8.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %opcode10 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %cmd.028, i32 0, i32 1
  %3 = ptrtoint ptr %opcode10 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %opcode10, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %opcode)
  %cmp13.not = icmp eq i16 %4, %opcode
  br i1 %cmp13.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  tail call void %cb(ptr noundef %cmd.028, ptr noundef %data) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.029, %mgmt_pending
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mgmt_pending_new(ptr noundef %sk, i16 noundef zeroext %opcode, ptr nocapture noundef readonly %hdev, ptr noundef %data, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %opcode1 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %opcode1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %opcode, ptr %opcode1, align 8
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 8
  %conv = zext i16 %3 to i32
  %index = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %index, align 4
  %conv2 = zext i16 %len to i32
  %call3 = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %conv2, i32 noundef 3264) #6
  %param = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %param, align 8
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %param_len = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %param_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv2, ptr %param_len, align 4
  %sk9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %sk9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sk, ptr %sk9, align 8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !20
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end7.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !21

if.end7.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end7
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !22

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end7.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end7.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.else.i.i.i.i.cleanup_crit_edge ], [ %call7.i.i, %if.end15.sink.split.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mgmt_pending_add(ptr noundef %sk, i16 noundef zeroext %opcode, ptr noundef %hdev, ptr noundef %data, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mgmt_pending_new(ptr noundef %sk, i16 noundef zeroext %opcode, ptr noundef %hdev, ptr noundef %data, i16 noundef zeroext %len)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mgmt_pending = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 184
  %0 = ptrtoint ptr %mgmt_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgmt_pending, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %mgmt_pending, ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mgmt_pending, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %mgmt_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call, ptr %mgmt_pending, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mgmt_pending_free(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !24
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !22

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #6
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @sk_free(ptr noundef %1) #6
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %param = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param, align 4
  tail call void @kfree(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %cmd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mgmt_pending_remove(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mgmt_pending_free(ptr noundef %cmd)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/mgmt_util.c", i32 133, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mgmt_cmd_status.__UNIQUE_ID_ddebug475, !1, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/mgmt_util.c", i32 177, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mgmt_cmd_complete.__UNIQUE_ID_ddebug476, !7, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2148798132, i64 2148798137, i64 2148798150, i64 2148798194, i64 2148798228, i64 2148798249}
!20 = !{i64 2148273848, i64 2148273880, i64 2148273909, i64 2148273943, i64 2148273974, i64 2148273997}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148361849}
!24 = !{i64 2148276313, i64 2148276345, i64 2148276374, i64 2148276408, i64 2148276439, i64 2148276462}
!25 = !{i64 2150448146}
