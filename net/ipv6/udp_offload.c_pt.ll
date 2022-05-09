; ModuleID = '/llk/IR_all_yes/net/ipv6/udp_offload.c_pt.bc'
source_filename = "../net/ipv6/udp_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.udp_table = type { ptr, ptr, i32, i32 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.frag_hdr = type { i8, i8, i16, i32 }
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
%struct.hlist_head = type { ptr }
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

@udpv6_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @udp6_ufo_fragment, ptr @udp6_gro_receive, ptr @udp6_gro_complete }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@udpv6_encap_needed_key = external dso_local global %struct.static_key_false, align 4
@udp_table = external dso_local global %struct.udp_table, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"udpv6_offload\00", align 1
@___asan_gen_.2 = private constant [26 x i8] c"../net/ipv6/udp_offload.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 190, i32 33 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @udpv6_offload], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udpv6_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udpv6_offload_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_add_offload(ptr noundef nonnull @udpv6_offload, i8 noundef zeroext 17) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udpv6_offload_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_del_offload(ptr noundef nonnull @udpv6_offload, i8 noundef zeroext 17) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udp6_ufo_fragment(ptr noundef %skb, i64 noundef %features) #0 align 64 {
entry:
  %prevhdr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prevhdr) #3
  %0 = ptrtoint ptr %prevhdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %prevhdr, align 4, !annotation !11
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %1 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %encapsulation, align 8
  %2 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gso_type, align 8
  %and = and i32 %6, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call ptr @skb_udp_tunnel_segment(ptr noundef %skb, i64 noundef %features, i1 noundef zeroext true) #3
  br label %cleanup96

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %end.i158 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %7 = ptrtoint ptr %end.i158 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i158, align 4
  %gso_type5 = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %gso_type5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gso_type5, align 8
  %and6 = and i32 %10, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.cleanup96_crit_edge, label %if.end

if.else.cleanup96_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup96

if.end:                                           ; preds = %if.else
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end11_crit_edge, !prof !12

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp3.i = icmp ult i32 %12, 8
  br i1 %cmp3.i, label %if.end.i.cleanup96_crit_edge, label %pskb_may_pull.exit, !prof !12

if.end.i.cleanup96_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup96

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #3
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup96_crit_edge, label %pskb_may_pull.exit.if.end11_crit_edge

pskb_may_pull.exit.if.end11_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

pskb_may_pull.exit.cleanup96_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup96

if.end11:                                         ; preds = %pskb_may_pull.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %15 = ptrtoint ptr %end.i158 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i158, align 4
  %gso_type13 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %gso_type13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gso_type13, align 8
  %and14 = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %call17 = tail call ptr @__udp_gso_segment(ptr noundef %skb, i64 noundef %features, i1 noundef zeroext true) #3
  br label %cleanup96

if.end18:                                         ; preds = %if.end11
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %gso_size, align 4
  %conv20 = zext i16 %20 to i32
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv20)
  %cmp.not = icmp ugt i32 %22, %conv20
  br i1 %cmp.not, label %if.end25, label %if.end18.cleanup96_crit_edge, !prof !13

if.end18.cleanup96_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup96

if.end25:                                         ; preds = %if.end18
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i162 = zext i16 %28 to i32
  %add.ptr.i.i163 = getelementptr i8, ptr %24, i32 %conv.i.i162
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %check, align 2
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  %call29 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %31, i32 noundef 0) #3
  %32 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i, align 4
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i163, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i163, i32 0, i32 6
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %33, i32 noundef 17, i32 noundef %call29) #3
  %34 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #6, !srcloc !14
  %neg.i.i.i = xor i32 %34, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i.i)
  %cmp35 = icmp eq i16 %conv.i.i.i, 0
  %spec.select = select i1 %cmp35, i16 -1, i16 %conv.i.i.i
  %35 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %spec.select, ptr %check, align 2
  %36 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load40 = load i16, ptr %encapsulation, align 8
  %bf.clear41 = and i16 %bf.load40, -1537
  %bf.set = or i16 %bf.clear41, 512
  store i16 %bf.set, ptr %encapsulation, align 8
  %37 = and i16 %bf.load40, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool46.not = icmp eq i16 %37, 0
  %or = or i64 %features, 8
  %features.addr.0 = select i1 %tobool46.not, i64 %or, i64 %features
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %40 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i165 = zext i16 %41 to i32
  %add.ptr.i.i166 = getelementptr i8, ptr %39, i32 %conv.i.i165
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i166 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %39 to i32
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  %44 = add i32 %43, %sub.ptr.rhs.cast.i
  %sub.i167 = sub i32 %sub.ptr.lhs.cast.i, %44
  %add = add i32 %sub.i167, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i165)
  %cmp52 = icmp sgt i32 %add, %conv.i.i165
  br i1 %cmp52, label %if.then54, label %if.end25.if.end61_crit_edge

if.end25.if.end61_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.then54:                                        ; preds = %if.end25
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %call1.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %add, i32 noundef 0, i32 noundef 2592) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %gso_pskb_expand_head.exit.thread, label %if.then54.cleanup96_crit_edge

if.then54.cleanup96_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup96

gso_pskb_expand_head.exit.thread:                 ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %46 to i32
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %49 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i11.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i12.i = ptrtoint ptr %50 to i32
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i, align 4
  %53 = add i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i11.i
  %54 = add i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i12.i
  %sub.i170 = sub i32 %53, %54
  %add.i = add i32 %sub.i170, %52
  store i32 %add.i, ptr %add.ptr.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %gso_pskb_expand_head.exit.thread, %if.end25.if.end61_crit_edge
  %call62 = call i32 @ip6_find_1stfragopt(ptr noundef %skb, ptr noundef nonnull %prevhdr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  %55 = inttoptr i32 %call62 to ptr
  br label %cleanup96

if.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  %56 = ptrtoint ptr %prevhdr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prevhdr, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  store i8 44, ptr %57, align 1
  %60 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i, align 8
  %62 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %network_header.i.i, align 4
  %conv.i = zext i16 %63 to i32
  %64 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %mac_header.i.i, align 2
  %conv.i174 = zext i16 %65 to i32
  %gepdiff = add i32 %call62, %sub.i167
  %add70 = add i32 %gepdiff, %conv.i
  %add71 = sub i32 %add70, %conv.i174
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i, align 4
  %add.ptr72 = getelementptr i8, ptr %61, i32 %67
  %add.ptr74 = getelementptr i8, ptr %add.ptr72, i32 -8
  %68 = call ptr @memmove(ptr %add.ptr74, ptr %add.ptr72, i32 %add71)
  %69 = load i32, ptr %add.ptr.i, align 4
  %sub = add i32 %69, -8
  store i32 %sub, ptr %add.ptr.i, align 4
  %70 = load i16, ptr %mac_header.i.i, align 2
  %sub82 = add i16 %70, -8
  store i16 %sub82, ptr %mac_header.i.i, align 2
  %71 = load i16, ptr %network_header.i.i, align 4
  %sub86 = add i16 %71, -8
  store i16 %sub86, ptr %network_header.i.i, align 4
  %72 = load ptr, ptr %head.i.i, align 8
  %conv.i178 = zext i16 %sub86 to i32
  %add.ptr.i179 = getelementptr i8, ptr %72, i32 %conv.i178
  %add.ptr89 = getelementptr i8, ptr %add.ptr.i179, i32 %call62
  %73 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %59, ptr %add.ptr89, align 4
  %reserved = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr89, i32 0, i32 1
  %74 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %reserved, align 1
  %75 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 127
  %78 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nd_net.i, align 4
  %call92 = call i32 @ipv6_proxy_select_ident(ptr noundef %79, ptr noundef %skb) #3
  %identification = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr89, i32 0, i32 3
  %80 = ptrtoint ptr %identification to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call92, ptr %identification, align 4
  %call93 = call ptr @skb_segment(ptr noundef %skb, i64 noundef %features.addr.0) #3
  br label %cleanup96

cleanup96:                                        ; preds = %if.end67, %if.then65, %if.then54.cleanup96_crit_edge, %if.end18.cleanup96_crit_edge, %if.then16, %pskb_may_pull.exit.cleanup96_crit_edge, %if.end.i.cleanup96_crit_edge, %if.else.cleanup96_crit_edge, %if.then
  %retval.1 = phi ptr [ %call17, %if.then16 ], [ %55, %if.then65 ], [ %call3, %if.then ], [ inttoptr (i32 -22 to ptr), %if.then54.cleanup96_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end18.cleanup96_crit_edge ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.cleanup96_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.cleanup96_crit_edge ], [ %call93, %if.end67 ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup96_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prevhdr) #3
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udp6_gro_receive(ptr noundef %head, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data_offset.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_offset.i.i, align 8
  %add.i = add i32 %1, 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %frag0_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frag0_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.i)
  %cmp.i.not.i = icmp ult i32 %3, %add.i
  br i1 %cmp.i.not.i, label %if.then.i, label %entry.udp_gro_udphdr.exit_crit_edge

entry.udp_gro_udphdr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %udp_gro_udphdr.exit

if.then.i:                                        ; preds = %entry
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.if.end.i.i_crit_edge, !prof !12

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i)
  %cmp3.i.i.i = icmp ult i32 %5, %add.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.flush41_crit_edge, label %pskb_may_pull.exit.i.i, !prof !12

if.end.i.i.i.flush41_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %flush41

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #3
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.flush41_crit_edge, label %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge

pskb_may_pull.exit.i.i.if.end.i.i_crit_edge:      ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

pskb_may_pull.exit.i.i.flush41_crit_edge:         ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %flush41

if.end.i.i:                                       ; preds = %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %8 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cb.i.i, align 8
  %9 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %frag0_len.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %udp_gro_udphdr.exit

udp_gro_udphdr.exit:                              ; preds = %if.end.i.i, %entry.udp_gro_udphdr.exit_crit_edge
  %.pn.in = phi ptr [ %cb.i.i, %entry.udp_gro_udphdr.exit_crit_edge ], [ %data.i.i, %if.end.i.i ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %uh.0.i = getelementptr i8, ptr %.pn, i32 %1
  %tobool.not = icmp eq ptr %uh.0.i, null
  br i1 %tobool.not, label %udp_gro_udphdr.exit.flush41_crit_edge, label %if.end, !prof !12

udp_gro_udphdr.exit.flush41_crit_edge:            ; preds = %udp_gro_udphdr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %flush41

if.end:                                           ; preds = %udp_gro_udphdr.exit
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %flush to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flush, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool4.not = icmp eq i16 %12, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.skip_crit_edge

if.end.skip_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip

if.end6:                                          ; preds = %if.end
  %check = getelementptr inbounds %struct.udphdr, ptr %uh.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %check, align 2
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %16 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %16)
  %cmp.not.i = icmp eq i16 %16, 1536
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end6.land.lhs.true.i_crit_edge

if.end6.land.lhs.true.i_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end6
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 8
  %conv.i.i = zext i16 %19 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %24 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %25)
  %cmp3.i = icmp ult i32 %sub.i.i, %25
  br i1 %cmp3.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.then13_crit_edge

lor.lhs.false.i.if.then13_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end6.land.lhs.true.i_crit_edge
  %gro_remcsum_start.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %26 = ptrtoint ptr %gro_remcsum_start.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gro_remcsum_start.i.i, align 2
  %conv.i1.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv.i1.i)
  %cmp.i.i = icmp eq i32 %29, %conv.i1.i
  br i1 %cmp.i.i, label %land.lhs.true.i.if.then13_crit_edge, label %__skb_gro_checksum_validate_needed.exit

land.lhs.true.i.if.then13_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

__skb_gro_checksum_validate_needed.exit:          ; preds = %land.lhs.true.i
  %csum_cnt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %30 = ptrtoint ptr %csum_cnt.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load7.i = load i16, ptr %csum_cnt.i, align 2
  %31 = and i16 %bf.load7.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp12.i = icmp eq i16 %31, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool15.i = icmp ne i16 %14, 0
  %spec.select.i = and i1 %tobool15.i, %cmp12.i
  br i1 %spec.select.i, label %if.then8, label %__skb_gro_checksum_validate_needed.exit.if.then13_crit_edge

__skb_gro_checksum_validate_needed.exit.if.then13_crit_edge: ; preds = %__skb_gro_checksum_validate_needed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

if.then8:                                         ; preds = %__skb_gro_checksum_validate_needed.exit
  %32 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.then8.ip6_gro_compute_pseudo.exit_crit_edge

if.then8.ip6_gro_compute_pseudo.exit_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %ip6_gro_compute_pseudo.exit

cond.false.i.i:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.i67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i67, align 4
  br label %ip6_gro_compute_pseudo.exit

ip6_gro_compute_pseudo.exit:                      ; preds = %cond.false.i.i, %if.then8.ip6_gro_compute_pseudo.exit_crit_edge
  %cond.i.i = phi ptr [ %35, %cond.false.i.i ], [ %33, %if.then8.ip6_gro_compute_pseudo.exit_crit_edge ]
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %39 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %37, i32 %conv.i.i.i.i
  %data.i.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i.i68, align 4
  %sub.ptr.lhs.cast.i.i.i69 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i70 = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i69, %sub.ptr.rhs.cast.i.i.i70
  %add.ptr.i.i71 = getelementptr i8, ptr %cond.i.i, i32 %sub.ptr.sub.i.i.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i71, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i71, i32 0, i32 6
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i, align 4
  %44 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_offset.i.i, align 8
  %sub.i.i73 = sub i32 %43, %45
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %sub.i.i73, i32 noundef 17, i32 noundef 0) #3
  %46 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #6, !srcloc !14
  %shr.i.i.i = lshr i32 %46, 16
  %neg1.i = or i32 %shr.i.i.i, -65536
  %47 = ptrtoint ptr %csum_cnt.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i74 = load i16, ptr %csum_cnt.i, align 2
  %48 = and i16 %bf.load.i74, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i, label %ip6_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge, label %land.lhs.true.i77

ip6_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge: ; preds = %ip6_gro_compute_pseudo.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %__skb_gro_checksum_validate_complete.exit

land.lhs.true.i77:                                ; preds = %ip6_gro_compute_pseudo.exit
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %49 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %csum.i, align 4
  %add.i.i = add i32 %50, %neg1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %50)
  %cmp.i.i75 = icmp ult i32 %add.i.i, %50
  %conv.i.i76 = zext i1 %cmp.i.i75 to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i76
  %51 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #6, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %51)
  %tobool4.not.i = icmp ugt i32 %51, -65537
  br i1 %tobool4.not.i, label %land.lhs.true.i77.if.then13_crit_edge, label %land.lhs.true.i77.__skb_gro_checksum_validate_complete.exit_crit_edge

land.lhs.true.i77.__skb_gro_checksum_validate_complete.exit_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #5
  br label %__skb_gro_checksum_validate_complete.exit

land.lhs.true.i77.if.then13_crit_edge:            ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

__skb_gro_checksum_validate_complete.exit:        ; preds = %land.lhs.true.i77.__skb_gro_checksum_validate_complete.exit_crit_edge, %ip6_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge
  %csum7.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %52 = ptrtoint ptr %csum7.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %neg1.i, ptr %csum7.i, align 4
  %call8.i = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %skb) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.i)
  %phi.cmp = icmp eq i16 %call8.i, 0
  br i1 %phi.cmp, label %__skb_gro_checksum_validate_complete.exit.if.then13_crit_edge, label %__skb_gro_checksum_validate_complete.exit.flush41_crit_edge

__skb_gro_checksum_validate_complete.exit.flush41_crit_edge: ; preds = %__skb_gro_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %flush41

__skb_gro_checksum_validate_complete.exit.if.then13_crit_edge: ; preds = %__skb_gro_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

if.then13:                                        ; preds = %__skb_gro_checksum_validate_complete.exit.if.then13_crit_edge, %land.lhs.true.i77.if.then13_crit_edge, %__skb_gro_checksum_validate_needed.exit.if.then13_crit_edge, %land.lhs.true.i.if.then13_crit_edge, %lor.lhs.false.i.if.then13_crit_edge
  %csum_cnt.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %53 = ptrtoint ptr %csum_cnt.i79 to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i80 = load i16, ptr %csum_cnt.i79, align 2
  %bf.lshr.i = lshr i16 %bf.load.i80, 10
  %54 = trunc i16 %bf.lshr.i to i8
  %bf.cast.i = and i8 %54, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast.i)
  %cmp.not.i81 = icmp eq i8 %bf.cast.i, 0
  br i1 %cmp.not.i81, label %if.else.i, label %if.then.i82

if.then.i82:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %dec.i = add nuw nsw i8 %54, 7
  %55 = and i8 %dec.i, 7
  %bf.value.i = zext i8 %55 to i16
  %bf.shl.i = shl nuw nsw i16 %bf.value.i, 10
  %bf.clear10.i = and i16 %bf.load.i80, -7169
  %bf.set.i = or i16 %bf.shl.i, %bf.clear10.i
  %56 = ptrtoint ptr %csum_cnt.i79 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %bf.set.i, ptr %csum_cnt.i79, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

if.else.i:                                        ; preds = %if.then13
  %57 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load.i.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %trunc.i.i = trunc i16 %bf.lshr.i.i to i2
  %58 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i.i, label %if.else.i.skb_gro_incr_csum_unnecessary.exit_crit_edge [
    i2 1, label %if.then.i.i
    i2 0, label %if.then25.i.i
  ]

if.else.i.skb_gro_incr_csum_unnecessary.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %skb_gro_incr_csum_unnecessary.exit

if.then.i.i:                                      ; preds = %if.else.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %59 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %60 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %60)
  %cmp7.not.i.i = icmp eq i32 %60, 805306368
  br i1 %cmp7.not.i.i, label %if.then.i.i.skb_gro_incr_csum_unnecessary.exit_crit_edge, label %if.then9.i.i

if.then.i.i.skb_gro_incr_csum_unnecessary.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %skb_gro_incr_csum_unnecessary.exit

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %61 = add i32 %bf.load2.i.i, 268435456
  %bf.shl.i.i = and i32 %61, 805306368
  %bf.clear16.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear16.i.i
  %62 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %bf.set.i.i, ptr %csum_level.i.i, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

if.then25.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %bf.clear28.i.i = and i16 %bf.load.i.i, -1537
  %bf.set29.i.i = or i16 %bf.clear28.i.i, 512
  %63 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %bf.set29.i.i, ptr %ip_summed.i, align 8
  %csum_level30.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %64 = ptrtoint ptr %csum_level30.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %bf.load31.i.i = load i32, ptr %csum_level30.i.i, align 2
  %bf.clear32.i.i = and i32 %bf.load31.i.i, -805306369
  store i32 %bf.clear32.i.i, ptr %csum_level30.i.i, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

skb_gro_incr_csum_unnecessary.exit:               ; preds = %if.then25.i.i, %if.then9.i.i, %if.then.i.i.skb_gro_incr_csum_unnecessary.exit_crit_edge, %if.else.i.skb_gro_incr_csum_unnecessary.exit_crit_edge, %if.then.i82
  %65 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool18.not = icmp eq i16 %66, 0
  br i1 %tobool18.not, label %skb_gro_incr_csum_unnecessary.exit.skip_crit_edge, label %do.body

skb_gro_incr_csum_unnecessary.exit.skip_crit_edge: ; preds = %skb_gro_incr_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip

do.body:                                          ; preds = %skb_gro_incr_csum_unnecessary.exit
  %67 = ptrtoint ptr %csum_cnt.i79 to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load.i85 = load i16, ptr %csum_cnt.i79, align 2
  %68 = and i16 %bf.load.i85, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %if.then21, label %do.body.skip_crit_edge

do.body.skip_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip

if.then21:                                        ; preds = %do.body
  %70 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cb.i.i, align 8
  %tobool.not.i.i87 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i87, label %cond.false.i.i89, label %if.then21.ip6_gro_compute_pseudo.exit108_crit_edge

if.then21.ip6_gro_compute_pseudo.exit108_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %ip6_gro_compute_pseudo.exit108

cond.false.i.i89:                                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.i88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %72 = ptrtoint ptr %data.i.i88 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i88, align 4
  br label %ip6_gro_compute_pseudo.exit108

ip6_gro_compute_pseudo.exit108:                   ; preds = %cond.false.i.i89, %if.then21.ip6_gro_compute_pseudo.exit108_crit_edge
  %cond.i.i90 = phi ptr [ %73, %cond.false.i.i89 ], [ %71, %if.then21.ip6_gro_compute_pseudo.exit108_crit_edge ]
  %head.i.i.i.i91 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %74 = ptrtoint ptr %head.i.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i.i.i.i91, align 8
  %network_header.i.i.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %76 = ptrtoint ptr %network_header.i.i.i.i92 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %network_header.i.i.i.i92, align 4
  %conv.i.i.i.i93 = zext i16 %77 to i32
  %add.ptr.i.i.i.i94 = getelementptr i8, ptr %75, i32 %conv.i.i.i.i93
  %data.i.i.i95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %78 = ptrtoint ptr %data.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i.i95, align 4
  %sub.ptr.lhs.cast.i.i.i96 = ptrtoint ptr %add.ptr.i.i.i.i94 to i32
  %sub.ptr.rhs.cast.i.i.i97 = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i.i.i98 = sub i32 %sub.ptr.lhs.cast.i.i.i96, %sub.ptr.rhs.cast.i.i.i97
  %add.ptr.i.i99 = getelementptr i8, ptr %cond.i.i90, i32 %sub.ptr.sub.i.i.i98
  %saddr.i100 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i99, i32 0, i32 5
  %daddr.i101 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i99, i32 0, i32 6
  %len.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %80 = ptrtoint ptr %len.i.i102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i.i102, align 4
  %82 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_offset.i.i, align 8
  %sub.i.i104 = sub i32 %81, %83
  %call.i.i105 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i100, ptr noundef %daddr.i101, i32 noundef %sub.i.i104, i32 noundef 17, i32 noundef 0) #3
  %84 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i105) #6, !srcloc !14
  %85 = xor i32 %84, -1
  %neg.i = lshr i32 %85, 16
  %csum.i109 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %86 = ptrtoint ptr %csum.i109 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %neg.i, ptr %csum.i109, align 4
  %87 = ptrtoint ptr %csum_cnt.i79 to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load.i111 = load i16, ptr %csum_cnt.i79, align 2
  %bf.set.i112 = or i16 %bf.load.i111, 8192
  store i16 %bf.set.i112, ptr %csum_cnt.i79, align 2
  br label %skip

skip:                                             ; preds = %ip6_gro_compute_pseudo.exit108, %do.body.skip_crit_edge, %skb_gro_incr_csum_unnecessary.exit.skip_crit_edge, %if.end.skip_crit_edge
  %is_ipv6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %88 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load = load i16, ptr %is_ipv6, align 2
  %bf.set = or i16 %bf.load, 128
  store i16 %bf.set, ptr %is_ipv6, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @udpv6_encap_needed_key, ptr blockaddress(@udp6_gro_receive, %if.then37)) #3
          to label %if.end39 [label %if.then37], !srcloc !15

if.then37:                                        ; preds = %skip
  %89 = ptrtoint ptr %uh.0.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %uh.0.i, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %uh.0.i, i32 0, i32 1
  %91 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %dest, align 2
  %93 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cb.i.i, align 8
  %tobool.not.i.i114 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i114, label %cond.false.i.i116, label %if.then37.skb_gro_network_header.exit.i_crit_edge

if.then37.skb_gro_network_header.exit.i_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  br label %skb_gro_network_header.exit.i

cond.false.i.i116:                                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.i115 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %95 = ptrtoint ptr %data.i.i115 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i115, align 4
  br label %skb_gro_network_header.exit.i

skb_gro_network_header.exit.i:                    ; preds = %cond.false.i.i116, %if.then37.skb_gro_network_header.exit.i_crit_edge
  %cond.i.i117 = phi ptr [ %96, %cond.false.i.i116 ], [ %94, %if.then37.skb_gro_network_header.exit.i_crit_edge ]
  %head.i.i.i.i118 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %97 = ptrtoint ptr %head.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %head.i.i.i.i118, align 8
  %network_header.i.i.i.i119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %99 = ptrtoint ptr %network_header.i.i.i.i119 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %network_header.i.i.i.i119, align 4
  %data.i.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %101 = ptrtoint ptr %data.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i.i.i120, align 4
  %103 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %105, i32 0, i32 127
  %106 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nd_net.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %108 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %flags.i.i, align 8
  %110 = and i16 %109, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool.i.not.i.i = icmp eq i16 %110, 0
  %skb_iif.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cond.in.i.i = select i1 %tobool.i.not.i.i, ptr %cb.i.i, ptr %skb_iif.i.i
  %111 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %cond.i10.i = load i32, ptr %cond.in.i.i, align 8
  %tobool.not.i11.i = icmp eq ptr %skb, null
  %brmerge.i = select i1 %tobool.not.i11.i, i1 true, i1 %tobool.i.not.i.i
  br i1 %brmerge.i, label %skb_gro_network_header.exit.i.udp6_gro_lookup_skb.exit_crit_edge, label %if.then.i.i121

skb_gro_network_header.exit.i.udp6_gro_lookup_skb.exit_crit_edge: ; preds = %skb_gro_network_header.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %udp6_gro_lookup_skb.exit

if.then.i.i121:                                   ; preds = %skb_gro_network_header.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %112 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cb.i.i, align 8
  br label %udp6_gro_lookup_skb.exit

udp6_gro_lookup_skb.exit:                         ; preds = %if.then.i.i121, %skb_gro_network_header.exit.i.udp6_gro_lookup_skb.exit_crit_edge
  %retval.0.i.i = phi i32 [ %113, %if.then.i.i121 ], [ 0, %skb_gro_network_header.exit.i.udp6_gro_lookup_skb.exit_crit_edge ]
  %conv.i.i.i.i122 = zext i16 %100 to i32
  %add.ptr.i.i.i.i123 = getelementptr i8, ptr %98, i32 %conv.i.i.i.i122
  %sub.ptr.lhs.cast.i.i.i124 = ptrtoint ptr %add.ptr.i.i.i.i123 to i32
  %sub.ptr.rhs.cast.i.i.i125 = ptrtoint ptr %102 to i32
  %sub.ptr.sub.i.i.i126 = sub i32 %sub.ptr.lhs.cast.i.i.i124, %sub.ptr.rhs.cast.i.i.i125
  %add.ptr.i.i127 = getelementptr i8, ptr %cond.i.i117, i32 %sub.ptr.sub.i.i.i126
  %daddr.i128 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i127, i32 0, i32 6
  %saddr.i129 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i127, i32 0, i32 5
  %call4.i = tail call ptr @__udp6_lib_lookup(ptr noundef %107, ptr noundef %saddr.i129, i16 noundef zeroext %90, ptr noundef %daddr.i128, i16 noundef zeroext %92, i32 noundef %cond.i10.i, i32 noundef %retval.0.i.i, ptr noundef nonnull @udp_table, ptr noundef null) #3
  br label %if.end39

if.end39:                                         ; preds = %udp6_gro_lookup_skb.exit, %skip
  %sk.0 = phi ptr [ %call4.i, %udp6_gro_lookup_skb.exit ], [ null, %skip ]
  %call40 = tail call ptr @udp_gro_receive(ptr noundef %head, ptr noundef %skb, ptr noundef nonnull %uh.0.i, ptr noundef %sk.0) #3
  br label %cleanup

flush41:                                          ; preds = %__skb_gro_checksum_validate_complete.exit.flush41_crit_edge, %udp_gro_udphdr.exit.flush41_crit_edge, %pskb_may_pull.exit.i.i.flush41_crit_edge, %if.end.i.i.i.flush41_crit_edge
  %flush44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %114 = ptrtoint ptr %flush44 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 1, ptr %flush44, align 4
  br label %cleanup

cleanup:                                          ; preds = %flush41, %if.end39
  %retval.0 = phi ptr [ null, %flush41 ], [ %call40, %if.end39 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp6_gro_complete(ptr noundef %skb, i32 noundef %nhoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %nhoff
  %is_flist = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %6 = ptrtoint ptr %is_flist to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %is_flist, align 2
  %7 = and i16 %bf.load, 16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %sub = sub i32 %10, %nhoff
  %conv7 = trunc i32 %sub to i16
  %len8 = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 2
  %11 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %len8, align 2
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gso_type, align 8
  %or = or i32 %15, 393216
  store i32 %or, ptr %gso_type, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count, align 8
  %18 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %gso_segs, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load13 = load i16, ptr %ip_summed, align 8
  %21 = and i16 %bf.load13, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %21)
  %cmp = icmp eq i16 %21, 512
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then
  %csum_level = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %22 = ptrtoint ptr %csum_level to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %bf.load20 = load i32, ptr %csum_level, align 2
  %23 = and i32 %bf.load20, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %23)
  %cmp25.not = icmp eq i32 %23, 805306368
  br i1 %cmp25.not, label %if.then19.cleanup_crit_edge, label %if.then27

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  %24 = add i32 %bf.load20, 268435456
  %bf.shl = and i32 %24, 805306368
  %bf.clear34 = and i32 %bf.load20, -805306369
  %bf.set = or i32 %bf.shl, %bf.clear34
  %25 = ptrtoint ptr %csum_level to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %bf.set, ptr %csum_level, align 2
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %bf.clear37 = and i16 %bf.load13, -1537
  %bf.set38 = or i16 %bf.clear37, 512
  %26 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.set38, ptr %ip_summed, align 8
  %csum_level39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %27 = ptrtoint ptr %csum_level39 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load40 = load i32, ptr %csum_level39, align 2
  %bf.clear41 = and i32 %bf.load40, -805306369
  store i32 %bf.clear41, ptr %csum_level39, align 2
  br label %cleanup

if.end44:                                         ; preds = %entry
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 3
  %28 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool45.not = icmp eq i16 %29, 0
  br i1 %tobool45.not, label %if.end44.if.end53_crit_edge, label %if.then46

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  %len47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len47, align 4
  %sub48 = sub i32 %31, %nhoff
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %sub48, i32 noundef 17, i32 noundef 0) #3
  %32 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #6, !srcloc !14
  %neg.i.i.i = xor i32 %32, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %neg = xor i16 %conv.i.i.i, -1
  %33 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %neg, ptr %check, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %if.end44.if.end53_crit_edge
  %call54 = tail call i32 @udp_gro_complete(ptr noundef %skb, i32 noundef %nhoff, ptr noundef nonnull @udp6_lib_lookup_skb) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.else, %if.then27, %if.then19.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %if.end53 ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_udp_tunnel_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udp_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_find_1stfragopt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_proxy_select_ident(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp_gro_receive(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udp6_lib_lookup(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_gro_complete(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp6_lib_lookup_skb(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #1

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @udpv6_offload, !1, !"udpv6_offload", i1 false, i1 false}
!1 = !{!"../net/ipv6/udp_offload.c", i32 190, i32 33}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 6453211}
!15 = !{i64 2148834115, i64 2148834120, i64 2148834133, i64 2148834177, i64 2148834211, i64 2148834232}
