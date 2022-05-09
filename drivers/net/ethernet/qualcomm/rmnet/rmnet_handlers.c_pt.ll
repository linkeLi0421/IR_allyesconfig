; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/rmnet/rmnet_handlers.c"
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
%struct.rmnet_port = type { ptr, i32, i8, i8, [255 x %struct.hlist_head], ptr, ptr }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rmnet_map_header = type { i8, i8, i16 }
%struct.rmnet_vnd_stats = type { i64, i64, i64, i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rmnet_endpoint = type { i8, ptr, %struct.hlist_node }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmnet_rx_handler(ptr nocapture noundef readonly %pskb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pskb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %if.end.if.end3_crit_edge, label %cond.true.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

cond.true.i:                                      ; preds = %if.end
  %call.i.i29 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %1, i32 noundef %3) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i29, null
  br i1 %tobool.not.i.i, label %if.then2, label %cond.true.i.if.end3_crit_edge

cond.true.i.if.end3_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %1, i32 noundef 0) #5
  br label %cleanup

if.end3:                                          ; preds = %cond.true.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, -24576
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %5 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call7 = tail call ptr @rmnet_get_port_rcu(ptr noundef %7) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then12, label %if.end13, !prof !10

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %rx_nohandler = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 39
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_nohandler, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %rx_nohandler, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_nohandler, ptr %rx_nohandler, i32 1, ptr elementtype(i32) %rx_nohandler) #5, !srcloc !11
  tail call void @kfree_skb_reason(ptr noundef nonnull %1, i32 noundef 0) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %rmnet_mode = getelementptr inbounds %struct.rmnet_port, ptr %call7, i32 0, i32 3
  %11 = ptrtoint ptr %rmnet_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rmnet_mode, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %if.end13.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb15
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %type.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp.i = icmp eq i16 %17, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end4.i_crit_edge

sw.bb.if.end4.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i:                                        ; preds = %sw.bb
  %call.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %1, i32 noundef 14, i32 noundef 0, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %1, i32 noundef 0) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %1, i32 noundef 14) #5
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i, %sw.bb.if.end4.i_crit_edge
  %data_format.i = getelementptr inbounds %struct.rmnet_port, ptr %call7, i32 0, i32 1
  %18 = ptrtoint ptr %data_format.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_format.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end4.i
  %call720.i = tail call ptr @rmnet_map_deaggregate(ptr noundef nonnull %1, ptr noundef nonnull %call7) #5
  %cmp8.not21.i = icmp eq ptr %call720.i, null
  br i1 %cmp8.not21.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call722.i = phi ptr [ %call7.i, %while.body.i.while.body.i_crit_edge ], [ %call720.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  tail call fastcc void @__rmnet_map_ingress_handler(ptr noundef nonnull %call722.i, ptr noundef nonnull %call7) #5
  %call7.i = tail call ptr @rmnet_map_deaggregate(ptr noundef nonnull %1, ptr noundef nonnull %call7) #5
  %cmp8.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %1) #5
  br label %cleanup

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__rmnet_map_ingress_handler(ptr noundef nonnull %1, ptr noundef nonnull %call7) #5
  br label %cleanup

sw.bb15:                                          ; preds = %if.end13
  %bridge_ep = getelementptr inbounds %struct.rmnet_port, ptr %call7, i32 0, i32 5
  %20 = ptrtoint ptr %bridge_ep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bridge_ep, align 4
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp.i.not.i = icmp eq i16 %23, -1
  br i1 %cmp.i.not.i, label %sw.bb15.if.end.i31_crit_edge, label %if.then.i30

sw.bb15.if.end.i31_crit_edge:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i31

if.then.i30:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %25 to i32
  %call1.i = tail call ptr @skb_push(ptr noundef nonnull %1, i32 noundef %conv.i) #5
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.then.i30, %sw.bb15.if.end.i31_crit_edge
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.end.i31.cleanup_crit_edge, label %if.then3.i

if.end.i31.cleanup_crit_edge:                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %21, ptr %5, align 8
  %call4.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i31.cleanup_crit_edge, %if.else.i, %while.end.i, %if.then2.i, %if.end13.cleanup_crit_edge, %if.then12, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end3.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.then2 ], [ 0, %if.then2.i ], [ 0, %while.end.i ], [ 0, %if.else.i ], [ 0, %if.end.i31.cleanup_crit_edge ], [ 0, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmnet_get_port_rcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmnet_egress_handler(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.sk_pacing_shift_update.exit_crit_edge, label %lor.lhs.false.i

entry.sk_pacing_shift_update.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sk_pacing_shift_update.exit

lor.lhs.false.i:                                  ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.sk_pacing_shift_update.exit_crit_edge, label %do.end.i

lor.lhs.false.i.sk_pacing_shift_update.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sk_pacing_shift_update.exit

do.end.i:                                         ; preds = %lor.lhs.false.i
  %sk_pacing_shift.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 44
  %5 = ptrtoint ptr %sk_pacing_shift.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %sk_pacing_shift.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp.i = icmp eq i8 %6, 8
  br i1 %cmp.i, label %do.end.i.sk_pacing_shift_update.exit_crit_edge, label %do.body6.i

do.end.i.sk_pacing_shift_update.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sk_pacing_shift_update.exit

do.body6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %sk_pacing_shift.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 8, ptr %sk_pacing_shift.i, align 1
  br label %sk_pacing_shift_update.exit

sk_pacing_shift_update.exit:                      ; preds = %do.body6.i, %do.end.i.sk_pacing_shift_update.exit_crit_edge, %lor.lhs.false.i.sk_pacing_shift_update.exit_crit_edge, %entry.sk_pacing_shift_update.exit_crit_edge
  %8 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 2304
  %real_dev = getelementptr i8, ptr %10, i32 2308
  %11 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %real_dev, align 4
  store ptr %12, ptr %8, align 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 8
  %call2 = tail call ptr @rmnet_get_port_rcu(ptr noundef %12) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %sk_pacing_shift_update.exit.do.body8_crit_edge, label %if.end

sk_pacing_shift_update.exit.do.body8_crit_edge:   ; preds = %sk_pacing_shift_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

if.end:                                           ; preds = %sk_pacing_shift_update.exit
  %data_format.i = getelementptr inbounds %struct.rmnet_port, ptr %call2, i32 0, i32 1
  %15 = ptrtoint ptr %data_format.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_format.i, align 4
  %and.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i62 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i62, label %if.else.i, label %if.end.if.end5.i_crit_edge

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end
  %and2.i = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end5.i_crit_edge, label %if.then4.i

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.else.i.if.end5.i_crit_edge, %if.end.if.end5.i_crit_edge
  %additional_header_len.0.i = phi i32 [ 4, %if.then4.i ], [ 0, %if.else.i.if.end5.i_crit_edge ], [ 4, %if.end.if.end5.i_crit_edge ]
  %tobool8.not.i = phi i1 [ false, %if.then4.i ], [ true, %if.else.i.if.end5.i_crit_edge ], [ false, %if.end.if.end5.i_crit_edge ]
  %csum_type.0.i = phi i32 [ 32, %if.then4.i ], [ 0, %if.else.i.if.end5.i_crit_edge ], [ 8, %if.end.if.end5.i_crit_edge ]
  %add.i = add nuw nsw i32 %additional_header_len.0.i, 4
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %17 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end5.i.skb_header_cloned.exit.i.i_crit_edge, label %if.end.i.i.i

if.end5.i.skb_header_cloned.exit.i.i_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_header_cloned.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #5
  %20 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %21, 65535
  %shr.i.i.i = ashr i32 %21, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i.i.i, %if.end5.i.skb_header_cloned.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i1 [ %cmp.i.not.i.i, %if.end.i.i.i ], [ true, %if.end5.i.skb_header_cloned.exit.i.i_crit_edge ]
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %add.i)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %add.i
  %or.cond.i.i.i = and i1 %retval.0.i.i.i, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_header_cloned.exit.i.i.if.end7.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end7.i_crit_edge:   ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %26 = tail call i32 @llvm.usub.sat.i32(i32 %add.i, i32 %sub.ptr.sub.i.i.i.i) #5
  %add.i.i.i = add nuw nsw i32 %26, 127
  %and.i4.i.i = and i32 %add.i.i.i, 128
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i63 = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i63, label %skb_cow_head.exit.i.do.body8_crit_edge, label %skb_cow_head.exit.i.if.end7.i_crit_edge

skb_cow_head.exit.i.if.end7.i_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

skb_cow_head.exit.i.do.body8_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

if.end7.i:                                        ; preds = %skb_cow_head.exit.i.if.end7.i_crit_edge, %skb_header_cloned.exit.i.i.if.end7.i_crit_edge
  br i1 %tobool8.not.i, label %if.end7.i.if.end10.i_crit_edge, label %if.then9.i

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rmnet_map_checksum_uplink_packet(ptr noundef %skb, ptr noundef nonnull %call2, ptr noundef %10, i32 noundef %csum_type.0.i) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end10.i_crit_edge
  %call11.i = tail call ptr @rmnet_map_add_map_header(ptr noundef %skb, i32 noundef %additional_header_len.0.i, ptr noundef nonnull %call2, i32 noundef 0) #5
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end10.i.do.body8_crit_edge, label %if.end6

if.end10.i.do.body8_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

if.end6:                                          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %mux_id15.i = getelementptr inbounds %struct.rmnet_map_header, ptr %call11.i, i32 0, i32 1
  %27 = ptrtoint ptr %mux_id15.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %14, ptr %mux_id15.i, align 1
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %28 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 249, ptr %protocol.i, align 8
  tail call void @rmnet_vnd_tx_fixup(ptr noundef %skb, ptr noundef %10) #5
  %call7 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #5
  br label %cleanup

do.body8:                                         ; preds = %if.end10.i.do.body8_crit_edge, %skb_cow_head.exit.i.do.body8_crit_edge, %sk_pacing_shift_update.exit.do.body8_crit_edge
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !12
  %pcpu_stats = getelementptr i8, ptr %10, i32 2312
  %30 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcpu_stats, align 8
  %tx_drops = getelementptr inbounds %struct.rmnet_vnd_stats, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %tx_drops to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i64 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i64 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %add = add i32 %38, %32
  %39 = inttoptr i32 %add to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add22 = add i32 %41, 1
  store i32 %add22, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !13
  %and.i.i65 = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool33.not = icmp eq i32 %and.i.i65, 0
  br i1 %tobool33.not, label %if.then37, label %do.body8.do.end40_crit_edge, !prof !10

do.body8.do.end40_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

if.then37:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body8.do.end40_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #5, !srcloc !14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmnet_vnd_tx_fixup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmnet_map_deaggregate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rmnet_map_ingress_handler(ptr noundef %skb, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %data_format = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %data_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_format, align 4
  %and1 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.free_skb_crit_edge, label %if.then3

if.then.free_skb_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_skb

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rmnet_map_command(ptr noundef %skb, ptr noundef %port) #5
  br label %cleanup

if.end4:                                          ; preds = %entry
  %mux_id5 = getelementptr inbounds %struct.rmnet_map_header, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mux_id5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mux_id5, align 1
  %8 = and i8 %3, 63
  %pkt_len = getelementptr inbounds %struct.rmnet_map_header, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pkt_len, align 2
  %conv11 = zext i8 %8 to i16
  %conv12 = sub i16 %10, %conv11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp = icmp eq i8 %7, -1
  br i1 %cmp, label %if.end4.free_skb_crit_edge, label %if.end16

if.end4.free_skb_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_skb

if.end16:                                         ; preds = %if.end4
  %call = tail call ptr @rmnet_get_endpoint(ptr noundef %port, i8 noundef zeroext %7) #5
  %tobool17.not = icmp eq ptr %call, null
  br i1 %tobool17.not, label %if.end16.free_skb_crit_edge, label %if.end19

if.end16.free_skb_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_skb

if.end19:                                         ; preds = %if.end16
  %egress_dev = getelementptr inbounds %struct.rmnet_endpoint, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %egress_dev, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %13, align 8
  %data_format20 = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %data_format20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_format20, align 4
  %and21 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.else_crit_edge, label %land.lhs.true

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end19
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 2
  %19 = and i8 %18, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool26.not = icmp eq i8 %19, 0
  br i1 %tobool26.not, label %land.lhs.true.if.else_crit_edge, label %if.then27

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then27:                                        ; preds = %land.lhs.true
  %call28 = tail call i32 @rmnet_map_process_next_hdr_packet(ptr noundef %skb, i16 noundef zeroext %conv12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then27.free_skb_crit_edge

if.then27.free_skb_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_skb

if.end31:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #5
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %24 = and i8 %23, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %24)
  %switch.selectcmp.i = icmp eq i8 %24, 96
  %switch.select.i = select i1 %switch.selectcmp.i, i16 -31011, i16 249
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %24)
  %switch.selectcmp7.i = icmp eq i8 %24, 64
  %switch.select8.i = select i1 %switch.selectcmp7.i, i16 2048, i16 %switch.select.i
  %protocol3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol3.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %switch.select8.i, ptr %protocol3.i, align 8
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end19.if.else_crit_edge
  %call33 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #5
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %30 = and i8 %29, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %30)
  %switch.selectcmp.i77 = icmp eq i8 %30, 96
  %switch.select.i78 = select i1 %switch.selectcmp.i77, i16 -31011, i16 249
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %30)
  %switch.selectcmp7.i79 = icmp eq i8 %30, 64
  %switch.select8.i80 = select i1 %switch.selectcmp7.i79, i16 2048, i16 %switch.select.i78
  %protocol3.i81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %31 = ptrtoint ptr %protocol3.i81 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %switch.select8.i80, ptr %protocol3.i81, align 8
  %32 = ptrtoint ptr %data_format20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_format20, align 4
  %and35 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else.if.end45_crit_edge, label %land.lhs.true37

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

land.lhs.true37:                                  ; preds = %if.else
  %call41 = tail call i32 @rmnet_map_checksum_downlink_packet(ptr noundef %skb, i16 noundef zeroext %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true37.if.end45_crit_edge

land.lhs.true37.if.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then43:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %34 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true37.if.end45_crit_edge, %if.else.if.end45_crit_edge, %if.end31
  %conv46 = zext i16 %conv12 to i32
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %conv46) #5
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %13, align 8
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %41 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  tail call void @rmnet_vnd_rx_fixup(ptr noundef %skb, ptr noundef %36) #5
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %43 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %48 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %gro_cells.i = getelementptr i8, ptr %36, i32 2316
  %call1.i = tail call i32 @gro_cells_receive(ptr noundef %gro_cells.i, ptr noundef %skb) #5
  br label %cleanup

free_skb:                                         ; preds = %if.then27.free_skb_crit_edge, %if.end16.free_skb_crit_edge, %if.end4.free_skb_crit_edge, %if.then.free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end45, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmnet_map_command(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmnet_get_endpoint(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_map_process_next_hdr_packet(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_map_checksum_downlink_packet(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmnet_vnd_rx_fixup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmnet_map_checksum_uplink_packet(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmnet_map_add_map_header(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148486111, i64 2148486137, i64 2148486166, i64 2148486200, i64 2148486231, i64 2148486254}
!12 = !{i64 889811, i64 889872}
!13 = !{i64 892543}
!14 = !{i64 892828}
