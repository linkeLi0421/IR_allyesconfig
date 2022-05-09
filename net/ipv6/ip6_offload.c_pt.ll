; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_offload.c_pt.bc'
source_filename = "../net/ipv6/ip6_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.167, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.167 = type { ptr }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.frag_hdr = type { i8, i8, i16, i32 }
%struct.ipv6_opt_hdr = type { i8, i8 }

@__initcall__kmod_ip6_offload__606_440_ipv6_offload_init5 = internal global ptr @ipv6_offload_init, section ".initcall5.init", align 4
@ipv6_offload_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\012%s: Cannot add TCP protocol offload\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipv6_offload_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ipv6/ip6_offload.c\00", [41 x i8] zeroinitializer }, align 32
@ipv6_offload_init._entry_ptr = internal global ptr @ipv6_offload_init._entry, section ".printk_index", align 4
@ipv6_offload_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\012%s: Cannot add EXTHDRS protocol offload\0A\00", [53 x i8] zeroinitializer }, align 32
@ipv6_offload_init._entry_ptr.5 = internal global ptr @ipv6_offload_init._entry.3, section ".printk_index", align 4
@ipv6_packet_offload = internal global %struct.packet_offload { i16 -31011, i16 0, %struct.offload_callbacks { ptr @ipv6_gso_segment, ptr @ipv6_gro_receive, ptr @ipv6_gro_complete }, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@sit_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @sit_gso_segment, ptr @sit_ip6ip6_gro_receive, ptr @sit_gro_complete }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ip6ip6_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @ip6ip6_gso_segment, ptr @sit_ip6ip6_gro_receive, ptr @ip6ip6_gro_complete }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ip4ip6_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @ip4ip6_gso_segment, ptr @ip4ip6_gro_receive, ptr @ip4ip6_gro_complete }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@inet6_offloads = external dso_local global [256 x ptr], align 4
@ipv6_gso_segment.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ipv6_gso_pull_exthdrs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_gro_receive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_gro_receive.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_exthdrs_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 427, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 429, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"sit_offload\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 400, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"ip6ip6_offload\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 416, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"ip4ip6_offload\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 408, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [26 x i8] c"../net/ipv6/ip6_offload.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 113, i32 8 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_ip6_offload__606_440_ipv6_offload_init5, ptr @ipv6_offload_init._entry, ptr @ipv6_offload_init._entry.3, ptr @ipv6_offload_init._entry_ptr, ptr @ipv6_offload_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @sit_offload, ptr @ip6ip6_offload, ptr @ip4ip6_offload, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_offload_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_offload_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sit_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6ip6_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip4ip6_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6_offload_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcpv6_offload_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @ipv6_exthdrs_offload_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  tail call void @dev_add_offload(ptr noundef nonnull @ipv6_packet_offload) #6
  %call10 = tail call i32 @inet_add_offload(ptr noundef nonnull @sit_offload, i8 noundef zeroext 41) #6
  %call11 = tail call i32 @inet6_add_offload(ptr noundef nonnull @ip6ip6_offload, i8 noundef zeroext 41) #6
  %call12 = tail call i32 @inet6_add_offload(ptr noundef nonnull @ip4ip6_offload, i8 noundef zeroext 4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcpv6_offload_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_exthdrs_offload_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_offload(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipv6_gso_segment(ptr noundef %skb, i64 noundef %features) #3 align 64 {
entry:
  %prevhdr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prevhdr) #6
  %0 = ptrtoint ptr %prevhdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %prevhdr, align 4, !annotation !40
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i227 = and i32 %sub.ptr.sub.i, 65535
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i, align 2
  %conv.i229 = zext i16 %7 to i32
  %gepdiff = sub nsw i32 %conv.i227, %conv.i229
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 40
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %9)
  %cmp3.i = icmp ult i32 %9, 40
  br i1 %cmp3.i, label %if.end.i.cleanup156_crit_edge, label %pskb_may_pull.exit, !prof !41

if.end.i.cleanup156_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup156

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 40, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup156_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !41

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pskb_may_pull.exit.cleanup156_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup156

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %encap_level = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %12 = ptrtoint ptr %encap_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encap_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %hw_enc_features, align 16
  %and = and i64 %18, %features
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %features.addr.0 = phi i64 [ %and, %if.then7 ], [ %features, %if.end.if.end8_crit_edge ]
  %add = add i32 %13, 40
  %19 = ptrtoint ptr %encap_level to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %encap_level, align 4
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %22 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i, align 4
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %sub.i231 = add i32 %25, -40
  store i32 %sub.i231, ptr %len.i.i, align 4
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i231, i32 %27)
  %cmp.i = icmp ult i32 %sub.i231, %27
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !41

do.body4.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

__skb_pull.exit:                                  ; preds = %if.end8
  %conv.i.i = zext i16 %23 to i32
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %conv.i.i
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %add.ptr.i233 = getelementptr i8, ptr %29, i32 40
  store ptr %add.ptr.i233, ptr %data.i, align 4
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nexthdr, align 2
  %conv = zext i8 %31 to i32
  %call16 = tail call fastcc i32 @ipv6_gso_pull_exthdrs(ptr noundef %skb, i32 noundef %conv)
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %32 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %encapsulation, align 8
  %33 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool18.not = icmp eq i16 %33, 0
  br i1 %tobool18.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %__skb_pull.exit
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gso_type, align 8
  %and20 = and i32 %37, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end49_crit_edge, label %if.then22

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call16)
  %cmp23 = icmp ne i32 %call16, 17
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp23, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.then22.if.end49_crit_edge, label %land.rhs

if.then22.if.end49_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.rhs:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %and30 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31 = icmp ne i32 %and30, 0
  br label %if.end49

if.else:                                          ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call16)
  %cmp33 = icmp eq i32 %call16, 17
  br i1 %cmp33, label %land.rhs42, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.rhs42:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %end.i235 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %38 = ptrtoint ptr %end.i235 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i235, align 4
  %gso_type44 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %gso_type44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gso_type44, align 8
  %and45 = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46 = icmp ne i32 %and45, 0
  br label %if.end49

if.end49:                                         ; preds = %land.rhs42, %if.else.if.end49_crit_edge, %land.rhs, %if.then22.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge
  %udpfrag.0.in = phi i1 [ false, %if.then22.if.end49_crit_edge ], [ %tobool31, %land.rhs ], [ false, %if.else.if.end49_crit_edge ], [ %tobool46, %land.rhs42 ], [ false, %land.lhs.true.if.end49_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %call16
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %arrayidx, align 4
  %call51 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %if.end49.do.end61_crit_edge

if.end49.do.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61

land.lhs.true53:                                  ; preds = %if.end49
  %call54 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true53.do.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %.b224 = load i1, ptr @ipv6_gso_segment.__warned, align 1
  br i1 %.b224, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ipv6_gso_segment.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 113, ptr noundef nonnull @.str.6) #6
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true53.do.end61_crit_edge, %if.end49.do.end61_crit_edge
  %tobool63.not = icmp eq ptr %43, null
  br i1 %tobool63.not, label %do.end61.cleanup156_crit_edge, label %land.rhs64, !prof !41

do.end61.cleanup156_crit_edge:                    ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup156

land.rhs64:                                       ; preds = %do.end61
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool65.not = icmp eq ptr %45, null
  br i1 %tobool65.not, label %land.rhs64.cleanup156_crit_edge, label %if.then73, !prof !41

land.rhs64.cleanup156_crit_edge:                  ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup156

if.then73:                                        ; preds = %land.rhs64
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %48 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i238 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i239 = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i240 = sub i32 %sub.ptr.lhs.cast.i238, %sub.ptr.rhs.cast.i239
  %conv.i241 = trunc i32 %sub.ptr.sub.i240 to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %50 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i241, ptr %transport_header.i, align 2
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %43, align 4
  %call76 = tail call ptr %52(ptr noundef %skb, i64 noundef %features.addr.0) #6
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.then78, label %if.end86

if.then78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i, align 8
  %55 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mac_header.i, align 2
  %conv.i244 = zext i16 %56 to i32
  %add.ptr.i245 = getelementptr i8, ptr %54, i32 %conv.i244
  %add.ptr80 = getelementptr i8, ptr %add.ptr.i245, i32 %gepdiff
  %sub.ptr.lhs.cast81 = ptrtoint ptr %add.ptr80 to i32
  %sub.ptr.rhs.cast82 = ptrtoint ptr %54 to i32
  %sub.ptr.sub83 = sub i32 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %conv84 = trunc i32 %sub.ptr.sub83 to i16
  %57 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv84, ptr %network_header.i, align 4
  br label %cleanup156

if.end86:                                         ; preds = %if.then73
  %cmp.i246 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %if.end86.cleanup156_crit_edge, label %for.body.lr.ph

if.end86.cleanup156_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup156

for.body.lr.ph:                                   ; preds = %if.end86
  %end.i247 = getelementptr inbounds %struct.sk_buff, ptr %call76, i32 0, i32 17
  %58 = ptrtoint ptr %end.i247 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i247, align 4
  %gso_type91 = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %gso_type91 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %gso_type91, align 8
  %and92 = and i32 %61, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %sub = sub nsw i32 -40, %gepdiff
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.addr.0271 = phi ptr [ %call76, %for.body.lr.ph ], [ %98, %for.inc.for.body_crit_edge ]
  %offset.0270 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.2, %for.inc.for.body_crit_edge ]
  %head.i248 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 18
  %62 = ptrtoint ptr %head.i248 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i248, align 8
  %mac_header.i249 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 15, i32 0, i32 21
  %64 = ptrtoint ptr %mac_header.i249 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %mac_header.i249, align 2
  %conv.i250 = zext i16 %65 to i32
  %add.ptr.i251 = getelementptr i8, ptr %63, i32 %gepdiff
  %add.ptr101 = getelementptr i8, ptr %add.ptr.i251, i32 %conv.i250
  br i1 %tobool93.not, label %for.body.if.else120_crit_edge, label %land.lhs.true104

for.body.if.else120_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else120

land.lhs.true104:                                 ; preds = %for.body
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 17
  %66 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.i.not = icmp eq i16 %69, 0
  br i1 %tobool.i.not, label %land.lhs.true104.if.else120_crit_edge, label %if.then107

land.lhs.true104.if.else120_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else120

if.then107:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  %conv109 = zext i16 %69 to i32
  %add.ptr112 = getelementptr %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 3, i32 32
  %70 = ptrtoint ptr %add.ptr112 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr112, align 4
  %add113 = add i32 %71, %conv109
  %add.ptr115 = getelementptr i8, ptr %63, i32 %add113
  %add.ptr116 = getelementptr %struct.ipv6hdr, ptr %add.ptr101, i32 1
  %sub.ptr.lhs.cast117 = ptrtoint ptr %add.ptr115 to i32
  %sub.ptr.rhs.cast118 = ptrtoint ptr %add.ptr116 to i32
  %sub.ptr.sub119 = sub i32 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  br label %if.end122

if.else120:                                       ; preds = %land.lhs.true104.if.else120_crit_edge, %for.body.if.else120_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 6
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %sub121 = add i32 %sub, %73
  br label %if.end122

if.end122:                                        ; preds = %if.else120, %if.then107
  %payload_len.0 = phi i32 [ %sub.ptr.sub119, %if.then107 ], [ %sub121, %if.else120 ]
  %conv123 = trunc i32 %payload_len.0 to i16
  %payload_len124 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr101, i32 0, i32 2
  %74 = ptrtoint ptr %payload_len124 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv123, ptr %payload_len124, align 4
  %75 = ptrtoint ptr %head.i248 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i248, align 8
  %sub.ptr.lhs.cast126 = ptrtoint ptr %add.ptr101 to i32
  %sub.ptr.rhs.cast127 = ptrtoint ptr %76 to i32
  %sub.ptr.sub128 = sub i32 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %conv129 = trunc i32 %sub.ptr.sub128 to i16
  %network_header130 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 15, i32 0, i32 20
  %77 = ptrtoint ptr %network_header130 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv129, ptr %network_header130, align 4
  %78 = ptrtoint ptr %mac_header.i249 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %mac_header.i249, align 2
  %sub.i255 = sub i16 %conv129, %79
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 8
  %80 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %sub.i255, ptr %mac_len.i, align 4
  br i1 %udpfrag.0.in, label %if.then132, label %if.end122.if.end151_crit_edge

if.end122.if.end151_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then132:                                       ; preds = %if.end122
  %call133 = call i32 @ip6_find_1stfragopt(ptr noundef nonnull %skb.addr.0271, ptr noundef nonnull %prevhdr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %cleanup.thread, label %if.end138

cleanup.thread:                                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_list(ptr noundef nonnull %call76) #6
  %81 = inttoptr i32 %call133 to ptr
  br label %cleanup156

if.end138:                                        ; preds = %if.then132
  %add.ptr139 = getelementptr i8, ptr %add.ptr101, i32 %call133
  %conv140 = trunc i32 %offset.0270 to i16
  %frag_off = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr139, i32 0, i32 2
  %82 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv140, ptr %frag_off, align 2
  %83 = ptrtoint ptr %skb.addr.0271 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skb.addr.0271, align 8
  %tobool141.not = icmp eq ptr %84, null
  br i1 %tobool141.not, label %if.end138.cleanup_crit_edge, label %if.then142

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  %conv145 = or i16 %conv140, 1
  %85 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv145, ptr %frag_off, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then142, %if.end138.cleanup_crit_edge
  %86 = ptrtoint ptr %payload_len124 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %payload_len124, align 4
  %conv148 = zext i16 %87 to i32
  %sub149 = add i32 %offset.0270, -8
  %add150 = add i32 %sub149, %conv148
  br label %if.end151

if.end151:                                        ; preds = %cleanup, %if.end122.if.end151_crit_edge
  %offset.2 = phi i32 [ %add150, %cleanup ], [ %offset.0270, %if.end122.if.end151_crit_edge ]
  br i1 %cmp, label %if.then153, label %if.end151.for.inc_crit_edge

if.end151.for.inc_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then153:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %mac_header.i249 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mac_header.i249, align 2
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 15, i32 0, i32 17
  %90 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %inner_mac_header.i, align 2
  %91 = ptrtoint ptr %network_header130 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %network_header130, align 4
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 15, i32 0, i32 16
  %93 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %inner_network_header.i, align 4
  %transport_header.i258 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 15, i32 0, i32 19
  %94 = ptrtoint ptr %transport_header.i258 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %transport_header.i258, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0271, i32 0, i32 15, i32 0, i32 15
  %96 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %inner_transport_header.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then153, %if.end151.for.inc_crit_edge
  %97 = ptrtoint ptr %skb.addr.0271 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %skb.addr.0271, align 8
  %tobool99.not = icmp eq ptr %98, null
  br i1 %tobool99.not, label %for.inc.cleanup156_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup156_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup156

cleanup156:                                       ; preds = %for.inc.cleanup156_crit_edge, %cleanup.thread, %if.end86.cleanup156_crit_edge, %if.then78, %land.rhs64.cleanup156_crit_edge, %do.end61.cleanup156_crit_edge, %pskb_may_pull.exit.cleanup156_crit_edge, %if.end.i.cleanup156_crit_edge
  %retval.3 = phi ptr [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.cleanup156_crit_edge ], [ %call76, %if.end86.cleanup156_crit_edge ], [ %81, %cleanup.thread ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup156_crit_edge ], [ inttoptr (i32 -93 to ptr), %do.end61.cleanup156_crit_edge ], [ inttoptr (i32 -93 to ptr), %land.rhs64.cleanup156_crit_edge ], [ null, %if.then78 ], [ %call76, %for.inc.cleanup156_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prevhdr) #6
  ret ptr %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipv6_gro_receive(ptr noundef %head, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_offset.i, align 8
  %add = add i32 %1, 40
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %frag0_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i.not = icmp ult i32 %5, %add
  br i1 %cmp.i.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.skb_gro_header_slow.exit_crit_edge, !prof !41

if.then.skb_gro_header_slow.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i.i = icmp ult i32 %7, %add
  br i1 %cmp3.i.i, label %if.end.i.i.if.then.i329_crit_edge, label %pskb_may_pull.exit.i, !prof !41

if.end.i.i.if.then.i329_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i329

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #6
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.if.then.i329_crit_edge, label %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge

pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_header_slow.exit

pskb_may_pull.exit.i.if.then.i329_crit_edge:      ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i329

skb_gro_header_slow.exit:                         ; preds = %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge, %if.then.skb_gro_header_slow.exit_crit_edge
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cb.i, align 8
  %11 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i266 = getelementptr i8, ptr %13, i32 %1
  %tobool4.not = icmp eq ptr %add.ptr.i266, null
  br i1 %tobool4.not, label %skb_gro_header_slow.exit.if.then.i329_crit_edge, label %skb_gro_header_slow.exit.if.end9_crit_edge, !prof !41

skb_gro_header_slow.exit.if.end9_crit_edge:       ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

skb_gro_header_slow.exit.if.then.i329_crit_edge:  ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i329

if.end9:                                          ; preds = %skb_gro_header_slow.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %iph.0 = phi ptr [ %add.ptr.i266, %skb_gro_header_slow.exit.if.end9_crit_edge ], [ %add.ptr.i, %entry.if.end9_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = trunc i32 %1 to i16
  %conv1.i = add i16 %conv.i.i, %18
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %20 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_offset.i, align 8
  %add.i = add i32 %21, 40
  store i32 %add.i, ptr %data_offset.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %22 = trunc i32 %add.i to i16
  %conv1.i275 = add i16 %22, %conv.i.i
  %23 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv1.i275, ptr %transport_header.i.i, align 2
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %iph.0, i32 0, i32 2
  %24 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %payload_len, align 4
  %conv = zext i16 %25 to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %27, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv)
  %cmp.not = icmp eq i32 %sub.i, %conv
  %conv15 = select i1 %cmp.not, i16 1, i16 2
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %iph.0, i32 0, i32 3
  %28 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nexthdr, align 2
  %conv16 = zext i8 %29 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %conv16
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end9.do.end27_crit_edge

if.end9.do.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

land.lhs.true:                                    ; preds = %if.end9
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b265 = load i1, ptr @ipv6_gro_receive.__warned, align 1
  br i1 %.b265, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ipv6_gro_receive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 214, ptr noundef nonnull @.str.6) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %if.end9.do.end27_crit_edge
  %tobool29.not = icmp eq ptr %31, null
  br i1 %tobool29.not, label %do.end27.if.then31_crit_edge, label %lor.lhs.false

do.end27.if.then31_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

lor.lhs.false:                                    ; preds = %do.end27
  %gro_receive = getelementptr inbounds %struct.offload_callbacks, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gro_receive, align 4
  %tobool30.not = icmp eq ptr %33, null
  br i1 %tobool30.not, label %lor.lhs.false.if.then31_crit_edge, label %lor.lhs.false.if.end64_crit_edge

lor.lhs.false.if.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %do.end27.if.then31_crit_edge
  %34 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_offset.i, align 8
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i278 = sub i32 %37, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %sub.i.i278)
  %cmp.i279 = icmp ugt i32 %35, %sub.i.i278
  br i1 %cmp.i279, label %land.lhs.true.i, label %if.then31.if.end.i283_crit_edge

if.then31.if.end.i283_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i283

land.lhs.true.i:                                  ; preds = %if.then31
  %sub.i280 = sub i32 %35, %sub.i.i278
  %call2.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i280) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %land.lhs.true.i.__pskb_pull.exit_crit_edge, label %land.lhs.true.i.if.end.i283_crit_edge

land.lhs.true.i.if.end.i283_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i283

land.lhs.true.i.__pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__pskb_pull.exit

if.end.i283:                                      ; preds = %land.lhs.true.i.if.end.i283_crit_edge, %if.then31.if.end.i283_crit_edge
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %sub4.i = sub i32 %41, %35
  store i32 %sub4.i, ptr %len.i, align 4
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i282 = getelementptr i8, ptr %43, i32 %35
  store ptr %add.ptr.i282, ptr %data.i.i, align 4
  br label %__pskb_pull.exit

__pskb_pull.exit:                                 ; preds = %if.end.i283, %land.lhs.true.i.__pskb_pull.exit_crit_edge
  %44 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %cb.i, align 8
  %45 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %frag0_len.i, align 4
  %call34 = tail call fastcc i32 @ipv6_gso_pull_exthdrs(ptr noundef %skb, i32 noundef %conv16)
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %48 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i288 = zext i16 %49 to i32
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %conv.i.i288
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %52 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_offset.i, align 8
  %add.i291 = add i32 %sub.ptr.sub.i.neg, %53
  store i32 %add.i291, ptr %data_offset.i, align 8
  %sub.ptr.rhs.cast.i294 = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i295 = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.rhs.cast.i294
  %conv.i296 = trunc i32 %sub.ptr.sub.i295 to i16
  store i16 %conv.i296, ptr %transport_header.i.i, align 2
  %idx.neg.i = sub i32 0, %add.i291
  %add.ptr.i299 = getelementptr i8, ptr %51, i32 %idx.neg.i
  store ptr %add.ptr.i299, ptr %data.i.i, align 4
  %54 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i, align 4
  %add.i300 = add i32 %55, %add.i291
  store i32 %add.i300, ptr %len.i, align 4
  %arrayidx42 = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %call34
  %56 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %arrayidx42, align 4
  %call44 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %__pskb_pull.exit.do.end54_crit_edge

__pskb_pull.exit.do.end54_crit_edge:              ; preds = %__pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

land.lhs.true46:                                  ; preds = %__pskb_pull.exit
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true46.do.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %.b261264 = load i1, ptr @ipv6_gro_receive.__warned.7, align 1
  br i1 %.b261264, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ipv6_gro_receive.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 223, ptr noundef nonnull @.str.6) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true46.do.end54_crit_edge, %__pskb_pull.exit.do.end54_crit_edge
  %tobool56.not = icmp eq ptr %57, null
  br i1 %tobool56.not, label %do.end54.if.then.i329_crit_edge, label %lor.lhs.false57

do.end54.if.then.i329_crit_edge:                  ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i329

lor.lhs.false57:                                  ; preds = %do.end54
  %gro_receive59 = getelementptr inbounds %struct.offload_callbacks, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %gro_receive59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gro_receive59, align 4
  %tobool60.not = icmp eq ptr %59, null
  br i1 %tobool60.not, label %lor.lhs.false57.if.then.i329_crit_edge, label %if.end62

lor.lhs.false57.if.then.i329_crit_edge:           ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i329

if.end62:                                         ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i, align 8
  %62 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i303 = zext i16 %63 to i32
  %add.ptr.i.i304 = getelementptr i8, ptr %61, i32 %conv.i.i303
  br label %if.end64

if.end64:                                         ; preds = %if.end62, %lor.lhs.false.if.end64_crit_edge
  %proto.0 = phi i32 [ %conv16, %lor.lhs.false.if.end64_crit_edge ], [ %call34, %if.end62 ]
  %iph.1 = phi ptr [ %iph.0, %lor.lhs.false.if.end64_crit_edge ], [ %add.ptr.i.i304, %if.end62 ]
  %ops.0 = phi ptr [ %31, %lor.lhs.false.if.end64_crit_edge ], [ %57, %if.end62 ]
  %conv65 = trunc i32 %proto.0 to i16
  %proto66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %64 = ptrtoint ptr %proto66 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv65, ptr %proto66, align 8
  %dec = add nsw i16 %conv15, -1
  %65 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %transport_header.i.i, align 2
  %conv.i306 = zext i16 %66 to i32
  %67 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %network_header.i.i, align 4
  %conv1.i307 = zext i16 %68 to i32
  %sub.i308 = sub nsw i32 %conv.i306, %conv1.i307
  %69 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %69)
  %p.0339 = load ptr, ptr %head, align 4
  %cmp69.not340 = icmp eq ptr %p.0339, %head
  br i1 %cmp69.not340, label %if.end64.for.end_crit_edge, label %for.body.lr.ph

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end64
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %iph.1, i32 0, i32 5
  %arrayidx4.i = getelementptr %struct.ipv6hdr, ptr %iph.1, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx9.i = getelementptr %struct.ipv6hdr, ptr %iph.1, i32 0, i32 5, i32 0, i32 0, i32 2
  %arrayidx15.i = getelementptr %struct.ipv6hdr, ptr %iph.1, i32 0, i32 5, i32 0, i32 0, i32 3
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %iph.1, i32 0, i32 6
  %arrayidx4.i311 = getelementptr %struct.ipv6hdr, ptr %iph.1, i32 0, i32 6, i32 0, i32 0, i32 1
  %arrayidx9.i315 = getelementptr %struct.ipv6hdr, ptr %iph.1, i32 0, i32 6, i32 0, i32 0, i32 2
  %arrayidx15.i319 = getelementptr %struct.ipv6hdr, ptr %iph.1, i32 0, i32 6, i32 0, i32 0, i32 3
  %nexthdr87 = getelementptr inbounds %struct.ipv6hdr, ptr %iph.1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i308)
  %cmp99 = icmp ugt i32 %sub.i308, 40
  %add.ptr108 = getelementptr %struct.ipv6hdr, ptr %iph.1, i32 1
  %sub110 = add nsw i32 %sub.i308, -40
  %is_atomic = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %p.0341 = phi ptr [ %p.0339, %for.body.lr.ph ], [ %p.0, %cleanup.for.body_crit_edge ]
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %p.0341, i32 0, i32 3, i32 26
  %70 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load = load i16, ptr %same_flow, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool75.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool75.not, label %for.body.cleanup_crit_edge, label %if.end77

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end77:                                         ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %p.0341, i32 0, i32 19
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  %add.ptr78 = getelementptr i8, ptr %72, i32 %1
  %73 = ptrtoint ptr %iph.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iph.1, align 4
  %75 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr78, align 4
  %xor = xor i32 %76, %74
  %and = and i32 %xor, -267386881
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %if.end77.not_same_flow_crit_edge

if.end77.not_same_flow_crit_edge:                 ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %not_same_flow

lor.lhs.false80:                                  ; preds = %if.end77
  %saddr81 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr78, i32 0, i32 5
  %77 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %saddr, align 4
  %79 = ptrtoint ptr %saddr81 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %saddr81, align 4
  %xor.i = xor i32 %80, %78
  %81 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %saddr81, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %84, %82
  %or.i = or i32 %xor7.i, %xor.i
  %85 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %saddr81, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %88, %86
  %or13.i = or i32 %or.i, %xor12.i
  %89 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %saddr81, i32 0, i32 3
  %91 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %92, %90
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i309 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i309, label %lor.lhs.false83, label %lor.lhs.false80.not_same_flow_crit_edge

lor.lhs.false80.not_same_flow_crit_edge:          ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #8
  br label %not_same_flow

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %daddr84 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr78, i32 0, i32 6
  %93 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %daddr, align 4
  %95 = ptrtoint ptr %daddr84 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %daddr84, align 4
  %xor.i310 = xor i32 %96, %94
  %97 = ptrtoint ptr %arrayidx4.i311 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx4.i311, align 4
  %arrayidx6.i312 = getelementptr [4 x i32], ptr %daddr84, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx6.i312 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx6.i312, align 4
  %xor7.i313 = xor i32 %100, %98
  %or.i314 = or i32 %xor7.i313, %xor.i310
  %101 = ptrtoint ptr %arrayidx9.i315 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx9.i315, align 4
  %arrayidx11.i316 = getelementptr [4 x i32], ptr %daddr84, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx11.i316 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx11.i316, align 4
  %xor12.i317 = xor i32 %104, %102
  %or13.i318 = or i32 %or.i314, %xor12.i317
  %105 = ptrtoint ptr %arrayidx15.i319 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx15.i319, align 4
  %arrayidx17.i320 = getelementptr [4 x i32], ptr %daddr84, i32 0, i32 3
  %107 = ptrtoint ptr %arrayidx17.i320 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx17.i320, align 4
  %xor18.i321 = xor i32 %108, %106
  %or19.i322 = or i32 %or13.i318, %xor18.i321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i322)
  %cmp.i323 = icmp eq i32 %or19.i322, 0
  br i1 %cmp.i323, label %lor.lhs.false86, label %lor.lhs.false83.not_same_flow_crit_edge

lor.lhs.false83.not_same_flow_crit_edge:          ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #8
  br label %not_same_flow

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %109 = ptrtoint ptr %nexthdr87 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %nexthdr87, align 2
  %nexthdr89 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr78, i32 0, i32 3
  %111 = ptrtoint ptr %nexthdr89 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %nexthdr89, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %112)
  %cmp91.not = icmp eq i16 %110, %112
  br i1 %cmp91.not, label %if.end98, label %lor.lhs.false86.not_same_flow_crit_edge

lor.lhs.false86.not_same_flow_crit_edge:          ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #8
  br label %not_same_flow

not_same_flow:                                    ; preds = %if.then107.not_same_flow_crit_edge, %lor.lhs.false86.not_same_flow_crit_edge, %lor.lhs.false83.not_same_flow_crit_edge, %lor.lhs.false80.not_same_flow_crit_edge, %if.end77.not_same_flow_crit_edge
  %bf.clear = and i16 %bf.load, 32767
  %113 = ptrtoint ptr %same_flow to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %bf.clear, ptr %same_flow, align 2
  br label %cleanup

if.end98:                                         ; preds = %lor.lhs.false86
  br i1 %cmp99, label %if.then107, label %if.end98.if.end115_crit_edge, !prof !41

if.end98.if.end115_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then107:                                       ; preds = %if.end98
  %add.ptr109 = getelementptr %struct.ipv6hdr, ptr %add.ptr78, i32 1
  %bcmp = tail call i32 @bcmp(ptr %add.ptr108, ptr %add.ptr109, i32 %sub110) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool112.not = icmp eq i32 %bcmp, 0
  br i1 %tobool112.not, label %if.then107.if.end115_crit_edge, label %if.then107.not_same_flow_crit_edge

if.then107.not_same_flow_crit_edge:               ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  br label %not_same_flow

if.then107.if.end115_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.end115:                                        ; preds = %if.then107.if.end115_crit_edge, %if.end98.if.end115_crit_edge
  %and116 = and i32 %xor, 267386880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117 = icmp ne i32 %and116, 0
  %lnot.ext121 = zext i1 %tobool117 to i16
  %flush124 = getelementptr inbounds %struct.sk_buff, ptr %p.0341, i32 0, i32 3, i32 12
  %114 = ptrtoint ptr %flush124 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %flush124, align 4
  %or = or i16 %dec, %lnot.ext121
  %or132263 = or i16 %or, %115
  store i16 %or132263, ptr %flush124, align 4
  %116 = ptrtoint ptr %is_atomic to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load136 = load i16, ptr %is_atomic, align 2
  %117 = and i16 %bf.load136, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool140.not = icmp eq i16 %117, 0
  br i1 %tobool140.not, label %if.end115.cleanup_crit_edge, label %if.then141

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then141:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %flush_id = getelementptr inbounds %struct.sk_buff, ptr %p.0341, i32 0, i32 3, i32 14
  %118 = ptrtoint ptr %flush_id to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flush_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then141, %if.end115.cleanup_crit_edge, %not_same_flow, %for.body.cleanup_crit_edge
  %119 = ptrtoint ptr %p.0341 to i32
  call void @__asan_load4_noabort(i32 %119)
  %p.0 = load ptr, ptr %p.0341, align 4
  %cmp69.not = icmp eq ptr %p.0, %head
  br i1 %cmp69.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end64.for.end_crit_edge
  %is_atomic152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %120 = ptrtoint ptr %is_atomic152 to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load153 = load i16, ptr %is_atomic152, align 2
  %bf.set155 = or i16 %bf.load153, 32
  store i16 %bf.set155, ptr %is_atomic152, align 2
  %flush159 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %121 = ptrtoint ptr %flush159 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %flush159, align 4
  %or161262 = or i16 %122, %dec
  store i16 %or161262, ptr %flush159, align 4
  %123 = and i16 %bf.load153, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool.not.i324 = icmp eq i16 %123, 0
  br i1 %tobool.not.i324, label %for.end.skb_gro_postpull_rcsum.exit_crit_edge, label %if.then.i

for.end.skb_gro_postpull_rcsum.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_postpull_rcsum.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %124 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %csum.i, align 4
  %sub.i.i325 = sub i32 0, %125
  %call3.i = tail call i32 @csum_partial(ptr noundef %iph.1, i32 noundef %sub.i308, i32 noundef %sub.i.i325) #6
  %sub.i11.i = sub i32 0, %call3.i
  %126 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %sub.i11.i, ptr %csum.i, align 4
  br label %skb_gro_postpull_rcsum.exit

skb_gro_postpull_rcsum.exit:                      ; preds = %if.then.i, %for.end.skb_gro_postpull_rcsum.exit_crit_edge
  %127 = ptrtoint ptr %is_atomic152 to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load.i327 = load i16, ptr %is_atomic152, align 2
  %128 = trunc i16 %bf.load.i327 to i8
  %129 = lshr i8 %128, 1
  %inc.i = add nuw i8 %129, 1
  %130 = and i8 %inc.i, 15
  %131 = shl nuw nsw i8 %130, 1
  %bf.shl.i = zext i8 %131 to i16
  %bf.clear2.i = and i16 %bf.load.i327, -31
  %bf.set.i = or i16 %bf.clear2.i, %bf.shl.i
  store i16 %bf.set.i, ptr %is_atomic152, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %130)
  %cmp.i328.not = icmp eq i8 %130, 15
  br i1 %cmp.i328.not, label %cond.true, label %out, !prof !41

cond.true:                                        ; preds = %skb_gro_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #8
  %132 = ptrtoint ptr %flush159 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %flush159, align 4
  %134 = or i16 %133, 1
  store i16 %134, ptr %flush159, align 4
  br label %if.then.i329

out:                                              ; preds = %skb_gro_postpull_rcsum.exit
  %gro_receive179 = getelementptr inbounds %struct.offload_callbacks, ptr %ops.0, i32 0, i32 1
  %135 = ptrtoint ptr %gro_receive179 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %gro_receive179, align 4
  %call180 = tail call ptr %136(ptr noundef %head, ptr noundef %skb) #6
  %cmp.not.i = icmp eq ptr %call180, inttoptr (i32 -115 to ptr)
  br i1 %cmp.not.i, label %out.skb_gro_flush_final.exit_crit_edge, label %out.if.then.i329_crit_edge

out.if.then.i329_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i329

out.skb_gro_flush_final.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_flush_final.exit

if.then.i329:                                     ; preds = %out.if.then.i329_crit_edge, %cond.true, %lor.lhs.false57.if.then.i329_crit_edge, %do.end54.if.then.i329_crit_edge, %skb_gro_header_slow.exit.if.then.i329_crit_edge, %pskb_may_pull.exit.i.if.then.i329_crit_edge, %if.end.i.i.if.then.i329_crit_edge
  %pp.0337 = phi ptr [ %call180, %out.if.then.i329_crit_edge ], [ null, %skb_gro_header_slow.exit.if.then.i329_crit_edge ], [ null, %lor.lhs.false57.if.then.i329_crit_edge ], [ null, %do.end54.if.then.i329_crit_edge ], [ null, %cond.true ], [ null, %pskb_may_pull.exit.i.if.then.i329_crit_edge ], [ null, %if.end.i.i.if.then.i329_crit_edge ]
  %flush.0336 = phi i16 [ %dec, %out.if.then.i329_crit_edge ], [ 1, %skb_gro_header_slow.exit.if.then.i329_crit_edge ], [ %conv15, %lor.lhs.false57.if.then.i329_crit_edge ], [ %conv15, %do.end54.if.then.i329_crit_edge ], [ %dec, %cond.true ], [ 1, %pskb_may_pull.exit.i.if.then.i329_crit_edge ], [ 1, %if.end.i.i.if.then.i329_crit_edge ]
  %flush1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %137 = ptrtoint ptr %flush1.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %flush1.i, align 4
  %conv2.i = or i16 %138, %flush.0336
  store i16 %conv2.i, ptr %flush1.i, align 4
  br label %skb_gro_flush_final.exit

skb_gro_flush_final.exit:                         ; preds = %if.then.i329, %out.skb_gro_flush_final.exit_crit_edge
  %pp.0338 = phi ptr [ inttoptr (i32 -115 to ptr), %out.skb_gro_flush_final.exit_crit_edge ], [ %pp.0337, %if.then.i329 ]
  ret ptr %pp.0338
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6_gro_complete(ptr noundef %skb, i32 noundef %nhoff) #3 align 64 {
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
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -31011, ptr %4, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load.i = load i32, ptr %inner_protocol_type.i, align 2
  %bf.clear.i = and i32 %bf.load.i, -4194305
  store i32 %bf.clear.i, ptr %inner_protocol_type.i, align 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %9 = trunc i32 %nhoff to i16
  %conv1.i = add i16 %conv.i.i, %9
  %10 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i, ptr %inner_network_header.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %sub = sub i32 %12, %nhoff
  %13 = trunc i32 %sub to i16
  %conv = add i16 %13, -40
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr, i32 0, i32 2
  %14 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %payload_len, align 4
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end20.i, %if.end
  %proto.0.in.in.i = phi ptr [ %nexthdr.i, %if.end ], [ %add.ptr.i, %if.end20.i ]
  %optlen.0.i = phi i32 [ 40, %if.end ], [ %shl.i, %if.end20.i ]
  %len.0.i = phi i32 [ 0, %if.end ], [ %add22.i, %if.end20.i ]
  %opth.0.i = phi ptr [ %add.ptr, %if.end ], [ %add.ptr.i, %if.end20.i ]
  %15 = ptrtoint ptr %proto.0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %proto.0.in.i = load i8, ptr %proto.0.in.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %proto.0.in.i)
  %cmp.not.i = icmp eq i8 %proto.0.in.i, 0
  br i1 %cmp.not.i, label %for.cond.i.if.end20.i_crit_edge, label %if.then.i

for.cond.i.if.end20.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then.i:                                        ; preds = %for.cond.i
  %proto.0.i = zext i8 %proto.0.in.i to i32
  %arrayidx.i = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %proto.0.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.i.do.end9.i_crit_edge

if.then.i.do.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b33.i = load i1, ptr @ipv6_exthdrs_len.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true5.i.do.end9.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ipv6_exthdrs_len.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 171, ptr noundef nonnull @.str.6) #6
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then7.i, %land.lhs.true5.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %if.then.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %17, null
  br i1 %tobool11.not.i, label %do.end9.i.do.end_crit_edge, label %if.end16.i, !prof !41

do.end9.i.do.end_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end16.i:                                       ; preds = %do.end9.i
  %flags.i = getelementptr inbounds %struct.net_offload, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %lor.rhs, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end16.i.if.end20.i_crit_edge, %for.cond.i.if.end20.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %opth.0.i, i32 %optlen.0.i
  %hdrlen.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %add.ptr.i, i32 0, i32 1
  %20 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hdrlen.i, align 1
  %conv21.i = zext i8 %21 to i32
  %add.i = shl nuw nsw i32 %conv21.i, 3
  %shl.i = add nuw nsw i32 %add.i, 8
  %add22.i = add i32 %shl.i, %len.0.i
  br label %for.cond.i

lor.rhs:                                          ; preds = %if.end16.i
  %gro_complete = getelementptr inbounds %struct.offload_callbacks, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gro_complete, align 4
  %tobool4.not = icmp eq ptr %23, null
  br i1 %tobool4.not, label %lor.rhs.do.end_crit_edge, label %if.end29.critedge, !prof !41

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %do.end9.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 333, i32 noundef 9, ptr noundef null) #6
  br label %out

if.end29.critedge:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %nhoff, 40
  %add2 = add i32 %add, %len.0.i
  %call32 = tail call i32 %23(ptr noundef %skb, i32 noundef %add2) #6
  br label %out

out:                                              ; preds = %if.end29.critedge, %do.end
  %err.0 = phi i32 [ %call32, %if.end29.critedge ], [ -38, %do.end ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_gso_pull_exthdrs(ptr noundef %skb, i32 noundef %proto) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %proto.addr.0 = phi i32 [ %proto, %entry ], [ %conv43, %cleanup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %proto.addr.0)
  %cmp.not = icmp eq i32 %proto.addr.0, 0
  br i1 %cmp.not, label %for.cond.if.end19_crit_edge, label %if.then

for.cond.if.end19_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then:                                          ; preds = %for.cond
  %arrayidx = getelementptr [256 x ptr], ptr @inet6_offloads, i32 0, i32 %proto.addr.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.do.end8_crit_edge

if.then.do.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true4

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @ipv6_gso_pull_exthdrs.__warned, align 1
  br i1 %.b56, label %land.lhs.true4.do.end8_crit_edge, label %if.then6

land.lhs.true4.do.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ipv6_gso_pull_exthdrs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 48, ptr noundef nonnull @.str.6) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then6, %land.lhs.true4.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %if.then.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end8.for.end_crit_edge, label %if.end15, !prof !41

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end15:                                         ; preds = %do.end8
  %flags = getelementptr inbounds %struct.net_offload, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.for.end_crit_edge, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end19:                                         ; preds = %if.end15.if.end19_crit_edge, %for.cond.if.end19_crit_edge
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end19.if.end30_crit_edge, !prof !41

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp3.i = icmp ult i32 %5, 8
  br i1 %cmp3.i, label %if.end.i.for.end_crit_edge, label %pskb_may_pull.exit, !prof !41

if.end.i.for.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.for.end_crit_edge, label %pskb_may_pull.exit.if.end30_crit_edge, !prof !41

pskb_may_pull.exit.if.end30_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

pskb_may_pull.exit.for.end_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end30:                                         ; preds = %pskb_may_pull.exit.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %11 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i59 = sub i32 %13, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub.i.i59)
  %cmp.not.i60 = icmp ugt i32 %shl, %sub.i.i59
  br i1 %cmp.not.i60, label %if.end.i62, label %if.end30.if.end41_crit_edge, !prof !41

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end.i62:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shl)
  %cmp3.i61 = icmp ult i32 %13, %shl
  br i1 %cmp3.i61, label %if.end.i62.for.end_crit_edge, label %pskb_may_pull.exit68, !prof !41

if.end.i62.for.end_crit_edge:                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

pskb_may_pull.exit68:                             ; preds = %if.end.i62
  %sub.i63 = sub i32 %shl, %sub.i.i59
  %call13.i64 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i63) #6
  %cmp14.i65.not = icmp eq ptr %call13.i64, null
  br i1 %cmp14.i65.not, label %pskb_may_pull.exit68.for.end_crit_edge, label %pskb_may_pull.exit68.if.end41_crit_edge, !prof !41

pskb_may_pull.exit68.if.end41_crit_edge:          ; preds = %pskb_may_pull.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

pskb_may_pull.exit68.for.end_crit_edge:           ; preds = %pskb_may_pull.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end41:                                         ; preds = %pskb_may_pull.exit68.if.end41_crit_edge, %if.end30.if.end41_crit_edge
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %sub.i69 = sub i32 %21, %shl
  store i32 %sub.i69, ptr %len.i.i, align 4
  %22 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i, align 8
  %cmp.i = icmp ult i32 %sub.i69, %23
  br i1 %cmp.i, label %do.body4.i, label %cleanup, !prof !41

do.body4.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

cleanup:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %conv43 = zext i8 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %17, i32 %shl
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %data, align 4
  br label %for.cond

for.end:                                          ; preds = %pskb_may_pull.exit68.for.end_crit_edge, %if.end.i62.for.end_crit_edge, %pskb_may_pull.exit.for.end_crit_edge, %if.end.i.for.end_crit_edge, %if.end15.for.end_crit_edge, %do.end8.for.end_crit_edge
  ret i32 %proto.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_find_1stfragopt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sit_gso_segment(ptr noundef %skb, i64 noundef %features) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gso_type, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @ipv6_gso_segment(ptr noundef %skb, i64 noundef %features)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sit_ip6ip6_gro_receive(ptr noundef %head, ptr noundef %skb) #3 align 64 {
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
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %flush to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %flush, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set = or i16 %bf.load, 16384
  %3 = ptrtoint ptr %encap_mark to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %bf.set, ptr %encap_mark, align 2
  %call = tail call ptr @ipv6_gro_receive(ptr noundef %head, ptr noundef %skb)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sit_gro_complete(ptr noundef %skb, i32 noundef %nhoff) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, ptr %encapsulation, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gso_type, align 8
  %or = or i32 %4, 256
  store i32 %or, ptr %gso_type, align 8
  %call1 = tail call i32 @ipv6_gro_complete(ptr noundef %skb, i32 noundef %nhoff)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip6ip6_gso_segment(ptr noundef %skb, i64 noundef %features) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gso_type, align 8
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @ipv6_gso_segment(ptr noundef %skb, i64 noundef %features)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6ip6_gro_complete(ptr noundef %skb, i32 noundef %nhoff) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, ptr %encapsulation, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gso_type, align 8
  %or = or i32 %4, 512
  store i32 %or, ptr %gso_type, align 8
  %call1 = tail call i32 @ipv6_gro_complete(ptr noundef %skb, i32 noundef %nhoff)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip4ip6_gso_segment(ptr noundef %skb, i64 noundef %features) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gso_type, align 8
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @inet_gso_segment(ptr noundef %skb, i64 noundef %features) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip4ip6_gro_receive(ptr noundef %head, ptr noundef %skb) #3 align 64 {
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
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %flush to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %flush, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set = or i16 %bf.load, 16384
  %3 = ptrtoint ptr %encap_mark to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %bf.set, ptr %encap_mark, align 2
  %call = tail call ptr @inet_gro_receive(ptr noundef %head, ptr noundef %skb) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip4ip6_gro_complete(ptr noundef %skb, i32 noundef %nhoff) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, ptr %encapsulation, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gso_type, align 8
  %or = or i32 %4, 512
  store i32 %or, ptr %gso_type, align 8
  %call1 = tail call i32 @inet_gro_complete(ptr noundef %skb, i32 noundef %nhoff) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_gro_complete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_ip6_offload__606_440_ipv6_offload_init5, !1, !"__initcall__kmod_ip6_offload__606_440_ipv6_offload_init5", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_offload.c", i32 440, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ipv6/ip6_offload.c", i32 427, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ipv6_offload_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ipv6_offload_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ipv6/ip6_offload.c", i32 429, i32 3}
!10 = !{ptr @ipv6_offload_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ipv6_offload_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @ipv6_packet_offload, !13, !"ipv6_packet_offload", i1 false, i1 false}
!13 = !{!"../net/ipv6/ip6_offload.c", i32 364, i32 30}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/ipv6/ip6_offload.c", i32 113, i32 8}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/ipv6/ip6_offload.c", i32 48, i32 10}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/ipv6/ip6_offload.c", i32 214, i32 8}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/ipv6/ip6_offload.c", i32 223, i32 9}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/ipv6/ip6_offload.c", i32 171, i32 12}
!25 = !{ptr @sit_offload, !26, !"sit_offload", i1 false, i1 false}
!26 = !{!"../net/ipv6/ip6_offload.c", i32 400, i32 33}
!27 = !{ptr @ip6ip6_offload, !28, !"ip6ip6_offload", i1 false, i1 false}
!28 = !{!"../net/ipv6/ip6_offload.c", i32 416, i32 33}
!29 = !{ptr @ip4ip6_offload, !30, !"ip4ip6_offload", i1 false, i1 false}
!30 = !{!"../net/ipv6/ip6_offload.c", i32 408, i32 33}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2154949378, i64 2154949866, i64 2154949415, i64 2154949471, i64 2154949505, i64 2154949529, i64 2154949570, i64 2154949591, i64 2154949619, i64 2154949653}
