; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_flow_table_ip.c_pt.bc'
source_filename = "../net/netfilter/nf_flow_table_ip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_flow_offload_ip_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_flow_offload_ip_hook\09\09\09\09"
module asm "\09.long\09__crc_nf_flow_offload_ip_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_flow_offload_ip_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_flow_offload_ip_hook\22\09\09\09\09\09"
module asm "__kstrtabns_nf_flow_offload_ip_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_flow_offload_ipv6_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_flow_offload_ipv6_hook\09\09\09\09"
module asm "\09.long\09__crc_nf_flow_offload_ipv6_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_flow_offload_ipv6_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_flow_offload_ipv6_hook\22\09\09\09\09\09"
module asm "__kstrtabns_nf_flow_offload_ipv6_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.flow_offload_tuple = type { %union.anon.156, %union.anon.157, %struct.anon.158, i32, i8, i8, [2 x %struct.anon.159], %struct.anon.160, i8, i8, i16, %union.anon.161 }
%union.anon.156 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%union.anon.157 = type { %struct.in6_addr }
%struct.anon.158 = type { i16, i16 }
%struct.anon.159 = type { i16, i16 }
%struct.anon.160 = type {}
%union.anon.161 = type { %struct.anon.163 }
%struct.anon.163 = type { i32, i32, [6 x i8], [6 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.135, %union.anon.136, [48 x i8], %union.anon.137, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.139, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.135 = type { ptr }
%union.anon.136 = type { i64 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, ptr }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.141, i32, i32, i32, i16, i16, %union.anon.143, i32, %union.anon.144, %union.anon.145, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.141 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vlan_ethhdr = type { %union.anon.202, i16, i16, i16 }
%union.anon.202 = type { %struct.anon.203 }
%struct.anon.203 = type { [6 x i8], [6 x i8] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.flow_ports = type { i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.134 = type { ptr }
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
%struct.pppoe_hdr = type { i8, i8, i16, i16, [0 x %struct.pppoe_tag] }
%struct.pppoe_tag = type { i16, i16, [0 x i8] }
%struct.flow_offload_tuple_rhash = type { %struct.rhash_head, %struct.flow_offload_tuple }
%struct.rhash_head = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.flow_offload = type { [2 x %struct.flow_offload_tuple_rhash], ptr, i32, i16, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.nf_flowtable = type { %struct.list_head, %struct.rhashtable, i32, ptr, %struct.delayed_work, i32, %struct.flow_block, %struct.rw_semaphore, %struct.possible_net_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.flow_block = type { %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.101, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.101 = type { %struct.in6_addr }
%struct.vlan_hdr = type { i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }

@__kstrtab_nf_flow_offload_ip_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_flow_offload_ip_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_flow_offload_ip_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_flow_offload_ip_hook to i32), ptr @__kstrtab_nf_flow_offload_ip_hook, ptr @__kstrtabns_nf_flow_offload_ip_hook }, section "___ksymtab_gpl+nf_flow_offload_ip_hook", align 4
@__kstrtab_nf_flow_offload_ipv6_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_flow_offload_ipv6_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_flow_offload_ipv6_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_flow_offload_ipv6_hook to i32), ptr @__kstrtab_nf_flow_offload_ipv6_hook, ptr @__kstrtabns_nf_flow_offload_ipv6_hook }, section "___ksymtab_gpl+nf_flow_offload_ipv6_hook", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 16, i64 33024, i64 34525, i64 34916]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_ = private constant [36 x i8] c"../net/netfilter/nf_flow_table_ip.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 1011, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_nf_flow_offload_ip_hook, ptr @__ksymtab_nf_flow_offload_ipv6_hook, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_flow_offload_ip_hook(ptr noundef %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %tuple = alloca %struct.flow_offload_tuple, align 4
  %nexthop = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tuple) #4
  %0 = call ptr @memset(ptr %tuple, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nexthop) #4
  %1 = ptrtoint ptr %nexthop to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nexthop, align 4, !annotation !15
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 2048, label %entry.if.end_crit_edge
    i16 -32512, label %sw.bb.i
    i16 -30620, label %sw.bb4.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %10)
  %cmp.i = icmp eq i16 %10, 2048
  br i1 %cmp.i, label %sw.bb.i.if.end_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %14 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %conv.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 20
  %15 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %16)
  %switch.selectcmp3.i.i = icmp eq i16 %16, 33
  br i1 %switch.selectcmp3.i.i, label %sw.bb4.i.if.end_crit_edge, label %sw.bb4.i.cleanup_crit_edge

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb4.i.if.end_crit_edge:                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %sw.bb4.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge, %entry.if.end_crit_edge
  %offset.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 4, %sw.bb.i.if.end_crit_edge ], [ 8, %sw.bb4.i.if.end_crit_edge ]
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %17 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in, align 4
  %add.i = add nuw nsw i32 %offset.1, 20
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.if.end.i_crit_edge, !prof !16

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %20, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_may_pull.exit.i, !prof !16

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #4
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

pskb_may_pull.exit.i.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %head.i.i161 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i161, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i162 = zext i16 %26 to i32
  %add.ptr.i.i163 = getelementptr i8, ptr %24, i32 %conv.i.i162
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i163, i32 %offset.1
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 4
  %28 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %frag_off.i.i, align 2
  %30 = and i16 %29, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.i.i = icmp ne i16 %30, 0
  %31 = and i8 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %31)
  %cmp.i54.i = icmp ne i8 %31, 5
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %cmp.i54.i
  br i1 %or.cond.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i, !prof !17

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %protocol.i164 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 6
  %32 = ptrtoint ptr %protocol.i164 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %protocol.i164, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %33, label %if.end7.i.cleanup_crit_edge [
    i8 6, label %if.end7.i.sw.epilog.i_crit_edge
    i8 17, label %sw.bb10.i
  ]

if.end7.i.sw.epilog.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb10.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %if.end7.i.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ 8, %sw.bb10.i ], [ 20, %if.end7.i.sw.epilog.i_crit_edge ]
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 5
  %35 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ttl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp.i165 = icmp ult i8 %36, 2
  br i1 %cmp.i165, label %sw.epilog.i.cleanup_crit_edge, label %if.end14.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14.i:                                       ; preds = %sw.epilog.i
  %add15.i = add nuw nsw i32 %storemerge.i, %add.i
  %37 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i.i, align 4
  %39 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i57.i = sub i32 %38, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %sub.i.i57.i)
  %cmp.not.i58.i = icmp ugt i32 %add15.i, %sub.i.i57.i
  br i1 %cmp.not.i58.i, label %if.end.i60.i, label %if.end14.i.if.end18.i_crit_edge, !prof !16

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.end.i60.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add15.i)
  %cmp3.i59.i = icmp ult i32 %38, %add15.i
  br i1 %cmp3.i59.i, label %if.end.i60.i.cleanup_crit_edge, label %pskb_may_pull.exit66.i, !prof !16

if.end.i60.i.cleanup_crit_edge:                   ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pskb_may_pull.exit66.i:                           ; preds = %if.end.i60.i
  %sub.i61.i = sub i32 %add15.i, %sub.i.i57.i
  %call13.i62.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i61.i) #4
  %cmp14.i63.not.i = icmp eq ptr %call13.i62.i, null
  br i1 %cmp14.i63.not.i, label %pskb_may_pull.exit66.i.cleanup_crit_edge, label %pskb_may_pull.exit66.i.if.end18.i_crit_edge

pskb_may_pull.exit66.i.if.end18.i_crit_edge:      ; preds = %pskb_may_pull.exit66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

pskb_may_pull.exit66.i.cleanup_crit_edge:         ; preds = %pskb_may_pull.exit66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18.i:                                       ; preds = %pskb_may_pull.exit66.i.if.end18.i_crit_edge, %if.end14.i.if.end18.i_crit_edge
  %41 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i161, align 8
  %43 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i.i, align 4
  %conv.i69.i = zext i16 %44 to i32
  %add.ptr.i70.i = getelementptr i8, ptr %42, i32 %conv.i69.i
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i70.i, i32 %offset.1
  %add.ptr22.i = getelementptr i8, ptr %add.ptr.i70.i, i32 %add.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr20.i, i32 0, i32 8
  %45 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %saddr.i, align 4
  %47 = ptrtoint ptr %tuple to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tuple, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr20.i, i32 0, i32 9
  %48 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %daddr.i, align 4
  %50 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %50, align 4
  %52 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr22.i, align 2
  %54 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %53, ptr %54, align 4
  %dest.i = getelementptr inbounds %struct.flow_ports, ptr %add.ptr22.i, i32 0, i32 1
  %56 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dest.i, align 2
  %dst_port.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %dst_port.i, align 2
  %l3proto.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 4
  %59 = ptrtoint ptr %l3proto.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %l3proto.i, align 4
  %protocol24.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr20.i, i32 0, i32 6
  %60 = ptrtoint ptr %protocol24.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %protocol24.i, align 1
  %l4proto.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 5
  %62 = ptrtoint ptr %l4proto.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %l4proto.i, align 1
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 17
  %63 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ifindex.i, align 4
  %iifidx.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 3
  %65 = ptrtoint ptr %iifidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %iifidx.i, align 4
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %66 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end18.i.if.end.i75.i_crit_edge, label %if.then.i.i

if.end18.i.if.end.i75.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i75.i

if.then.i.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %67 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vlan_tci.i.i, align 2
  %encap.i.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 6
  %69 = ptrtoint ptr %encap.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %encap.i.i, align 2
  %vlan_proto.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %70 = ptrtoint ptr %vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vlan_proto.i.i, align 8
  %proto.i.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 6, i32 0, i32 1
  %72 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %proto.i.i, align 4
  br label %if.end.i75.i

if.end.i75.i:                                     ; preds = %if.then.i.i, %if.end18.i.if.end.i75.i_crit_edge
  %i.0.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %if.end18.i.if.end.i75.i_crit_edge ]
  %73 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %protocol, align 8
  %75 = zext i16 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %74, label %if.end.i75.i.if.end6_crit_edge [
    i16 -32512, label %sw.bb.i.i
    i16 -30620, label %sw.bb10.i.i
  ]

if.end.i75.i.if.end6_crit_edge:                   ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

sw.bb.i.i:                                        ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #6
  %mac_header.i.i.i166 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %76 = ptrtoint ptr %mac_header.i.i.i166 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %mac_header.i.i.i166, align 2
  %conv.i.i.i167 = zext i16 %77 to i32
  %add.ptr.i.i.i168 = getelementptr i8, ptr %42, i32 %conv.i.i.i167
  %h_vlan_TCI.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i168, i32 0, i32 2
  br label %sw.epilog.sink.split.i.i

sw.bb10.i.i:                                      ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #6
  %mac_header.i38.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %78 = ptrtoint ptr %mac_header.i38.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %mac_header.i38.i.i, align 2
  %conv.i39.i.i = zext i16 %79 to i32
  %add.ptr.i40.i.i = getelementptr i8, ptr %42, i32 %conv.i39.i.i
  %sid.i.i = getelementptr inbounds %struct.pppoe_hdr, ptr %add.ptr.i40.i.i, i32 0, i32 2
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb10.i.i, %sw.bb.i.i
  %.sink.in.i.i = phi ptr [ %sid.i.i, %sw.bb10.i.i ], [ %h_vlan_TCI.i.i, %sw.bb.i.i ]
  %80 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %.sink.i.i = load i16, ptr %.sink.in.i.i, align 1
  %arrayidx13.i.i = getelementptr %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 6, i32 %i.0.i.i
  %81 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %.sink.i.i, ptr %arrayidx13.i.i, align 2
  %proto18.i.i = getelementptr %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 6, i32 %i.0.i.i, i32 1
  %82 = ptrtoint ptr %proto18.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %74, ptr %proto18.i.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %sw.epilog.sink.split.i.i, %if.end.i75.i.if.end6_crit_edge
  %call7 = call ptr @flow_offload_lookup(ptr noundef %priv, ptr noundef nonnull %tuple) #4
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %dir13 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %call7, i32 0, i32 1, i32 8
  %83 = ptrtoint ptr %dir13 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load = load i8, ptr %dir13, align 2
  %bf.lshr = lshr i8 %bf.load, 6
  %conv14 = zext i8 %bf.lshr to i32
  %.neg = mul nsw i32 %conv14, -80
  %add.ptr = getelementptr i8, ptr %call7, i32 %.neg
  %arrayidx = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %add.ptr, i32 0, i32 %conv14
  %mtu17 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %arrayidx, i32 0, i32 1, i32 10
  %84 = ptrtoint ptr %mtu17 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %mtu17, align 4
  %conv18 = zext i16 %85 to i32
  %add = add nuw nsw i32 %offset.1, %conv18
  %86 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %add)
  %cmp.not.i = icmp ugt i32 %87, %add
  br i1 %cmp.not.i, label %if.end.i170, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end.i170:                                      ; preds = %if.end11
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %88 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool.i.not.i = icmp eq i16 %91, 0
  br i1 %tobool.i.not.i, label %if.end.i170.cleanup_crit_edge, label %land.lhs.true.i

if.end.i170.cleanup_crit_edge:                    ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i170
  %call1.i = call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %add) #4
  br i1 %call1.i, label %land.lhs.true.i.if.end22_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.i.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %92 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i.i161, align 8
  %94 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %network_header.i.i, align 4
  %conv.i = zext i16 %95 to i32
  %add.ptr.i172 = getelementptr i8, ptr %93, i32 %conv.i
  %add.ptr24 = getelementptr i8, ptr %add.ptr.i172, i32 %offset.1
  %96 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load25 = load i8, ptr %add.ptr24, align 4
  %bf.clear = shl i8 %bf.load25, 2
  %97 = and i8 %bf.clear, 60
  %mul = zext i8 %97 to i32
  %add27 = add nuw nsw i32 %offset.1, %mul
  %protocol28 = getelementptr inbounds %struct.iphdr, ptr %add.ptr24, i32 0, i32 6
  %98 = ptrtoint ptr %protocol28 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %protocol28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %99)
  %cmp.not.i173 = icmp eq i8 %99, 6
  br i1 %cmp.not.i173, label %if.end.i180, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.end.i180:                                      ; preds = %if.end22
  %add.ptr.i178 = getelementptr i8, ptr %add.ptr.i172, i32 %add27
  %fin.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i178, i32 0, i32 4
  %100 = ptrtoint ptr %fin.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load.i179 = load i16, ptr %fin.i, align 4
  %101 = and i16 %bf.load.i179, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %.not.i = icmp eq i16 %101, 0
  br i1 %.not.i, label %if.end.i180.if.end33_crit_edge, label %nf_flow_state_check.exit, !prof !18

if.end.i180.if.end33_crit_edge:                   ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

nf_flow_state_check.exit:                         ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #6
  call void @flow_offload_teardown(ptr noundef %add.ptr) #4
  br label %cleanup

if.end33:                                         ; preds = %if.end.i180.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %add34 = add nuw nsw i32 %add27, %storemerge.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %102 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load.i.i182 = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i182)
  %tobool.not.i.i183 = icmp sgt i8 %bf.load.i.i182, -1
  br i1 %tobool.not.i.i183, label %if.end33.if.end38_crit_edge, label %skb_cloned.exit.i

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

skb_cloned.exit.i:                                ; preds = %if.end33
  %end.i.i.i184 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %103 = ptrtoint ptr %end.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i.i.i184, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %104, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #4
  %105 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %106, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end38_crit_edge, label %land.lhs.true.i185

skb_cloned.exit.i.if.end38_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true.i185:                               ; preds = %skb_cloned.exit.i
  %107 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i185.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i

land.lhs.true.i185.skb_clone_writable.exit.i_crit_edge: ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_clone_writable.exit.i

skb_header_cloned.exit.i.i:                       ; preds = %land.lhs.true.i185
  %108 = ptrtoint ptr %end.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %end.i.i.i184, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #4
  %110 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %111, 65535
  %shr.i.i.i = ashr i32 %111, 16
  %sub.i.i.i186 = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i186)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i186, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge

skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_try_make_writable.exit

skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_clone_writable.exit.i

skb_clone_writable.exit.i:                        ; preds = %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, %land.lhs.true.i185.skb_clone_writable.exit.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %112 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i.i.i, align 4
  %114 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %head.i.i161, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %113 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %115 to i32
  %sub.ptr.sub.i.i.i = add i32 %add34, %sub.ptr.lhs.cast.i.i.i
  %add.i.i = sub i32 %sub.ptr.sub.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %hdr_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %116 = ptrtoint ptr %hdr_len.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %hdr_len.i.i, align 2
  %conv.i.i188 = zext i16 %117 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i188)
  %cmp.i7.not.i = icmp ugt i32 %add.i.i, %conv.i.i188
  br i1 %cmp.i7.not.i, label %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, label %skb_clone_writable.exit.i.if.end38_crit_edge

skb_clone_writable.exit.i.if.end38_crit_edge:     ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_try_make_writable.exit

skb_try_make_writable.exit:                       ; preds = %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge
  %call3.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i.not, label %skb_try_make_writable.exit.if.end38_crit_edge, label %skb_try_make_writable.exit.cleanup_crit_edge

skb_try_make_writable.exit.cleanup_crit_edge:     ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

skb_try_make_writable.exit.if.end38_crit_edge:    ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end38:                                         ; preds = %skb_try_make_writable.exit.if.end38_crit_edge, %skb_clone_writable.exit.i.if.end38_crit_edge, %skb_cloned.exit.i.if.end38_crit_edge, %if.end33.if.end38_crit_edge
  call void @flow_offload_refresh(ptr noundef %priv, ptr noundef %add.ptr) #4
  call fastcc void @nf_flow_encap_pop(ptr noundef %skb, ptr noundef nonnull %call7)
  %118 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %head.i.i161, align 8
  %120 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i191 = zext i16 %121 to i32
  %add.ptr.i.i192 = getelementptr i8, ptr %119, i32 %conv.i.i191
  %flags.i = getelementptr inbounds %struct.flow_offload, ptr %add.ptr, i32 0, i32 2
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end38.if.end.i195_crit_edge, label %if.then.i

if.end38.if.end.i195_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i195

if.then.i:                                        ; preds = %if.end38
  %protocol.i193 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 6
  %124 = ptrtoint ptr %protocol.i193 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %protocol.i193, align 1
  call void @nf_flow_snat_port(ptr noundef %add.ptr, ptr noundef %skb, i32 noundef %mul, i8 noundef zeroext %125, i32 noundef %conv14) #4
  %126 = zext i32 %conv14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %conv14, label %if.then.i.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i194
    i32 1, label %sw.bb2.i.i
  ]

if.then.i.sw.epilog.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb.i.i194:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 8
  %127 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %saddr.i.i, align 4
  %129 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %add.ptr, i32 0, i32 1, i32 1, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  store i32 %131, ptr %saddr.i.i, align 4
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 9
  %132 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %daddr.i.i, align 4
  %tuple5.i.i = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %add.ptr, i32 0, i32 1
  %134 = ptrtoint ptr %tuple5.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tuple5.i.i, align 4
  store i32 %135, ptr %daddr.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %sw.bb.i.i194, %if.then.i.sw.epilog.i.i_crit_edge
  %addr.0.i.i = phi i32 [ -1, %if.then.i.sw.epilog.i.i_crit_edge ], [ %133, %sw.bb2.i.i ], [ %128, %sw.bb.i.i194 ]
  %new_addr.0.i.i = phi i32 [ -1, %if.then.i.sw.epilog.i.i_crit_edge ], [ %135, %sw.bb2.i.i ], [ %131, %sw.bb.i.i194 ]
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 7
  %136 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %check.i.i, align 2
  %conv.i.i.i.i = zext i16 %137 to i32
  %neg.i.i.i = xor i32 %conv.i.i.i.i, -1
  %neg.i.i.i.i = xor i32 %addr.0.i.i, -1
  %add.i.i.i.i.i = add i32 %neg.i.i.i, %neg.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %neg.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i, %neg.i.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %new_addr.0.i.i
  %add.i.i.i.i = add i32 %add1.i.i.i.i.i, %conv.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %new_addr.0.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %new_addr.0.i.i
  %conv.i5.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i5.i.i.i
  %138 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i.i) #7, !srcloc !19
  %neg.i6.i.i.i = xor i32 %138, -1
  %shr.i.i.i.i = lshr i32 %neg.i6.i.i.i, 16
  %conv.i7.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %139 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv.i7.i.i.i, ptr %check.i.i, align 2
  %140 = ptrtoint ptr %protocol.i193 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %protocol.i193, align 1
  %142 = zext i8 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %141, label %sw.epilog.i.i.if.end.i195_crit_edge [
    i8 6, label %sw.bb.i.i.i
    i8 17, label %sw.bb1.i.i.i
  ]

sw.epilog.i.i.if.end.i195_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i195

sw.bb.i.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %143 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %head.i.i161, align 8
  %145 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i18.i.i = zext i16 %146 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %144, i32 %conv.i.i.i18.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul
  %check.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  call void @inet_proto_csum_replace4(ptr noundef %check.i.i.i.i, ptr noundef %skb, i32 noundef %addr.0.i.i, i32 noundef %new_addr.0.i.i, i1 noundef zeroext true) #4
  br label %if.end.i195

sw.bb1.i.i.i:                                     ; preds = %sw.epilog.i.i
  %147 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %head.i.i161, align 8
  %149 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i8.i.i.i = zext i16 %150 to i32
  %add.ptr.i.i9.i.i.i = getelementptr i8, ptr %148, i32 %conv.i.i8.i.i.i
  %add.ptr.i10.i.i.i = getelementptr i8, ptr %add.ptr.i.i9.i.i.i, i32 %mul
  %check.i11.i.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i10.i.i.i, i32 0, i32 3
  %151 = ptrtoint ptr %check.i11.i.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %check.i11.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool.not.i.i.i.i = icmp eq i16 %152, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %sw.bb1.i.i.i.if.then.i.i.i.i_crit_edge

sw.bb1.i.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %sw.bb1.i.i.i
  %ip_summed.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %153 = ptrtoint ptr %ip_summed.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %bf.load.i.i.i.i = load i16, ptr %ip_summed.i.i.i.i, align 8
  %154 = and i16 %bf.load.i.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %154)
  %cmp.i.i19.i.i = icmp eq i16 %154, 1536
  br i1 %cmp.i.i19.i.i, label %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i195_crit_edge

lor.lhs.false.i.i.i.i.if.end.i195_crit_edge:      ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i195

lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, %sw.bb1.i.i.i.if.then.i.i.i.i_crit_edge
  call void @inet_proto_csum_replace4(ptr noundef %check.i11.i.i.i, ptr noundef %skb, i32 noundef %addr.0.i.i, i32 noundef %new_addr.0.i.i, i1 noundef zeroext true) #4
  %155 = ptrtoint ptr %check.i11.i.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %check.i11.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool5.not.i.i.i.i = icmp eq i16 %156, 0
  br i1 %tobool5.not.i.i.i.i, label %if.then6.i.i.i.i, label %if.then.i.i.i.i.if.end.i195_crit_edge

if.then.i.i.i.i.if.end.i195_crit_edge:            ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i195

if.then6.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %157 = ptrtoint ptr %check.i11.i.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 -1, ptr %check.i11.i.i.i, align 2
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then6.i.i.i.i, %if.then.i.i.i.i.if.end.i195_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i195_crit_edge, %sw.bb.i.i.i, %sw.epilog.i.i.if.end.i195_crit_edge, %if.end38.if.end.i195_crit_edge
  %158 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %flags.i, align 4
  %160 = and i32 %159, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool3.not.i = icmp eq i32 %160, 0
  br i1 %tobool3.not.i, label %if.end.i195.nf_flow_nat_ip.exit_crit_edge, label %if.then4.i

if.end.i195.nf_flow_nat_ip.exit_crit_edge:        ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_nat_ip.exit

if.then4.i:                                       ; preds = %if.end.i195
  %protocol5.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 6
  %161 = ptrtoint ptr %protocol5.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %protocol5.i, align 1
  call void @nf_flow_dnat_port(ptr noundef %add.ptr, ptr noundef %skb, i32 noundef %mul, i8 noundef zeroext %162, i32 noundef %conv14) #4
  %163 = zext i32 %conv14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %conv14, label %if.then4.i.sw.epilog.i47.i_crit_edge [
    i32 0, label %sw.bb.i26.i
    i32 1, label %sw.bb2.i28.i
  ]

if.then4.i.sw.epilog.i47.i_crit_edge:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i47.i

sw.bb.i26.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  %daddr.i25.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 9
  %164 = ptrtoint ptr %daddr.i25.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %daddr.i25.i, align 4
  %tuple.i.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %add.ptr, i32 0, i32 1, i32 1
  %166 = ptrtoint ptr %tuple.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %tuple.i.i, align 4
  store i32 %167, ptr %daddr.i25.i, align 4
  br label %sw.epilog.i47.i

sw.bb2.i28.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  %saddr.i27.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 8
  %168 = ptrtoint ptr %saddr.i27.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %saddr.i27.i, align 4
  %170 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %add.ptr, i32 0, i32 1, i32 1
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 4
  store i32 %172, ptr %saddr.i27.i, align 4
  br label %sw.epilog.i47.i

sw.epilog.i47.i:                                  ; preds = %sw.bb2.i28.i, %sw.bb.i26.i, %if.then4.i.sw.epilog.i47.i_crit_edge
  %addr.0.i29.i = phi i32 [ -1, %if.then4.i.sw.epilog.i47.i_crit_edge ], [ %169, %sw.bb2.i28.i ], [ %165, %sw.bb.i26.i ]
  %new_addr.0.i30.i = phi i32 [ -1, %if.then4.i.sw.epilog.i47.i_crit_edge ], [ %172, %sw.bb2.i28.i ], [ %167, %sw.bb.i26.i ]
  %check.i31.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 7
  %173 = ptrtoint ptr %check.i31.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %check.i31.i, align 2
  %conv.i.i.i32.i = zext i16 %174 to i32
  %neg.i.i33.i = xor i32 %conv.i.i.i32.i, -1
  %neg.i.i.i34.i = xor i32 %addr.0.i29.i, -1
  %add.i.i.i.i35.i = add i32 %neg.i.i33.i, %neg.i.i.i34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i35.i, i32 %neg.i.i.i34.i)
  %cmp.i.i.i.i36.i = icmp ult i32 %add.i.i.i.i35.i, %neg.i.i.i34.i
  %conv.i.i.i.i37.i = zext i1 %cmp.i.i.i.i36.i to i32
  %add1.i.i.i.i38.i = add i32 %add.i.i.i.i35.i, %new_addr.0.i30.i
  %add.i.i.i39.i = add i32 %add1.i.i.i.i38.i, %conv.i.i.i.i37.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i39.i, i32 %new_addr.0.i30.i)
  %cmp.i.i.i40.i = icmp ult i32 %add.i.i.i39.i, %new_addr.0.i30.i
  %conv.i5.i.i41.i = zext i1 %cmp.i.i.i40.i to i32
  %add1.i.i.i42.i = add i32 %add.i.i.i39.i, %conv.i5.i.i41.i
  %175 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i42.i) #7, !srcloc !19
  %neg.i6.i.i43.i = xor i32 %175, -1
  %shr.i.i.i44.i = lshr i32 %neg.i6.i.i43.i, 16
  %conv.i7.i.i45.i = trunc i32 %shr.i.i.i44.i to i16
  %176 = ptrtoint ptr %check.i31.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv.i7.i.i45.i, ptr %check.i31.i, align 2
  %177 = ptrtoint ptr %protocol5.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %protocol5.i, align 1
  %179 = zext i8 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %178, label %sw.epilog.i47.i.nf_flow_nat_ip.exit_crit_edge [
    i8 6, label %sw.bb.i.i54.i
    i8 17, label %sw.bb1.i.i62.i
  ]

sw.epilog.i47.i.nf_flow_nat_ip.exit_crit_edge:    ; preds = %sw.epilog.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_nat_ip.exit

sw.bb.i.i54.i:                                    ; preds = %sw.epilog.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  %180 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %head.i.i161, align 8
  %182 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i18.i50.i = zext i16 %183 to i32
  %add.ptr.i.i.i.i51.i = getelementptr i8, ptr %181, i32 %conv.i.i.i18.i50.i
  %add.ptr.i.i.i52.i = getelementptr i8, ptr %add.ptr.i.i.i.i51.i, i32 %mul
  %check.i.i.i53.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i52.i, i32 0, i32 6
  call void @inet_proto_csum_replace4(ptr noundef %check.i.i.i53.i, ptr noundef %skb, i32 noundef %addr.0.i29.i, i32 noundef %new_addr.0.i30.i, i1 noundef zeroext true) #4
  br label %nf_flow_nat_ip.exit

sw.bb1.i.i62.i:                                   ; preds = %sw.epilog.i47.i
  %184 = ptrtoint ptr %head.i.i161 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %head.i.i161, align 8
  %186 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i8.i.i57.i = zext i16 %187 to i32
  %add.ptr.i.i9.i.i58.i = getelementptr i8, ptr %185, i32 %conv.i.i8.i.i57.i
  %add.ptr.i10.i.i59.i = getelementptr i8, ptr %add.ptr.i.i9.i.i58.i, i32 %mul
  %check.i11.i.i60.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i10.i.i59.i, i32 0, i32 3
  %188 = ptrtoint ptr %check.i11.i.i60.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %check.i11.i.i60.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %tobool.not.i.i.i61.i = icmp eq i16 %189, 0
  br i1 %tobool.not.i.i.i61.i, label %lor.lhs.false.i.i.i66.i, label %sw.bb1.i.i62.i.if.then.i.i.i68.i_crit_edge

sw.bb1.i.i62.i.if.then.i.i.i68.i_crit_edge:       ; preds = %sw.bb1.i.i62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i68.i

lor.lhs.false.i.i.i66.i:                          ; preds = %sw.bb1.i.i62.i
  %ip_summed.i.i.i63.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %190 = ptrtoint ptr %ip_summed.i.i.i63.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %bf.load.i.i.i64.i = load i16, ptr %ip_summed.i.i.i63.i, align 8
  %191 = and i16 %bf.load.i.i.i64.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %191)
  %cmp.i.i19.i65.i = icmp eq i16 %191, 1536
  br i1 %cmp.i.i19.i65.i, label %lor.lhs.false.i.i.i66.i.if.then.i.i.i68.i_crit_edge, label %lor.lhs.false.i.i.i66.i.nf_flow_nat_ip.exit_crit_edge

lor.lhs.false.i.i.i66.i.nf_flow_nat_ip.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_nat_ip.exit

lor.lhs.false.i.i.i66.i.if.then.i.i.i68.i_crit_edge: ; preds = %lor.lhs.false.i.i.i66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i68.i

if.then.i.i.i68.i:                                ; preds = %lor.lhs.false.i.i.i66.i.if.then.i.i.i68.i_crit_edge, %sw.bb1.i.i62.i.if.then.i.i.i68.i_crit_edge
  call void @inet_proto_csum_replace4(ptr noundef %check.i11.i.i60.i, ptr noundef %skb, i32 noundef %addr.0.i29.i, i32 noundef %new_addr.0.i30.i, i1 noundef zeroext true) #4
  %192 = ptrtoint ptr %check.i11.i.i60.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %check.i11.i.i60.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %193)
  %tobool5.not.i.i.i67.i = icmp eq i16 %193, 0
  br i1 %tobool5.not.i.i.i67.i, label %if.then6.i.i.i69.i, label %if.then.i.i.i68.i.nf_flow_nat_ip.exit_crit_edge

if.then.i.i.i68.i.nf_flow_nat_ip.exit_crit_edge:  ; preds = %if.then.i.i.i68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_nat_ip.exit

if.then6.i.i.i69.i:                               ; preds = %if.then.i.i.i68.i
  call void @__sanitizer_cov_trace_pc() #6
  %194 = ptrtoint ptr %check.i11.i.i60.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -1, ptr %check.i11.i.i60.i, align 2
  br label %nf_flow_nat_ip.exit

nf_flow_nat_ip.exit:                              ; preds = %if.then6.i.i.i69.i, %if.then.i.i.i68.i.nf_flow_nat_ip.exit_crit_edge, %lor.lhs.false.i.i.i66.i.nf_flow_nat_ip.exit_crit_edge, %sw.bb.i.i54.i, %sw.epilog.i47.i.nf_flow_nat_ip.exit_crit_edge, %if.end.i195.nf_flow_nat_ip.exit_crit_edge
  %check1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 7
  %195 = ptrtoint ptr %check1.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %check1.i, align 2
  %add.i196 = add i16 %196, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -258, i16 %196)
  %cmp.i197 = icmp ugt i16 %196, -258
  %conv2.i = zext i1 %cmp.i197 to i16
  %add3.i = add i16 %add.i196, %conv2.i
  %197 = ptrtoint ptr %check1.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %add3.i, ptr %check1.i, align 2
  %ttl.i198 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i192, i32 0, i32 5
  %198 = ptrtoint ptr %ttl.i198 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %ttl.i198, align 4
  %dec.i = add i8 %199, -1
  store i8 %dec.i, ptr %ttl.i198, align 4
  %200 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 0, ptr %200, align 8
  %flags = getelementptr inbounds %struct.nf_flowtable, ptr %priv, i32 0, i32 5
  %202 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %flags, align 4
  %and = and i32 %203, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %nf_flow_nat_ip.exit.if.end48_crit_edge, label %if.then42

nf_flow_nat_ip.exit.if.end48_crit_edge:           ; preds = %nf_flow_nat_ip.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then42:                                        ; preds = %nf_flow_nat_ip.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ct = getelementptr inbounds %struct.flow_offload, ptr %add.ptr, i32 0, i32 1
  %204 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ct, align 4
  %206 = ptrtoint ptr %dir13 to i32
  call void @__asan_load1_noabort(i32 %206)
  %bf.load45 = load i8, ptr %dir13, align 2
  %bf.lshr46 = lshr i8 %bf.load45, 6
  %conv47 = zext i8 %bf.lshr46 to i32
  %207 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %len.i.i.i, align 4
  call void @nf_ct_acct_add(ptr noundef %205, i32 noundef %conv47, i32 noundef 1, i32 noundef %208) #4
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %nf_flow_nat_ip.exit.if.end48_crit_edge
  %209 = ptrtoint ptr %dir13 to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load50 = load i8, ptr %dir13, align 2
  %bf.lshr51 = lshr i8 %bf.load50, 3
  %bf.clear52 = and i8 %bf.lshr51, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear52)
  %cmp54 = icmp eq i8 %bf.clear52, 2
  br i1 %cmp54, label %if.then62, label %if.end70, !prof !16

if.then62:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %210 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %call7, i32 0, i32 1, i32 11
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %213 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %214 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %216, i32 0, i32 17
  %217 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %ifindex, align 4
  %219 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %cb, align 8
  %flags68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %220 = ptrtoint ptr %flags68 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 1, ptr %flags68, align 4
  call fastcc void @nf_flow_xmit_xfrm(ptr noundef %skb, ptr noundef %state, ptr noundef %212)
  br label %cleanup

if.end70:                                         ; preds = %if.end48
  %conv53 = zext i8 %bf.clear52 to i32
  %221 = zext i32 %conv53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %conv53, label %if.end70.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb89
  ]

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  %222 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %call7, i32 0, i32 1, i32 11
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %222, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %227 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %226, ptr %227, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %tobool81.not = icmp ult i8 %bf.load, 64
  %lnot.ext83 = zext i1 %tobool81.not to i32
  %arrayidx84 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %add.ptr, i32 0, i32 %lnot.ext83
  %tuple85 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %arrayidx84, i32 0, i32 1
  %rt_gw_family.i = getelementptr inbounds %struct.rtable, ptr %224, i32 0, i32 7
  %229 = ptrtoint ptr %rt_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %rt_gw_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %230)
  %cmp.i199 = icmp eq i8 %230, 2
  %231 = getelementptr inbounds %struct.rtable, ptr %224, i32 0, i32 8
  %spec.select = select i1 %cmp.i199, ptr %231, ptr %tuple85
  %232 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %232)
  %retval.0.i201 = load i32, ptr %spec.select, align 4
  %233 = ptrtoint ptr %nexthop to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %retval.0.i201, ptr %nexthop, align 4
  call fastcc void @skb_dst_set_noref(ptr noundef %skb, ptr noundef %224)
  %call88 = call i32 @neigh_xmit(i32 noundef 0, ptr noundef %226, ptr noundef nonnull %nexthop, ptr noundef %skb) #4
  br label %cleanup

sw.bb89:                                          ; preds = %if.end70
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %234 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %net, align 4
  %call90 = call fastcc i32 @nf_flow_queue_xmit(ptr noundef %235, ptr noundef %skb, ptr noundef nonnull %call7, i16 noundef zeroext 2048)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %sw.bb89.cleanup_crit_edge

sw.bb89.cleanup_crit_edge:                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then93:                                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #6
  call void @flow_offload_teardown(ptr noundef %add.ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %sw.bb89.cleanup_crit_edge, %sw.bb, %if.end70.cleanup_crit_edge, %if.then62, %skb_try_make_writable.exit.cleanup_crit_edge, %nf_flow_state_check.exit, %land.lhs.true.i.cleanup_crit_edge, %if.end.i170.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %pskb_may_pull.exit66.i.cleanup_crit_edge, %if.end.i60.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %pskb_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then62 ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %nf_flow_state_check.exit ], [ 0, %skb_try_make_writable.exit.cleanup_crit_edge ], [ -1, %if.end70.cleanup_crit_edge ], [ 0, %if.then93 ], [ %call90, %sw.bb89.cleanup_crit_edge ], [ 2, %sw.bb ], [ 1, %if.end.i170.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %sw.bb4.i.cleanup_crit_edge ], [ 1, %sw.bb.i.cleanup_crit_edge ], [ 1, %pskb_may_pull.exit.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.end7.i.cleanup_crit_edge ], [ 1, %sw.epilog.i.cleanup_crit_edge ], [ 1, %pskb_may_pull.exit66.i.cleanup_crit_edge ], [ 1, %if.end.i.i.cleanup_crit_edge ], [ 1, %if.end.i60.i.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nexthop) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tuple) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_offload_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_offload_refresh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_flow_encap_pop(ptr noundef %skb, ptr nocapture noundef readonly %tuplehash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %encap_num = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %tuplehash, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %encap_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load30 = load i8, ptr %encap_num, align 2
  %1 = and i8 %bf.load30, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp34.not = icmp eq i8 %1, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %data.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %network_header.i29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load2 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load2)
  %tobool.not = icmp sgt i32 %bf.load2, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear.i = and i32 %bf.load2, 2147483647
  %3 = ptrtoint ptr %vlan_present to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %bf.clear.i, ptr %vlan_present, align 2
  br label %for.inc

if.end:                                           ; preds = %for.body.lr.ph
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %5, label %if.end.for.inc_crit_edge [
    i16 -32512, label %sw.bb
    i16 -30620, label %sw.bb5
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i23, align 4
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %10, -4
  store i32 %sub.i, ptr %len1.i, align 4
  %11 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %12)
  %cmp.i = icmp ult i32 %sub.i, %12
  br i1 %cmp.i, label %sw.bb.do.body4.i_crit_edge, label %__skb_pull.exit, !prof !16

sw.bb.do.body4.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i

do.body4.i:                                       ; preds = %sw.bb.2.do.body4.i_crit_edge, %sw.bb.1.do.body4.i_crit_edge, %sw.bb.do.body4.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #4, !srcloc !20
  unreachable

__skb_pull.exit:                                  ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %13 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %data.i23, align 4
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_hdr, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %15)
  %cmp.i.i = icmp ugt i16 %15, 1535
  br i1 %cmp.i.i, label %__skb_pull.exit.vlan_set_encap_proto.exit_crit_edge, label %if.end.i

__skb_pull.exit.vlan_set_encap_proto.exit_crit_edge: ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vlan_set_encap_proto.exit

if.end.i:                                         ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp.i21 = icmp eq i16 %17, -1
  %. = select i1 %cmp.i21, i16 1, i16 4
  br label %vlan_set_encap_proto.exit

vlan_set_encap_proto.exit:                        ; preds = %if.end.i, %__skb_pull.exit.vlan_set_encap_proto.exit_crit_edge
  %.sink = phi i16 [ %15, %__skb_pull.exit.vlan_set_encap_proto.exit_crit_edge ], [ %., %if.end.i ]
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink, ptr %protocol, align 8
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %21 = ptrtoint ptr %network_header.i29 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %network_header.i29, align 4
  br label %for.inc

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %24 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 20
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i.i
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 87, i16 %27)
  %switch.selectcmp.i = icmp eq i16 %27, 87
  %switch.select.i = select i1 %switch.selectcmp.i, i16 -31011, i16 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %27)
  %switch.selectcmp3.i = icmp eq i16 %27, 33
  %switch.select4.i = select i1 %switch.selectcmp3.i, i16 2048, i16 %switch.select.i
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %switch.select4.i, ptr %protocol, align 8
  %call8 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #4
  %29 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i23, align 4
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i25 = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i26 = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i27 = sub i32 %sub.ptr.lhs.cast.i25, %sub.ptr.rhs.cast.i26
  %conv.i28 = trunc i32 %sub.ptr.sub.i27 to i16
  %33 = ptrtoint ptr %network_header.i29 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i28, ptr %network_header.i29, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb5, %vlan_set_encap_proto.exit, %if.end.for.inc_crit_edge, %if.then
  %34 = ptrtoint ptr %encap_num to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %encap_num, align 2
  %35 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.not = icmp eq i8 %35, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %36 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %bf.load2.1 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load2.1)
  %tobool.not.1 = icmp sgt i32 %bf.load2.1, -1
  br i1 %tobool.not.1, label %if.end.1, label %if.then.1

if.then.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear.i.1 = and i32 %bf.load2.1, 2147483647
  %37 = ptrtoint ptr %vlan_present to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %bf.clear.i.1, ptr %vlan_present, align 2
  br label %for.inc.1

if.end.1:                                         ; preds = %for.body.1
  %38 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol, align 8
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %39, label %if.end.1.for.inc.1_crit_edge [
    i16 -32512, label %sw.bb.1
    i16 -30620, label %sw.bb5.1
  ]

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

sw.bb5.1:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %43 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.1 = zext i16 %44 to i32
  %add.ptr.i.i.1 = getelementptr i8, ptr %42, i32 20
  %add.ptr1.i.1 = getelementptr i8, ptr %add.ptr.i.i.1, i32 %conv.i.i.1
  %45 = ptrtoint ptr %add.ptr1.i.1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr1.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 87, i16 %46)
  %switch.selectcmp.i.1 = icmp eq i16 %46, 87
  %switch.select.i.1 = select i1 %switch.selectcmp.i.1, i16 -31011, i16 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %46)
  %switch.selectcmp3.i.1 = icmp eq i16 %46, 33
  %switch.select4.i.1 = select i1 %switch.selectcmp3.i.1, i16 2048, i16 %switch.select.i.1
  %47 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %switch.select4.i.1, ptr %protocol, align 8
  %call8.1 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #4
  %48 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i23, align 4
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i25.1 = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i26.1 = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i27.1 = sub i32 %sub.ptr.lhs.cast.i25.1, %sub.ptr.rhs.cast.i26.1
  %conv.i28.1 = trunc i32 %sub.ptr.sub.i27.1 to i16
  %52 = ptrtoint ptr %network_header.i29 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i28.1, ptr %network_header.i29, align 4
  br label %for.inc.1

sw.bb.1:                                          ; preds = %if.end.1
  %53 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i23, align 4
  %55 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len1.i, align 4
  %sub.i.1 = add i32 %56, -4
  store i32 %sub.i.1, ptr %len1.i, align 4
  %57 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.1, i32 %58)
  %cmp.i.1 = icmp ult i32 %sub.i.1, %58
  br i1 %cmp.i.1, label %sw.bb.1.do.body4.i_crit_edge, label %__skb_pull.exit.1, !prof !16

sw.bb.1.do.body4.i_crit_edge:                     ; preds = %sw.bb.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i

__skb_pull.exit.1:                                ; preds = %sw.bb.1
  %add.ptr.i.1 = getelementptr i8, ptr %54, i32 4
  %59 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i.1, ptr %data.i23, align 4
  %h_vlan_encapsulated_proto.i.1 = getelementptr inbounds %struct.vlan_hdr, ptr %54, i32 0, i32 1
  %60 = ptrtoint ptr %h_vlan_encapsulated_proto.i.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %h_vlan_encapsulated_proto.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %61)
  %cmp.i.i.1 = icmp ugt i16 %61, 1535
  br i1 %cmp.i.i.1, label %__skb_pull.exit.1.vlan_set_encap_proto.exit.1_crit_edge, label %if.end.i.1

__skb_pull.exit.1.vlan_set_encap_proto.exit.1_crit_edge: ; preds = %__skb_pull.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %vlan_set_encap_proto.exit.1

if.end.i.1:                                       ; preds = %__skb_pull.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %63)
  %cmp.i21.1 = icmp eq i16 %63, -1
  %..1 = select i1 %cmp.i21.1, i16 1, i16 4
  br label %vlan_set_encap_proto.exit.1

vlan_set_encap_proto.exit.1:                      ; preds = %if.end.i.1, %__skb_pull.exit.1.vlan_set_encap_proto.exit.1_crit_edge
  %.sink.1 = phi i16 [ %61, %__skb_pull.exit.1.vlan_set_encap_proto.exit.1_crit_edge ], [ %..1, %if.end.i.1 ]
  %64 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %.sink.1, ptr %protocol, align 8
  %65 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.1 = ptrtoint ptr %add.ptr.i.1 to i32
  %sub.ptr.rhs.cast.i.1 = ptrtoint ptr %66 to i32
  %sub.ptr.sub.i.1 = sub i32 %sub.ptr.lhs.cast.i.1, %sub.ptr.rhs.cast.i.1
  %conv.i.1 = trunc i32 %sub.ptr.sub.i.1 to i16
  %67 = ptrtoint ptr %network_header.i29 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i.1, ptr %network_header.i29, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %vlan_set_encap_proto.exit.1, %sw.bb5.1, %if.end.1.for.inc.1_crit_edge, %if.then.1
  %68 = ptrtoint ptr %encap_num to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.1 = load i8, ptr %encap_num, align 2
  %69 = and i8 %bf.load.1, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %69)
  %cmp.1 = icmp eq i8 %69, 6
  br i1 %cmp.1, label %for.body.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %70 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %bf.load2.2 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load2.2)
  %tobool.not.2 = icmp sgt i32 %bf.load2.2, -1
  br i1 %tobool.not.2, label %if.end.2, label %if.then.2

if.then.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear.i.2 = and i32 %bf.load2.2, 2147483647
  %71 = ptrtoint ptr %vlan_present to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %bf.clear.i.2, ptr %vlan_present, align 2
  br label %for.end

if.end.2:                                         ; preds = %for.body.2
  %72 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %protocol, align 8
  %74 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %73, label %if.end.2.for.end_crit_edge [
    i16 -32512, label %sw.bb.2
    i16 -30620, label %sw.bb5.2
  ]

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

sw.bb5.2:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i, align 8
  %77 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.2 = zext i16 %78 to i32
  %add.ptr.i.i.2 = getelementptr i8, ptr %76, i32 20
  %add.ptr1.i.2 = getelementptr i8, ptr %add.ptr.i.i.2, i32 %conv.i.i.2
  %79 = ptrtoint ptr %add.ptr1.i.2 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr1.i.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 87, i16 %80)
  %switch.selectcmp.i.2 = icmp eq i16 %80, 87
  %switch.select.i.2 = select i1 %switch.selectcmp.i.2, i16 -31011, i16 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %80)
  %switch.selectcmp3.i.2 = icmp eq i16 %80, 33
  %switch.select4.i.2 = select i1 %switch.selectcmp3.i.2, i16 2048, i16 %switch.select.i.2
  %81 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %switch.select4.i.2, ptr %protocol, align 8
  %call8.2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #4
  %82 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i23, align 4
  %84 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i25.2 = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i26.2 = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i27.2 = sub i32 %sub.ptr.lhs.cast.i25.2, %sub.ptr.rhs.cast.i26.2
  %conv.i28.2 = trunc i32 %sub.ptr.sub.i27.2 to i16
  %86 = ptrtoint ptr %network_header.i29 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i28.2, ptr %network_header.i29, align 4
  br label %for.end

sw.bb.2:                                          ; preds = %if.end.2
  %87 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i23, align 4
  %89 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len1.i, align 4
  %sub.i.2 = add i32 %90, -4
  store i32 %sub.i.2, ptr %len1.i, align 4
  %91 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.2, i32 %92)
  %cmp.i.2 = icmp ult i32 %sub.i.2, %92
  br i1 %cmp.i.2, label %sw.bb.2.do.body4.i_crit_edge, label %__skb_pull.exit.2, !prof !16

sw.bb.2.do.body4.i_crit_edge:                     ; preds = %sw.bb.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i

__skb_pull.exit.2:                                ; preds = %sw.bb.2
  %add.ptr.i.2 = getelementptr i8, ptr %88, i32 4
  %93 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr.i.2, ptr %data.i23, align 4
  %h_vlan_encapsulated_proto.i.2 = getelementptr inbounds %struct.vlan_hdr, ptr %88, i32 0, i32 1
  %94 = ptrtoint ptr %h_vlan_encapsulated_proto.i.2 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %h_vlan_encapsulated_proto.i.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %95)
  %cmp.i.i.2 = icmp ugt i16 %95, 1535
  br i1 %cmp.i.i.2, label %__skb_pull.exit.2.vlan_set_encap_proto.exit.2_crit_edge, label %if.end.i.2

__skb_pull.exit.2.vlan_set_encap_proto.exit.2_crit_edge: ; preds = %__skb_pull.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %vlan_set_encap_proto.exit.2

if.end.i.2:                                       ; preds = %__skb_pull.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  %96 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr.i.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %97)
  %cmp.i21.2 = icmp eq i16 %97, -1
  %..2 = select i1 %cmp.i21.2, i16 1, i16 4
  br label %vlan_set_encap_proto.exit.2

vlan_set_encap_proto.exit.2:                      ; preds = %if.end.i.2, %__skb_pull.exit.2.vlan_set_encap_proto.exit.2_crit_edge
  %.sink.2 = phi i16 [ %95, %__skb_pull.exit.2.vlan_set_encap_proto.exit.2_crit_edge ], [ %..2, %if.end.i.2 ]
  %98 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %.sink.2, ptr %protocol, align 8
  %99 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.2 = ptrtoint ptr %add.ptr.i.2 to i32
  %sub.ptr.rhs.cast.i.2 = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i.2 = sub i32 %sub.ptr.lhs.cast.i.2, %sub.ptr.rhs.cast.i.2
  %conv.i.2 = trunc i32 %sub.ptr.sub.i.2 to i16
  %101 = ptrtoint ptr %network_header.i29 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i.2, ptr %network_header.i29, align 4
  br label %for.end

for.end:                                          ; preds = %vlan_set_encap_proto.exit.2, %sw.bb5.2, %if.end.2.for.end_crit_edge, %if.then.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_flow_xmit_xfrm(ptr noundef %skb, ptr nocapture noundef readonly %state, ptr noundef %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %1(ptr noundef %skb) #4
  %2 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %destructor.i, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %entry
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !18

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #4, !srcloc !21
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %call.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i1 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i1, label %land.rhs.i, label %skb_orphan.exit.land.lhs.true.i.i_crit_edge

skb_orphan.exit.land.lhs.true.i.i_crit_edge:      ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i

land.rhs.i:                                       ; preds = %skb_orphan.exit
  %call1.i = tail call i32 @rcu_read_lock_bh_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.rhs.i.land.lhs.true.i.i_crit_edge, !prof !16

land.rhs.i.land.lhs.true.i.i_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1043, i32 noundef 9, ptr noundef null) #4
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %do.end.i, %land.rhs.i.land.lhs.true.i.i_crit_edge, %skb_orphan.exit.land.lhs.true.i.i_crit_edge
  %tobool23.not.i = icmp eq ptr %dst, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %8 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool23.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear30.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear30.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %9 = ptrtoint ptr %dst to i32
  %or31.i = or i32 %9, 1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or31.i, ptr %10, align 8
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %sk = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !16

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #4
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %10, align 8
  %and25.i.i = and i32 %17, -2
  %18 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %output.i, align 4
  %call1.i2 = tail call i32 %20(ptr noundef %13, ptr noundef %15, ptr noundef %skb) #4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_dst_set_noref(ptr nocapture noundef %skb, ptr noundef %dst) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_bh_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !16

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1043, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool23.not = icmp eq ptr %dst, null
  %slow_gro = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %slow_gro to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %slow_gro, align 2
  %bf.load.mask = and i32 %bf.load, 4096
  %bf.shl = select i1 %tobool23.not, i32 %bf.load.mask, i32 4096
  %bf.clear30 = and i32 %bf.load, -4097
  %bf.set = or i32 %bf.shl, %bf.clear30
  store i32 %bf.set, ptr %slow_gro, align 2
  %1 = ptrtoint ptr %dst to i32
  %or31 = or i32 %1, 1
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or31, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_xmit(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_flow_queue_xmit(ptr noundef %net, ptr noundef %skb, ptr noundef %tuplehash, i16 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %tuplehash, i32 0, i32 1, i32 11
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %call = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %2) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %3, align 8
  %h_dest = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %tuplehash, i32 0, i32 1, i32 11, i32 0, i32 3
  %h_source = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %tuplehash, i32 0, i32 1, i32 11, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 49
  %7 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

if.end.dev_hard_header.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 %10(ptr noundef %skb, ptr noundef nonnull %call, i16 noundef zeroext %type, ptr noundef %h_dest, ptr noundef %h_source, i32 noundef %6) #4
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %if.end.dev_hard_header.exit_crit_edge
  %call5 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %dev_hard_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %dev_hard_header.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_offload_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_flow_offload_ipv6_hook(ptr noundef %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %addr.i25.i = alloca %struct.in6_addr, align 4
  %new_addr.i26.i = alloca %struct.in6_addr, align 4
  %addr.i.i = alloca %struct.in6_addr, align 4
  %new_addr.i.i = alloca %struct.in6_addr, align 4
  %tuple = alloca %struct.flow_offload_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tuple) #4
  %0 = call ptr @memset(ptr %tuple, i32 0, i32 76)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol, align 8
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %2, label %entry.cleanup_crit_edge [
    i16 -31011, label %entry.if.end_crit_edge
    i16 -32512, label %sw.bb.i
    i16 -30620, label %sw.bb4.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %9)
  %cmp.i = icmp eq i16 %9, -31011
  br i1 %cmp.i, label %sw.bb.i.if.end_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 20
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 87, i16 %15)
  %switch.selectcmp.i.i = icmp eq i16 %15, 87
  br i1 %switch.selectcmp.i.i, label %sw.bb4.i.if.end_crit_edge, label %sw.bb4.i.cleanup_crit_edge

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb4.i.if.end_crit_edge:                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %sw.bb4.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge, %entry.if.end_crit_edge
  %offset.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 4, %sw.bb.i.if.end_crit_edge ], [ 8, %sw.bb4.i.if.end_crit_edge ]
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %in, align 4
  %add.i = add nuw nsw i32 %offset.1, 40
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.if.end.i_crit_edge, !prof !16

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %19, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_may_pull.exit.i, !prof !16

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #4
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

pskb_may_pull.exit.i.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %head.i.i153 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i153, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i154 = zext i16 %25 to i32
  %add.ptr.i.i155 = getelementptr i8, ptr %23, i32 %conv.i.i154
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i155, i32 %offset.1
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i, i32 0, i32 3
  %26 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nexthdr.i, align 2
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %27, label %if.end.i.cleanup_crit_edge [
    i8 6, label %if.end.i.sw.epilog.i_crit_edge
    i8 17, label %sw.bb2.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.end.i.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ 8, %sw.bb2.i ], [ 20, %if.end.i.sw.epilog.i_crit_edge ]
  %hop_limit.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i, i32 0, i32 4
  %29 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hop_limit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp.i156 = icmp ult i8 %30, 2
  br i1 %cmp.i156, label %sw.epilog.i.cleanup_crit_edge, label %if.end6.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.i:                                        ; preds = %sw.epilog.i
  %add7.i = add nuw nsw i32 %storemerge.i, %add.i
  %31 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i.i.i, align 4
  %33 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i43.i = sub i32 %32, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %sub.i.i43.i)
  %cmp.not.i44.i = icmp ugt i32 %add7.i, %sub.i.i43.i
  br i1 %cmp.not.i44.i, label %if.end.i46.i, label %if.end6.i.if.end10.i_crit_edge, !prof !16

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.end.i46.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add7.i)
  %cmp3.i45.i = icmp ult i32 %32, %add7.i
  br i1 %cmp3.i45.i, label %if.end.i46.i.cleanup_crit_edge, label %pskb_may_pull.exit52.i, !prof !16

if.end.i46.i.cleanup_crit_edge:                   ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pskb_may_pull.exit52.i:                           ; preds = %if.end.i46.i
  %sub.i47.i = sub i32 %add7.i, %sub.i.i43.i
  %call13.i48.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i47.i) #4
  %cmp14.i49.not.i = icmp eq ptr %call13.i48.i, null
  br i1 %cmp14.i49.not.i, label %pskb_may_pull.exit52.i.cleanup_crit_edge, label %pskb_may_pull.exit52.i.if.end10.i_crit_edge

pskb_may_pull.exit52.i.if.end10.i_crit_edge:      ; preds = %pskb_may_pull.exit52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

pskb_may_pull.exit52.i.cleanup_crit_edge:         ; preds = %pskb_may_pull.exit52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10.i:                                       ; preds = %pskb_may_pull.exit52.i.if.end10.i_crit_edge, %if.end6.i.if.end10.i_crit_edge
  %35 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i153, align 8
  %37 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i, align 4
  %conv.i55.i = zext i16 %38 to i32
  %add.ptr.i56.i = getelementptr i8, ptr %36, i32 %conv.i55.i
  %add.ptr12.i = getelementptr i8, ptr %add.ptr.i56.i, i32 %offset.1
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i56.i, i32 %add.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr12.i, i32 0, i32 5
  %39 = call ptr @memcpy(ptr %tuple, ptr %saddr.i, i32 16)
  %40 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 1
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr12.i, i32 0, i32 6
  %41 = call ptr @memcpy(ptr %40, ptr %daddr.i, i32 16)
  %42 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr14.i, align 2
  %44 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %43, ptr %44, align 4
  %dest.i = getelementptr inbounds %struct.flow_ports, ptr %add.ptr14.i, i32 0, i32 1
  %46 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dest.i, align 2
  %dst_port.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %dst_port.i, align 2
  %l3proto.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 4
  %49 = ptrtoint ptr %l3proto.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %l3proto.i, align 4
  %nexthdr15.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr12.i, i32 0, i32 3
  %50 = ptrtoint ptr %nexthdr15.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nexthdr15.i, align 2
  %l4proto.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 5
  %52 = ptrtoint ptr %l4proto.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %l4proto.i, align 1
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 17
  %53 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ifindex.i, align 4
  %iifidx.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 3
  %55 = ptrtoint ptr %iifidx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %iifidx.i, align 4
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %56 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end10.i.if.end.i61.i_crit_edge, label %if.then.i.i

if.end10.i.if.end.i61.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i61.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %57 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vlan_tci.i.i, align 2
  %encap.i.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 6
  %59 = ptrtoint ptr %encap.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %encap.i.i, align 2
  %vlan_proto.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %60 = ptrtoint ptr %vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vlan_proto.i.i, align 8
  %proto.i.i = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 6, i32 0, i32 1
  %62 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %proto.i.i, align 4
  br label %if.end.i61.i

if.end.i61.i:                                     ; preds = %if.then.i.i, %if.end10.i.if.end.i61.i_crit_edge
  %i.0.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %if.end10.i.if.end.i61.i_crit_edge ]
  %63 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %protocol, align 8
  %65 = zext i16 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %64, label %if.end.i61.i.if.end6_crit_edge [
    i16 -32512, label %sw.bb.i.i
    i16 -30620, label %sw.bb10.i.i
  ]

if.end.i61.i.if.end6_crit_edge:                   ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

sw.bb.i.i:                                        ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #6
  %mac_header.i.i.i157 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %66 = ptrtoint ptr %mac_header.i.i.i157 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %mac_header.i.i.i157, align 2
  %conv.i.i.i158 = zext i16 %67 to i32
  %add.ptr.i.i.i159 = getelementptr i8, ptr %36, i32 %conv.i.i.i158
  %h_vlan_TCI.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i159, i32 0, i32 2
  br label %sw.epilog.sink.split.i.i

sw.bb10.i.i:                                      ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #6
  %mac_header.i38.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %68 = ptrtoint ptr %mac_header.i38.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %mac_header.i38.i.i, align 2
  %conv.i39.i.i = zext i16 %69 to i32
  %add.ptr.i40.i.i = getelementptr i8, ptr %36, i32 %conv.i39.i.i
  %sid.i.i = getelementptr inbounds %struct.pppoe_hdr, ptr %add.ptr.i40.i.i, i32 0, i32 2
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb10.i.i, %sw.bb.i.i
  %.sink.in.i.i = phi ptr [ %sid.i.i, %sw.bb10.i.i ], [ %h_vlan_TCI.i.i, %sw.bb.i.i ]
  %70 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %.sink.i.i = load i16, ptr %.sink.in.i.i, align 1
  %arrayidx13.i.i = getelementptr %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 6, i32 %i.0.i.i
  %71 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %.sink.i.i, ptr %arrayidx13.i.i, align 2
  %proto18.i.i = getelementptr %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 6, i32 %i.0.i.i, i32 1
  %72 = ptrtoint ptr %proto18.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %64, ptr %proto18.i.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %sw.epilog.sink.split.i.i, %if.end.i61.i.if.end6_crit_edge
  %call7 = call ptr @flow_offload_lookup(ptr noundef %priv, ptr noundef nonnull %tuple) #4
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %dir13 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %call7, i32 0, i32 1, i32 8
  %73 = ptrtoint ptr %dir13 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load = load i8, ptr %dir13, align 2
  %bf.lshr = lshr i8 %bf.load, 6
  %conv14 = zext i8 %bf.lshr to i32
  %.neg = mul nsw i32 %conv14, -80
  %add.ptr = getelementptr i8, ptr %call7, i32 %.neg
  %arrayidx = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %add.ptr, i32 0, i32 %conv14
  %mtu17 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %arrayidx, i32 0, i32 1, i32 10
  %74 = ptrtoint ptr %mtu17 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mtu17, align 4
  %conv18 = zext i16 %75 to i32
  %add = add nuw nsw i32 %offset.1, %conv18
  %76 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %add)
  %cmp.not.i = icmp ugt i32 %77, %add
  br i1 %cmp.not.i, label %if.end.i161, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end.i161:                                      ; preds = %if.end11
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %78 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool.i.not.i = icmp eq i16 %81, 0
  br i1 %tobool.i.not.i, label %if.end.i161.cleanup_crit_edge, label %land.lhs.true.i

if.end.i161.cleanup_crit_edge:                    ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i161
  %call1.i = call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %add) #4
  br i1 %call1.i, label %land.lhs.true.i.if.end22_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.i.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %82 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i153, align 8
  %84 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i.i, align 4
  %conv.i = zext i16 %85 to i32
  %add.ptr.i163 = getelementptr i8, ptr %83, i32 %conv.i
  %add.ptr24 = getelementptr i8, ptr %add.ptr.i163, i32 %offset.1
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr24, i32 0, i32 3
  %86 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %87)
  %cmp.not.i164 = icmp eq i8 %87, 6
  br i1 %cmp.not.i164, label %if.end.i170, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.end.i170:                                      ; preds = %if.end22
  %add.ptr.i169 = getelementptr i8, ptr %add.ptr.i163, i32 %add.i
  %fin.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i169, i32 0, i32 4
  %88 = ptrtoint ptr %fin.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i = load i16, ptr %fin.i, align 4
  %89 = and i16 %bf.load.i, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %.not.i = icmp eq i16 %89, 0
  br i1 %.not.i, label %if.end.i170.if.end30_crit_edge, label %nf_flow_state_check.exit, !prof !18

if.end.i170.if.end30_crit_edge:                   ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

nf_flow_state_check.exit:                         ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #6
  call void @flow_offload_teardown(ptr noundef %add.ptr) #4
  br label %cleanup

if.end30:                                         ; preds = %if.end.i170.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %90 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i.i172 = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i172)
  %tobool.not.i.i173 = icmp sgt i8 %bf.load.i.i172, -1
  br i1 %tobool.not.i.i173, label %if.end30.if.end35_crit_edge, label %skb_cloned.exit.i

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

skb_cloned.exit.i:                                ; preds = %if.end30
  %end.i.i.i174 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %91 = ptrtoint ptr %end.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i.i.i174, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %92, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #4
  %93 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %94, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end35_crit_edge, label %land.lhs.true.i175

skb_cloned.exit.i.if.end35_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true.i175:                               ; preds = %skb_cloned.exit.i
  %95 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i175.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i

land.lhs.true.i175.skb_clone_writable.exit.i_crit_edge: ; preds = %land.lhs.true.i175
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_clone_writable.exit.i

skb_header_cloned.exit.i.i:                       ; preds = %land.lhs.true.i175
  %96 = ptrtoint ptr %end.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %end.i.i.i174, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %97, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #4
  %98 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %99, 65535
  %shr.i.i.i = ashr i32 %99, 16
  %sub.i.i.i176 = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i176)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i176, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge

skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_try_make_writable.exit

skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_clone_writable.exit.i

skb_clone_writable.exit.i:                        ; preds = %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, %land.lhs.true.i175.skb_clone_writable.exit.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %100 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i.i, align 4
  %102 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head.i.i153, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i.i.i = add i32 %add7.i, %sub.ptr.lhs.cast.i.i.i
  %add.i.i = sub i32 %sub.ptr.sub.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %hdr_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %104 = ptrtoint ptr %hdr_len.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %hdr_len.i.i, align 2
  %conv.i.i178 = zext i16 %105 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i178)
  %cmp.i7.not.i = icmp ugt i32 %add.i.i, %conv.i.i178
  br i1 %cmp.i7.not.i, label %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, label %skb_clone_writable.exit.i.if.end35_crit_edge

skb_clone_writable.exit.i.if.end35_crit_edge:     ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_try_make_writable.exit

skb_try_make_writable.exit:                       ; preds = %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge
  %call3.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i.not, label %skb_try_make_writable.exit.if.end35_crit_edge, label %skb_try_make_writable.exit.cleanup_crit_edge

skb_try_make_writable.exit.cleanup_crit_edge:     ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

skb_try_make_writable.exit.if.end35_crit_edge:    ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end35:                                         ; preds = %skb_try_make_writable.exit.if.end35_crit_edge, %skb_clone_writable.exit.i.if.end35_crit_edge, %skb_cloned.exit.i.if.end35_crit_edge, %if.end30.if.end35_crit_edge
  call void @flow_offload_refresh(ptr noundef %priv, ptr noundef %add.ptr) #4
  call fastcc void @nf_flow_encap_pop(ptr noundef %skb, ptr noundef nonnull %call7)
  %106 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %head.i.i153, align 8
  %108 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i181 = zext i16 %109 to i32
  %add.ptr.i.i182 = getelementptr i8, ptr %107, i32 %conv.i.i181
  %flags.i = getelementptr inbounds %struct.flow_offload, ptr %add.ptr, i32 0, i32 2
  %110 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end35.if.end.i185_crit_edge, label %if.then.i

if.end35.if.end.i185_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i185

if.then.i:                                        ; preds = %if.end35
  %nexthdr.i183 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i182, i32 0, i32 3
  %112 = ptrtoint ptr %nexthdr.i183 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %nexthdr.i183, align 2
  call void @nf_flow_snat_port(ptr noundef %add.ptr, ptr noundef %skb, i32 noundef 40, i8 noundef zeroext %113, i32 noundef %conv14) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i.i) #4
  %114 = call ptr @memset(ptr %addr.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_addr.i.i) #4
  %115 = call ptr @memset(ptr %new_addr.i.i, i32 255, i32 16)
  %116 = zext i32 %conv14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %conv14, label %if.then.i.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i184
    i32 1, label %sw.bb2.i.i
  ]

if.then.i.sw.epilog.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb.i.i184:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %saddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i182, i32 0, i32 5
  %117 = call ptr @memcpy(ptr %addr.i.i, ptr %saddr.i.i, i32 16)
  %118 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %add.ptr, i32 0, i32 1, i32 1, i32 1
  %119 = call ptr @memcpy(ptr %new_addr.i.i, ptr %118, i32 16)
  %120 = call ptr @memmove(ptr %saddr.i.i, ptr %118, i32 16)
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i182, i32 0, i32 6
  %121 = call ptr @memcpy(ptr %addr.i.i, ptr %daddr.i.i, i32 16)
  %tuple5.i.i = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %add.ptr, i32 0, i32 1
  %122 = call ptr @memcpy(ptr %new_addr.i.i, ptr %tuple5.i.i, i32 16)
  %123 = call ptr @memmove(ptr %daddr.i.i, ptr %tuple5.i.i, i32 16)
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %sw.bb.i.i184, %if.then.i.sw.epilog.i.i_crit_edge
  %124 = ptrtoint ptr %nexthdr.i183 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %nexthdr.i183, align 2
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %125, label %sw.epilog.i.i.nf_flow_snat_ipv6.exit.i_crit_edge [
    i8 6, label %sw.bb.i.i.i
    i8 17, label %sw.bb1.i.i.i
  ]

sw.epilog.i.i.nf_flow_snat_ipv6.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_snat_ipv6.exit.i

sw.bb.i.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %127 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %head.i.i153, align 8
  %129 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %130 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %128, i32 %conv.i.i.i.i.i
  %check.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 56
  call void @inet_proto_csum_replace16(ptr noundef %check.i.i.i.i, ptr noundef %skb, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %new_addr.i.i, i1 noundef zeroext true) #4
  br label %nf_flow_snat_ipv6.exit.i

sw.bb1.i.i.i:                                     ; preds = %sw.epilog.i.i
  %131 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %head.i.i153, align 8
  %133 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i3.i.i.i = zext i16 %134 to i32
  %add.ptr.i.i4.i.i.i = getelementptr i8, ptr %132, i32 %conv.i.i3.i.i.i
  %check.i5.i.i.i = getelementptr i8, ptr %add.ptr.i.i4.i.i.i, i32 46
  %135 = ptrtoint ptr %check.i5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %check.i5.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool.not.i.i.i.i = icmp eq i16 %136, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %sw.bb1.i.i.i.if.then.i.i.i.i_crit_edge

sw.bb1.i.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %sw.bb1.i.i.i
  %ip_summed.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %137 = ptrtoint ptr %ip_summed.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load.i.i.i.i = load i16, ptr %ip_summed.i.i.i.i, align 8
  %138 = and i16 %bf.load.i.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %138)
  %cmp.i.i.i.i = icmp eq i16 %138, 1536
  br i1 %cmp.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.nf_flow_snat_ipv6.exit.i_crit_edge

lor.lhs.false.i.i.i.i.nf_flow_snat_ipv6.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_snat_ipv6.exit.i

lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, %sw.bb1.i.i.i.if.then.i.i.i.i_crit_edge
  call void @inet_proto_csum_replace16(ptr noundef %check.i5.i.i.i, ptr noundef %skb, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %new_addr.i.i, i1 noundef zeroext true) #4
  %139 = ptrtoint ptr %check.i5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %check.i5.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool7.not.i.i.i.i = icmp eq i16 %140, 0
  br i1 %tobool7.not.i.i.i.i, label %if.then8.i.i.i.i, label %if.then.i.i.i.i.nf_flow_snat_ipv6.exit.i_crit_edge

if.then.i.i.i.i.nf_flow_snat_ipv6.exit.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_snat_ipv6.exit.i

if.then8.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %141 = ptrtoint ptr %check.i5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 -1, ptr %check.i5.i.i.i, align 2
  br label %nf_flow_snat_ipv6.exit.i

nf_flow_snat_ipv6.exit.i:                         ; preds = %if.then8.i.i.i.i, %if.then.i.i.i.i.nf_flow_snat_ipv6.exit.i_crit_edge, %lor.lhs.false.i.i.i.i.nf_flow_snat_ipv6.exit.i_crit_edge, %sw.bb.i.i.i, %sw.epilog.i.i.nf_flow_snat_ipv6.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_addr.i.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i.i) #4
  br label %if.end.i185

if.end.i185:                                      ; preds = %nf_flow_snat_ipv6.exit.i, %if.end35.if.end.i185_crit_edge
  %142 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %flags.i, align 4
  %144 = and i32 %143, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool3.not.i = icmp eq i32 %144, 0
  br i1 %tobool3.not.i, label %if.end.i185.nf_flow_nat_ipv6.exit_crit_edge, label %if.then4.i

if.end.i185.nf_flow_nat_ipv6.exit_crit_edge:      ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_nat_ipv6.exit

if.then4.i:                                       ; preds = %if.end.i185
  %nexthdr5.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i182, i32 0, i32 3
  %145 = ptrtoint ptr %nexthdr5.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nexthdr5.i, align 2
  call void @nf_flow_dnat_port(ptr noundef %add.ptr, ptr noundef %skb, i32 noundef 40, i8 noundef zeroext %146, i32 noundef %conv14) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i25.i) #4
  %147 = call ptr @memset(ptr %addr.i25.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_addr.i26.i) #4
  %148 = call ptr @memset(ptr %new_addr.i26.i, i32 255, i32 16)
  %149 = zext i32 %conv14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %conv14, label %if.then4.i.sw.epilog.i32.i_crit_edge [
    i32 0, label %sw.bb.i28.i
    i32 1, label %sw.bb2.i30.i
  ]

if.then4.i.sw.epilog.i32.i_crit_edge:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i32.i

sw.bb.i28.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  %daddr.i27.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i182, i32 0, i32 6
  %150 = call ptr @memcpy(ptr %addr.i25.i, ptr %daddr.i27.i, i32 16)
  %tuple.i.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %add.ptr, i32 0, i32 1, i32 1
  %151 = call ptr @memcpy(ptr %new_addr.i26.i, ptr %tuple.i.i, i32 16)
  %152 = call ptr @memmove(ptr %daddr.i27.i, ptr %tuple.i.i, i32 16)
  br label %sw.epilog.i32.i

sw.bb2.i30.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  %saddr.i29.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i182, i32 0, i32 5
  %153 = call ptr @memcpy(ptr %addr.i25.i, ptr %saddr.i29.i, i32 16)
  %154 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %add.ptr, i32 0, i32 1, i32 1
  %155 = call ptr @memcpy(ptr %new_addr.i26.i, ptr %154, i32 16)
  %156 = call ptr @memmove(ptr %saddr.i29.i, ptr %154, i32 16)
  br label %sw.epilog.i32.i

sw.epilog.i32.i:                                  ; preds = %sw.bb2.i30.i, %sw.bb.i28.i, %if.then4.i.sw.epilog.i32.i_crit_edge
  %157 = ptrtoint ptr %nexthdr5.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %nexthdr5.i, align 2
  %159 = zext i8 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %158, label %sw.epilog.i32.i.nf_flow_dnat_ipv6.exit.i_crit_edge [
    i8 6, label %sw.bb.i.i38.i
    i8 17, label %sw.bb1.i.i45.i
  ]

sw.epilog.i32.i.nf_flow_dnat_ipv6.exit.i_crit_edge: ; preds = %sw.epilog.i32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_dnat_ipv6.exit.i

sw.bb.i.i38.i:                                    ; preds = %sw.epilog.i32.i
  call void @__sanitizer_cov_trace_pc() #6
  %160 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %head.i.i153, align 8
  %162 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i.i35.i = zext i16 %163 to i32
  %add.ptr.i.i.i.i36.i = getelementptr i8, ptr %161, i32 %conv.i.i.i.i35.i
  %check.i.i.i37.i = getelementptr i8, ptr %add.ptr.i.i.i.i36.i, i32 56
  call void @inet_proto_csum_replace16(ptr noundef %check.i.i.i37.i, ptr noundef %skb, ptr noundef nonnull %addr.i25.i, ptr noundef nonnull %new_addr.i26.i, i1 noundef zeroext true) #4
  br label %nf_flow_dnat_ipv6.exit.i

sw.bb1.i.i45.i:                                   ; preds = %sw.epilog.i32.i
  %164 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %head.i.i153, align 8
  %166 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i3.i.i41.i = zext i16 %167 to i32
  %add.ptr.i.i4.i.i42.i = getelementptr i8, ptr %165, i32 %conv.i.i3.i.i41.i
  %check.i5.i.i43.i = getelementptr i8, ptr %add.ptr.i.i4.i.i42.i, i32 46
  %168 = ptrtoint ptr %check.i5.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %check.i5.i.i43.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %tobool.not.i.i.i44.i = icmp eq i16 %169, 0
  br i1 %tobool.not.i.i.i44.i, label %lor.lhs.false.i.i.i49.i, label %sw.bb1.i.i45.i.if.then.i.i.i51.i_crit_edge

sw.bb1.i.i45.i.if.then.i.i.i51.i_crit_edge:       ; preds = %sw.bb1.i.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i51.i

lor.lhs.false.i.i.i49.i:                          ; preds = %sw.bb1.i.i45.i
  %ip_summed.i.i.i46.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %170 = ptrtoint ptr %ip_summed.i.i.i46.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load.i.i.i47.i = load i16, ptr %ip_summed.i.i.i46.i, align 8
  %171 = and i16 %bf.load.i.i.i47.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %171)
  %cmp.i.i.i48.i = icmp eq i16 %171, 1536
  br i1 %cmp.i.i.i48.i, label %lor.lhs.false.i.i.i49.i.if.then.i.i.i51.i_crit_edge, label %lor.lhs.false.i.i.i49.i.nf_flow_dnat_ipv6.exit.i_crit_edge

lor.lhs.false.i.i.i49.i.nf_flow_dnat_ipv6.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_dnat_ipv6.exit.i

lor.lhs.false.i.i.i49.i.if.then.i.i.i51.i_crit_edge: ; preds = %lor.lhs.false.i.i.i49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i51.i

if.then.i.i.i51.i:                                ; preds = %lor.lhs.false.i.i.i49.i.if.then.i.i.i51.i_crit_edge, %sw.bb1.i.i45.i.if.then.i.i.i51.i_crit_edge
  call void @inet_proto_csum_replace16(ptr noundef %check.i5.i.i43.i, ptr noundef %skb, ptr noundef nonnull %addr.i25.i, ptr noundef nonnull %new_addr.i26.i, i1 noundef zeroext true) #4
  %172 = ptrtoint ptr %check.i5.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %check.i5.i.i43.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %173)
  %tobool7.not.i.i.i50.i = icmp eq i16 %173, 0
  br i1 %tobool7.not.i.i.i50.i, label %if.then8.i.i.i52.i, label %if.then.i.i.i51.i.nf_flow_dnat_ipv6.exit.i_crit_edge

if.then.i.i.i51.i.nf_flow_dnat_ipv6.exit.i_crit_edge: ; preds = %if.then.i.i.i51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_flow_dnat_ipv6.exit.i

if.then8.i.i.i52.i:                               ; preds = %if.then.i.i.i51.i
  call void @__sanitizer_cov_trace_pc() #6
  %174 = ptrtoint ptr %check.i5.i.i43.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 -1, ptr %check.i5.i.i43.i, align 2
  br label %nf_flow_dnat_ipv6.exit.i

nf_flow_dnat_ipv6.exit.i:                         ; preds = %if.then8.i.i.i52.i, %if.then.i.i.i51.i.nf_flow_dnat_ipv6.exit.i_crit_edge, %lor.lhs.false.i.i.i49.i.nf_flow_dnat_ipv6.exit.i_crit_edge, %sw.bb.i.i38.i, %sw.epilog.i32.i.nf_flow_dnat_ipv6.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_addr.i26.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i25.i) #4
  br label %nf_flow_nat_ipv6.exit

nf_flow_nat_ipv6.exit:                            ; preds = %nf_flow_dnat_ipv6.exit.i, %if.end.i185.nf_flow_nat_ipv6.exit_crit_edge
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i182, i32 0, i32 4
  %175 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %hop_limit, align 1
  %dec = add i8 %176, -1
  store i8 %dec, ptr %hop_limit, align 1
  %177 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 0, ptr %177, align 8
  %flags = getelementptr inbounds %struct.nf_flowtable, ptr %priv, i32 0, i32 5
  %179 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %flags, align 4
  %and = and i32 %180, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %nf_flow_nat_ipv6.exit.if.end44_crit_edge, label %if.then38

nf_flow_nat_ipv6.exit.if.end44_crit_edge:         ; preds = %nf_flow_nat_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then38:                                        ; preds = %nf_flow_nat_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ct = getelementptr inbounds %struct.flow_offload, ptr %add.ptr, i32 0, i32 1
  %181 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ct, align 4
  %183 = ptrtoint ptr %dir13 to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load41 = load i8, ptr %dir13, align 2
  %bf.lshr42 = lshr i8 %bf.load41, 6
  %conv43 = zext i8 %bf.lshr42 to i32
  %184 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %len.i.i.i, align 4
  call void @nf_ct_acct_add(ptr noundef %182, i32 noundef %conv43, i32 noundef 1, i32 noundef %185) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %nf_flow_nat_ipv6.exit.if.end44_crit_edge
  %186 = ptrtoint ptr %dir13 to i32
  call void @__asan_load1_noabort(i32 %186)
  %bf.load46 = load i8, ptr %dir13, align 2
  %bf.lshr47 = lshr i8 %bf.load46, 3
  %bf.clear = and i8 %bf.lshr47, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear)
  %cmp49 = icmp eq i8 %bf.clear, 2
  br i1 %cmp49, label %if.then57, label %if.end65, !prof !16

if.then57:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %187 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %call7, i32 0, i32 1, i32 11
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %190 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %191 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %193, i32 0, i32 17
  %194 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ifindex, align 4
  %196 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %cb, align 8
  %flags63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %197 = ptrtoint ptr %flags63 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 2, ptr %flags63, align 8
  call fastcc void @nf_flow_xmit_xfrm(ptr noundef %skb, ptr noundef %state, ptr noundef %189)
  br label %cleanup

if.end65:                                         ; preds = %if.end44
  %conv48 = zext i8 %bf.clear to i32
  %198 = zext i32 %conv48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %conv48, label %if.end65.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb84
  ]

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end65
  %199 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %call7, i32 0, i32 1, i32 11
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %204 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %203, ptr %204, align 8
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %201, i32 0, i32 7
  %206 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %rt6i_flags.i, align 4
  %and.i = and i32 %207, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i187 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i187, label %if.else.i, label %if.then.i188

if.then.i188:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %rt6i_gateway.i = getelementptr inbounds %struct.rt6_info, ptr %201, i32 0, i32 5
  br label %rt6_nexthop.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %tobool76.not = icmp ult i8 %bf.load, 64
  %lnot.ext78 = zext i1 %tobool76.not to i32
  %arrayidx79 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %add.ptr, i32 0, i32 %lnot.ext78
  %tuple80 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %arrayidx79, i32 0, i32 1
  %and2.i = and i32 %207, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i189 = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i189, label %if.else.i.rt6_nexthop.exit_crit_edge, label %if.then6.i, !prof !18

if.else.i.rt6_nexthop.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rt6_nexthop.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %201, i32 0, i32 3
  br label %rt6_nexthop.exit

rt6_nexthop.exit:                                 ; preds = %if.then6.i, %if.else.i.rt6_nexthop.exit_crit_edge, %if.then.i188
  %retval.0.i190 = phi ptr [ %rt6i_gateway.i, %if.then.i188 ], [ %rt6i_dst.i, %if.then6.i ], [ %tuple80, %if.else.i.rt6_nexthop.exit_crit_edge ]
  call fastcc void @skb_dst_set_noref(ptr noundef %skb, ptr noundef %201)
  %call83 = call i32 @neigh_xmit(i32 noundef 1, ptr noundef %203, ptr noundef %retval.0.i190, ptr noundef %skb) #4
  br label %cleanup

sw.bb84:                                          ; preds = %if.end65
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %208 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %net, align 4
  %call85 = call fastcc i32 @nf_flow_queue_xmit(ptr noundef %209, ptr noundef %skb, ptr noundef nonnull %call7, i16 noundef zeroext -31011)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %sw.bb84.cleanup_crit_edge

sw.bb84.cleanup_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then88:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #6
  call void @flow_offload_teardown(ptr noundef %add.ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %sw.bb84.cleanup_crit_edge, %rt6_nexthop.exit, %if.end65.cleanup_crit_edge, %if.then57, %skb_try_make_writable.exit.cleanup_crit_edge, %nf_flow_state_check.exit, %land.lhs.true.i.cleanup_crit_edge, %if.end.i161.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %pskb_may_pull.exit52.i.cleanup_crit_edge, %if.end.i46.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %pskb_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then57 ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %nf_flow_state_check.exit ], [ 0, %skb_try_make_writable.exit.cleanup_crit_edge ], [ -1, %if.end65.cleanup_crit_edge ], [ 0, %if.then88 ], [ %call85, %sw.bb84.cleanup_crit_edge ], [ 2, %rt6_nexthop.exit ], [ 1, %if.end.i161.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %sw.bb4.i.cleanup_crit_edge ], [ 1, %sw.bb.i.cleanup_crit_edge ], [ 1, %pskb_may_pull.exit.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %sw.epilog.i.cleanup_crit_edge ], [ 1, %pskb_may_pull.exit52.i.cleanup_crit_edge ], [ 1, %if.end.i.i.cleanup_crit_edge ], [ 1, %if.end.i46.i.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tuple) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_flow_snat_port(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_flow_dnat_port(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_acct_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace16(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_nf_flow_offload_ip_hook, !1, !"__ksymtab_nf_flow_offload_ip_hook", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_flow_table_ip.c", i32 411, i32 1}
!2 = !{ptr @__ksymtab_nf_flow_offload_ipv6_hook, !3, !"__ksymtab_nf_flow_offload_ipv6_hook", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_flow_table_ip.c", i32 646, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2002, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 6600404}
!20 = !{i64 2154593154, i64 2154593642, i64 2154593191, i64 2154593247, i64 2154593281, i64 2154593305, i64 2154593346, i64 2154593367, i64 2154593395, i64 2154593429}
!21 = !{i64 2154612265, i64 2154612753, i64 2154612302, i64 2154612358, i64 2154612392, i64 2154612416, i64 2154612457, i64 2154612478, i64 2154612506, i64 2154612540}
