; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_reject_netdev.c_pt.bc'
source_filename = "../net/netfilter/nft_reject_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.sk_buff = type { %union.anon.3, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_reject = type { i8, i8, [2 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.6, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.6 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
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
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }

@nft_reject_netdev_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_reject_netdev_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_reject_policy, i32 2, i8 5, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_reject_netdev__561_183_nft_reject_netdev_module_init6 = internal global ptr @nft_reject_netdev_module_init, section ".initcall6.init", align 4
@__exitcall_nft_reject_netdev_module_exit = internal global ptr @nft_reject_netdev_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file562 = internal constant [55 x i8] c"nft_reject_netdev.file=net/netfilter/nft_reject_netdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license563 = internal constant [30 x i8] c"nft_reject_netdev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author564 = internal constant [65 x i8] c"nft_reject_netdev.author=Laura Garcia Liebana <nevola@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author565 = internal constant [61 x i8] c"nft_reject_netdev.author=Jose M. Guisado <guigom@riseup.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description566 = internal constant [70 x i8] c"nft_reject_netdev.description=Reject packets from netdev via nftables\00", section ".modinfo", align 1
@__UNIQUE_ID_alias567 = internal constant [42 x i8] c"nft_reject_netdev.alias=nft-expr-5-reject\00", section ".modinfo", align 1
@nft_reject_netdev_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_reject_netdev_eval, ptr null, i32 16, ptr @nft_reject_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_dump, ptr @nft_reject_netdev_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_netdev_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reject\00", [25 x i8] zeroinitializer }, align 32
@nft_reject_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [22 x i8] c"nft_reject_netdev_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 155, i32 34 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [37 x i8] c"../net/netfilter/nft_reject_netdev.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 166, i32 11 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias567, ptr @__UNIQUE_ID_author564, ptr @__UNIQUE_ID_author565, ptr @__UNIQUE_ID_description566, ptr @__UNIQUE_ID_file562, ptr @__UNIQUE_ID_license563, ptr @__exitcall_nft_reject_netdev_module_exit, ptr @__initcall__kmod_nft_reject_netdev__561_183_nft_reject_netdev_module_init6, ptr @nft_reject_netdev_module_exit, ptr @nft_reject_netdev_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_reject_netdev_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_netdev_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_reject_netdev_type) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_reject_netdev_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_reject_netdev_type) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_netdev_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %9, %7
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %10 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %11
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %h_proto, align 1
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %if.end.out_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb22
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

sw.bb:                                            ; preds = %if.end
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load78 = load i8, ptr %data.i, align 4
  %19 = zext i8 %bf.load78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %bf.load78, label %sw.bb.out_crit_edge [
    i8 0, label %sw.bb4
    i8 1, label %sw.bb9
    i8 2, label %sw.bb14
  ]

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

sw.bb4:                                           ; preds = %sw.bb
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in.i, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %21, align 4
  %conv.i = zext i8 %27 to i32
  %icmp_code = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %28 = ptrtoint ptr %icmp_code to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %icmp_code, align 1
  %call.i = tail call ptr @nf_reject_skb_v4_unreach(ptr noundef %23, ptr noundef %1, ptr noundef %25, i32 noundef %conv.i, i8 noundef zeroext %29) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb4.out_crit_edge, label %if.end.i

sw.bb4.out_crit_edge:                             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i:                                         ; preds = %sw.bb4
  %30 = getelementptr inbounds %struct.anon.4, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %33 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %protocol.i.i, align 8
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %37 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i.i = zext i16 %38 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i.i
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i.i, align 4
  %header_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 49
  %41 = ptrtoint ptr %header_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %header_ops.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %if.end.i.out.sink.split_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.out.sink.split_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

lor.lhs.false.i.i.i:                              ; preds = %if.end.i
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %tobool2.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.out.sink.split_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.out.sink.split_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i = tail call i32 %44(ptr noundef nonnull %call.i, ptr noundef %32, i16 noundef zeroext %34, ptr noundef %h_source.i.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef %40) #3
  br label %out.sink.split

sw.bb9:                                           ; preds = %sw.bb
  %state.i81 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %45 = ptrtoint ptr %state.i81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state.i81, align 4
  %net.i82 = getelementptr inbounds %struct.nf_hook_state, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %net.i82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net.i82, align 4
  %in.i84 = getelementptr inbounds %struct.nf_hook_state, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %in.i84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %in.i84, align 4
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %46, align 4
  %conv.i86 = zext i8 %52 to i32
  %call.i87 = tail call ptr @nf_reject_skb_v4_tcp_reset(ptr noundef %48, ptr noundef %1, ptr noundef %50, i32 noundef %conv.i86) #3
  %tobool.not.i88 = icmp eq ptr %call.i87, null
  br i1 %tobool.not.i88, label %sw.bb9.out_crit_edge, label %if.end.i98

sw.bb9.out_crit_edge:                             ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i98:                                       ; preds = %sw.bb9
  %53 = getelementptr inbounds %struct.anon.4, ptr %call.i87, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %protocol.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %56 = ptrtoint ptr %protocol.i.i89 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %protocol.i.i89, align 8
  %58 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i, align 8
  %60 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i.i92 = zext i16 %61 to i32
  %add.ptr.i.i.i.i93 = getelementptr i8, ptr %59, i32 %conv.i.i.i.i92
  %h_source.i.i94 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i93, i32 0, i32 1
  %len.i.i95 = getelementptr inbounds %struct.sk_buff, ptr %call.i87, i32 0, i32 6
  %62 = ptrtoint ptr %len.i.i95 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i.i95, align 4
  %header_ops.i.i.i96 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 49
  %64 = ptrtoint ptr %header_ops.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %header_ops.i.i.i96, align 4
  %tobool.not.i.i.i97 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i97, label %if.end.i98.out.sink.split_crit_edge, label %lor.lhs.false.i.i.i100

if.end.i98.out.sink.split_crit_edge:              ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

lor.lhs.false.i.i.i100:                           ; preds = %if.end.i98
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool2.not.i.i.i99 = icmp eq ptr %67, null
  br i1 %tobool2.not.i.i.i99, label %lor.lhs.false.i.i.i100.out.sink.split_crit_edge, label %if.end.i.i.i102

lor.lhs.false.i.i.i100.out.sink.split_crit_edge:  ; preds = %lor.lhs.false.i.i.i100
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

if.end.i.i.i102:                                  ; preds = %lor.lhs.false.i.i.i100
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i101 = tail call i32 %67(ptr noundef nonnull %call.i87, ptr noundef %55, i16 noundef zeroext %57, ptr noundef %h_source.i.i94, ptr noundef %add.ptr.i.i.i.i93, i32 noundef %63) #3
  br label %out.sink.split

sw.bb14:                                          ; preds = %sw.bb
  %state.i105 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %68 = ptrtoint ptr %state.i105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %state.i105, align 4
  %net.i106 = getelementptr inbounds %struct.nf_hook_state, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %net.i106 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net.i106, align 4
  %in.i108 = getelementptr inbounds %struct.nf_hook_state, ptr %69, i32 0, i32 2
  %72 = ptrtoint ptr %in.i108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %in.i108, align 4
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %69, align 4
  %conv.i110 = zext i8 %75 to i32
  %icmp_code19 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %76 = ptrtoint ptr %icmp_code19 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %icmp_code19, align 1
  %call20 = tail call i32 @nft_reject_icmp_code(i8 noundef zeroext %77) #3
  %conv21 = trunc i32 %call20 to i8
  %call.i111 = tail call ptr @nf_reject_skb_v4_unreach(ptr noundef %71, ptr noundef %1, ptr noundef %73, i32 noundef %conv.i110, i8 noundef zeroext %conv21) #3
  %tobool.not.i112 = icmp eq ptr %call.i111, null
  br i1 %tobool.not.i112, label %sw.bb14.out_crit_edge, label %if.end.i122

sw.bb14.out_crit_edge:                            ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i122:                                      ; preds = %sw.bb14
  %78 = getelementptr inbounds %struct.anon.4, ptr %call.i111, i32 0, i32 2
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %protocol.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %81 = ptrtoint ptr %protocol.i.i113 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %protocol.i.i113, align 8
  %83 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %head.i.i, align 8
  %85 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i.i116 = zext i16 %86 to i32
  %add.ptr.i.i.i.i117 = getelementptr i8, ptr %84, i32 %conv.i.i.i.i116
  %h_source.i.i118 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i117, i32 0, i32 1
  %len.i.i119 = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 6
  %87 = ptrtoint ptr %len.i.i119 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i.i119, align 4
  %header_ops.i.i.i120 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 49
  %89 = ptrtoint ptr %header_ops.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %header_ops.i.i.i120, align 4
  %tobool.not.i.i.i121 = icmp eq ptr %90, null
  br i1 %tobool.not.i.i.i121, label %if.end.i122.out.sink.split_crit_edge, label %lor.lhs.false.i.i.i124

if.end.i122.out.sink.split_crit_edge:             ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

lor.lhs.false.i.i.i124:                           ; preds = %if.end.i122
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %tobool2.not.i.i.i123 = icmp eq ptr %92, null
  br i1 %tobool2.not.i.i.i123, label %lor.lhs.false.i.i.i124.out.sink.split_crit_edge, label %if.end.i.i.i126

lor.lhs.false.i.i.i124.out.sink.split_crit_edge:  ; preds = %lor.lhs.false.i.i.i124
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

if.end.i.i.i126:                                  ; preds = %lor.lhs.false.i.i.i124
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i125 = tail call i32 %92(ptr noundef nonnull %call.i111, ptr noundef %80, i16 noundef zeroext %82, ptr noundef %h_source.i.i118, ptr noundef %add.ptr.i.i.i.i117, i32 noundef %88) #3
  br label %out.sink.split

sw.bb22:                                          ; preds = %if.end
  %93 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load2377 = load i8, ptr %data.i, align 4
  %94 = zext i8 %bf.load2377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %bf.load2377, label %sw.bb22.out_crit_edge [
    i8 0, label %sw.bb25
    i8 1, label %sw.bb31
    i8 2, label %sw.bb36
  ]

sw.bb22.out_crit_edge:                            ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

sw.bb25:                                          ; preds = %sw.bb22
  %state.i130 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %95 = ptrtoint ptr %state.i130 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %state.i130, align 4
  %net.i131 = getelementptr inbounds %struct.nf_hook_state, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %net.i131 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %net.i131, align 4
  %in.i133 = getelementptr inbounds %struct.nf_hook_state, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %in.i133 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %in.i133, align 4
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %96, align 4
  %conv.i135 = zext i8 %102 to i32
  %icmp_code30 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %103 = ptrtoint ptr %icmp_code30 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %icmp_code30, align 1
  %call.i136 = tail call ptr @nf_reject_skb_v6_unreach(ptr noundef %98, ptr noundef %1, ptr noundef %100, i32 noundef %conv.i135, i8 noundef zeroext %104) #3
  %tobool.not.i137 = icmp eq ptr %call.i136, null
  br i1 %tobool.not.i137, label %sw.bb25.out_crit_edge, label %if.end.i147

sw.bb25.out_crit_edge:                            ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i147:                                      ; preds = %sw.bb25
  %105 = getelementptr inbounds %struct.anon.4, ptr %call.i136, i32 0, i32 2
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %protocol.i.i138 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %108 = ptrtoint ptr %protocol.i.i138 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %protocol.i.i138, align 8
  %110 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %head.i.i, align 8
  %112 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i.i141 = zext i16 %113 to i32
  %add.ptr.i.i.i.i142 = getelementptr i8, ptr %111, i32 %conv.i.i.i.i141
  %h_source.i.i143 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i142, i32 0, i32 1
  %len.i.i144 = getelementptr inbounds %struct.sk_buff, ptr %call.i136, i32 0, i32 6
  %114 = ptrtoint ptr %len.i.i144 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len.i.i144, align 4
  %header_ops.i.i.i145 = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 49
  %116 = ptrtoint ptr %header_ops.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %header_ops.i.i.i145, align 4
  %tobool.not.i.i.i146 = icmp eq ptr %117, null
  br i1 %tobool.not.i.i.i146, label %if.end.i147.out.sink.split_crit_edge, label %lor.lhs.false.i.i.i149

if.end.i147.out.sink.split_crit_edge:             ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

lor.lhs.false.i.i.i149:                           ; preds = %if.end.i147
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %tobool2.not.i.i.i148 = icmp eq ptr %119, null
  br i1 %tobool2.not.i.i.i148, label %lor.lhs.false.i.i.i149.out.sink.split_crit_edge, label %if.end.i.i.i151

lor.lhs.false.i.i.i149.out.sink.split_crit_edge:  ; preds = %lor.lhs.false.i.i.i149
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

if.end.i.i.i151:                                  ; preds = %lor.lhs.false.i.i.i149
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i150 = tail call i32 %119(ptr noundef nonnull %call.i136, ptr noundef %107, i16 noundef zeroext %109, ptr noundef %h_source.i.i143, ptr noundef %add.ptr.i.i.i.i142, i32 noundef %115) #3
  br label %out.sink.split

sw.bb31:                                          ; preds = %sw.bb22
  %state.i154 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %120 = ptrtoint ptr %state.i154 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %state.i154, align 4
  %net.i155 = getelementptr inbounds %struct.nf_hook_state, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %net.i155 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %net.i155, align 4
  %in.i157 = getelementptr inbounds %struct.nf_hook_state, ptr %121, i32 0, i32 2
  %124 = ptrtoint ptr %in.i157 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %in.i157, align 4
  %126 = ptrtoint ptr %121 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %121, align 4
  %conv.i159 = zext i8 %127 to i32
  %call.i160 = tail call ptr @nf_reject_skb_v6_tcp_reset(ptr noundef %123, ptr noundef %1, ptr noundef %125, i32 noundef %conv.i159) #3
  %tobool.not.i161 = icmp eq ptr %call.i160, null
  br i1 %tobool.not.i161, label %sw.bb31.out_crit_edge, label %if.end.i171

sw.bb31.out_crit_edge:                            ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i171:                                      ; preds = %sw.bb31
  %128 = getelementptr inbounds %struct.anon.4, ptr %call.i160, i32 0, i32 2
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 8
  %protocol.i.i162 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %131 = ptrtoint ptr %protocol.i.i162 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %protocol.i.i162, align 8
  %133 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %head.i.i, align 8
  %135 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i.i165 = zext i16 %136 to i32
  %add.ptr.i.i.i.i166 = getelementptr i8, ptr %134, i32 %conv.i.i.i.i165
  %h_source.i.i167 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i166, i32 0, i32 1
  %len.i.i168 = getelementptr inbounds %struct.sk_buff, ptr %call.i160, i32 0, i32 6
  %137 = ptrtoint ptr %len.i.i168 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len.i.i168, align 4
  %header_ops.i.i.i169 = getelementptr inbounds %struct.net_device, ptr %130, i32 0, i32 49
  %139 = ptrtoint ptr %header_ops.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %header_ops.i.i.i169, align 4
  %tobool.not.i.i.i170 = icmp eq ptr %140, null
  br i1 %tobool.not.i.i.i170, label %if.end.i171.out.sink.split_crit_edge, label %lor.lhs.false.i.i.i173

if.end.i171.out.sink.split_crit_edge:             ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

lor.lhs.false.i.i.i173:                           ; preds = %if.end.i171
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %tobool2.not.i.i.i172 = icmp eq ptr %142, null
  br i1 %tobool2.not.i.i.i172, label %lor.lhs.false.i.i.i173.out.sink.split_crit_edge, label %if.end.i.i.i175

lor.lhs.false.i.i.i173.out.sink.split_crit_edge:  ; preds = %lor.lhs.false.i.i.i173
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

if.end.i.i.i175:                                  ; preds = %lor.lhs.false.i.i.i173
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i174 = tail call i32 %142(ptr noundef nonnull %call.i160, ptr noundef %130, i16 noundef zeroext %132, ptr noundef %h_source.i.i167, ptr noundef %add.ptr.i.i.i.i166, i32 noundef %138) #3
  br label %out.sink.split

sw.bb36:                                          ; preds = %sw.bb22
  %state.i178 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %143 = ptrtoint ptr %state.i178 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %state.i178, align 4
  %net.i179 = getelementptr inbounds %struct.nf_hook_state, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %net.i179 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %net.i179, align 4
  %in.i181 = getelementptr inbounds %struct.nf_hook_state, ptr %144, i32 0, i32 2
  %147 = ptrtoint ptr %in.i181 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %in.i181, align 4
  %149 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %144, align 4
  %conv.i183 = zext i8 %150 to i32
  %icmp_code41 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %151 = ptrtoint ptr %icmp_code41 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %icmp_code41, align 1
  %call42 = tail call i32 @nft_reject_icmpv6_code(i8 noundef zeroext %152) #3
  %conv43 = trunc i32 %call42 to i8
  %call.i184 = tail call ptr @nf_reject_skb_v6_unreach(ptr noundef %146, ptr noundef %1, ptr noundef %148, i32 noundef %conv.i183, i8 noundef zeroext %conv43) #3
  %tobool.not.i185 = icmp eq ptr %call.i184, null
  br i1 %tobool.not.i185, label %sw.bb36.out_crit_edge, label %if.end.i195

sw.bb36.out_crit_edge:                            ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i195:                                      ; preds = %sw.bb36
  %153 = getelementptr inbounds %struct.anon.4, ptr %call.i184, i32 0, i32 2
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  %protocol.i.i186 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %156 = ptrtoint ptr %protocol.i.i186 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %protocol.i.i186, align 8
  %158 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %head.i.i, align 8
  %160 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i.i189 = zext i16 %161 to i32
  %add.ptr.i.i.i.i190 = getelementptr i8, ptr %159, i32 %conv.i.i.i.i189
  %h_source.i.i191 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i190, i32 0, i32 1
  %len.i.i192 = getelementptr inbounds %struct.sk_buff, ptr %call.i184, i32 0, i32 6
  %162 = ptrtoint ptr %len.i.i192 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %len.i.i192, align 4
  %header_ops.i.i.i193 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 49
  %164 = ptrtoint ptr %header_ops.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %header_ops.i.i.i193, align 4
  %tobool.not.i.i.i194 = icmp eq ptr %165, null
  br i1 %tobool.not.i.i.i194, label %if.end.i195.out.sink.split_crit_edge, label %lor.lhs.false.i.i.i197

if.end.i195.out.sink.split_crit_edge:             ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

lor.lhs.false.i.i.i197:                           ; preds = %if.end.i195
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %tobool2.not.i.i.i196 = icmp eq ptr %167, null
  br i1 %tobool2.not.i.i.i196, label %lor.lhs.false.i.i.i197.out.sink.split_crit_edge, label %if.end.i.i.i199

lor.lhs.false.i.i.i197.out.sink.split_crit_edge:  ; preds = %lor.lhs.false.i.i.i197
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

if.end.i.i.i199:                                  ; preds = %lor.lhs.false.i.i.i197
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i198 = tail call i32 %167(ptr noundef nonnull %call.i184, ptr noundef %155, i16 noundef zeroext %157, ptr noundef %h_source.i.i191, ptr noundef %add.ptr.i.i.i.i190, i32 noundef %163) #3
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end.i.i.i199, %lor.lhs.false.i.i.i197.out.sink.split_crit_edge, %if.end.i195.out.sink.split_crit_edge, %if.end.i.i.i175, %lor.lhs.false.i.i.i173.out.sink.split_crit_edge, %if.end.i171.out.sink.split_crit_edge, %if.end.i.i.i151, %lor.lhs.false.i.i.i149.out.sink.split_crit_edge, %if.end.i147.out.sink.split_crit_edge, %if.end.i.i.i126, %lor.lhs.false.i.i.i124.out.sink.split_crit_edge, %if.end.i122.out.sink.split_crit_edge, %if.end.i.i.i102, %lor.lhs.false.i.i.i100.out.sink.split_crit_edge, %if.end.i98.out.sink.split_crit_edge, %if.end.i.i.i, %lor.lhs.false.i.i.i.out.sink.split_crit_edge, %if.end.i.out.sink.split_crit_edge
  %call.i184.sink = phi ptr [ %call.i, %if.end.i.i.i ], [ %call.i, %lor.lhs.false.i.i.i.out.sink.split_crit_edge ], [ %call.i, %if.end.i.out.sink.split_crit_edge ], [ %call.i87, %if.end.i.i.i102 ], [ %call.i87, %lor.lhs.false.i.i.i100.out.sink.split_crit_edge ], [ %call.i87, %if.end.i98.out.sink.split_crit_edge ], [ %call.i111, %if.end.i.i.i126 ], [ %call.i111, %lor.lhs.false.i.i.i124.out.sink.split_crit_edge ], [ %call.i111, %if.end.i122.out.sink.split_crit_edge ], [ %call.i136, %if.end.i.i.i151 ], [ %call.i136, %lor.lhs.false.i.i.i149.out.sink.split_crit_edge ], [ %call.i136, %if.end.i147.out.sink.split_crit_edge ], [ %call.i160, %if.end.i.i.i175 ], [ %call.i160, %lor.lhs.false.i.i.i173.out.sink.split_crit_edge ], [ %call.i160, %if.end.i171.out.sink.split_crit_edge ], [ %call.i184, %if.end.i.i.i199 ], [ %call.i184, %lor.lhs.false.i.i.i197.out.sink.split_crit_edge ], [ %call.i184, %if.end.i195.out.sink.split_crit_edge ]
  %call4.i.i200 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i184.sink) #3
  br label %out

out:                                              ; preds = %out.sink.split, %sw.bb36.out_crit_edge, %sw.bb31.out_crit_edge, %sw.bb25.out_crit_edge, %sw.bb22.out_crit_edge, %sw.bb14.out_crit_edge, %sw.bb9.out_crit_edge, %sw.bb4.out_crit_edge, %sw.bb.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %168 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %regs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_dump(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_reject_netdev_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call = tail call i32 @nft_chain_validate_hooks(ptr noundef %1, i32 noundef 1) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_icmp_code(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_icmpv6_code(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_reject_skb_v4_unreach(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_reject_skb_v4_tcp_reset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_reject_skb_v6_unreach(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_reject_skb_v6_tcp_reset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_nft_reject_netdev__561_183_nft_reject_netdev_module_init6, !1, !"__initcall__kmod_nft_reject_netdev__561_183_nft_reject_netdev_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_reject_netdev.c", i32 183, i32 1}
!2 = !{ptr @__exitcall_nft_reject_netdev_module_exit, !3, !"__exitcall_nft_reject_netdev_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_reject_netdev.c", i32 184, i32 1}
!4 = !{ptr @__UNIQUE_ID_file562, !5, !"__UNIQUE_ID_file562", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_reject_netdev.c", i32 186, i32 1}
!6 = !{ptr @__UNIQUE_ID_license563, !5, !"__UNIQUE_ID_license563", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author564, !8, !"__UNIQUE_ID_author564", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_reject_netdev.c", i32 187, i32 1}
!9 = !{ptr @__UNIQUE_ID_author565, !10, !"__UNIQUE_ID_author565", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_reject_netdev.c", i32 188, i32 1}
!11 = !{ptr @__UNIQUE_ID_description566, !12, !"__UNIQUE_ID_description566", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_reject_netdev.c", i32 189, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias567, !14, !"__UNIQUE_ID_alias567", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_reject_netdev.c", i32 190, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_reject_netdev.c", i32 166, i32 11}
!17 = !{ptr @nft_reject_netdev_type, !18, !"nft_reject_netdev_type", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_reject_netdev.c", i32 164, i32 29}
!19 = !{ptr @nft_reject_netdev_ops, !20, !"nft_reject_netdev_ops", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_reject_netdev.c", i32 155, i32 34}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
