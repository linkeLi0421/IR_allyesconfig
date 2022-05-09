; ModuleID = '/llk/IR_all_yes/net/llc/llc_station.c_pt.bc'
source_filename = "../net/llc/llc_station.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_station_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llc_set_station_handler(ptr noundef nonnull @llc_station_rcv) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_set_station_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llc_station_rcv(ptr noundef %skb) #2 align 64 {
entry:
  %mac_da.i26 = alloca [6 x i8], align 1
  %mac_da.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %ssap.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap.i, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true.i:                                  ; preds = %entry
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1.i, align 1
  %9 = and i8 %8, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %9)
  %10 = icmp eq i8 %9, -81
  br i1 %10, label %llc_stat_ev_rx_null_dsap_xid_c.exit, label %land.lhs.true.i.land.lhs.true.i22_crit_edge

land.lhs.true.i.land.lhs.true.i22_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i22

llc_stat_ev_rx_null_dsap_xid_c.exit:              ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not.i.not = icmp eq i8 %12, 0
  br i1 %tobool12.not.i.not, label %if.then, label %llc_stat_ev_rx_null_dsap_xid_c.exit.land.lhs.true.i22_crit_edge

llc_stat_ev_rx_null_dsap_xid_c.exit.land.lhs.true.i22_crit_edge: ; preds = %llc_stat_ev_rx_null_dsap_xid_c.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i22

if.then:                                          ; preds = %llc_stat_ev_rx_null_dsap_xid_c.exit
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_da.i) #4
  %13 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %14 = call ptr @memset(ptr %mac_da.i, i32 255, i32 6)
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 8
  %call.i = tail call ptr @llc_alloc_frame(ptr noundef null, ptr noundef %16, i8 noundef zeroext 3, i32 noundef 3) #4
  %tobool.not.i11 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i11, label %if.then.llc_station_ac_send_xid_r.exit_crit_edge, label %if.end.i

if.then.llc_station_ac_send_xid_r.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %llc_station_ac_send_xid_r.exit

if.end.i:                                         ; preds = %if.then
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %17 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp.i.i = icmp eq i16 %18, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.llc_pdu_decode_sa.exit.i_crit_edge

if.end.i.llc_pdu_decode_sa.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %llc_pdu_decode_sa.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %22 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 %conv.i.i.i.i
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %mac_da.i, ptr %h_source.i.i, i32 6)
  br label %llc_pdu_decode_sa.exit.i

llc_pdu_decode_sa.exit.i:                         ; preds = %if.then.i.i, %if.end.i.llc_pdu_decode_sa.exit.i_crit_edge
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i, align 8
  %26 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i2.i = zext i16 %27 to i32
  %add.ptr.i.i.i3.i = getelementptr i8, ptr %25, i32 %conv.i.i.i2.i
  %ssap1.i.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i3.i, i32 0, i32 1
  %28 = ptrtoint ptr %ssap1.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ssap1.i.i, align 1
  %30 = and i8 %29, -2
  %call.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 3) #4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i12 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i.i12, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i13 = trunc i32 %sub.ptr.sub.i.i.i to i16
  %network_header.i.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i.i.i14 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i.i13, ptr %network_header.i.i.i14, align 4
  %conv.i.i.i4.i = and i32 %sub.ptr.sub.i.i.i, 65535
  %add.ptr.i.i.i5.i = getelementptr i8, ptr %34, i32 %conv.i.i.i4.i
  %36 = ptrtoint ptr %add.ptr.i.i.i5.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %30, ptr %add.ptr.i.i.i5.i, align 1
  %ssap4.i.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i5.i, i32 0, i32 1
  %37 = ptrtoint ptr %ssap4.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %ssap4.i.i, align 1
  %38 = load ptr, ptr %head.i.i.i12, align 8
  %39 = load i16, ptr %network_header.i.i.i14, align 4
  %conv.i.i.i8.i = zext i16 %39 to i32
  %add.ptr.i.i.i9.i = getelementptr i8, ptr %38, i32 %conv.i.i.i8.i
  %ctrl_1.i.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i9.i, i32 0, i32 2
  %40 = ptrtoint ptr %ctrl_1.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -65, ptr %ctrl_1.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.llc_pdu_un, ptr %add.ptr.i.i.i9.i, i32 1
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -127, ptr %add.ptr.i.i, align 1
  %type.i.i = getelementptr %struct.llc_pdu_un, ptr %add.ptr.i.i.i9.i, i32 1, i32 1
  %42 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %type.i.i, align 1
  %rw.i.i = getelementptr %struct.llc_pdu_un, ptr %add.ptr.i.i.i9.i, i32 1, i32 2
  %43 = ptrtoint ptr %rw.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -2, ptr %rw.i.i, align 1
  %call10.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #4
  %44 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %13, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 86
  %46 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr.i, align 64
  %call2.i = call i32 @llc_mac_hdr_init(ptr noundef nonnull %call.i, ptr noundef %47, ptr noundef nonnull %mac_da.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end7.i, label %free.i, !prof !9

if.end7.i:                                        ; preds = %llc_pdu_decode_sa.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call8.i = call i32 @dev_queue_xmit(ptr noundef nonnull %call.i) #4
  br label %llc_station_ac_send_xid_r.exit

free.i:                                           ; preds = %llc_pdu_decode_sa.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %llc_station_ac_send_xid_r.exit

llc_station_ac_send_xid_r.exit:                   ; preds = %free.i, %if.end7.i, %if.then.llc_station_ac_send_xid_r.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_da.i) #4
  br label %if.end6

land.lhs.true.i22:                                ; preds = %llc_stat_ev_rx_null_dsap_xid_c.exit.land.lhs.true.i22_crit_edge, %land.lhs.true.i.land.lhs.true.i22_crit_edge
  %48 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ctrl_1.i, align 1
  %50 = and i8 %49, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -29, i8 %50)
  %51 = icmp eq i8 %50, -29
  br i1 %51, label %llc_stat_ev_rx_null_dsap_test_c.exit, label %land.lhs.true.i22.if.end6_crit_edge

land.lhs.true.i22.if.end6_crit_edge:              ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

llc_stat_ev_rx_null_dsap_test_c.exit:             ; preds = %land.lhs.true.i22
  %52 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool12.not.i23.not = icmp eq i8 %53, 0
  br i1 %tobool12.not.i23.not, label %if.then4, label %llc_stat_ev_rx_null_dsap_test_c.exit.if.end6_crit_edge

llc_stat_ev_rx_null_dsap_test_c.exit.if.end6_crit_edge: ; preds = %llc_stat_ev_rx_null_dsap_test_c.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %llc_stat_ev_rx_null_dsap_test_c.exit
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_da.i26) #4
  %54 = call ptr @memset(ptr %mac_da.i26, i32 255, i32 6)
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %55 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i28 = zext i16 %56 to i32
  %add.ptr.i.i.i29 = getelementptr i8, ptr %1, i32 %conv.i.i.i28
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i29, i32 0, i32 2
  %57 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %h_proto.i, align 1
  %conv.i = zext i16 %58 to i32
  %sub.i = add nsw i32 %conv.i, -3
  %59 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %call1.i = tail call ptr @llc_alloc_frame(ptr noundef null, ptr noundef %61, i8 noundef zeroext 3, i32 noundef %sub.i) #4
  %tobool.not.i30 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i30, label %if.then4.llc_station_ac_send_test_r.exit_crit_edge, label %if.end.i33

if.then4.llc_station_ac_send_test_r.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %llc_station_ac_send_test_r.exit

if.end.i33:                                       ; preds = %if.then4
  %protocol.i.i31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %62 = ptrtoint ptr %protocol.i.i31 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %protocol.i.i31, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %63)
  %cmp.i.i32 = icmp eq i16 %63, 4
  br i1 %cmp.i.i32, label %if.then.i.i37, label %if.end.i33.llc_pdu_decode_sa.exit.i50_crit_edge

if.end.i33.llc_pdu_decode_sa.exit.i50_crit_edge:  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #6
  br label %llc_pdu_decode_sa.exit.i50

if.then.i.i37:                                    ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i.i.i, align 8
  %66 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i.i34 = zext i16 %67 to i32
  %add.ptr.i.i.i.i35 = getelementptr i8, ptr %65, i32 %conv.i.i.i.i34
  %h_source.i.i36 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i35, i32 0, i32 1
  %68 = call ptr @memcpy(ptr %mac_da.i26, ptr %h_source.i.i36, i32 6)
  br label %llc_pdu_decode_sa.exit.i50

llc_pdu_decode_sa.exit.i50:                       ; preds = %if.then.i.i37, %if.end.i33.llc_pdu_decode_sa.exit.i50_crit_edge
  %69 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %head.i.i.i, align 8
  %71 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i2.i39 = zext i16 %72 to i32
  %add.ptr.i.i.i3.i40 = getelementptr i8, ptr %70, i32 %conv.i.i.i2.i39
  %ssap1.i.i41 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i3.i40, i32 0, i32 1
  %73 = ptrtoint ptr %ssap1.i.i41 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ssap1.i.i41, align 1
  %75 = and i8 %74, -2
  %call.i.i42 = tail call ptr @skb_push(ptr noundef nonnull %call1.i, i32 noundef 3) #4
  %data.i.i.i43 = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i.i43, align 4
  %head.i.i4.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 18
  %78 = ptrtoint ptr %head.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i.i4.i, align 8
  %sub.ptr.lhs.cast.i.i.i44 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i.i.i45 = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i.i.i46 = sub i32 %sub.ptr.lhs.cast.i.i.i44, %sub.ptr.rhs.cast.i.i.i45
  %conv.i.i5.i = trunc i32 %sub.ptr.sub.i.i.i46 to i16
  %network_header.i.i.i47 = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 15, i32 0, i32 20
  %80 = ptrtoint ptr %network_header.i.i.i47 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i.i5.i, ptr %network_header.i.i.i47, align 4
  %conv.i.i.i6.i = and i32 %sub.ptr.sub.i.i.i46, 65535
  %add.ptr.i.i.i7.i = getelementptr i8, ptr %79, i32 %conv.i.i.i6.i
  %81 = ptrtoint ptr %add.ptr.i.i.i7.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %75, ptr %add.ptr.i.i.i7.i, align 1
  %ssap4.i.i48 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i7.i, i32 0, i32 1
  %82 = ptrtoint ptr %ssap4.i.i48 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %ssap4.i.i48, align 1
  %83 = load ptr, ptr %head.i.i4.i, align 8
  %84 = load i16, ptr %network_header.i.i.i47, align 4
  %conv.i.i.i10.i = zext i16 %84 to i32
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %83, i32 %conv.i.i.i10.i
  %ctrl_1.i.i49 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i11.i, i32 0, i32 2
  %85 = ptrtoint ptr %ctrl_1.i.i49 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -13, ptr %ctrl_1.i.i49, align 1
  %86 = ptrtoint ptr %protocol.i.i31 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %protocol.i.i31, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %87)
  %cmp.i13.i = icmp eq i16 %87, 4
  br i1 %cmp.i13.i, label %if.then.i15.i, label %llc_pdu_decode_sa.exit.i50.llc_pdu_init_as_test_rsp.exit.i_crit_edge

llc_pdu_decode_sa.exit.i50.llc_pdu_init_as_test_rsp.exit.i_crit_edge: ; preds = %llc_pdu_decode_sa.exit.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %llc_pdu_init_as_test_rsp.exit.i

if.then.i15.i:                                    ; preds = %llc_pdu_decode_sa.exit.i50
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %head.i.i.i, align 8
  %90 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i23.i.i = zext i16 %91 to i32
  %add.ptr.i.i24.i.i = getelementptr i8, ptr %89, i32 %conv.i.i23.i.i
  %92 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i26.i.i = zext i16 %93 to i32
  %add.ptr.i.i27.i.i = getelementptr i8, ptr %89, i32 %conv.i.i26.i.i
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i27.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %h_proto.i.i, align 1
  %conv11.i.i = zext i16 %95 to i32
  %sub.i.i = add nsw i32 %conv11.i.i, -3
  %add.ptr.i.i51 = getelementptr i8, ptr %add.ptr.i.i.i11.i, i32 3
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr.i.i24.i.i, i32 3
  %96 = call ptr @memcpy(ptr %add.ptr.i.i51, ptr %add.ptr12.i.i, i32 %sub.i.i)
  %call13.i.i = tail call ptr @skb_put(ptr noundef nonnull %call1.i, i32 noundef %sub.i.i) #4
  br label %llc_pdu_init_as_test_rsp.exit.i

llc_pdu_init_as_test_rsp.exit.i:                  ; preds = %if.then.i15.i, %llc_pdu_decode_sa.exit.i50.llc_pdu_init_as_test_rsp.exit.i_crit_edge
  %97 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %59, align 8
  %dev_addr.i52 = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 86
  %99 = ptrtoint ptr %dev_addr.i52 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_addr.i52, align 64
  %call3.i = call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1.i, ptr noundef %100, ptr noundef nonnull %mac_da.i26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end8.i, label %free.i53, !prof !9

if.end8.i:                                        ; preds = %llc_pdu_init_as_test_rsp.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = call i32 @dev_queue_xmit(ptr noundef nonnull %call1.i) #4
  br label %llc_station_ac_send_test_r.exit

free.i53:                                         ; preds = %llc_pdu_init_as_test_rsp.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call1.i, i32 noundef 0) #4
  br label %llc_station_ac_send_test_r.exit

llc_station_ac_send_test_r.exit:                  ; preds = %free.i53, %if.end8.i, %if.then4.llc_station_ac_send_test_r.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_da.i26) #4
  br label %if.end6

if.end6:                                          ; preds = %llc_station_ac_send_test_r.exit, %llc_stat_ev_rx_null_dsap_test_c.exit.if.end6_crit_edge, %land.lhs.true.i22.if.end6_crit_edge, %llc_station_ac_send_xid_r.exit, %entry.if.end6_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_station_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llc_set_station_handler(ptr noundef null) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_alloc_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_mac_hdr_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
