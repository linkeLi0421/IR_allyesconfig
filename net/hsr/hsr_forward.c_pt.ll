; ModuleID = '/llk/IR_all_yes/net/hsr/hsr_forward.c_pt.bc'
source_filename = "../net/hsr/hsr_forward.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hsr_frame_info = type { ptr, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.hsr_port = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hsr_ethhdr = type { %struct.ethhdr, %struct.hsr_tag }
%struct.hsr_tag = type { i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.96, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.96 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.hsr_priv = type { %struct.callback_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, i32, i16, i16, i32, %struct.spinlock, %struct.spinlock, ptr, i8, i8, [6 x i8], ptr }
%struct.callback_head = type { ptr, ptr }
%struct.prp_rct = type { i16, i16, i16 }
%struct.hsrv1_ethhdr_sp = type { %struct.ethhdr, %struct.hsr_tag, %struct.hsr_sup_tag }
%struct.hsr_sup_tag = type { i16, i16, %struct.hsr_sup_tlv }
%struct.hsr_sup_tlv = type { i8, i8 }
%struct.hsrv0_ethhdr_sp = type { %struct.ethhdr, %struct.hsr_sup_tag }
%struct.vlan_ethhdr = type { %union.anon.118, i16, i16, i16 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { [6 x i8], [6 x i8] }
%struct.hsr_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@hsr_get_untagged_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/hsr/hsr_forward.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d: Unexpected frame received (port_src %s)\0A\00", [48 x i8] zeroinitializer }, align 32
@prp_get_untagged_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@prp_create_tagged_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"errored PRP skb\00", [16 x i8] zeroinitializer }, align 32
@fill_frame_info.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VLAN not yet supported\00", [41 x i8] zeroinitializer }, align 32
@is_supervision_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@hsr_forward_do.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 35067, i64 35119]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 158, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 334, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 597, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [25 x i8] c"../net/hsr/hsr_forward.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 418, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hsr_get_untagged_frame(ptr nocapture noundef %frame, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frame, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then:                                          ; preds = %entry
  %skb_hsr = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 1
  %2 = ptrtoint ptr %skb_hsr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb_hsr, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call.i = tail call ptr @skb_pull(ptr noundef nonnull %3, i32 noundef 6) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = add i32 %sub.ptr.lhs.cast.i.i, -6
  %sub.i = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef nonnull %3, i32 noundef %sub.i, i32 noundef 2592, i1 noundef zeroext false) #5
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 6) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then2.create_stripped_skb_hsr.exit_crit_edge, label %if.end.i

if.then2.create_stripped_skb_hsr.exit_crit_edge:  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %create_stripped_skb_hsr.exit

if.end.i:                                         ; preds = %if.then2
  %data.i31.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i31.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i31.i, align 4
  %head.i32.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %head.i32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i32.i, align 8
  %sub.ptr.lhs.cast.i33.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i34.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i35.i = sub i32 %sub.ptr.lhs.cast.i33.i, %sub.ptr.rhs.cast.i34.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i35.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %14 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %14)
  %cmp.i = icmp eq i16 %14, 1536
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 8
  %sub7.i = add i16 %17, -6
  store i16 %sub7.i, ptr %15, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i.if.end9.i_crit_edge
  %is_vlan.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 7
  %18 = ptrtoint ptr %is_vlan.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_vlan.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not.i = icmp eq i8 %19, 0
  %spec.select.i = select i1 %tobool10.not.i, i32 12, i32 16
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %mac_header.i37.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i37.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i37.i, align 2
  %conv.i38.i = zext i16 %23 to i32
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %conv.i38.i
  %24 = ptrtoint ptr %head.i32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i32.i, align 8
  %26 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mac_header.i.i, align 2
  %conv.i41.i = zext i16 %27 to i32
  %add.ptr.i42.i = getelementptr i8, ptr %25, i32 %conv.i41.i
  %28 = call ptr @memcpy(ptr %add.ptr.i42.i, ptr %add.ptr.i.i, i32 %spec.select.i)
  %29 = load ptr, ptr %head.i32.i, align 8
  %30 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i = zext i16 %30 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %h_proto.i, align 1
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %33 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %protocol.i, align 8
  br label %create_stripped_skb_hsr.exit

create_stripped_skb_hsr.exit:                     ; preds = %if.end9.i, %if.then2.create_stripped_skb_hsr.exit_crit_edge
  %34 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %frame, align 4
  br label %if.end40

land.end:                                         ; preds = %if.then
  %.b50 = load i1, ptr @hsr_get_untagged_frame.__already_done, align 1
  br i1 %.b50, label %land.end.return_crit_edge, label %if.then10, !prof !28

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then10:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @hsr_get_untagged_frame.__already_done, align 1
  %dev = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 159, ptr noundef %36) #5
  br label %return

if.end40:                                         ; preds = %create_stripped_skb_hsr.exit, %entry.if.end40_crit_edge
  %37 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %frame, align 4
  %call42 = tail call ptr @skb_clone(ptr noundef %38, i32 noundef 2592) #5
  br label %return

return:                                           ; preds = %if.end40, %if.then10, %land.end.return_crit_edge
  %retval.0 = phi ptr [ %call42, %if.end40 ], [ null, %if.then10 ], [ null, %land.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prp_get_untagged_frame(ptr nocapture noundef %frame, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frame, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then:                                          ; preds = %entry
  %skb_prp = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 2
  %2 = ptrtoint ptr %skb_prp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb_prp, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %sub = add i32 %5, -6
  tail call void @skb_trim(ptr noundef nonnull %3, i32 noundef %sub) #5
  %6 = ptrtoint ptr %skb_prp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb_prp, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call.i = tail call ptr @__pskb_copy_fclone(ptr noundef %7, i32 noundef %sub.ptr.sub.i, i32 noundef 2592, i1 noundef zeroext false) #5
  %12 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %frame, align 4
  br label %if.end44

land.end:                                         ; preds = %if.then
  %.b56 = load i1, ptr @prp_get_untagged_frame.__already_done, align 1
  br i1 %.b56, label %land.end.return_crit_edge, label %if.then14, !prof !28

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @prp_get_untagged_frame.__already_done, align 1
  %dev = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 182, ptr noundef %14) #5
  br label %return

if.end44:                                         ; preds = %if.then2, %entry.if.end44_crit_edge
  %15 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %frame, align 4
  %call46 = tail call ptr @skb_clone(ptr noundef %16, i32 noundef 2592) #5
  br label %return

return:                                           ; preds = %if.end44, %if.then14, %land.end.return_crit_edge
  %retval.0 = phi ptr [ %call46, %if.end44 ], [ null, %if.then14 ], [ null, %land.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hsr_create_tagged_frame(ptr nocapture noundef readonly %frame, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_hsr = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 1
  %0 = ptrtoint ptr %skb_hsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_hsr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %type.i = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  %hsr_tag.i = getelementptr inbounds %struct.hsr_ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %8 = ptrtoint ptr %hsr_tag.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %hsr_tag.i, align 1
  %10 = and i16 %9, 4095
  %shl.i.i = select i1 %cmp.not.i, i16 0, i16 4096
  %or.i.i = or i16 %10, %shl.i.i
  store i16 %or.i.i, ptr %hsr_tag.i, align 1
  %11 = ptrtoint ptr %skb_hsr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb_hsr, align 4
  %call3 = tail call ptr @skb_clone(ptr noundef %12, i32 noundef 2592) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features, align 16
  %and = and i64 %16, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  %17 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frame, align 4
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call ptr @skb_clone(ptr noundef %18, i32 noundef 2592) #5
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %head.i50 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 18
  %21 = ptrtoint ptr %head.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i50, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 6
  %add = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %call.i = tail call ptr @__pskb_copy_fclone(ptr noundef %18, i32 noundef %add, i32 noundef 2592, i1 noundef zeroext false) #5
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %data.i51 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i51, align 4
  %head.i52 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %25 = ptrtoint ptr %head.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i52, align 8
  %sub.ptr.lhs.cast.i53 = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i54 = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i55 = sub i32 %sub.ptr.lhs.cast.i53, %sub.ptr.rhs.cast.i54
  %conv.i56 = trunc i32 %sub.ptr.sub.i55 to i16
  %mac_header.i57 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %27 = ptrtoint ptr %mac_header.i57 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i56, ptr %mac_header.i57, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %28 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %ip_summed, align 8
  %29 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %29)
  %cmp = icmp eq i16 %29, 1536
  br i1 %cmp, label %if.then16, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %30 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 8
  %add18 = add i16 %32, 6
  store i16 %add18, ptr %30, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end14.if.end20_crit_edge
  %is_vlan = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 7
  %33 = ptrtoint ptr %is_vlan to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_vlan, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool21.not = icmp eq i8 %34, 0
  %spec.select = select i1 %tobool21.not, i32 14, i32 18
  %35 = ptrtoint ptr %head.i52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i52, align 8
  %37 = ptrtoint ptr %mac_header.i57 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mac_header.i57, align 2
  %conv.i60 = zext i16 %38 to i32
  %add.ptr.i61 = getelementptr i8, ptr %36, i32 %conv.i60
  %call26 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 6) #5
  %39 = call ptr @memmove(ptr %call26, ptr %add.ptr.i61, i32 %spec.select)
  %40 = ptrtoint ptr %data.i51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i51, align 4
  %42 = ptrtoint ptr %head.i52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i52, align 8
  %sub.ptr.lhs.cast.i64 = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i65 = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i66 = sub i32 %sub.ptr.lhs.cast.i64, %sub.ptr.rhs.cast.i65
  %conv.i67 = trunc i32 %sub.ptr.sub.i66 to i16
  %44 = ptrtoint ptr %mac_header.i57 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i67, ptr %mac_header.i57, align 2
  %hsr = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 2
  %45 = ptrtoint ptr %hsr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hsr, align 4
  %prot_version = getelementptr inbounds %struct.hsr_priv, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %prot_version to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prot_version, align 4
  %conv27 = trunc i32 %48 to i8
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %49 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %50)
  %cmp.i.i.i = icmp ult i32 %50, 66
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end20.if.end.i_crit_edge, !prof !29

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i.i.i:                                    ; preds = %if.end20
  %sub.i.i.i = sub nuw nsw i32 66, %50
  %call.i.i.i = tail call i32 @__skb_pad(ptr noundef nonnull %call.i, i32 noundef %sub.i.i.i, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i.cleanup_crit_edge

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %51 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put.exit.i.i.i, label %do.body3.i.i.i.i, !prof !28

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #5, !srcloc !30
  unreachable

__skb_put.exit.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %53 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %54, i32 %sub.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %55 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len1.i.i.i, align 4
  %add.i.i.i.i = add i32 %56, %sub.i.i.i
  store i32 %add.i.i.i.i, ptr %len1.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %__skb_put.exit.i.i.i, %if.end20.if.end.i_crit_edge
  %57 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len1.i.i.i, align 4
  %59 = ptrtoint ptr %is_vlan to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_vlan, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool1.not.i = icmp eq i8 %60, 0
  %spec.select.v.i = select i1 %tobool1.not.i, i32 4082, i32 4078
  %spec.select.i = add i32 %spec.select.v.i, %58
  %61 = ptrtoint ptr %head.i52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i52, align 8
  %63 = ptrtoint ptr %mac_header.i57 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %mac_header.i57, align 2
  %conv.i.i = zext i16 %64 to i32
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %conv.i.i
  %type.i.i = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %65 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.not.i.i = icmp eq i32 %66, 1
  %hsr_tag.i.i = getelementptr inbounds %struct.hsr_ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %shl.i.i.i = select i1 %cmp.not.i.i, i16 0, i16 4096
  %conv.i69 = trunc i32 %spec.select.i to i16
  %67 = and i16 %conv.i69, 4095
  %or6.i.i = or i16 %shl.i.i.i, %67
  %68 = ptrtoint ptr %hsr_tag.i.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %or6.i.i, ptr %hsr_tag.i.i, align 1
  %sequence_nr.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 5
  %69 = ptrtoint ptr %sequence_nr.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %sequence_nr.i, align 4
  %sequence_nr7.i = getelementptr inbounds %struct.hsr_ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %sequence_nr7.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %70, ptr %sequence_nr7.i, align 1
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %h_proto.i, align 1
  %encap_proto.i = getelementptr inbounds %struct.hsr_ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 2
  %74 = ptrtoint ptr %encap_proto.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %encap_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv27)
  %tobool10.not.i = icmp eq i8 %conv27, 0
  %conv11.i = select i1 %tobool10.not.i, i16 -30469, i16 -30417
  %75 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %conv11.i, ptr %h_proto.i, align 1
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %76 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv11.i, ptr %protocol.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi ptr [ %call3, %if.then ], [ %call6, %if.then5 ], [ null, %if.end7.cleanup_crit_edge ], [ %call.i, %if.end.i ], [ null, %if.then.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prp_create_tagged_frame(ptr nocapture noundef readonly %frame, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_prp = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 2
  %0 = ptrtoint ptr %skb_prp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_prp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else45, label %if.then

if.then:                                          ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %PRP_suffix.i = getelementptr i8, ptr %3, i32 -2
  %4 = ptrtoint ptr %PRP_suffix.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %PRP_suffix.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30469, i16 %5)
  %cmp.i = icmp ne i16 %5, -30469
  %add.ptr.i = getelementptr i8, ptr %3, i32 -6
  %tobool2.not75 = icmp eq ptr %add.ptr.i, null
  %tobool2.not = select i1 %cmp.i, i1 true, i1 %tobool2.not75
  br i1 %tobool2.not, label %land.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %type.i = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i71 = icmp ne i32 %7, 1
  %..i = zext i1 %cmp.i71 to i16
  %hsr.i = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %hsr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hsr.i, align 4
  %net_id.i = getelementptr inbounds %struct.hsr_priv, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %net_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %net_id.i, align 4
  %conv.i = zext i8 %11 to i16
  %or.i = or i16 %conv.i, %..i
  %lan_id_and_LSDU_size.i.i = getelementptr i8, ptr %3, i32 -4
  %12 = ptrtoint ptr %lan_id_and_LSDU_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %lan_id_and_LSDU_size.i.i, align 1
  %14 = and i16 %13, 4095
  %shl.i.i = shl i16 %or.i, 12
  %or.i.i = or i16 %shl.i.i, %14
  store i16 %or.i.i, ptr %lan_id_and_LSDU_size.i.i, align 1
  %15 = ptrtoint ptr %skb_prp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb_prp, align 4
  %call44 = tail call ptr @skb_clone(ptr noundef %16, i32 noundef 2592) #5
  br label %cleanup56

land.end:                                         ; preds = %if.then
  %.b70 = load i1, ptr @prp_create_tagged_frame.__already_done, align 1
  br i1 %.b70, label %land.end.cleanup56_crit_edge, label %if.then13, !prof !28

land.end.cleanup56_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @prp_create_tagged_frame.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 334, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %cleanup56

if.else45:                                        ; preds = %entry
  %dev = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %features, align 16
  %and = and i64 %20, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool46.not = icmp eq i64 %and, 0
  %21 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %frame, align 4
  br i1 %tobool46.not, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call ptr @skb_clone(ptr noundef %22, i32 noundef 2592) #5
  br label %cleanup56

if.end50:                                         ; preds = %if.else45
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end50.skb_tailroom.exit_crit_edge

if.end50.skb_tailroom.exit_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 6
  %phi.bo = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end50.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.false.i ], [ 6, %if.end50.skb_tailroom.exit_crit_edge ]
  %call54 = tail call ptr @skb_copy_expand(ptr noundef %22, i32 noundef 0, i32 noundef %cond.i, i32 noundef 2592) #5
  %tobool.not.i = icmp eq ptr %call54, null
  br i1 %tobool.not.i, label %skb_tailroom.exit.cleanup56_crit_edge, label %if.end.i

skb_tailroom.exit.cleanup56_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.end.i:                                         ; preds = %skb_tailroom.exit
  %is_vlan.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 7
  %29 = ptrtoint ptr %is_vlan.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_vlan.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i = icmp eq i8 %30, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 60, i32 64
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 6
  %31 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %32)
  %cmp.i.i.i = icmp ugt i32 %spec.select.i, %32
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.if.end6.i_crit_edge, !prof !29

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %sub.i.i.i = sub i32 %spec.select.i, %32
  %call.i.i.i = tail call i32 @__skb_pad(ptr noundef nonnull %call54, i32 noundef %sub.i.i.i, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i.cleanup56_crit_edge

if.then.i.i.i.cleanup56_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put.exit.i.i.i, label %do.body3.i.i.i.i, !prof !28

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #5, !srcloc !30
  unreachable

__skb_put.exit.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 %sub.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %37 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len1.i.i.i, align 4
  %add.i.i.i.i = add i32 %38, %sub.i.i.i
  store i32 %add.i.i.i.i, ptr %len1.i.i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %__skb_put.exit.i.i.i, %if.end.i.if.end6.i_crit_edge
  %call7.i = tail call ptr @skb_put(ptr noundef nonnull %call54, i32 noundef 6) #5
  %39 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len1.i.i.i, align 4
  %41 = ptrtoint ptr %is_vlan.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_vlan.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool9.not.i = icmp eq i8 %42, 0
  %spec.select1.v.i = select i1 %tobool9.not.i, i32 4082, i32 4078
  %spec.select1.i = add i32 %spec.select1.v.i, %40
  %type.i.i = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %43 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i.i = icmp ne i32 %44, 1
  %..i.i = zext i1 %cmp.i.i to i16
  %hsr.i.i = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 2
  %45 = ptrtoint ptr %hsr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hsr.i.i, align 4
  %net_id.i.i = getelementptr inbounds %struct.hsr_priv, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %net_id.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %net_id.i.i, align 4
  %conv.i.i = zext i8 %48 to i16
  %or.i.i72 = or i16 %conv.i.i, %..i.i
  %lan_id_and_LSDU_size.i.i.i = getelementptr inbounds %struct.prp_rct, ptr %call7.i, i32 0, i32 1
  %shl.i.i.i = shl i16 %or.i.i72, 12
  %conv.i73 = trunc i32 %spec.select1.i to i16
  %49 = and i16 %conv.i73, 4095
  %or6.i.i = or i16 %shl.i.i.i, %49
  %50 = ptrtoint ptr %lan_id_and_LSDU_size.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %or6.i.i, ptr %lan_id_and_LSDU_size.i.i.i, align 1
  %sequence_nr.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 5
  %51 = ptrtoint ptr %sequence_nr.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sequence_nr.i, align 4
  %53 = ptrtoint ptr %call7.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %52, ptr %call7.i, align 1
  %PRP_suffix.i74 = getelementptr inbounds %struct.prp_rct, ptr %call7.i, i32 0, i32 2
  %54 = ptrtoint ptr %PRP_suffix.i74 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 -30469, ptr %PRP_suffix.i74, align 1
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 18
  %55 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 15, i32 0, i32 21
  %57 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %58 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %56, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %h_proto.i, align 1
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 15, i32 0, i32 18
  %61 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %protocol.i, align 8
  br label %cleanup56

cleanup56:                                        ; preds = %if.end6.i, %if.then.i.i.i.cleanup56_crit_edge, %skb_tailroom.exit.cleanup56_crit_edge, %if.then47, %if.then13, %land.end.cleanup56_crit_edge, %if.then3
  %retval.1 = phi ptr [ %call48, %if.then47 ], [ %call44, %if.then3 ], [ null, %if.then13 ], [ null, %land.end.cleanup56_crit_edge ], [ null, %skb_tailroom.exit.cleanup56_crit_edge ], [ %call54, %if.then.i.i.i.cleanup56_crit_edge ], [ %call54, %if.end6.i ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @prp_drop_frame(ptr nocapture noundef readonly %frame, ptr nocapture noundef readonly %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port_rcv = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 3
  %0 = ptrtoint ptr %port_rcv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_rcv, align 4
  %type = getelementptr inbounds %struct.hsr_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.lor.end_crit_edge [
    i32 1, label %entry.lor.end.sink.split_crit_edge
    i32 2, label %land.rhs
  ]

entry.lor.end.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.sink.split

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.sink.split

lor.end.sink.split:                               ; preds = %land.rhs, %entry.lor.end.sink.split_crit_edge
  %.sink11 = phi i32 [ 1, %land.rhs ], [ 2, %entry.lor.end.sink.split_crit_edge ]
  %type1 = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %5 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %.sink11)
  %cmp2 = icmp eq i32 %6, %.sink11
  br label %lor.end

lor.end:                                          ; preds = %lor.end.sink.split, %entry.lor.end_crit_edge
  %7 = phi i1 [ false, %entry.lor.end_crit_edge ], [ %cmp2, %lor.end.sink.split ]
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hsr_drop_frame(ptr nocapture noundef readonly %frame, ptr nocapture noundef readonly %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %and = and i64 %3, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  %port_rcv.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 3
  %4 = ptrtoint ptr %port_rcv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_rcv.i, align 4
  %type.i = getelementptr inbounds %struct.hsr_port, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %7, label %if.then.return_crit_edge [
    i32 1, label %if.then.lor.end.sink.split.i_crit_edge
    i32 2, label %land.rhs.i
  ]

if.then.lor.end.sink.split.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.sink.split.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.rhs.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.sink.split.i

lor.end.sink.split.i:                             ; preds = %land.rhs.i, %if.then.lor.end.sink.split.i_crit_edge
  %.sink11.i = phi i32 [ 1, %land.rhs.i ], [ 2, %if.then.lor.end.sink.split.i_crit_edge ]
  %type1.i = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %9 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %.sink11.i)
  %cmp2.i = icmp eq i32 %10, %.sink11.i
  br label %return

return:                                           ; preds = %lor.end.sink.split.i, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.then.return_crit_edge ], [ %cmp2.i, %lor.end.sink.split.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hsr_fill_frame_info(i16 noundef zeroext %proto, ptr noundef %skb, ptr nocapture noundef %frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port_rcv = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 3
  %0 = ptrtoint ptr %port_rcv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_rcv, align 4
  %hsr1 = getelementptr inbounds %struct.hsr_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsr1, align 4
  %prot_version = getelementptr inbounds %struct.hsr_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %prot_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prot_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30469, i16 %proto)
  %cmp = icmp eq i16 %proto, -30469
  %or.cond = and i1 %cmp, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30417, i16 %proto)
  %cmp4 = icmp eq i16 %proto, -30417
  %or.cond21 = or i1 %cmp4, %or.cond
  br i1 %or.cond21, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %6 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %7)
  %cmp7 = icmp ult i16 %7, 20
  br i1 %cmp7, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %frame, align 4
  %skb_prp = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 2
  %9 = ptrtoint ptr %skb_prp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %skb_prp, align 4
  %skb_hsr = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 1
  %10 = ptrtoint ptr %skb_hsr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %skb_hsr, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %sequence_nr.i = getelementptr inbounds %struct.hsr_ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %sequence_nr.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %sequence_nr.i, align 1
  %sequence_nr = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 5
  %17 = ptrtoint ptr %sequence_nr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %sequence_nr, align 4
  br label %cleanup

if.end10:                                         ; preds = %entry
  %skb_hsr.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 1
  %18 = ptrtoint ptr %skb_hsr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %skb_hsr.i, align 4
  %skb_prp.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 2
  %19 = ptrtoint ptr %skb_prp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %skb_prp.i, align 4
  %20 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb, ptr %frame, align 4
  %type.i = getelementptr inbounds %struct.hsr_port, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 4
  br i1 %cmp.not.i, label %do.body2.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %is_from_san.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 10
  %23 = ptrtoint ptr %is_from_san.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_from_san.i, align 2
  br label %cleanup

do.body2.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %seqnr_lock.i = getelementptr inbounds %struct.hsr_priv, ptr %3, i32 0, i32 10
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %seqnr_lock.i) #5
  %sequence_nr.i22 = getelementptr inbounds %struct.hsr_priv, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %sequence_nr.i22 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sequence_nr.i22, align 4
  %sequence_nr7.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 5
  %26 = ptrtoint ptr %sequence_nr7.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %sequence_nr7.i, align 4
  %27 = load i16, ptr %sequence_nr.i22, align 4
  %inc.i = add i16 %27, 1
  store i16 %inc.i, ptr %sequence_nr.i22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %seqnr_lock.i, i32 noundef %call4.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body2.i, %if.then.i, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %do.body2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prp_fill_frame_info(i16 noundef zeroext %proto, ptr noundef %skb, ptr nocapture noundef %frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %PRP_suffix.i = getelementptr i8, ptr %1, i32 -2
  %2 = ptrtoint ptr %PRP_suffix.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %PRP_suffix.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30469, i16 %3)
  %cmp.i = icmp ne i16 %3, -30469
  %add.ptr.i = getelementptr i8, ptr %1, i32 -6
  %tobool.not15 = icmp eq ptr %add.ptr.i, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not15
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_supervision = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 6
  %4 = ptrtoint ptr %is_supervision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_supervision, align 2, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.else.i, label %land.lhs.true.prp_check_lsdu_size.exit_crit_edge

land.lhs.true.prp_check_lsdu_size.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %prp_check_lsdu_size.exit

if.else.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %13)
  %cmp.i14 = icmp eq i16 %13, -32512
  %spec.select.v.i = select i1 %cmp.i14, i32 -18, i32 -14
  %spec.select.i = add i32 %spec.select.v.i, %11
  br label %prp_check_lsdu_size.exit

prp_check_lsdu_size.exit:                         ; preds = %if.else.i, %land.lhs.true.prp_check_lsdu_size.exit_crit_edge
  %expected_lsdu_size.0.i = phi i32 [ 52, %land.lhs.true.prp_check_lsdu_size.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  %lan_id_and_LSDU_size.i.i = getelementptr i8, ptr %1, i32 -4
  %14 = ptrtoint ptr %lan_id_and_LSDU_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %lan_id_and_LSDU_size.i.i, align 1
  %16 = and i16 %15, 4095
  %conv6.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_lsdu_size.0.i, i32 %conv6.i)
  %cmp7.i = icmp eq i32 %expected_lsdu_size.0.i, %conv6.i
  br i1 %cmp7.i, label %if.then, label %prp_check_lsdu_size.exit.if.end_crit_edge

prp_check_lsdu_size.exit.if.end_crit_edge:        ; preds = %prp_check_lsdu_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %prp_check_lsdu_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %skb_hsr = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 1
  %17 = ptrtoint ptr %skb_hsr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %skb_hsr, align 4
  %18 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %frame, align 4
  %skb_prp = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 2
  %19 = ptrtoint ptr %skb_prp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %skb, ptr %skb_prp, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr.i, align 1
  %sequence_nr = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 5
  %22 = ptrtoint ptr %sequence_nr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %sequence_nr, align 4
  br label %cleanup

if.end:                                           ; preds = %prp_check_lsdu_size.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %port_rcv.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 3
  %23 = ptrtoint ptr %port_rcv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port_rcv.i, align 4
  %hsr1.i = getelementptr inbounds %struct.hsr_port, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %hsr1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hsr1.i, align 4
  %skb_hsr.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 1
  %27 = ptrtoint ptr %skb_hsr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %skb_hsr.i, align 4
  %skb_prp.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 2
  %28 = ptrtoint ptr %skb_prp.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %skb_prp.i, align 4
  %29 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %skb, ptr %frame, align 4
  %type.i = getelementptr inbounds %struct.hsr_port, ptr %24, i32 0, i32 3
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp.not.i = icmp eq i32 %31, 4
  br i1 %cmp.not.i, label %do.body2.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %is_from_san.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 10
  %32 = ptrtoint ptr %is_from_san.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %is_from_san.i, align 2
  br label %cleanup

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %seqnr_lock.i = getelementptr inbounds %struct.hsr_priv, ptr %26, i32 0, i32 10
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %seqnr_lock.i) #5
  %sequence_nr.i = getelementptr inbounds %struct.hsr_priv, ptr %26, i32 0, i32 7
  %33 = ptrtoint ptr %sequence_nr.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sequence_nr.i, align 4
  %sequence_nr7.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 5
  %35 = ptrtoint ptr %sequence_nr7.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %sequence_nr7.i, align 4
  %36 = load i16, ptr %sequence_nr.i, align 4
  %inc.i = add i16 %36, 1
  store i16 %inc.i, ptr %sequence_nr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %seqnr_lock.i, i32 noundef %call4.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body2.i, %if.then.i, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_forward_skb(ptr noundef %skb, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %frame = alloca %struct.hsr_frame_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %frame) #5
  %0 = call ptr @memset(ptr %frame, i32 255, i32 28)
  %hsr1.i = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %hsr1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hsr1.i, align 4
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %3 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mac_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %4)
  %cmp.i = icmp ult i16 %4, 14
  br i1 %cmp.i, label %entry.out_drop_crit_edge, label %if.end.i

entry.out_drop_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_drop

if.end.i:                                         ; preds = %entry
  %5 = call ptr @memset(ptr %frame, i32 0, i32 28)
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.i.not.i.i = icmp eq i16 %7, -1
  br i1 %cmp.i.not.i.i, label %land.rhs.i.i, label %if.end.i.if.end29.i.i_crit_edge

if.end.i.if.end29.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b200.i.i = load i1, ptr @is_supervision_frame.__already_done, align 1
  br i1 %.b200.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !28

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @is_supervision_frame.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #5
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %if.end.i.if.end29.i.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %10 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %sup_multicast_addr.i.i = getelementptr inbounds %struct.hsr_priv, ptr %2, i32 0, i32 15
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 4
  %14 = ptrtoint ptr %sup_multicast_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sup_multicast_addr.i.i, align 4
  %xor.i.i.i = xor i32 %15, %13
  %add.ptr.i202.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %16 = ptrtoint ptr %add.ptr.i202.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i202.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.hsr_priv, ptr %2, i32 0, i32 15, i32 4
  %18 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %19, %17
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i203.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i203.i.i, label %if.end41.i.i, label %if.end29.i.i.is_supervision_frame.exit.i_crit_edge

if.end29.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.end41.i.i:                                     ; preds = %if.end29.i.i
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %h_proto.i.i, align 1
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %21, label %if.end41.i.i.is_supervision_frame.exit.i_crit_edge [
    i16 -30417, label %if.then53.i.i
    i16 -30469, label %if.else.i.i
  ]

if.end41.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.then53.i.i:                                    ; preds = %if.end41.i.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %sub.i.i.i.i, 26
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then53.i.i.if.end57.i.i_crit_edge, !prof !29

if.then53.i.i.if.end57.i.i_crit_edge:             ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.i.i

if.end.i.i.i:                                     ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %24)
  %cmp3.i.i.i = icmp ult i32 %24, 26
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.is_supervision_frame.exit.i_crit_edge, label %pskb_may_pull.exit.i.i, !prof !29

if.end.i.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i.i = sub nuw nsw i32 26, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #5
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.is_supervision_frame.exit.i_crit_edge, label %pskb_may_pull.exit.i.i.if.end57.i.i_crit_edge

pskb_may_pull.exit.i.i.if.end57.i.i_crit_edge:    ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.i.i

pskb_may_pull.exit.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.end57.i.i:                                     ; preds = %pskb_may_pull.exit.i.i.if.end57.i.i_crit_edge, %if.then53.i.i.if.end57.i.i_crit_edge
  %27 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i, align 8
  %29 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i206.i.i = zext i16 %30 to i32
  %add.ptr.i207.i.i = getelementptr i8, ptr %28, i32 %conv.i206.i.i
  %encap_proto.i.i = getelementptr inbounds %struct.hsrv1_ethhdr_sp, ptr %add.ptr.i207.i.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %encap_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %encap_proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30469, i16 %32)
  %cmp61.not.i.i = icmp eq i16 %32, -30469
  br i1 %cmp61.not.i.i, label %if.end64.i.i, label %if.end57.i.i.is_supervision_frame.exit.i_crit_edge

if.end57.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.end64.i.i:                                     ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %hsr_sup.i.i = getelementptr inbounds %struct.hsrv1_ethhdr_sp, ptr %add.ptr.i207.i.i, i32 0, i32 2
  br label %if.end71.i.i

if.else.i.i:                                      ; preds = %if.end41.i.i
  %len.i.i208.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len.i.i208.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i208.i.i, align 4
  %data_len.i.i209.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %35 = ptrtoint ptr %data_len.i.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i209.i.i, align 8
  %sub.i.i210.i.i = sub i32 %34, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i210.i.i)
  %cmp.not.i211.i.i = icmp ult i32 %sub.i.i210.i.i, 20
  br i1 %cmp.not.i211.i.i, label %if.end.i213.i.i, label %if.else.i.i.if.end68.i.i_crit_edge, !prof !29

if.else.i.i.if.end68.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i.i

if.end.i213.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %34)
  %cmp3.i212.i.i = icmp ult i32 %34, 20
  br i1 %cmp3.i212.i.i, label %if.end.i213.i.i.is_supervision_frame.exit.i_crit_edge, label %pskb_may_pull.exit219.i.i, !prof !29

if.end.i213.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %if.end.i213.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

pskb_may_pull.exit219.i.i:                        ; preds = %if.end.i213.i.i
  %sub.i214.i.i = sub nuw nsw i32 20, %sub.i.i210.i.i
  %call13.i215.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i214.i.i) #5
  %cmp14.i216.not.i.i = icmp eq ptr %call13.i215.i.i, null
  br i1 %cmp14.i216.not.i.i, label %pskb_may_pull.exit219.i.i.is_supervision_frame.exit.i_crit_edge, label %pskb_may_pull.exit219.i.i.if.end68.i.i_crit_edge

pskb_may_pull.exit219.i.i.if.end68.i.i_crit_edge: ; preds = %pskb_may_pull.exit219.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i.i

pskb_may_pull.exit219.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %pskb_may_pull.exit219.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.end68.i.i:                                     ; preds = %pskb_may_pull.exit219.i.i.if.end68.i.i_crit_edge, %if.else.i.i.if.end68.i.i_crit_edge
  %37 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i, align 8
  %39 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i222.i.i = zext i16 %40 to i32
  %add.ptr.i223.i.i = getelementptr i8, ptr %38, i32 %conv.i222.i.i
  %hsr_sup70.i.i = getelementptr inbounds %struct.hsrv0_ethhdr_sp, ptr %add.ptr.i223.i.i, i32 0, i32 1
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %if.end68.i.i, %if.end64.i.i
  %hsr_sup_tag.0.i.i = phi ptr [ %hsr_sup.i.i, %if.end64.i.i ], [ %hsr_sup70.i.i, %if.end68.i.i ]
  %total_length.0.i.i = phi i32 [ 28, %if.end64.i.i ], [ 22, %if.end68.i.i ]
  %tlv.i.i = getelementptr inbounds %struct.hsr_sup_tag, ptr %hsr_sup_tag.0.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %tlv.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tlv.i.i, align 1
  %43 = and i8 %42, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %43)
  %switch.i.i = icmp eq i8 %43, 20
  br i1 %switch.i.i, label %if.end93.i.i, label %if.end71.i.i.is_supervision_frame.exit.i_crit_edge

if.end71.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.end93.i.i:                                     ; preds = %if.end71.i.i
  %HSR_TLV_length.i.i = getelementptr inbounds %struct.hsr_sup_tag, ptr %hsr_sup_tag.0.i.i, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %HSR_TLV_length.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %HSR_TLV_length.i.i, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %45, label %if.end93.i.i.is_supervision_frame.exit.i_crit_edge [
    i8 12, label %if.end93.i.i.if.end105.i.i_crit_edge
    i8 6, label %if.end93.i.i.if.end105.i.i_crit_edge44
  ]

if.end93.i.i.if.end105.i.i_crit_edge44:           ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105.i.i

if.end93.i.i.if.end105.i.i_crit_edge:             ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105.i.i

if.end93.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.end105.i.i:                                    ; preds = %if.end93.i.i.if.end105.i.i_crit_edge, %if.end93.i.i.if.end105.i.i_crit_edge44
  %conv108.i.i = zext i8 %45 to i32
  %add110.i.i = add nuw nsw i32 %total_length.0.i.i, %conv108.i.i
  %len.i.i224.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %47 = ptrtoint ptr %len.i.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i.i224.i.i, align 4
  %data_len.i.i225.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %49 = ptrtoint ptr %data_len.i.i225.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_len.i.i225.i.i, align 8
  %sub.i.i226.i.i = sub i32 %48, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %add110.i.i, i32 %sub.i.i226.i.i)
  %cmp.not.i227.i.i = icmp ugt i32 %add110.i.i, %sub.i.i226.i.i
  br i1 %cmp.not.i227.i.i, label %if.end.i229.i.i, label %if.end105.i.i.if.end115.i.i_crit_edge, !prof !29

if.end105.i.i.if.end115.i.i_crit_edge:            ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.i.i

if.end.i229.i.i:                                  ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add110.i.i)
  %cmp3.i228.i.i = icmp ult i32 %48, %add110.i.i
  br i1 %cmp3.i228.i.i, label %if.end.i229.i.i.is_supervision_frame.exit.i_crit_edge, label %pskb_may_pull.exit235.i.i, !prof !29

if.end.i229.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %if.end.i229.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

pskb_may_pull.exit235.i.i:                        ; preds = %if.end.i229.i.i
  %sub.i230.i.i = sub i32 %add110.i.i, %sub.i.i226.i.i
  %call13.i231.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i230.i.i) #5
  %cmp14.i232.not.i.i = icmp eq ptr %call13.i231.i.i, null
  br i1 %cmp14.i232.not.i.i, label %pskb_may_pull.exit235.i.i.is_supervision_frame.exit.i_crit_edge, label %pskb_may_pull.exit235.i.i.if.end115.i.i_crit_edge

pskb_may_pull.exit235.i.i.if.end115.i.i_crit_edge: ; preds = %pskb_may_pull.exit235.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.i.i

pskb_may_pull.exit235.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %pskb_may_pull.exit235.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.end115.i.i:                                    ; preds = %pskb_may_pull.exit235.i.i.if.end115.i.i_crit_edge, %if.end105.i.i.if.end115.i.i_crit_edge
  %call117.i.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add110.i.i) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %call119.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add110.i.i) #5
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %54)
  %cmp122.i.i = icmp eq i8 %54, 30
  br i1 %cmp122.i.i, label %if.then124.i.i, label %if.end115.i.i.if.end146.i.i_crit_edge

if.end115.i.i.if.end146.i.i_crit_edge:            ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146.i.i

if.then124.i.i:                                   ; preds = %if.end115.i.i
  %HSR_TLV_length125.i.i = getelementptr inbounds %struct.hsr_sup_tlv, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %HSR_TLV_length125.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %HSR_TLV_length125.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %56)
  %cmp127.not.i.i = icmp eq i8 %56, 6
  br i1 %cmp127.not.i.i, label %if.end130.i.i, label %if.then124.i.i.is_supervision_frame.exit.i_crit_edge

if.then124.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %if.then124.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.end130.i.i:                                    ; preds = %if.then124.i.i
  %conv136.i.i = add nuw nsw i32 %add110.i.i, 8
  %57 = ptrtoint ptr %len.i.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i.i224.i.i, align 4
  %59 = ptrtoint ptr %data_len.i.i225.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_len.i.i225.i.i, align 8
  %sub.i.i = sub i32 %58, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %conv136.i.i, i32 %sub.i.i)
  %cmp.not.i33 = icmp ugt i32 %conv136.i.i, %sub.i.i
  br i1 %cmp.not.i33, label %if.end.i34, label %if.end130.i.i.if.end140.i.i_crit_edge, !prof !29

if.end130.i.i.if.end140.i.i_crit_edge:            ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140.i.i

if.end.i34:                                       ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv136.i.i)
  %cmp3.i = icmp ult i32 %58, %conv136.i.i
  br i1 %cmp3.i, label %if.end.i34.is_supervision_frame.exit.i_crit_edge, label %pskb_may_pull.exit, !prof !29

if.end.i34.is_supervision_frame.exit.i_crit_edge: ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

pskb_may_pull.exit:                               ; preds = %if.end.i34
  %sub.i = sub i32 %conv136.i.i, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.is_supervision_frame.exit.i_crit_edge, label %pskb_may_pull.exit.if.end140.i.i_crit_edge

pskb_may_pull.exit.if.end140.i.i_crit_edge:       ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140.i.i

pskb_may_pull.exit.is_supervision_frame.exit.i_crit_edge: ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

if.end140.i.i:                                    ; preds = %pskb_may_pull.exit.if.end140.i.i_crit_edge, %if.end130.i.i.if.end140.i.i_crit_edge
  %call142.i.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv136.i.i) #5
  %61 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i, align 4
  %call145.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv136.i.i) #5
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %.pr.i.i = load i8, ptr %62, align 1
  br label %if.end146.i.i

if.end146.i.i:                                    ; preds = %if.end140.i.i, %if.end115.i.i.if.end146.i.i_crit_edge
  %64 = phi i8 [ %.pr.i.i, %if.end140.i.i ], [ %54, %if.end115.i.i.if.end146.i.i_crit_edge ]
  %hsr_sup_tlv.0.i.i = phi ptr [ %62, %if.end140.i.i ], [ %52, %if.end115.i.i.if.end146.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp149.i.i = icmp eq i8 %64, 0
  br i1 %cmp149.i.i, label %land.lhs.true151.i.i, label %if.end146.i.i.if.end157.i.i_crit_edge

if.end146.i.i.if.end157.i.i_crit_edge:            ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157.i.i

land.lhs.true151.i.i:                             ; preds = %if.end146.i.i
  %HSR_TLV_length152.i.i = getelementptr inbounds %struct.hsr_sup_tlv, ptr %hsr_sup_tlv.0.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %HSR_TLV_length152.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %HSR_TLV_length152.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp154.not.i.i = icmp eq i8 %66, 0
  br i1 %cmp154.not.i.i, label %land.lhs.true151.i.i.if.end157.i.i_crit_edge, label %land.lhs.true151.i.i.is_supervision_frame.exit.i_crit_edge

land.lhs.true151.i.i.is_supervision_frame.exit.i_crit_edge: ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_supervision_frame.exit.i

land.lhs.true151.i.i.if.end157.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157.i.i

if.end157.i.i:                                    ; preds = %land.lhs.true151.i.i.if.end157.i.i_crit_edge, %if.end146.i.i.if.end157.i.i_crit_edge
  br label %is_supervision_frame.exit.i

is_supervision_frame.exit.i:                      ; preds = %if.end157.i.i, %land.lhs.true151.i.i.is_supervision_frame.exit.i_crit_edge, %pskb_may_pull.exit.is_supervision_frame.exit.i_crit_edge, %if.end.i34.is_supervision_frame.exit.i_crit_edge, %if.then124.i.i.is_supervision_frame.exit.i_crit_edge, %pskb_may_pull.exit235.i.i.is_supervision_frame.exit.i_crit_edge, %if.end.i229.i.i.is_supervision_frame.exit.i_crit_edge, %if.end93.i.i.is_supervision_frame.exit.i_crit_edge, %if.end71.i.i.is_supervision_frame.exit.i_crit_edge, %pskb_may_pull.exit219.i.i.is_supervision_frame.exit.i_crit_edge, %if.end.i213.i.i.is_supervision_frame.exit.i_crit_edge, %if.end57.i.i.is_supervision_frame.exit.i_crit_edge, %pskb_may_pull.exit.i.i.is_supervision_frame.exit.i_crit_edge, %if.end.i.i.i.is_supervision_frame.exit.i_crit_edge, %if.end41.i.i.is_supervision_frame.exit.i_crit_edge, %if.end29.i.i.is_supervision_frame.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ true, %if.end157.i.i ], [ false, %if.end29.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %if.end41.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %pskb_may_pull.exit.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %if.end57.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %pskb_may_pull.exit219.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %if.end71.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %if.end93.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %pskb_may_pull.exit235.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %if.then124.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %pskb_may_pull.exit.is_supervision_frame.exit.i_crit_edge ], [ false, %land.lhs.true151.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %if.end.i.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %if.end.i213.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %if.end.i229.i.i.is_supervision_frame.exit.i_crit_edge ], [ false, %if.end.i34.is_supervision_frame.exit.i_crit_edge ]
  %is_supervision.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 6
  %frombool.i = zext i1 %retval.0.i.i to i8
  %67 = ptrtoint ptr %is_supervision.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool.i, ptr %is_supervision.i, align 2
  %node_db.i = getelementptr inbounds %struct.hsr_priv, ptr %2, i32 0, i32 2
  %type.i = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %68 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type.i, align 4
  %call5.i = tail call ptr @hsr_get_node(ptr noundef %port, ptr noundef %node_db.i, ptr noundef %skb, i1 noundef zeroext %retval.0.i.i, i32 noundef %69) #5
  %node_src.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 4
  %70 = ptrtoint ptr %node_src.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call5.i, ptr %node_src.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %is_supervision_frame.exit.i.out_drop_crit_edge, label %if.end9.i

is_supervision_frame.exit.i.out_drop_crit_edge:   ; preds = %is_supervision_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_drop

if.end9.i:                                        ; preds = %is_supervision_frame.exit.i
  %71 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %head.i.i.i, align 8
  %73 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i = zext i16 %74 to i32
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 %conv.i.i
  %is_vlan.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 7
  %75 = ptrtoint ptr %is_vlan.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %is_vlan.i, align 1
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %77)
  %cmp12.i = icmp eq i16 %77, -32512
  %spec.store.select.i = zext i1 %cmp12.i to i8
  %78 = ptrtoint ptr %is_vlan.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %spec.store.select.i, ptr %is_vlan.i, align 1
  br i1 %cmp12.i, label %if.then19.i, label %if.end9.i.if.end23.i_crit_edge

if.end9.i.if.end23.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end9.i
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %h_vlan_encapsulated_proto.i, align 1
  %.b59.i = load i1, ptr @fill_frame_info.__print_once, align 1
  br i1 %.b59.i, label %if.then19.i.if.end23.i_crit_edge, label %if.then21.i

if.then19.i.if.end23.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @fill_frame_info.__print_once, align 1
  %81 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.3, ptr noundef %83, ptr noundef nonnull @.str.4) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.then19.i.if.end23.i_crit_edge, %if.end9.i.if.end23.i_crit_edge
  %proto.0.i = phi i16 [ %80, %if.then19.i.if.end23.i_crit_edge ], [ %80, %if.then21.i ], [ %77, %if.end9.i.if.end23.i_crit_edge ]
  %is_from_san.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 10
  %84 = ptrtoint ptr %is_from_san.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %is_from_san.i, align 2
  %port_rcv.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 3
  %85 = ptrtoint ptr %port_rcv.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %port, ptr %port_rcv.i, align 4
  %proto_ops.i = getelementptr inbounds %struct.hsr_priv, ptr %2, i32 0, i32 12
  %86 = ptrtoint ptr %proto_ops.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %proto_ops.i, align 4
  %fill_frame_info.i = getelementptr inbounds %struct.hsr_proto_ops, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %fill_frame_info.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fill_frame_info.i, align 4
  %call24.i = call i32 %89(i16 noundef zeroext %proto.0.i, ptr noundef %skb, ptr noundef nonnull %frame) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %fill_frame_info.exit

if.end27.i:                                       ; preds = %if.end23.i
  %90 = ptrtoint ptr %hsr1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hsr1.i, align 4
  %92 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i.i.i, align 8
  %94 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %95 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %93, i32 %conv.i.i.i.i
  %call1.i.i = call zeroext i1 @hsr_addr_is_self(ptr noundef %91, ptr noundef %add.ptr.i.i.i.i) #5
  %is_local_exclusive.i.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 9
  br i1 %call1.i.i, label %if.then.i60.i, label %if.else.i61.i

if.then.i60.i:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %is_local_exclusive.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %is_local_exclusive.i.i, align 1
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %97 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  store i16 %bf.clear.i.i, ptr %pkt_type.i.i, align 8
  br label %fill_frame_info.exit.thread41

if.else.i61.i:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %is_local_exclusive.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %is_local_exclusive.i.i, align 1
  br label %fill_frame_info.exit.thread41

fill_frame_info.exit.thread41:                    ; preds = %if.else.i61.i, %if.then.i60.i
  %pkt_type3.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %99 = ptrtoint ptr %pkt_type3.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load4.i.i = load i16, ptr %pkt_type3.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load4.i.i, 13
  %bf.load4.fr.i.i = freeze i16 %bf.load4.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load4.fr.i.i)
  %cmp.i.i = icmp ult i16 %bf.load4.fr.i.i, 8192
  %bf.lshr.off.i.i = add nsw i16 %bf.lshr.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr.off.i.i)
  %switch.i62.i = icmp ult i16 %bf.lshr.off.i.i, 2
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %switch.i62.i
  %spec.select.i.i = zext i1 %or.cond.i.i to i8
  %100 = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %spec.select.i.i, ptr %100, align 4
  br label %if.end

fill_frame_info.exit:                             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp = icmp slt i32 %call24.i, 0
  br i1 %cmp, label %fill_frame_info.exit.out_drop_crit_edge, label %fill_frame_info.exit.if.end_crit_edge

fill_frame_info.exit.if.end_crit_edge:            ; preds = %fill_frame_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

fill_frame_info.exit.out_drop_crit_edge:          ; preds = %fill_frame_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_drop

if.end:                                           ; preds = %fill_frame_info.exit.if.end_crit_edge, %fill_frame_info.exit.thread41
  %102 = ptrtoint ptr %node_src.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %node_src.i, align 4
  %sequence_nr = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 5
  %104 = ptrtoint ptr %sequence_nr to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %sequence_nr, align 4
  call void @hsr_register_frame_in(ptr noundef %103, ptr noundef %port, i16 noundef zeroext %105) #5
  %call.i = call i32 @rcu_read_lock_any_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b135.i = load i1, ptr @hsr_forward_do.__warned, align 1
  br i1 %.b135.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @hsr_forward_do.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 418, ptr noundef nonnull @.str.5) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %106 = ptrtoint ptr %port_rcv.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %port_rcv.i, align 4
  %hsr.i = getelementptr inbounds %struct.hsr_port, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %hsr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hsr.i, align 4
  %ports.i = getelementptr inbounds %struct.hsr_priv, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %port.0138.i = load volatile ptr, ptr %ports.i, align 4
  %cmp.not141.i = icmp eq ptr %port.0138.i, %ports.i
  br i1 %cmp.not141.i, label %do.end.i.hsr_forward_do.exit_crit_edge, label %for.body.lr.ph.i

do.end.i.hsr_forward_do.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hsr_forward_do.exit

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %is_local_exclusive.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 9
  %is_local_dest.i = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %111 = phi ptr [ %107, %for.body.lr.ph.i ], [ %191, %cleanup.i.for.body.i_crit_edge ]
  %port.0143.i = phi ptr [ %port.0138.i, %for.body.lr.ph.i ], [ %port.0.i, %cleanup.i.for.body.i_crit_edge ]
  %sent.0.off0142.i = phi i1 [ false, %for.body.lr.ph.i ], [ %sent.2.off0.i, %cleanup.i.for.body.i_crit_edge ]
  %hsr13.i = getelementptr inbounds %struct.hsr_port, ptr %port.0143.i, i32 0, i32 2
  %112 = ptrtoint ptr %hsr13.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hsr13.i, align 4
  %cmp15.i = icmp eq ptr %port.0143.i, %111
  br i1 %cmp15.i, label %for.body.i.cleanup.i_crit_edge, label %if.end17.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end17.i:                                       ; preds = %for.body.i
  %type.i20 = getelementptr inbounds %struct.hsr_port, ptr %port.0143.i, i32 0, i32 3
  %114 = ptrtoint ptr %type.i20 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %type.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %115)
  %cmp18.i = icmp eq i32 %115, 4
  br i1 %cmp18.i, label %land.lhs.true19.i, label %land.lhs.true25.i

land.lhs.true19.i:                                ; preds = %if.end17.i
  %116 = ptrtoint ptr %is_local_dest.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %is_local_dest.i, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool20.not.i = icmp eq i8 %117, 0
  br i1 %tobool20.not.i, label %land.lhs.true19.i.cleanup.i_crit_edge, label %land.lhs.true19.i.if.end28.i_crit_edge

land.lhs.true19.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

land.lhs.true19.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true25.i:                                ; preds = %if.end17.i
  %118 = ptrtoint ptr %is_local_exclusive.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %is_local_exclusive.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool26.not.i = icmp eq i8 %119, 0
  br i1 %tobool26.not.i, label %land.lhs.true25.i.if.end28.i_crit_edge, label %land.lhs.true25.i.cleanup.i_crit_edge

land.lhs.true25.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true25.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.lhs.true25.i.if.end28.i_crit_edge, %land.lhs.true19.i.if.end28.i_crit_edge
  %dev.i = getelementptr inbounds %struct.hsr_port, ptr %port.0143.i, i32 0, i32 1
  %120 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %121, i32 0, i32 23
  %122 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %features.i, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %123)
  %tobool29.not.i = icmp sgt i64 %123, -1
  %sent.0.off0.not.i = xor i1 %sent.0.off0142.i, true
  %brmerge.i = select i1 %tobool29.not.i, i1 true, i1 %sent.0.off0.not.i
  br i1 %brmerge.i, label %if.end33.i, label %if.end28.i.cleanup.i_crit_edge

if.end28.i.cleanup.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end33.i:                                       ; preds = %if.end28.i
  %124 = ptrtoint ptr %is_from_san.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %is_from_san.i, align 2, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool34.not.i = icmp eq i8 %125, 0
  br i1 %tobool34.not.i, label %land.lhs.true35.i, label %if.end33.i.if.end39.i_crit_edge

if.end33.i.if.end39.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

land.lhs.true35.i:                                ; preds = %if.end33.i
  %126 = ptrtoint ptr %node_src.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %node_src.i, align 4
  %128 = ptrtoint ptr %sequence_nr to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %sequence_nr, align 4
  %call36.i = call i32 @hsr_register_frame_out(ptr noundef %port.0143.i, ptr noundef %127, i16 noundef zeroext %129) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %land.lhs.true35.i.if.end39.i_crit_edge, label %land.lhs.true35.i.cleanup.i_crit_edge

land.lhs.true35.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true35.i.if.end39.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.end39.i:                                       ; preds = %land.lhs.true35.i.if.end39.i_crit_edge, %if.end33.i.if.end39.i_crit_edge
  %130 = ptrtoint ptr %is_supervision.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %is_supervision.i, align 2, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool40.not.i = icmp eq i8 %131, 0
  br i1 %tobool40.not.i, label %if.end39.i.if.end45.i_crit_edge, label %land.lhs.true41.i

if.end39.i.if.end45.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

land.lhs.true41.i:                                ; preds = %if.end39.i
  %132 = ptrtoint ptr %type.i20 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %type.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %133)
  %cmp43.i = icmp eq i32 %133, 4
  br i1 %cmp43.i, label %if.then44.i, label %land.lhs.true41.i.if.end45.i_crit_edge

land.lhs.true41.i.if.end45.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.then44.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @hsr_handle_sup_frame(ptr noundef nonnull %frame) #5
  br label %cleanup.i

if.end45.i:                                       ; preds = %land.lhs.true41.i.if.end45.i_crit_edge, %if.end39.i.if.end45.i_crit_edge
  %proto_ops.i21 = getelementptr inbounds %struct.hsr_priv, ptr %113, i32 0, i32 12
  %134 = ptrtoint ptr %proto_ops.i21 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %proto_ops.i21, align 4
  %drop_frame.i = getelementptr inbounds %struct.hsr_proto_ops, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %drop_frame.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %drop_frame.i, align 4
  %tobool46.not.i = icmp eq ptr %137, null
  br i1 %tobool46.not.i, label %if.end45.i.if.end52.i_crit_edge, label %land.lhs.true47.i

if.end45.i.if.end52.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

land.lhs.true47.i:                                ; preds = %if.end45.i
  %call50.i = call zeroext i1 %137(ptr noundef nonnull %frame, ptr noundef %port.0143.i) #5
  br i1 %call50.i, label %land.lhs.true47.i.cleanup.i_crit_edge, label %land.lhs.true47.i.if.end52.i_crit_edge

land.lhs.true47.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

land.lhs.true47.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end52.i:                                       ; preds = %land.lhs.true47.i.if.end52.i_crit_edge, %if.end45.i.if.end52.i_crit_edge
  %138 = ptrtoint ptr %type.i20 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %type.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %139)
  %cmp54.not.i = icmp eq i32 %139, 4
  %140 = ptrtoint ptr %proto_ops.i21 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %proto_ops.i21, align 4
  %get_untagged_frame.i = getelementptr inbounds %struct.hsr_proto_ops, ptr %141, i32 0, i32 3
  %create_tagged_frame.i = getelementptr inbounds %struct.hsr_proto_ops, ptr %141, i32 0, i32 4
  %get_untagged_frame.sink.i = select i1 %cmp54.not.i, ptr %get_untagged_frame.i, ptr %create_tagged_frame.i
  %142 = ptrtoint ptr %get_untagged_frame.sink.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %get_untagged_frame.sink.i, align 4
  %call59.i = call ptr %143(ptr noundef nonnull %frame, ptr noundef %port.0143.i) #5
  %tobool61.not.i = icmp eq ptr %call59.i, null
  br i1 %tobool61.not.i, label %if.then62.i, label %if.end65.i

if.then62.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %port_rcv.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %port_rcv.i, align 4
  %dev64.i = getelementptr inbounds %struct.hsr_port, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %dev64.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev64.i, align 4
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 36, i32 6
  %148 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rx_dropped.i, align 8
  %inc.i = add i32 %149, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 8
  br label %cleanup.i

if.end65.i:                                       ; preds = %if.end52.i
  %150 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i, align 4
  %152 = getelementptr inbounds %struct.anon, ptr %call59.i, i32 0, i32 2
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %151, ptr %152, align 8
  %154 = ptrtoint ptr %type.i20 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %type.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %155)
  %cmp68.i = icmp eq i32 %155, 4
  br i1 %cmp68.i, label %if.then69.i, label %if.else72.i

if.then69.i:                                      ; preds = %if.end65.i
  %156 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i, align 4
  %158 = ptrtoint ptr %node_src.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %node_src.i, align 4
  %pkt_type.i.i22 = getelementptr inbounds %struct.sk_buff, ptr %call59.i, i32 0, i32 15
  %160 = ptrtoint ptr %pkt_type.i.i22 to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load.i.i23 = load i16, ptr %pkt_type.i.i22, align 8
  call void @hsr_addr_subst_source(ptr noundef %159, ptr noundef nonnull %call59.i) #5
  %call.i.i = call ptr @skb_pull(ptr noundef nonnull %call59.i, i32 noundef 14) #5
  %call2.i.i = call i32 @netif_rx(ptr noundef nonnull %call59.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i)
  %cmp3.i.i = icmp eq i32 %call2.i.i, 1
  br i1 %cmp3.i.i, label %if.then.i.i24, label %if.else.i.i26

if.then.i.i24:                                    ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 36, i32 6
  br label %if.end11.sink.split.i.i

if.else.i.i26:                                    ; preds = %if.then69.i
  %bf.lshr.mask.i.i = and i16 %bf.load.i.i23, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i.i)
  %cmp.i.i25 = icmp eq i16 %bf.lshr.mask.i.i, 16384
  %stats5.i.i = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 36
  %161 = ptrtoint ptr %stats5.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %stats5.i.i, align 8
  %inc6.i.i = add i32 %162, 1
  store i32 %inc6.i.i, ptr %stats5.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call59.i, i32 0, i32 6
  %163 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len.i.i, align 4
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 36, i32 2
  %165 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %rx_bytes.i.i, align 8
  %add.i.i = add i32 %166, %164
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 8
  br i1 %cmp.i.i25, label %if.then8.i.i, label %if.else.i.i26.cleanup.i_crit_edge

if.else.i.i26.cleanup.i_crit_edge:                ; preds = %if.else.i.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.then8.i.i:                                     ; preds = %if.else.i.i26
  call void @__sanitizer_cov_trace_pc() #7
  %multicast.i.i = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 36, i32 8
  br label %if.end11.sink.split.i.i

if.end11.sink.split.i.i:                          ; preds = %if.then8.i.i, %if.then.i.i24
  %multicast.sink19.i.i = phi ptr [ %multicast.i.i, %if.then8.i.i ], [ %rx_dropped.i.i, %if.then.i.i24 ]
  %167 = ptrtoint ptr %multicast.sink19.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %multicast.sink19.i.i, align 8
  %inc10.i.i = add i32 %168, 1
  store i32 %inc10.i.i, ptr %multicast.sink19.i.i, align 8
  br label %cleanup.i

if.else72.i:                                      ; preds = %if.end65.i
  %169 = ptrtoint ptr %port_rcv.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %port_rcv.i, align 4
  %type.i.i = getelementptr inbounds %struct.hsr_port, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %172)
  %cmp.i136.i = icmp eq i32 %172, 4
  br i1 %cmp.i136.i, label %if.then.i137.i, label %if.else72.i.hsr_xmit.exit.i_crit_edge

if.else72.i.hsr_xmit.exit.i_crit_edge:            ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hsr_xmit.exit.i

if.then.i137.i:                                   ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #7
  %173 = ptrtoint ptr %node_src.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %node_src.i, align 4
  call void @hsr_addr_subst_dest(ptr noundef %174, ptr noundef nonnull %call59.i, ptr noundef %port.0143.i) #5
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call59.i, i32 0, i32 18
  %175 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call59.i, i32 0, i32 15, i32 0, i32 21
  %177 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i27 = zext i16 %178 to i32
  %add.ptr.i.i.i.i28 = getelementptr i8, ptr %176, i32 %conv.i.i.i.i27
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i28, i32 0, i32 1
  %179 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %180, i32 0, i32 86
  %181 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev_addr.i.i, align 64
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %182, align 4
  %185 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %h_source.i.i, align 4
  %add.ptr.i.i.i29 = getelementptr i8, ptr %182, i32 4
  %186 = ptrtoint ptr %add.ptr.i.i.i29 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %add.ptr.i.i.i29, align 2
  %add.ptr1.i.i.i30 = getelementptr i8, ptr %h_source.i.i, i32 4
  %188 = ptrtoint ptr %add.ptr1.i.i.i30 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %187, ptr %add.ptr1.i.i.i30, align 2
  br label %hsr_xmit.exit.i

hsr_xmit.exit.i:                                  ; preds = %if.then.i137.i, %if.else72.i.hsr_xmit.exit.i_crit_edge
  %call1.i.i31 = call i32 @dev_queue_xmit(ptr noundef nonnull %call59.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i31)
  %tobool74.not.i = icmp eq i32 %call1.i.i31, 0
  %spec.select.i = select i1 %tobool74.not.i, i1 true, i1 %sent.0.off0142.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %hsr_xmit.exit.i, %if.end11.sink.split.i.i, %if.else.i.i26.cleanup.i_crit_edge, %if.then62.i, %land.lhs.true47.i.cleanup.i_crit_edge, %if.then44.i, %land.lhs.true35.i.cleanup.i_crit_edge, %if.end28.i.cleanup.i_crit_edge, %land.lhs.true25.i.cleanup.i_crit_edge, %land.lhs.true19.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %sent.2.off0.i = phi i1 [ %sent.0.off0142.i, %if.then44.i ], [ %sent.0.off0142.i, %if.then62.i ], [ %sent.0.off0142.i, %for.body.i.cleanup.i_crit_edge ], [ %sent.0.off0142.i, %land.lhs.true19.i.cleanup.i_crit_edge ], [ %sent.0.off0142.i, %land.lhs.true25.i.cleanup.i_crit_edge ], [ %sent.0.off0142.i, %if.end28.i.cleanup.i_crit_edge ], [ %sent.0.off0142.i, %land.lhs.true35.i.cleanup.i_crit_edge ], [ %sent.0.off0142.i, %land.lhs.true47.i.cleanup.i_crit_edge ], [ %spec.select.i, %hsr_xmit.exit.i ], [ %sent.0.off0142.i, %if.else.i.i26.cleanup.i_crit_edge ], [ %sent.0.off0142.i, %if.end11.sink.split.i.i ]
  %189 = ptrtoint ptr %port.0143.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %port.0.i = load volatile ptr, ptr %port.0143.i, align 4
  %190 = ptrtoint ptr %port_rcv.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %port_rcv.i, align 4
  %hsr10.i = getelementptr inbounds %struct.hsr_port, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %hsr10.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hsr10.i, align 4
  %ports11.i = getelementptr inbounds %struct.hsr_priv, ptr %193, i32 0, i32 1
  %cmp.not.i = icmp eq ptr %port.0.i, %ports11.i
  br i1 %cmp.not.i, label %cleanup.i.hsr_forward_do.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup.i.hsr_forward_do.exit_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hsr_forward_do.exit

hsr_forward_do.exit:                              ; preds = %cleanup.i.hsr_forward_do.exit_crit_edge, %do.end.i.hsr_forward_do.exit_crit_edge
  %194 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %195)
  %cmp1 = icmp eq i32 %195, 4
  br i1 %cmp1, label %if.then2, label %hsr_forward_do.exit.if.end5_crit_edge

hsr_forward_do.exit.if.end5_crit_edge:            ; preds = %hsr_forward_do.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %hsr_forward_do.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %196 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %197, i32 0, i32 36, i32 1
  %198 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %199, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %200 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %len, align 4
  %202 = load ptr, ptr %dev, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %202, i32 0, i32 36, i32 3
  %203 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %204, %201
  store i32 %add, ptr %tx_bytes, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %hsr_forward_do.exit.if.end5_crit_edge
  %skb_hsr = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 1
  %205 = ptrtoint ptr %skb_hsr to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %skb_hsr, align 4
  call void @kfree_skb_reason(ptr noundef %206, i32 noundef 0) #5
  %skb_prp = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 2
  %207 = ptrtoint ptr %skb_prp to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %skb_prp, align 4
  call void @kfree_skb_reason(ptr noundef %208, i32 noundef 0) #5
  %209 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %frame, align 4
  br label %cleanup

out_drop:                                         ; preds = %fill_frame_info.exit.out_drop_crit_edge, %is_supervision_frame.exit.i.out_drop_crit_edge, %entry.out_drop_crit_edge
  %dev6 = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %211 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev6, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %212, i32 0, i32 36, i32 7
  %213 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %tx_dropped, align 4
  %inc8 = add i32 %214, 1
  store i32 %inc8, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_drop, %if.end5
  %skb.sink = phi ptr [ %skb, %out_drop ], [ %210, %if.end5 ]
  call void @kfree_skb_reason(ptr noundef %skb.sink, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %frame) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_register_frame_in(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsr_get_node(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hsr_addr_is_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsr_register_frame_out(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_handle_sup_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_addr_subst_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_addr_subst_dest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !12, !13, !15, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/hsr/hsr_forward.c", i32 158, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/hsr/hsr_forward.c", i32 181, i32 4}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/hsr/hsr_forward.c", i32 334, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__print_once", i1 false, i1 false}
!10 = !{!"../net/hsr/hsr_forward.c", i32 597, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../net/hsr/hsr_forward.c", i32 43, i32 2}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/hsr/hsr_forward.c", i32 418, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2154953503, i64 2154953991, i64 2154953540, i64 2154953596, i64 2154953630, i64 2154953654, i64 2154953695, i64 2154953716, i64 2154953744, i64 2154953778}
