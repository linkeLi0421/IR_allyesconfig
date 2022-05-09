; ModuleID = '/llk/IR_all_yes/net/mpls/mpls_gso.c_pt.bc'
source_filename = "../net/mpls/mpls_gso.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@mpls_uc_offload = internal global %struct.packet_offload { i16 -30649, i16 15, %struct.offload_callbacks { ptr @mpls_gso_segment, ptr null, ptr null }, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@mpls_mc_offload = internal global %struct.packet_offload { i16 -30648, i16 15, %struct.offload_callbacks { ptr @mpls_gso_segment, ptr null, ptr null }, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@__initcall__kmod_mpls_gso__337_104_mpls_gso_init6 = internal global ptr @mpls_gso_init, section ".initcall6.init", align 4
@__exitcall_mpls_gso_exit = internal global ptr @mpls_gso_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description338 = internal constant [38 x i8] c"mpls_gso.description=MPLS GSO support\00", section ".modinfo", align 1
@__UNIQUE_ID_author339 = internal constant [50 x i8] c"mpls_gso.author=Simon Horman (horms@verge.net.au)\00", section ".modinfo", align 1
@__UNIQUE_ID_file340 = internal constant [32 x i8] c"mpls_gso.file=net/mpls/mpls_gso\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [21 x i8] c"mpls_gso.license=GPL\00", section ".modinfo", align 1
@mpls_gso_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016mpls_gso: MPLS GSO support\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpls_gso_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mpls/mpls_gso.c\00", [44 x i8] zeroinitializer }, align 32
@mpls_gso_init._entry_ptr = internal global ptr @mpls_gso_init._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [23 x i8] c"../net/mpls/mpls_gso.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 90, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description338, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_mpls_gso_exit, ptr @__initcall__kmod_mpls_gso__337_104_mpls_gso_init6, ptr @mpls_gso_exit, ptr @mpls_gso_init._entry, ptr @mpls_gso_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_gso_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mpls_gso_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dev_remove_offload(ptr noundef nonnull @mpls_uc_offload) #4
  tail call void @dev_remove_offload(ptr noundef nonnull @mpls_mc_offload) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_offload(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_gso_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  tail call void @dev_add_offload(ptr noundef nonnull @mpls_uc_offload) #4
  tail call void @dev_add_offload(ptr noundef nonnull @mpls_mc_offload) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mpls_gso_segment(ptr noundef %skb, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %0 = ptrtoint ptr %mac_header to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_header, align 2
  %mac_len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %2 = ptrtoint ptr %mac_len1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_len1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %network_header.i, align 4
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %9 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %inner_network_header.i, align 4
  %conv.i66 = zext i16 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i66
  %conv.i69 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i70 = getelementptr i8, ptr %7, i32 %conv.i69
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i70 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool.not = icmp eq ptr %add.ptr.i, %add.ptr.i70
  %rem = and i32 %sub.ptr.sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool4 = icmp ne i32 %rem, 0
  %11 = select i1 %tobool.not, i1 true, i1 %tobool4, !prof !30
  br i1 %11, label %entry.out_crit_edge, label %if.end, !prof !30

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %sub.ptr.sub, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end17_crit_edge, !prof !30

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub.ptr.sub)
  %cmp3.i = icmp ult i32 %13, %sub.ptr.sub
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %pskb_may_pull.exit, !prof !30

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %sub.ptr.sub, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #4
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_crit_edge, label %pskb_may_pull.exit.if.end17_crit_edge, !prof !30

pskb_may_pull.exit.if.end17_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end17:                                         ; preds = %pskb_may_pull.exit.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %protocol, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 8
  store i16 %20, ptr %protocol, align 8
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %sub.i71 = sub i32 %22, %sub.ptr.sub
  store i32 %sub.i71, ptr %len.i.i, align 4
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i71, i32 %24)
  %cmp.i = icmp ult i32 %sub.i71, %24
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !30

do.body4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

__skb_pull.exit:                                  ; preds = %if.end17
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %26, i32 %sub.ptr.sub
  store ptr %add.ptr.i73, ptr %data.i, align 4
  %27 = ptrtoint ptr %mac_len1 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %mac_len1, align 4
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i76 = ptrtoint ptr %add.ptr.i73 to i32
  %sub.ptr.rhs.cast.i77 = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i78 = sub i32 %sub.ptr.lhs.cast.i76, %sub.ptr.rhs.cast.i77
  %conv.i79 = trunc i32 %sub.ptr.sub.i78 to i16
  %30 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i79, ptr %mac_header, align 2
  %31 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %mpls_features21 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 28
  %34 = ptrtoint ptr %mpls_features21 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %mpls_features21, align 8
  %and = and i64 %35, %features
  %call22 = tail call ptr @skb_mac_gso_segment(ptr noundef %skb, i64 noundef %and) #4
  %tobool.not.i = icmp eq ptr %call22, null
  %cmp.i80 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i80
  br i1 %spec.select.i, label %if.then24, label %if.end25

if.then24:                                        ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %17, ptr %protocol, align 8
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %37 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %bf.set.i = or i16 %bf.load.i, 4
  store i16 %bf.set.i, ptr %encapsulation.i, align 8
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub) #4
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %42 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %43 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %1, ptr %mac_header, align 2
  %conv3.i = add i16 %3, %1
  %44 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv3.i, ptr %network_header.i, align 4
  %45 = ptrtoint ptr %mac_len1 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %3, ptr %mac_len1, align 4
  br label %out

if.end25:                                         ; preds = %__skb_pull.exit
  %conv26 = zext i16 %3 to i32
  %add = add i32 %sub.ptr.sub, %conv26
  %idx.neg.i = sub i32 0, %add
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end25
  %skb.addr.0 = phi ptr [ %call22, %if.end25 ], [ %58, %do.body.do.body_crit_edge ]
  %mac_len27 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 8
  %46 = ptrtoint ptr %mac_len27 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %3, ptr %mac_len27, align 4
  %protocol28 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 18
  %47 = ptrtoint ptr %protocol28 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %17, ptr %protocol28, align 8
  %data.i83 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %48 = ptrtoint ptr %data.i83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i83, align 4
  %head.i84 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %50 = ptrtoint ptr %head.i84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i84, align 8
  %sub.ptr.lhs.cast.i85 = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i86 = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i87 = sub i32 %sub.ptr.lhs.cast.i85, %sub.ptr.rhs.cast.i86
  %conv.i88 = trunc i32 %sub.ptr.sub.i87 to i16
  %inner_network_header.i89 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 16
  %52 = ptrtoint ptr %inner_network_header.i89 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i88, ptr %inner_network_header.i89, align 4
  %add.ptr.i91 = getelementptr i8, ptr %49, i32 %idx.neg.i
  store ptr %add.ptr.i91, ptr %data.i83, align 4
  %len1.i92 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %53 = ptrtoint ptr %len1.i92 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len1.i92, align 4
  %add.i = add i32 %54, %add
  store i32 %add.i, ptr %len1.i92, align 4
  %sub.ptr.lhs.cast.i95 = ptrtoint ptr %add.ptr.i91 to i32
  %sub.ptr.sub.i97 = sub i32 %sub.ptr.lhs.cast.i95, %sub.ptr.rhs.cast.i86
  %conv.i98 = trunc i32 %sub.ptr.sub.i97 to i16
  %mac_header.i99 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 21
  %55 = ptrtoint ptr %mac_header.i99 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i98, ptr %mac_header.i99, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %conv1.i = add i16 %3, %conv.i98
  %56 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %57 = ptrtoint ptr %skb.addr.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skb.addr.0, align 8
  %tobool31.not = icmp eq ptr %58, null
  br i1 %tobool31.not, label %do.body.out_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out:                                              ; preds = %do.body.out_crit_edge, %if.then24, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %segs.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.out_crit_edge ], [ %call22, %if.then24 ], [ inttoptr (i32 -22 to ptr), %if.end.i.out_crit_edge ], [ %call22, %do.body.out_crit_edge ]
  ret ptr %segs.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_mac_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_offload(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_mpls_gso__337_104_mpls_gso_init6, !1, !"__initcall__kmod_mpls_gso__337_104_mpls_gso_init6", i1 false, i1 false}
!1 = !{!"../net/mpls/mpls_gso.c", i32 104, i32 1}
!2 = !{ptr @__exitcall_mpls_gso_exit, !3, !"__exitcall_mpls_gso_exit", i1 false, i1 false}
!3 = !{!"../net/mpls/mpls_gso.c", i32 105, i32 1}
!4 = !{ptr @__UNIQUE_ID_description338, !5, !"__UNIQUE_ID_description338", i1 false, i1 false}
!5 = !{!"../net/mpls/mpls_gso.c", i32 107, i32 1}
!6 = !{ptr @__UNIQUE_ID_author339, !7, !"__UNIQUE_ID_author339", i1 false, i1 false}
!7 = !{!"../net/mpls/mpls_gso.c", i32 108, i32 1}
!8 = !{ptr @__UNIQUE_ID_file340, !9, !"__UNIQUE_ID_file340", i1 false, i1 false}
!9 = !{!"../net/mpls/mpls_gso.c", i32 109, i32 1}
!10 = !{ptr @__UNIQUE_ID_license341, !9, !"__UNIQUE_ID_license341", i1 false, i1 false}
!11 = !{ptr @mpls_uc_offload, !12, !"mpls_uc_offload", i1 false, i1 false}
!12 = !{!"../net/mpls/mpls_gso.c", i32 80, i32 30}
!13 = !{ptr @mpls_mc_offload, !14, !"mpls_mc_offload", i1 false, i1 false}
!14 = !{!"../net/mpls/mpls_gso.c", i32 72, i32 30}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/mpls/mpls_gso.c", i32 90, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mpls_gso_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @mpls_gso_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2154940775, i64 2154941263, i64 2154940812, i64 2154940868, i64 2154940902, i64 2154940926, i64 2154940967, i64 2154940988, i64 2154941016, i64 2154941050}
