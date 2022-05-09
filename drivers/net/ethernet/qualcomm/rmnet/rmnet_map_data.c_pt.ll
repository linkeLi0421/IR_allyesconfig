; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rmnet_port = type { ptr, i32, i8, i8, [255 x %struct.hlist_head], ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rmnet_map_header = type { i8, i8, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.rmnet_map_dl_csum_trailer = type { i8, i8, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.anon.132 = type { i16, i16 }
%struct.rmnet_map_ul_csum_header = type { i16, i16 }
%struct.rmnet_map_v5_csum_header = type { i8, i8, i16 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rmnet_map_add_map_header(ptr noundef %skb, i32 noundef %hdrlen, ptr nocapture noundef readonly %port, i32 noundef %pad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub = sub i32 %1, %hdrlen
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #2
  %2 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %call, align 2
  %data_format = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %data_format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_format, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call, align 2
  %7 = or i8 %6, 64
  store i8 %7, ptr %call, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad)
  %cmp = icmp eq i32 %pad, 0
  br i1 %cmp, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv4 = trunc i32 %sub to i16
  %pkt_len = getelementptr inbounds %struct.rmnet_map_header, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %pkt_len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %pkt_len, align 2
  br label %cleanup

do.end:                                           ; preds = %if.end
  %add = add i32 %sub, 3
  %and6 = and i32 %add, -4
  %sub7 = sub i32 %and6, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %sub)
  %cmp8 = icmp eq i32 %and6, %sub
  br i1 %cmp8, label %do.end.done_crit_edge, label %if.end11

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %done

if.end11:                                         ; preds = %do.end
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end11.skb_tailroom.exit_crit_edge

if.end11.skb_tailroom.exit_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end11.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end11.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %sub7)
  %cmp13 = icmp ult i32 %cond.i, %sub7
  br i1 %cmp13, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end16

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end16:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #4
  %call17 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %sub7) #2
  %15 = call ptr @memset(ptr %call17, i32 0, i32 %sub7)
  br label %done

done:                                             ; preds = %if.end16, %do.end.done_crit_edge
  %conv19 = trunc i32 %and6 to i16
  %pkt_len20 = getelementptr inbounds %struct.rmnet_map_header, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %pkt_len20 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv19, ptr %pkt_len20, align 2
  %17 = trunc i32 %sub7 to i8
  %conv22 = and i8 %17, 63
  %18 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv22, ptr %call, align 2
  br label %cleanup

cleanup:                                          ; preds = %done, %skb_tailroom.exit.cleanup_crit_edge, %if.then3
  %retval.0 = phi ptr [ %call, %if.then3 ], [ %call, %done ], [ null, %skb_tailroom.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rmnet_map_deaggregate(ptr noundef %skb, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt_len = getelementptr inbounds %struct.rmnet_map_header, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pkt_len, align 2
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 4
  %data_format = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %data_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_format, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %add4 = add nuw nsw i32 %conv, 12
  br label %if.end23

if.else:                                          ; preds = %if.end
  %and6 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.if.end23_crit_edge, label %if.then8

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end23

if.then8:                                         ; preds = %if.else
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 2
  %conv9 = zext i8 %9 to i32
  %and10 = and i32 %conv9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.then8.if.end23_crit_edge

if.then8.if.end23_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end23

if.then12:                                        ; preds = %if.then8
  %and16 = and i32 %conv9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then12.cleanup_crit_edge, label %if.then18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  %add13 = add nuw nsw i32 %conv, 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then8.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.then3
  %next_hdr.0 = phi ptr [ null, %if.then3 ], [ null, %if.then8.if.end23_crit_edge ], [ %add.ptr, %if.then18 ], [ null, %if.else.if.end23_crit_edge ]
  %packet_len.0 = phi i32 [ %add4, %if.then3 ], [ %add, %if.then8.if.end23_crit_edge ], [ %add13, %if.then18 ], [ %add, %if.else.if.end23_crit_edge ]
  %sub = sub i32 %3, %packet_len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool30.not = icmp eq i16 %5, 0
  %or.cond = select i1 %cmp25, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %if.end23.cleanup_crit_edge, label %if.end32

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %tobool33.not = icmp eq ptr %next_hdr.0, null
  br i1 %tobool33.not, label %if.end32.if.end40_crit_edge, label %if.then34

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40

if.then34:                                        ; preds = %if.end32
  %10 = ptrtoint ptr %next_hdr.0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %next_hdr.0, align 2
  %.mask = and i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.mask)
  %cmp36.not = icmp eq i8 %.mask, 4
  br i1 %cmp36.not, label %if.then34.if.end40_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then34.if.end40_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40

if.end40:                                         ; preds = %if.then34.if.end40_crit_edge, %if.end32.if.end40_crit_edge
  %add41 = add nuw nsw i32 %packet_len.0, 64
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add41, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #2
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 32
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %15, i32 32
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call46 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %packet_len.0) #2
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data1, align 4
  %20 = call ptr @memcpy(ptr %17, ptr %19, i32 %packet_len.0)
  %call49 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %packet_len.0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end40.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end45 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then12.cleanup_crit_edge ], [ null, %if.end23.cleanup_crit_edge ], [ null, %if.then34.cleanup_crit_edge ], [ null, %if.end40.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmnet_map_checksum_downlink_packet(ptr nocapture noundef readonly %skb, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features, align 16
  %and = and i64 %4, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %conv = zext i16 %len to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %conv
  %flags = getelementptr inbounds %struct.rmnet_map_dl_csum_trailer, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.end10.cleanup_crit_edge [
    i16 2048, label %if.then13
    i16 -31011, label %if.then20
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %6, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.ptr.i38 = getelementptr i8, ptr %6, i32 %mul.i
  %14 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %6, i32 %conv.i) #2, !srcloc !10
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %14, 0
  %15 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #5, !srcloc !11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %15)
  %tobool.not.i = icmp ugt i32 %15, -65537
  br i1 %tobool.not.i, label %if.end.i, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %if.then13
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frag_off.i.i, align 2
  %18 = and i16 %17, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.not.i = icmp eq i16 %18, 0
  br i1 %cmp.i.not.i, label %if.end9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 6
  %19 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %protocol.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %20, label %if.end9.i.cleanup_crit_edge [
    i8 6, label %if.then.i.i
    i8 17, label %if.then5.i.i
  ]

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #4
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i38, i32 0, i32 6
  br label %rmnet_map_get_csum_field.exit.i

if.then5.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #4
  %check6.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i38, i32 0, i32 3
  br label %rmnet_map_get_csum_field.exit.i

rmnet_map_get_csum_field.exit.i:                  ; preds = %if.then5.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %check.i.i, %if.then.i.i ], [ %check6.i.i, %if.then5.i.i ]
  %tobool11.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool11.not.i, label %rmnet_map_get_csum_field.exit.i.cleanup_crit_edge, label %if.end15.i

rmnet_map_get_csum_field.exit.i.cleanup_crit_edge: ; preds = %rmnet_map_get_csum_field.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end15.i:                                       ; preds = %rmnet_map_get_csum_field.exit.i
  %22 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %retval.0.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool16.not.i = icmp eq i16 %23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %20)
  %cmp.i = icmp eq i8 %20, 17
  %or.cond.i = select i1 %tobool16.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end15.i.cleanup_crit_edge, label %if.end23.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  %csum_value.i = getelementptr inbounds %struct.rmnet_map_dl_csum_trailer, ptr %add.ptr, i32 0, i32 4
  %24 = ptrtoint ptr %csum_value.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %csum_value.i, align 2
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 8
  %26 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 9
  %28 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %daddr.i, align 4
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 2
  %30 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tot_len.i, align 2
  %conv24.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load25.i = load i8, ptr %6, align 4
  %bf.clear26.i = shl i8 %bf.load25.i, 2
  %33 = and i8 %bf.clear26.i, 60
  %mul28.i = zext i8 %33 to i32
  %conv.i.i64.i = zext i8 %20 to i32
  %sub.i = add nuw nsw i32 %conv24.i, %conv.i.i64.i
  %add.i.i.i = sub nsw i32 %sub.i, %mul28.i
  %34 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %29, i32 %27, i32 %add.i.i.i) #5, !srcloc !12
  %35 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %34) #5, !srcloc !11
  %neg.i.i65.i = xor i32 %35, -1
  %shr.i.i66.i = lshr i32 %neg.i.i65.i, 16
  %conv.i1.i.i = trunc i32 %shr.i.i66.i to i16
  %neg.i = xor i16 %conv.i1.i.i, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %neg.i)
  %cmp35.not.i = icmp eq i16 %25, %neg.i
  %. = select i1 %cmp35.not.i, i32 2320, i32 2344
  %.59 = select i1 %cmp35.not.i, i32 0, i32 -22
  br label %cleanup

if.then20:                                        ; preds = %if.end10
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %6, i32 0, i32 3
  %36 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nexthdr.i, align 2
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %37, label %if.then20.cleanup_crit_edge [
    i8 6, label %if.then20.rmnet_map_get_csum_field.exit.i43_crit_edge
    i8 17, label %if.then5.i.i40
  ]

if.then20.rmnet_map_get_csum_field.exit.i43_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %rmnet_map_get_csum_field.exit.i43

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then5.i.i40:                                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %rmnet_map_get_csum_field.exit.i43

rmnet_map_get_csum_field.exit.i43:                ; preds = %if.then5.i.i40, %if.then20.rmnet_map_get_csum_field.exit.i43_crit_edge
  %.sink.i = phi i32 [ 46, %if.then5.i.i40 ], [ 56, %if.then20.rmnet_map_get_csum_field.exit.i43_crit_edge ]
  %check.i.i41 = getelementptr i8, ptr %6, i32 %.sink.i
  %tobool.not.i42 = icmp eq ptr %check.i.i41, null
  br i1 %tobool.not.i42, label %rmnet_map_get_csum_field.exit.i43.cleanup_crit_edge, label %if.end.i53

rmnet_map_get_csum_field.exit.i43.cleanup_crit_edge: ; preds = %rmnet_map_get_csum_field.exit.i43
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i53:                                       ; preds = %rmnet_map_get_csum_field.exit.i43
  call void @__sanitizer_cov_trace_pc() #4
  %39 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %6, i32 10) #2, !srcloc !10
  %asmresult.i.i46 = extractvalue { i32, ptr, i32, i32 } %39, 0
  %40 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i46) #5, !srcloc !11
  %neg.i.i.i = xor i32 %40, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %csum_value.i47 = getelementptr inbounds %struct.rmnet_map_dl_csum_trailer, ptr %add.ptr, i32 0, i32 4
  %41 = ptrtoint ptr %csum_value.i47 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %csum_value.i47, align 2
  %neg.i.i = xor i16 %conv.i.i.i, -1
  %add.i.i.i48 = add i16 %42, %neg.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i48, i16 %neg.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i48, %neg.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i48, %conv6.i.i.i
  %saddr.i49 = getelementptr inbounds %struct.ipv6hdr, ptr %6, i32 0, i32 5
  %daddr.i50 = getelementptr inbounds %struct.ipv6hdr, ptr %6, i32 0, i32 6
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %6, i32 0, i32 2
  %43 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %payload_len.i, align 4
  %conv.i51 = zext i16 %44 to i32
  %45 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nexthdr.i, align 2
  %conv.i.i = zext i8 %46 to i32
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i49, ptr noundef %daddr.i50, i32 noundef %conv.i51, i32 noundef %conv.i.i, i32 noundef 0) #2
  %47 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #5, !srcloc !11
  %neg.i.i30.i = xor i32 %47, -1
  %shr.i.i31.i = lshr i32 %neg.i.i30.i, 16
  %conv.i.i32.i = trunc i32 %shr.i.i31.i to i16
  %neg.i52 = xor i16 %conv.i.i32.i, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %add7.i.i.i, i16 %neg.i52)
  %cmp.not.i = icmp eq i16 %add7.i.i.i, %neg.i52
  %.60 = select i1 %cmp.not.i, i32 2320, i32 2344
  %.61 = select i1 %cmp.not.i, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end.i53, %rmnet_map_get_csum_field.exit.i43.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end23.i, %if.end15.i.cleanup_crit_edge, %rmnet_map_get_csum_field.exit.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink62 = phi i32 [ 2392, %entry.cleanup_crit_edge ], [ 2336, %if.end.cleanup_crit_edge ], [ 2328, %if.then13.cleanup_crit_edge ], [ 2376, %if.end.i.cleanup_crit_edge ], [ 2368, %rmnet_map_get_csum_field.exit.i.cleanup_crit_edge ], [ 2368, %if.end9.i.cleanup_crit_edge ], [ 2384, %if.end15.i.cleanup_crit_edge ], [ %., %if.end23.i ], [ 2368, %rmnet_map_get_csum_field.exit.i43.cleanup_crit_edge ], [ 2368, %if.then20.cleanup_crit_edge ], [ %.60, %if.end.i53 ], [ 2360, %if.end10.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ], [ -95, %if.end.i.cleanup_crit_edge ], [ -93, %rmnet_map_get_csum_field.exit.i.cleanup_crit_edge ], [ -93, %if.end9.i.cleanup_crit_edge ], [ 0, %if.end15.i.cleanup_crit_edge ], [ %.59, %if.end23.i ], [ -93, %rmnet_map_get_csum_field.exit.i43.cleanup_crit_edge ], [ -93, %if.then20.cleanup_crit_edge ], [ %.61, %if.end.i53 ], [ -93, %if.end10.cleanup_crit_edge ]
  %csum_err_invalid_ip_version = getelementptr i8, ptr %2, i32 %.sink62
  %48 = ptrtoint ptr %csum_err_invalid_ip_version to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %csum_err_invalid_ip_version, align 8
  %inc24 = add i64 %49, 1
  store i64 %inc24, ptr %csum_err_invalid_ip_version, align 8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmnet_map_checksum_uplink_packet(ptr noundef %skb, ptr nocapture noundef readnone %port, ptr nocapture noundef %orig_dev, i32 noundef %csum_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %csum_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %csum_type, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 32, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call1.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #2
  %features.i = getelementptr inbounds %struct.net_device, ptr %orig_dev, i32 0, i32 23
  %1 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %features.i, align 16
  %and.i = and i64 %2, 18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw_csum.i_crit_edge, label %if.end.i, !prof !9

sw.bb.sw_csum.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw_csum.i

if.end.i:                                         ; preds = %sw.bb
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %3 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %4 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp.not.i = icmp eq i16 %4, 1536
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.sw_csum.i_crit_edge

if.end.i.sw_csum.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw_csum.i

if.end7.i:                                        ; preds = %if.end.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i, align 8
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %6, label %if.end21.i [
    i16 2048, label %if.then11.i
    i16 -31011, label %if.then17.i
  ]

if.then11.i:                                      ; preds = %if.end7.i
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 4
  %protocol.i.i = getelementptr i8, ptr %call1.i, i32 13
  %8 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %protocol.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 17
  %spec.select.i.i = select i1 %cmp.i.i, i16 -16384, i16 -32768
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %csum_offset.i.i = getelementptr inbounds %struct.anon.132, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %csum_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %csum_offset.i.i, align 2
  %13 = and i16 %12, 16383
  %or6.i.i = or i16 %spec.select.i.i, %13
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i.i, align 4
  %sub.i.i.i = sub i16 %15, %17
  %18 = ptrtoint ptr %call1.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %sub.i.i.i, ptr %call1.i, align 2
  %csum_info.i.i = getelementptr inbounds %struct.rmnet_map_ul_csum_header, ptr %call1.i, i32 0, i32 1
  %19 = ptrtoint ptr %csum_info.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %or6.i.i, ptr %csum_info.i.i, align 2
  %20 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  store i16 %bf.clear.i.i, ptr %ip_summed.i, align 8
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i.i = load i8, ptr %add.ptr.i, align 4
  %bf.clear.i.i.i = shl i8 %bf.load.i.i.i, 2
  %22 = and i8 %bf.clear.i.i.i, 60
  %mul.i.i.i = zext i8 %22 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i.i
  %23 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %protocol.i.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %24, label %if.then11.i.sw.epilog.sink.split_crit_edge [
    i8 6, label %if.then.i.i.i.i
    i8 17, label %if.then5.i.i.i.i
  ]

if.then11.i.sw.epilog.sink.split_crit_edge:       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.then.i.i.i.i:                                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #4
  %check.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  br label %rmnet_map_get_csum_field.exit.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #4
  %check6.i.i.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  br label %rmnet_map_get_csum_field.exit.i.i.i

rmnet_map_get_csum_field.exit.i.i.i:              ; preds = %if.then5.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %check.i.i.i.i, %if.then.i.i.i.i ], [ %check6.i.i.i.i, %if.then5.i.i.i.i ]
  %26 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %retval.0.i.i.i.i, align 2
  %neg.i.i.i = xor i16 %27, -1
  store i16 %neg.i.i.i, ptr %retval.0.i.i.i.i, align 2
  br label %sw.epilog.sink.split

if.then17.i:                                      ; preds = %if.end7.i
  %nexthdr.i.i = getelementptr i8, ptr %call1.i, i32 10
  %28 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nexthdr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %29)
  %cmp.i41.i = icmp eq i8 %29, 17
  %spec.select.i42.i = select i1 %cmp.i41.i, i16 -16384, i16 -32768
  %30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %csum_offset.i43.i = getelementptr inbounds %struct.anon.132, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %csum_offset.i43.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %csum_offset.i43.i, align 2
  %33 = and i16 %32, 16383
  %or6.i44.i = or i16 %spec.select.i42.i, %33
  %transport_header.i.i45.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %34 = ptrtoint ptr %transport_header.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %transport_header.i.i45.i, align 2
  %network_header.i.i46.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i46.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i46.i, align 4
  %sub.i.i47.i = sub i16 %35, %37
  %38 = ptrtoint ptr %call1.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %sub.i.i47.i, ptr %call1.i, align 2
  %csum_info.i48.i = getelementptr inbounds %struct.rmnet_map_ul_csum_header, ptr %call1.i, i32 0, i32 1
  %39 = ptrtoint ptr %csum_info.i48.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %or6.i44.i, ptr %csum_info.i48.i, align 2
  %40 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i50.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i51.i = and i16 %bf.load.i50.i, -1537
  store i16 %bf.clear.i51.i, ptr %ip_summed.i, align 8
  %41 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nexthdr.i.i, align 2
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %42, label %if.then17.i.sw.epilog.sink.split_crit_edge [
    i8 6, label %if.then17.i.rmnet_map_get_csum_field.exit.i.i58.i_crit_edge
    i8 17, label %if.then5.i.i.i55.i
  ]

if.then17.i.rmnet_map_get_csum_field.exit.i.i58.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %rmnet_map_get_csum_field.exit.i.i58.i

if.then17.i.sw.epilog.sink.split_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.then5.i.i.i55.i:                               ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %rmnet_map_get_csum_field.exit.i.i58.i

rmnet_map_get_csum_field.exit.i.i58.i:            ; preds = %if.then5.i.i.i55.i, %if.then17.i.rmnet_map_get_csum_field.exit.i.i58.i_crit_edge
  %.sink.i = phi i32 [ 50, %if.then5.i.i.i55.i ], [ 60, %if.then17.i.rmnet_map_get_csum_field.exit.i.i58.i_crit_edge ]
  %check6.i.i.i54.i = getelementptr i8, ptr %call1.i, i32 %.sink.i
  %44 = ptrtoint ptr %check6.i.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %check6.i.i.i54.i, align 2
  %neg.i.i57.i = xor i16 %45, -1
  store i16 %neg.i.i57.i, ptr %check6.i.i.i54.i, align 2
  br label %sw.epilog.sink.split

if.end21.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #4
  %csum_err_invalid_ip_version.i = getelementptr i8, ptr %orig_dev, i32 2360
  %46 = ptrtoint ptr %csum_err_invalid_ip_version.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %csum_err_invalid_ip_version.i, align 8
  %inc23.i = add i64 %47, 1
  store i64 %inc23.i, ptr %csum_err_invalid_ip_version.i, align 8
  br label %sw_csum.i

sw_csum.i:                                        ; preds = %if.end21.i, %if.end.i.sw_csum.i_crit_edge, %sw.bb.sw_csum.i_crit_edge
  %48 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 0, ptr %call1.i, align 2
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %call1.i4 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #2
  %49 = ptrtoint ptr %call1.i4 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 67108864, ptr %call1.i4, align 2
  %ip_summed.i5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %50 = ptrtoint ptr %ip_summed.i5 to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i6 = load i16, ptr %ip_summed.i5, align 8
  %51 = and i16 %bf.load.i6, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %51)
  %cmp.i = icmp eq i16 %51, 1536
  br i1 %cmp.i, label %if.then.i, label %sw.bb1.sw.epilog.sink.split_crit_edge

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.then.i:                                        ; preds = %sw.bb1
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %52 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %54 = ptrtoint ptr %network_header.i.i.i7 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %network_header.i.i.i7, align 4
  %conv.i.i.i = zext i16 %55 to i32
  %add.ptr.i.i.i8 = getelementptr i8, ptr %53, i32 %conv.i.i.i
  %protocol.i9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %56 = ptrtoint ptr %protocol.i9 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %protocol.i9, align 8
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %57, label %if.else23.i [
    i16 2048, label %if.then8.i
    i16 -31011, label %if.then19.i
  ]

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  %59 = ptrtoint ptr %add.ptr.i.i.i8 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load9.i = load i8, ptr %add.ptr.i.i.i8, align 4
  %bf.clear10.i = shl i8 %bf.load9.i, 2
  %60 = and i8 %bf.clear10.i, 60
  %protocol13.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i8, i32 0, i32 6
  %conv14.i = zext i8 %60 to i32
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i8, i32 0, i32 3
  br label %if.end24.i

if.else23.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  %csum_err_invalid_ip_version.i10 = getelementptr i8, ptr %orig_dev, i32 2360
  %61 = ptrtoint ptr %csum_err_invalid_ip_version.i10 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %csum_err_invalid_ip_version.i10, align 8
  %inc.i = add i64 %62, 1
  store i64 %inc.i, ptr %csum_err_invalid_ip_version.i10, align 8
  br label %sw.epilog.sink.split

if.end24.i:                                       ; preds = %if.then19.i, %if.then8.i
  %.sink.i11 = phi i32 [ 40, %if.then19.i ], [ %conv14.i, %if.then8.i ]
  %proto.0.in.i = phi ptr [ %nexthdr.i, %if.then19.i ], [ %protocol13.i, %if.then8.i ]
  %add.ptr22.i = getelementptr i8, ptr %add.ptr.i.i.i8, i32 %.sink.i11
  %63 = ptrtoint ptr %proto.0.in.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %proto.0.i = load i8, ptr %proto.0.in.i, align 1
  %64 = zext i8 %proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %proto.0.i, label %if.end24.i.sw.epilog.sink.split_crit_edge [
    i8 6, label %if.then.i.i
    i8 17, label %if.then5.i.i
  ]

if.end24.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

if.then.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #4
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr22.i, i32 0, i32 6
  br label %rmnet_map_get_csum_field.exit.i

if.then5.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #4
  %check6.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr22.i, i32 0, i32 3
  br label %rmnet_map_get_csum_field.exit.i

rmnet_map_get_csum_field.exit.i:                  ; preds = %if.then5.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %check.i.i, %if.then.i.i ], [ %check6.i.i, %if.then5.i.i ]
  %tobool.not.i12 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i12, label %rmnet_map_get_csum_field.exit.i.sw.epilog.sink.split_crit_edge, label %cleanup.i

rmnet_map_get_csum_field.exit.i.sw.epilog.sink.split_crit_edge: ; preds = %rmnet_map_get_csum_field.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog.sink.split

cleanup.i:                                        ; preds = %rmnet_map_get_csum_field.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %bf.clear29.i = and i16 %bf.load.i6, -1537
  %65 = ptrtoint ptr %ip_summed.i5 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %bf.clear29.i, ptr %ip_summed.i5, align 8
  %csum_info.i = getelementptr inbounds %struct.rmnet_map_v5_csum_header, ptr %call1.i4, i32 0, i32 1
  %66 = ptrtoint ptr %csum_info.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %csum_info.i, align 1
  %68 = or i8 %67, -128
  store i8 %68, ptr %csum_info.i, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %cleanup.i, %rmnet_map_get_csum_field.exit.i.sw.epilog.sink.split_crit_edge, %if.end24.i.sw.epilog.sink.split_crit_edge, %if.else23.i, %sw.bb1.sw.epilog.sink.split_crit_edge, %sw_csum.i, %rmnet_map_get_csum_field.exit.i.i58.i, %if.then17.i.sw.epilog.sink.split_crit_edge, %rmnet_map_get_csum_field.exit.i.i.i, %if.then11.i.sw.epilog.sink.split_crit_edge
  %.sink61.i.sink = phi i32 [ 2392, %sw_csum.i ], [ 2400, %if.then11.i.sw.epilog.sink.split_crit_edge ], [ 2400, %rmnet_map_get_csum_field.exit.i.i.i ], [ 2400, %if.then17.i.sw.epilog.sink.split_crit_edge ], [ 2400, %rmnet_map_get_csum_field.exit.i.i58.i ], [ 2400, %cleanup.i ], [ 2392, %if.end24.i.sw.epilog.sink.split_crit_edge ], [ 2392, %rmnet_map_get_csum_field.exit.i.sw.epilog.sink.split_crit_edge ], [ 2392, %if.else23.i ], [ 2392, %sw.bb1.sw.epilog.sink.split_crit_edge ]
  %csum_sw.i = getelementptr i8, ptr %orig_dev, i32 %.sink61.i.sink
  %69 = ptrtoint ptr %csum_sw.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %csum_sw.i, align 8
  %inc33.i = add i64 %70, 1
  store i64 %inc33.i, ptr %csum_sw.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmnet_map_process_next_hdr_packet(ptr noundef %skb, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 2
  %.mask = and i8 %6, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 23
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features, align 16
  %and = and i64 %8, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then6, label %if.else, !prof !9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %csum_sw = getelementptr i8, ptr %2, i32 2392
  %9 = ptrtoint ptr %csum_sw to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %csum_sw, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %csum_sw, align 8
  br label %if.end17

if.else:                                          ; preds = %if.end
  %csum_info = getelementptr i8, ptr %4, i32 5
  %11 = ptrtoint ptr %csum_info to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %csum_info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool9.not = icmp sgt i8 %12, -1
  br i1 %tobool9.not, label %if.else13, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %stats11 = getelementptr i8, ptr %2, i32 2320
  %13 = ptrtoint ptr %stats11 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %stats11, align 8
  %inc12 = add i64 %14, 1
  store i64 %inc12, ptr %stats11, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end17

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %csum_valid_unset = getelementptr i8, ptr %2, i32 2336
  %16 = ptrtoint ptr %csum_valid_unset to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %csum_valid_unset, align 8
  %inc15 = add i64 %17, 1
  store i64 %inc15, ptr %csum_valid_unset, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else13, %if.then10, %if.then6
  %call18 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 6898243, i64 6898282, i64 6898308, i64 6898332, i64 6898357, i64 6898383, i64 6898408, i64 6898434, i64 6898461, i64 6898487, i64 6898526, i64 6898570, i64 6898601, i64 6898626}
!11 = !{i64 6897860}
!12 = !{i64 6898962, i64 6899003, i64 6899048}
