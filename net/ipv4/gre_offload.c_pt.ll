; ModuleID = '/llk/IR_all_yes/net/ipv4/gre_offload.c_pt.bc'
source_filename = "../net/ipv4/gre_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
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
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.gre_base_hdr = type { i16, i16 }
%struct.anon.142 = type { i16, i16 }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }

@__initcall__kmod_gre_offload__570_289_gre_offload_init6 = internal global ptr @gre_offload_init, section ".initcall6.init", align 4
@gre_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @gre_gso_segment, ptr @gre_gro_receive, ptr @gre_gro_complete }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"gre_offload\00", align 1
@___asan_gen_.2 = private constant [26 x i8] c"../net/ipv4/gre_offload.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 265, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 1011, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_gre_offload__570_289_gre_offload_init6, ptr @gre_offload, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gre_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_offload_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_add_offload(ptr noundef nonnull @gre_offload, i8 noundef zeroext 47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet6_add_offload(ptr noundef nonnull @gre_offload, i8 noundef zeroext 47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @inet_del_offload(ptr noundef nonnull @gre_offload, i8 noundef zeroext 47) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gre_gso_segment(ptr noundef %skb, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %0 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inner_mac_header.i, align 2
  %conv.i = zext i16 %1 to i32
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i, align 2
  %conv.i222 = zext i16 %3 to i32
  %gepdiff = sub nsw i32 %conv.i, %conv.i222
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header, align 2
  %protocol3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol3, align 8
  %mac_len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %8 = ptrtoint ptr %mac_len4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_len4, align 4
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %10 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %encapsulation, align 8
  %11 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %gepdiff)
  %cmp = icmp ult i32 %gepdiff, 4
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end8, !prof !15

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end8:                                          ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %gepdiff, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %gepdiff, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end8.if.end19_crit_edge, !prof !16

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %gepdiff)
  %cmp3.i = icmp ult i32 %13, %gepdiff
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %pskb_may_pull.exit, !prof !16

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %gepdiff, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_crit_edge, label %pskb_may_pull.exit.if.end19_crit_edge, !prof !16

pskb_may_pull.exit.if.end19_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %pskb_may_pull.exit.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %16 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load21 = load i16, ptr %encapsulation, align 8
  %bf.clear22 = and i16 %bf.load21, -5
  store i16 %bf.clear22, ptr %encapsulation, align 8
  %encap_level = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %17 = ptrtoint ptr %encap_level to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %encap_level, align 4
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %sub.i224 = sub i32 %19, %gepdiff
  store i32 %sub.i224, ptr %len.i.i, align 4
  %20 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i224, i32 %21)
  %cmp.i = icmp ult i32 %sub.i224, %21
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !16

do.body4.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !17
  unreachable

__skb_pull.exit:                                  ; preds = %if.end19
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %23, i32 %gepdiff
  store ptr %add.ptr.i225, ptr %data.i, align 4
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i225 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i228 = trunc i32 %sub.ptr.sub.i to i16
  %26 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i228, ptr %mac_header, align 2
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %27 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %inner_network_header.i.i, align 4
  %conv.i.i = zext i16 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %conv.i.i
  %sub.ptr.lhs.cast.i230 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i232 = sub i32 %sub.ptr.lhs.cast.i230, %sub.ptr.lhs.cast.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %29 = trunc i32 %sub.ptr.sub.i232 to i16
  %conv1.i = add i16 %29, %conv.i228
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %31 = ptrtoint ptr %mac_len4 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %29, ptr %mac_len4, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 8
  %35 = ptrtoint ptr %protocol3 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %protocol3, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gso_type, align 8
  %and = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  %40 = trunc i32 %and to i16
  %41 = lshr exact i16 %40, 6
  %bf.clear37 = and i16 %bf.load21, -7
  %bf.set38 = or i16 %41, %bf.clear37
  %42 = ptrtoint ptr %encapsulation to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %bf.set38, ptr %encapsulation, align 8
  %43 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %hw_enc_features, align 16
  %and39 = and i64 %47, %features
  %and42 = and i64 %and39, -68719476737
  %spec.select = select i1 %tobool29.not, i64 %and39, i64 %and42
  %48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %and.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %__skb_pull.exit.skb_dst.exit_crit_edge, label %land.lhs.true.i

__skb_pull.exit.skb_dst.exit_crit_edge:           ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %__skb_pull.exit
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !16

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #6
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %48, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %__skb_pull.exit.skb_dst.exit_crit_edge
  %52 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %50, %__skb_pull.exit.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %tobool45.not = icmp ult i32 %52, 2
  br i1 %tobool45.not, label %skb_dst.exit.land.end_crit_edge, label %land.rhs

skb_dst.exit.land.end_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %skb_dst.exit
  %and.i244 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i244)
  %tobool.not.i245 = icmp eq i32 %and.i244, 0
  br i1 %tobool.not.i245, label %land.rhs.skb_dst.exit255_crit_edge, label %land.lhs.true.i248

land.rhs.skb_dst.exit255_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit255

land.lhs.true.i248:                               ; preds = %land.rhs
  %call.i246 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool1.not.i247 = icmp eq i32 %call.i246, 0
  br i1 %tobool1.not.i247, label %land.rhs.i251, label %land.lhs.true.i248.skb_dst.exit255_crit_edge

land.lhs.true.i248.skb_dst.exit255_crit_edge:     ; preds = %land.lhs.true.i248
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit255

land.rhs.i251:                                    ; preds = %land.lhs.true.i248
  %call2.i249 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i249)
  %tobool3.not.i250 = icmp eq i32 %call2.i249, 0
  br i1 %tobool3.not.i250, label %do.end.i252, label %land.rhs.i251.skb_dst.exit255_crit_edge, !prof !16

land.rhs.i251.skb_dst.exit255_crit_edge:          ; preds = %land.rhs.i251
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit255

do.end.i252:                                      ; preds = %land.rhs.i251
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #6
  br label %skb_dst.exit255

skb_dst.exit255:                                  ; preds = %do.end.i252, %land.rhs.i251.skb_dst.exit255_crit_edge, %land.lhs.true.i248.skb_dst.exit255_crit_edge, %land.rhs.skb_dst.exit255_crit_edge
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %48, align 8
  %and25.i253 = and i32 %54, -2
  %55 = inttoptr i32 %and25.i253 to ptr
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xfrm.i, align 4
  %tobool48 = icmp ne ptr %57, null
  br label %land.end

land.end:                                         ; preds = %skb_dst.exit255, %skb_dst.exit.land.end_crit_edge
  %58 = phi i1 [ false, %skb_dst.exit.land.end_crit_edge ], [ %tobool48, %skb_dst.exit255 ]
  %brmerge = select i1 %tobool29.not, i1 true, i1 %58
  br i1 %brmerge, label %land.end.land.end57_crit_edge, label %land.rhs53

land.end.land.end57_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end57

land.rhs53:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %43, align 8
  %features54 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 23
  %61 = ptrtoint ptr %features54 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %features54, align 16
  %and55 = and i64 %62, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55)
  %tobool56 = icmp eq i64 %and55, 0
  br label %land.end57

land.end57:                                       ; preds = %land.rhs53, %land.end.land.end57_crit_edge
  %63 = phi i1 [ true, %land.end.land.end57_crit_edge ], [ %tobool56, %land.rhs53 ]
  %call63 = tail call ptr @skb_mac_gso_segment(ptr noundef %skb, i64 noundef %spec.select) #6
  %tobool.not.i256 = icmp eq ptr %call63, null
  %cmp.i257 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i256, %cmp.i257
  br i1 %spec.select.i, label %if.then65, label %if.end67

if.then65:                                        ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %protocol3 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %7, ptr %protocol3, align 8
  %65 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i = load i16, ptr %encapsulation, align 8
  %bf.set.i = or i16 %bf.load.i, 4
  store i16 %bf.set.i, ptr %encapsulation, align 8
  %call.i258 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %gepdiff) #6
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i, align 4
  %68 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i261 = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i.i262 = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i.i263 = sub i32 %sub.ptr.lhs.cast.i.i261, %sub.ptr.rhs.cast.i.i262
  %conv.i.i264 = trunc i32 %sub.ptr.sub.i.i263 to i16
  %70 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i.i264, ptr %transport_header.i, align 2
  %71 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %5, ptr %mac_header, align 2
  %conv3.i = add i16 %9, %5
  %72 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv3.i, ptr %network_header.i.i, align 4
  %73 = ptrtoint ptr %mac_len4 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %9, ptr %mac_len4, align 4
  br label %out

if.end67:                                         ; preds = %land.end57
  %end.i266 = getelementptr inbounds %struct.sk_buff, ptr %call63, i32 0, i32 17
  %74 = ptrtoint ptr %end.i266 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i266, align 4
  %gso_type69 = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %gso_type69 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %gso_type69, align 8
  %and70 = and i32 %77, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %78 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i, align 8
  %80 = ptrtoint ptr %mac_header to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %mac_header, align 2
  %conv.i.i268 = zext i16 %81 to i32
  %add.ptr.i.i269 = getelementptr i8, ptr %79, i32 %conv.i.i268
  %sub.ptr.lhs.cast.i270 = ptrtoint ptr %add.ptr.i.i269 to i32
  %sub.ptr.rhs.cast.i271 = ptrtoint ptr %79 to i32
  %add.ptr.i272 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %82 = ptrtoint ptr %add.ptr.i272 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i272, align 4
  %84 = add i32 %83, %sub.ptr.rhs.cast.i271
  %sub.i273 = sub i32 %sub.ptr.lhs.cast.i270, %84
  %sub = sub i32 %sub.i273, %gepdiff
  %idx.neg.i = sub i32 0, %sub.i273
  %85 = trunc i32 %sub to i16
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.end67
  %skb.addr.0 = phi ptr [ %call63, %if.end67 ], [ %138, %cleanup.do.body_crit_edge ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15
  %86 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load78 = load i16, ptr %ip_summed, align 8
  %87 = and i16 %bf.load78, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %87)
  %cmp83 = icmp eq i16 %87, 1536
  br i1 %cmp83, label %if.then85, label %do.body.if.end90_crit_edge

do.body.if.end90_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then85:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %mac_header.i274 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 21
  %88 = ptrtoint ptr %mac_header.i274 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mac_header.i274, align 2
  %inner_mac_header.i275 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 17
  %90 = ptrtoint ptr %inner_mac_header.i275 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %inner_mac_header.i275, align 2
  %network_header.i276 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %91 = ptrtoint ptr %network_header.i276 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %network_header.i276, align 4
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 16
  %93 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %inner_network_header.i, align 4
  %transport_header.i277 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 19
  %94 = ptrtoint ptr %transport_header.i277 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %transport_header.i277, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 15
  %96 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %inner_transport_header.i, align 2
  %bf.set89 = or i16 %bf.load78, 4
  %97 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %bf.set89, ptr %ip_summed, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %do.body.if.end90_crit_edge
  %mac_len91 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 8
  %98 = ptrtoint ptr %mac_len91 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %9, ptr %mac_len91, align 4
  %protocol92 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 18
  %99 = ptrtoint ptr %protocol92 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %7, ptr %protocol92, align 8
  %data.i278 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %100 = ptrtoint ptr %data.i278 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i278, align 4
  %add.ptr.i279 = getelementptr i8, ptr %101, i32 %idx.neg.i
  store ptr %add.ptr.i279, ptr %data.i278, align 4
  %len1.i280 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %102 = ptrtoint ptr %len1.i280 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len1.i280, align 4
  %add.i = add i32 %103, %sub.i273
  store i32 %add.i, ptr %len1.i280, align 4
  %head.i282 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %104 = ptrtoint ptr %head.i282 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i282, align 8
  %sub.ptr.lhs.cast.i283 = ptrtoint ptr %add.ptr.i279 to i32
  %sub.ptr.rhs.cast.i284 = ptrtoint ptr %105 to i32
  %sub.ptr.sub.i285 = sub i32 %sub.ptr.lhs.cast.i283, %sub.ptr.rhs.cast.i284
  %conv.i286 = trunc i32 %sub.ptr.sub.i285 to i16
  %mac_header.i287 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 21
  %106 = ptrtoint ptr %mac_header.i287 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i286, ptr %mac_header.i287, align 2
  %network_header.i.i294 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %conv1.i295 = add i16 %9, %conv.i286
  %107 = ptrtoint ptr %network_header.i.i294 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv1.i295, ptr %network_header.i.i294, align 4
  %transport_header.i.i302 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 19
  %conv1.i303 = add i16 %conv.i286, %85
  %108 = ptrtoint ptr %transport_header.i.i302 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv1.i303, ptr %transport_header.i.i302, align 2
  br i1 %tobool29.not, label %if.end90.cleanup_crit_edge, label %if.end97

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end97:                                         ; preds = %if.end90
  %conv.i306 = zext i16 %conv1.i303 to i32
  %add.ptr.i307 = getelementptr i8, ptr %105, i32 %conv.i306
  %add.ptr99 = getelementptr %struct.gre_base_hdr, ptr %add.ptr.i307, i32 1
  br i1 %tobool71.not, label %if.end97.if.end117_crit_edge, label %land.lhs.true102

if.end97.if.end117_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

land.lhs.true102:                                 ; preds = %if.end97
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 17
  %109 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool.i.not = icmp eq i16 %112, 0
  br i1 %tobool.i.not, label %land.lhs.true102.if.end117_crit_edge, label %if.then105

land.lhs.true102.if.end117_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then105:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr109 = getelementptr %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 32
  %113 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr109, align 4
  %conv112 = zext i16 %112 to i32
  %.neg332 = add i32 %sub.ptr.sub.i285, %add.i
  %115 = add i32 %114, %conv112
  %sub113 = sub i32 %.neg332, %115
  %116 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %sub113) #9, !srcloc !18
  %neg.i = xor i32 %116, -1
  %shr.i = lshr i32 %neg.i, 16
  %conv.i314 = trunc i32 %shr.i to i16
  %neg = xor i16 %conv.i314, -1
  br label %if.end117

if.end117:                                        ; preds = %if.then105, %land.lhs.true102.if.end117_crit_edge, %if.end97.if.end117_crit_edge
  %storemerge = phi i16 [ %neg, %if.then105 ], [ 0, %land.lhs.true102.if.end117_crit_edge ], [ 0, %if.end97.if.end117_crit_edge ]
  %117 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %storemerge, ptr %add.ptr99, align 2
  %add.ptr118 = getelementptr %struct.gre_base_hdr, ptr %add.ptr.i307, i32 1, i32 1
  %118 = ptrtoint ptr %add.ptr118 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %add.ptr118, align 2
  %119 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load120 = load i16, ptr %ip_summed, align 8
  %120 = and i16 %bf.load120, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool125.not = icmp ne i16 %120, 0
  %brmerge220 = select i1 %tobool125.not, i1 true, i1 %63
  br i1 %brmerge220, label %if.then127, label %if.else129

if.then127:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %head.i282 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i282, align 8
  %123 = ptrtoint ptr %transport_header.i.i302 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %transport_header.i.i302, align 2
  %conv.i.i317 = zext i16 %124 to i32
  %add.ptr.i.i318 = getelementptr i8, ptr %122, i32 %conv.i.i317
  %csum_start1.i = getelementptr %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 44
  %125 = ptrtoint ptr %csum_start1.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %csum_start1.i, align 4
  %conv.i319 = zext i16 %126 to i32
  %add.ptr2.i = getelementptr i8, ptr %122, i32 %conv.i319
  %sub.ptr.lhs.cast.i320 = ptrtoint ptr %add.ptr2.i to i32
  %sub.ptr.rhs.cast.i321 = ptrtoint ptr %add.ptr.i.i318 to i32
  %sub.ptr.sub.i322 = sub i32 %sub.ptr.lhs.cast.i320, %sub.ptr.rhs.cast.i321
  %csum.i = getelementptr %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 40
  %127 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %csum.i, align 4
  store i32 0, ptr %csum.i, align 4
  store i16 %124, ptr %csum_start1.i, align 4
  %call19.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i318, i32 noundef %sub.ptr.sub.i322, i32 noundef %128) #6
  %129 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call19.i) #9, !srcloc !18
  %neg.i.i = xor i32 %129, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i1.i = trunc i32 %shr.i.i to i16
  %130 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i1.i, ptr %add.ptr99, align 2
  br label %cleanup

if.else129:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set133 = or i16 %bf.load120, 1536
  %131 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %bf.set133, ptr %ip_summed, align 8
  %132 = ptrtoint ptr %transport_header.i.i302 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %transport_header.i.i302, align 2
  %134 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 5
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %133, ptr %134, align 8
  %csum_offset = getelementptr inbounds %struct.anon.142, ptr %134, i32 0, i32 1
  %136 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 4, ptr %csum_offset, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else129, %if.then127, %if.end90.cleanup_crit_edge
  %137 = ptrtoint ptr %skb.addr.0 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %skb.addr.0, align 8
  %tobool141.not = icmp eq ptr %138, null
  br i1 %tobool141.not, label %cleanup.out_crit_edge, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %if.then65, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %segs.0 = phi ptr [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.out_crit_edge ], [ %call63, %if.then65 ], [ inttoptr (i32 -22 to ptr), %entry.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.out_crit_edge ], [ %call63, %cleanup.out_crit_edge ]
  ret ptr %segs.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gre_gro_receive(ptr noundef %head, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encap_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %0 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encap_mark, align 2
  %1 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then.i250_crit_edge

entry.if.then.i250_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

if.end:                                           ; preds = %entry
  %bf.set = or i16 %bf.load, 16384
  %2 = ptrtoint ptr %encap_mark to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %bf.set, ptr %encap_mark, align 2
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_offset.i, align 8
  %add = add i32 %4, 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %5 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 %4
  %frag0_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp.i.not = icmp ult i32 %8, %add
  br i1 %cmp.i.not, label %if.then9, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then9:                                         ; preds = %if.end
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then9.skb_gro_header_slow.exit_crit_edge, !prof !16

if.then9.skb_gro_header_slow.exit_crit_edge:      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add)
  %cmp3.i.i = icmp ult i32 %10, %add
  br i1 %cmp3.i.i, label %if.end.i.i.if.then.i250_crit_edge, label %pskb_may_pull.exit.i, !prof !16

if.end.i.i.if.then.i250_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #6
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.if.then.i250_crit_edge, label %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge

pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit

pskb_may_pull.exit.i.if.then.i250_crit_edge:      ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

skb_gro_header_slow.exit:                         ; preds = %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge, %if.then9.skb_gro_header_slow.exit_crit_edge
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cb.i, align 8
  %14 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %16, i32 %4
  %tobool11.not = icmp eq ptr %add.ptr.i219, null
  br i1 %tobool11.not, label %skb_gro_header_slow.exit.if.then.i250_crit_edge, label %skb_gro_header_slow.exit.if.end17_crit_edge, !prof !16

skb_gro_header_slow.exit.if.end17_crit_edge:      ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

skb_gro_header_slow.exit.if.then.i250_crit_edge:  ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

if.end17:                                         ; preds = %skb_gro_header_slow.exit.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %greh.0 = phi ptr [ %add.ptr.i219, %skb_gro_header_slow.exit.if.end17_crit_edge ], [ %add.ptr.i, %if.end.if.end17_crit_edge ]
  %17 = ptrtoint ptr %greh.0 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %greh.0, align 1
  %conv = zext i16 %18 to i32
  %and = and i32 %conv, 24575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end20, label %if.end17.if.then.i250_crit_edge

if.end17.if.then.i250_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

if.end20:                                         ; preds = %if.end17
  %and23 = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end20.if.end34_crit_edge, label %land.lhs.true

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end20
  %19 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load27 = load i16, ptr %encap_mark, align 2
  %20 = and i16 %bf.load27, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool32.not = icmp eq i16 %20, 0
  br i1 %tobool32.not, label %land.lhs.true.if.end34_crit_edge, label %land.lhs.true.if.then.i250_crit_edge

land.lhs.true.if.then.i250_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.end20.if.end34_crit_edge
  %protocol = getelementptr inbounds %struct.gre_base_hdr, ptr %greh.0, i32 0, i32 1
  %21 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %protocol, align 1
  %call35 = tail call ptr @gro_find_receive_by_type(i16 noundef zeroext %22) #6
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.if.then.i250_crit_edge, label %if.end38

if.end34.if.then.i250_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

if.end38:                                         ; preds = %if.end34
  %23 = ptrtoint ptr %greh.0 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %greh.0, align 1
  %25 = and i16 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool42.not = icmp eq i16 %25, 0
  %spec.select = select i1 %tobool42.not, i32 4, i32 8
  %add51 = add nuw nsw i32 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool49.not262 = icmp slt i16 %24, 0
  %grehlen.1 = select i1 %tobool49.not262, i32 %add51, i32 %spec.select
  %add53 = add i32 %grehlen.1, %4
  %26 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add53)
  %cmp.i221.not = icmp ult i32 %27, %add53
  br i1 %cmp.i221.not, label %if.then56, label %if.end38.if.end69_crit_edge

if.end38.if.end69_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then56:                                        ; preds = %if.end38
  %len.i.i.i223 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i.i223, align 4
  %data_len.i.i.i224 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %30 = ptrtoint ptr %data_len.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len.i.i.i224, align 8
  %sub.i.i.i225 = sub i32 %29, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %sub.i.i.i225)
  %cmp.not.i.i226 = icmp ugt i32 %add53, %sub.i.i.i225
  br i1 %cmp.not.i.i226, label %if.end.i.i228, label %if.then56.skb_gro_header_slow.exit239_crit_edge, !prof !16

if.then56.skb_gro_header_slow.exit239_crit_edge:  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit239

if.end.i.i228:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add53)
  %cmp3.i.i227 = icmp ult i32 %29, %add53
  br i1 %cmp3.i.i227, label %if.end.i.i228.if.then.i250_crit_edge, label %pskb_may_pull.exit.i232, !prof !16

if.end.i.i228.if.then.i250_crit_edge:             ; preds = %if.end.i.i228
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

pskb_may_pull.exit.i232:                          ; preds = %if.end.i.i228
  %sub.i.i229 = sub i32 %add53, %sub.i.i.i225
  %call13.i.i230 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i229) #6
  %cmp14.i.not.i231 = icmp eq ptr %call13.i.i230, null
  br i1 %cmp14.i.not.i231, label %pskb_may_pull.exit.i232.if.then.i250_crit_edge, label %pskb_may_pull.exit.i232.skb_gro_header_slow.exit239_crit_edge

pskb_may_pull.exit.i232.skb_gro_header_slow.exit239_crit_edge: ; preds = %pskb_may_pull.exit.i232
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit239

pskb_may_pull.exit.i232.if.then.i250_crit_edge:   ; preds = %pskb_may_pull.exit.i232
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

skb_gro_header_slow.exit239:                      ; preds = %pskb_may_pull.exit.i232.skb_gro_header_slow.exit239_crit_edge, %if.then56.skb_gro_header_slow.exit239_crit_edge
  %32 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %cb.i, align 8
  %33 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i235 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i235 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i235, align 4
  %add.ptr.i236 = getelementptr i8, ptr %35, i32 %4
  %tobool58.not = icmp eq ptr %add.ptr.i236, null
  br i1 %tobool58.not, label %skb_gro_header_slow.exit239.if.then.i250_crit_edge, label %skb_gro_header_slow.exit239.if.end69_crit_edge, !prof !16

skb_gro_header_slow.exit239.if.end69_crit_edge:   ; preds = %skb_gro_header_slow.exit239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

skb_gro_header_slow.exit239.if.then.i250_crit_edge: ; preds = %skb_gro_header_slow.exit239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

if.end69:                                         ; preds = %skb_gro_header_slow.exit239.if.end69_crit_edge, %if.end38.if.end69_crit_edge
  %greh.1 = phi ptr [ %add.ptr.i236, %skb_gro_header_slow.exit239.if.end69_crit_edge ], [ %greh.0, %if.end38.if.end69_crit_edge ]
  %36 = ptrtoint ptr %greh.1 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %greh.1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %tobool73.not = icmp sgt i16 %37, -1
  br i1 %tobool73.not, label %if.end69.if.end95_crit_edge, label %land.lhs.true74

if.end69.if.end95_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true74:                                  ; preds = %if.end69
  %flush77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %38 = ptrtoint ptr %flush77 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flush77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool78.not = icmp eq i16 %39, 0
  br i1 %tobool78.not, label %if.then79, label %land.lhs.true74.if.end95_crit_edge

land.lhs.true74.if.end95_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then79:                                        ; preds = %land.lhs.true74
  %call80 = tail call fastcc zeroext i1 @__skb_gro_checksum_validate_needed(ptr noundef %skb)
  br i1 %call80, label %if.then81, label %if.then79.if.then86_crit_edge

if.then79.if.then86_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

if.then81:                                        ; preds = %if.then79
  %call83 = tail call fastcc zeroext i16 @__skb_gro_checksum_validate_complete(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call83)
  %phi.cmp = icmp eq i16 %call83, 0
  br i1 %phi.cmp, label %if.then81.if.then86_crit_edge, label %if.then81.if.then.i250_crit_edge

if.then81.if.then.i250_crit_edge:                 ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

if.then81.if.then86_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86

if.then86:                                        ; preds = %if.then81.if.then86_crit_edge, %if.then79.if.then86_crit_edge
  tail call fastcc void @skb_gro_incr_csum_unnecessary(ptr noundef %skb)
  %40 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i = load i16, ptr %encap_mark, align 2
  %41 = and i16 %bf.load.i, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %if.then92, label %if.then86.if.end95_crit_edge

if.then86.if.end95_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then92:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %43 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %csum.i, align 4
  %bf.set.i = or i16 %bf.load.i, 8192
  %44 = ptrtoint ptr %encap_mark to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %bf.set.i, ptr %encap_mark, align 2
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.then86.if.end95_crit_edge, %land.lhs.true74.if.end95_crit_edge, %if.end69.if.end95_crit_edge
  %45 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %45)
  %p.0263 = load ptr, ptr %head, align 4
  %cmp97.not264 = icmp eq ptr %p.0263, %head
  br i1 %cmp97.not264, label %if.end95.for.end_crit_edge, label %for.body.lr.ph

if.end95.for.end_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end95
  %protocol118 = getelementptr inbounds %struct.gre_base_hdr, ptr %greh.1, i32 0, i32 1
  %add.ptr136 = getelementptr %struct.gre_base_hdr, ptr %greh.1, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %p.0265 = phi ptr [ %p.0263, %for.body.lr.ph ], [ %p.0, %cleanup.for.body_crit_edge ]
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %p.0265, i32 0, i32 3, i32 26
  %46 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load103 = load i16, ptr %same_flow, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load103)
  %tobool106.not = icmp sgt i16 %bf.load103, -1
  br i1 %tobool106.not, label %for.body.cleanup_crit_edge, label %if.end108

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end108:                                        ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %p.0265, i32 0, i32 19
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %add.ptr109 = getelementptr i8, ptr %48, i32 %4
  %49 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %add.ptr109, align 1
  %51 = ptrtoint ptr %greh.1 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %greh.1, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %52)
  %cmp114.not = icmp eq i16 %50, %52
  br i1 %cmp114.not, label %lor.lhs.false, label %if.end108.cleanup.sink.split_crit_edge

if.end108.cleanup.sink.split_crit_edge:           ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end108
  %protocol116 = getelementptr inbounds %struct.gre_base_hdr, ptr %add.ptr109, i32 0, i32 1
  %53 = ptrtoint ptr %protocol116 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %protocol116, align 1
  %55 = ptrtoint ptr %protocol118 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %protocol118, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %56)
  %cmp120.not = icmp eq i16 %54, %56
  br i1 %cmp120.not, label %if.end129, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end129:                                        ; preds = %lor.lhs.false
  %57 = and i16 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool133.not = icmp eq i16 %57, 0
  br i1 %tobool133.not, label %if.end129.cleanup_crit_edge, label %if.then134

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then134:                                       ; preds = %if.end129
  %add.ptr135 = getelementptr %struct.gre_base_hdr, ptr %add.ptr109, i32 1
  %58 = ptrtoint ptr %add.ptr135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr135, align 4
  %60 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr136, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp137.not = icmp eq i32 %59, %61
  br i1 %cmp137.not, label %if.then134.cleanup_crit_edge, label %if.then134.cleanup.sink.split_crit_edge

if.then134.cleanup.sink.split_crit_edge:          ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then134.cleanup_crit_edge:                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then134.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end108.cleanup.sink.split_crit_edge
  %bf.clear144 = and i16 %bf.load103, 32767
  %62 = ptrtoint ptr %same_flow to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %bf.clear144, ptr %same_flow, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then134.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %63 = ptrtoint ptr %p.0265 to i32
  call void @__asan_load4_noabort(i32 %63)
  %p.0 = load ptr, ptr %p.0265, align 4
  %cmp97.not = icmp eq ptr %p.0, %head
  br i1 %cmp97.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end95.for.end_crit_edge
  %64 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_offset.i, align 8
  %add.i = add i32 %65, %grehlen.1
  store i32 %add.i, ptr %data_offset.i, align 8
  %66 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i243 = load i16, ptr %encap_mark, align 2
  %67 = and i16 %bf.load.i243, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i = icmp eq i16 %67, 0
  br i1 %tobool.not.i, label %for.end.skb_gro_postpull_rcsum.exit_crit_edge, label %if.then.i

for.end.skb_gro_postpull_rcsum.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_postpull_rcsum.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %csum.i244 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %68 = ptrtoint ptr %csum.i244 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %csum.i244, align 4
  %sub.i.i245 = sub i32 0, %69
  %call3.i = tail call i32 @csum_partial(ptr noundef %greh.1, i32 noundef %grehlen.1, i32 noundef %sub.i.i245) #6
  %sub.i11.i = sub i32 0, %call3.i
  %70 = ptrtoint ptr %csum.i244 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub.i11.i, ptr %csum.i244, align 4
  br label %skb_gro_postpull_rcsum.exit

skb_gro_postpull_rcsum.exit:                      ; preds = %if.then.i, %for.end.skb_gro_postpull_rcsum.exit_crit_edge
  %gro_receive = getelementptr inbounds %struct.packet_offload, ptr %call35, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gro_receive, align 4
  %73 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load.i.i = load i16, ptr %encap_mark, align 2
  %74 = trunc i16 %bf.load.i.i to i8
  %75 = lshr i8 %74, 1
  %inc.i.i = add nuw i8 %75, 1
  %76 = and i8 %inc.i.i, 15
  %77 = shl nuw nsw i8 %76, 1
  %bf.shl.i.i = zext i8 %77 to i16
  %bf.clear2.i.i = and i16 %bf.load.i.i, -31
  %bf.set.i.i = or i16 %bf.clear2.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %encap_mark, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %76)
  %cmp.i.not.i = icmp eq i8 %76, 15
  br i1 %cmp.i.not.i, label %if.then.i247, label %out, !prof !16

if.then.i247:                                     ; preds = %skb_gro_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #8
  %flush.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %78 = ptrtoint ptr %flush.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %flush.i, align 4
  %80 = or i16 %79, 1
  store i16 %80, ptr %flush.i, align 4
  br label %if.then.i250

out:                                              ; preds = %skb_gro_postpull_rcsum.exit
  %call5.i = tail call ptr %72(ptr noundef %head, ptr noundef %skb) #6
  %cmp.not.i = icmp eq ptr %call5.i, inttoptr (i32 -115 to ptr)
  br i1 %cmp.not.i, label %out.skb_gro_flush_final.exit_crit_edge, label %out.if.then.i250_crit_edge

out.if.then.i250_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i250

out.skb_gro_flush_final.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_flush_final.exit

if.then.i250:                                     ; preds = %out.if.then.i250_crit_edge, %if.then.i247, %if.then81.if.then.i250_crit_edge, %skb_gro_header_slow.exit239.if.then.i250_crit_edge, %pskb_may_pull.exit.i232.if.then.i250_crit_edge, %if.end.i.i228.if.then.i250_crit_edge, %if.end34.if.then.i250_crit_edge, %land.lhs.true.if.then.i250_crit_edge, %if.end17.if.then.i250_crit_edge, %skb_gro_header_slow.exit.if.then.i250_crit_edge, %pskb_may_pull.exit.i.if.then.i250_crit_edge, %if.end.i.i.if.then.i250_crit_edge, %entry.if.then.i250_crit_edge
  %pp.0260 = phi ptr [ %call5.i, %out.if.then.i250_crit_edge ], [ null, %entry.if.then.i250_crit_edge ], [ null, %skb_gro_header_slow.exit.if.then.i250_crit_edge ], [ null, %if.end17.if.then.i250_crit_edge ], [ null, %land.lhs.true.if.then.i250_crit_edge ], [ null, %skb_gro_header_slow.exit239.if.then.i250_crit_edge ], [ null, %if.end34.if.then.i250_crit_edge ], [ null, %if.then81.if.then.i250_crit_edge ], [ null, %if.then.i247 ], [ null, %pskb_may_pull.exit.i.if.then.i250_crit_edge ], [ null, %if.end.i.i.if.then.i250_crit_edge ], [ null, %pskb_may_pull.exit.i232.if.then.i250_crit_edge ], [ null, %if.end.i.i228.if.then.i250_crit_edge ]
  %flush.0259 = phi i16 [ 0, %out.if.then.i250_crit_edge ], [ 1, %entry.if.then.i250_crit_edge ], [ 1, %skb_gro_header_slow.exit.if.then.i250_crit_edge ], [ 1, %if.end17.if.then.i250_crit_edge ], [ 1, %land.lhs.true.if.then.i250_crit_edge ], [ 1, %skb_gro_header_slow.exit239.if.then.i250_crit_edge ], [ 1, %if.end34.if.then.i250_crit_edge ], [ 1, %if.then81.if.then.i250_crit_edge ], [ 0, %if.then.i247 ], [ 1, %pskb_may_pull.exit.i.if.then.i250_crit_edge ], [ 1, %if.end.i.i.if.then.i250_crit_edge ], [ 1, %pskb_may_pull.exit.i232.if.then.i250_crit_edge ], [ 1, %if.end.i.i228.if.then.i250_crit_edge ]
  %flush1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %81 = ptrtoint ptr %flush1.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %flush1.i, align 4
  %conv2.i = or i16 %82, %flush.0259
  store i16 %conv2.i, ptr %flush1.i, align 4
  br label %skb_gro_flush_final.exit

skb_gro_flush_final.exit:                         ; preds = %if.then.i250, %out.skb_gro_flush_final.exit_crit_edge
  %pp.0261 = phi ptr [ inttoptr (i32 -115 to ptr), %out.skb_gro_flush_final.exit_crit_edge ], [ %pp.0260, %if.then.i250 ]
  ret ptr %pp.0261
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_gro_complete(ptr noundef %skb, i32 noundef %nhoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %nhoff
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %encapsulation, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, ptr %encapsulation, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %gso_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %gso_type, align 8
  %protocol = getelementptr inbounds %struct.gre_base_hdr, ptr %add.ptr, i32 0, i32 1
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %protocol, align 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr, align 1
  %10 = and i16 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  %spec.select = select i1 %tobool.not, i32 4, i32 8
  %add6 = add nuw nsw i32 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool4.not27 = icmp slt i16 %9, 0
  %grehlen.1 = select i1 %tobool4.not27, i32 %add6, i32 %spec.select
  %call8 = tail call ptr @gro_find_complete_by_type(i16 noundef zeroext %7) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %entry.if.end13_crit_edge, label %if.then10

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = add i32 %grehlen.1, %nhoff
  br label %if.end13

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gro_complete = getelementptr inbounds %struct.packet_offload, ptr %call8, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gro_complete, align 4
  %add11 = add i32 %grehlen.1, %nhoff
  %call12 = tail call i32 %12(ptr noundef %skb, i32 noundef %add11) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %entry.if.end13_crit_edge
  %add14.pre-phi = phi i32 [ %.pre, %entry.if.end13_crit_edge ], [ %add11, %if.then10 ]
  %err.0 = phi i32 [ -2, %entry.if.end13_crit_edge ], [ %call12, %if.then10 ]
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %17 = trunc i32 %add14.pre-phi to i16
  %conv1.i = add i16 %conv.i.i, %17
  %18 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1.i, ptr %inner_mac_header.i.i, align 2
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_mac_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_receive_by_type(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @__skb_gro_checksum_validate_needed(ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp.not = icmp eq i16 %1, 1536
  br i1 %cmp.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %conv.i = zext i16 %4 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %10)
  %cmp3 = icmp ult i32 %sub.i, %10
  br i1 %cmp3, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %gro_remcsum_start.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %11 = ptrtoint ptr %gro_remcsum_start.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gro_remcsum_start.i, align 2
  %conv.i1 = zext i16 %12 to i32
  %data_offset.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i1)
  %cmp.i = icmp eq i32 %14, %conv.i1
  br i1 %cmp.i, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true6

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %csum_cnt = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %15 = ptrtoint ptr %csum_cnt to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load7 = load i16, ptr %csum_cnt, align 2
  %16 = and i16 %bf.load7, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp12 = icmp eq i16 %16, 0
  br label %land.end

land.end:                                         ; preds = %land.lhs.true6, %land.lhs.true.land.end_crit_edge, %lor.lhs.false.land.end_crit_edge
  %17 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %lor.lhs.false.land.end_crit_edge ], [ %cmp12, %land.lhs.true6 ]
  ret i1 %17
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @__skb_gro_checksum_validate_complete(ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %0 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %csum_valid, align 2
  %1 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %csum = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %csum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %csum, align 4
  %4 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %3) #9, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %4)
  %tobool4.not = icmp ugt i32 %4, -65537
  br i1 %tobool4.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %csum7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %5 = ptrtoint ptr %csum7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %csum7, align 4
  %call8 = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %skb) #6
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i16 [ %call8, %if.end ], [ 0, %land.lhs.true.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @skb_gro_incr_csum_unnecessary(ptr nocapture noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %csum_cnt = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %0 = ptrtoint ptr %csum_cnt to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %csum_cnt, align 2
  %bf.lshr = lshr i16 %bf.load, 10
  %1 = trunc i16 %bf.lshr to i8
  %bf.cast = and i8 %1, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast)
  %cmp.not = icmp eq i8 %bf.cast, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add nuw nsw i8 %1, 7
  %2 = and i8 %dec, 7
  %bf.value = zext i8 %2 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 10
  %bf.clear10 = and i16 %bf.load, -7169
  %bf.set = or i16 %bf.shl, %bf.clear10
  %3 = ptrtoint ptr %csum_cnt to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %bf.set, ptr %csum_cnt, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %5 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i, label %if.else.if.end_crit_edge [
    i2 1, label %if.then.i
    i2 0, label %if.then25.i
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.else
  %csum_level.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load2.i = load i32, ptr %csum_level.i, align 2
  %7 = and i32 %bf.load2.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 805306368
  br i1 %cmp7.not.i, label %if.then.i.if.end_crit_edge, label %if.then9.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = add i32 %bf.load2.i, 268435456
  %bf.shl.i = and i32 %8, 805306368
  %bf.clear16.i = and i32 %bf.load2.i, -805306369
  %bf.set.i = or i32 %bf.shl.i, %bf.clear16.i
  %9 = ptrtoint ptr %csum_level.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %bf.set.i, ptr %csum_level.i, align 2
  br label %if.end

if.then25.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear28.i = and i16 %bf.load.i, -1537
  %bf.set29.i = or i16 %bf.clear28.i, 512
  %10 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %bf.set29.i, ptr %ip_summed.i, align 8
  %csum_level30.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %csum_level30.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load31.i = load i32, ptr %csum_level30.i, align 2
  %bf.clear32.i = and i32 %bf.load31.i, -805306369
  store i32 %bf.clear32.i, ptr %csum_level30.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then25.i, %if.then9.i, %if.then.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_complete_by_type(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__initcall__kmod_gre_offload__570_289_gre_offload_init6, !1, !"__initcall__kmod_gre_offload__570_289_gre_offload_init6", i1 false, i1 false}
!1 = !{!"../net/ipv4/gre_offload.c", i32 289, i32 1}
!2 = !{ptr @gre_offload, !3, !"gre_offload", i1 false, i1 false}
!3 = !{!"../net/ipv4/gre_offload.c", i32 265, i32 33}
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
!15 = !{!"branch_weights", i32 2002, i32 2000}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2154569881, i64 2154570369, i64 2154569918, i64 2154569974, i64 2154570008, i64 2154570032, i64 2154570073, i64 2154570094, i64 2154570122, i64 2154570156}
!18 = !{i64 6454993}
