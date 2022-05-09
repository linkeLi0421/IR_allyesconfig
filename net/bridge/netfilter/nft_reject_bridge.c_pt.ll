; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/nft_reject_bridge.c_pt.bc'
source_filename = "../net/bridge/netfilter/nft_reject_bridge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.3, %union.anon.174, %union.anon.175, [48 x i8], %union.anon.176, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.178, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.174 = type { ptr }
%union.anon.175 = type { i64 }
%union.anon.176 = type { %struct.anon.177 }
%struct.anon.177 = type { i32, ptr }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.180, i32, i32, i32, i16, i16, %union.anon.182, i32, %union.anon.183, %union.anon.184, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.180 = type { i32 }
%union.anon.182 = type { i32 }
%union.anon.183 = type { i32 }
%union.anon.184 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_reject = type { i8, i8, [2 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.6, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.173, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.173 = type { ptr }
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

@nft_reject_bridge_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_reject_bridge_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_reject_policy, i32 2, i8 7, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_reject_bridge__696_209_nft_reject_bridge_module_init6 = internal global ptr @nft_reject_bridge_module_init, section ".initcall6.init", align 4
@__exitcall_nft_reject_bridge_module_exit = internal global ptr @nft_reject_bridge_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file697 = internal constant [62 x i8] c"nft_reject_bridge.file=net/bridge/netfilter/nft_reject_bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_license698 = internal constant [30 x i8] c"nft_reject_bridge.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author699 = internal constant [65 x i8] c"nft_reject_bridge.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias700 = internal constant [42 x i8] c"nft_reject_bridge.alias=nft-expr-7-reject\00", section ".modinfo", align 1
@__UNIQUE_ID_description701 = internal constant [70 x i8] c"nft_reject_bridge.description=Reject packets from bridge via nftables\00", section ".modinfo", align 1
@nft_reject_bridge_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_reject_bridge_eval, ptr null, i32 16, ptr @nft_reject_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_dump, ptr @nft_reject_bridge_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_reject_bridge_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reject\00", [25 x i8] zeroinitializer }, align 32
@nft_reject_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net/bridge/netfilter/../br_private.h\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"nft_reject_bridge_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 181, i32 34 }
@___asan_gen_.9 = private constant [44 x i8] c"../net/bridge/netfilter/nft_reject_bridge.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 192, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [40 x i8] c"../net/bridge/netfilter/../br_private.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 416, i32 9 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias700, ptr @__UNIQUE_ID_author699, ptr @__UNIQUE_ID_description701, ptr @__UNIQUE_ID_file697, ptr @__UNIQUE_ID_license698, ptr @__exitcall_nft_reject_bridge_module_exit, ptr @__initcall__kmod_nft_reject_bridge__696_209_nft_reject_bridge_module_init6, ptr @nft_reject_bridge_module_exit, ptr @nft_reject_bridge_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_reject_bridge_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_bridge_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_reject_bridge_type) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_reject_bridge_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_reject_bridge_type) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_reject_bridge_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
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
    i16 -31011, label %sw.bb24
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

sw.bb:                                            ; preds = %if.end
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load80 = load i8, ptr %data.i, align 4
  %19 = zext i8 %bf.load80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %bf.load80, label %sw.bb.out_crit_edge [
    i8 0, label %sw.bb6
    i8 1, label %sw.bb11
    i8 2, label %sw.bb16
  ]

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call fastcc void @nft_reject_br_send_v4_unreach(ptr noundef %23, ptr noundef %1, ptr noundef %25, i32 noundef %conv.i, i8 noundef zeroext %29)
  br label %out

sw.bb11:                                          ; preds = %sw.bb
  %state.i87 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %30 = ptrtoint ptr %state.i87 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state.i87, align 4
  %net.i88 = getelementptr inbounds %struct.nf_hook_state, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %net.i88 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i88, align 4
  %in.i90 = getelementptr inbounds %struct.nf_hook_state, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %in.i90 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in.i90, align 4
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %31, align 4
  %conv.i92 = zext i8 %37 to i32
  %call.i = tail call ptr @nf_reject_skb_v4_tcp_reset(ptr noundef %33, ptr noundef %1, ptr noundef null, i32 noundef %conv.i92) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb11.out_crit_edge, label %if.end.i

sw.bb11.out_crit_edge:                            ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i:                                         ; preds = %sw.bb11
  %call.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 14) #3
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %42 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %call.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i.i, align 8
  %45 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i.i = zext i16 %46 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %44, i32 %conv.i.i.i.i
  %47 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %49 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %h_source.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.ethhdr, ptr %call.i.i, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %add.ptr1.i.i.i, align 2
  %53 = load ptr, ptr %head.i.i, align 8
  %54 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i23.i.i = zext i16 %54 to i32
  %add.ptr.i.i24.i.i = getelementptr i8, ptr %53, i32 %conv.i.i23.i.i
  %h_source6.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i24.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %h_source6.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %h_source6.i.i, align 4
  %57 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %call.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %h_source6.i.i, i32 4
  %58 = ptrtoint ptr %add.ptr.i25.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i25.i.i, align 2
  %add.ptr1.i26.i.i = getelementptr i8, ptr %call.i.i, i32 4
  %60 = ptrtoint ptr %add.ptr1.i26.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %add.ptr1.i26.i.i, align 2
  %61 = load ptr, ptr %head.i.i, align 8
  %62 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i29.i.i = zext i16 %62 to i32
  %add.ptr.i.i30.i.i = getelementptr i8, ptr %61, i32 %conv.i.i29.i.i
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i30.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %h_proto.i.i, align 1
  %h_proto9.i.i = getelementptr inbounds %struct.ethhdr, ptr %call.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %h_proto9.i.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %64, ptr %h_proto9.i.i, align 1
  %call10.i.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i, i32 noundef 14) #3
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 3
  %66 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.nft_reject_br_push_etherhdr.exit.i_crit_edge, label %if.then.i.i

if.end.i.nft_reject_br_push_etherhdr.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nft_reject_br_push_etherhdr.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 10
  %67 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vlan_tci.i.i, align 2
  %vlan_proto.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 9
  %69 = ptrtoint ptr %vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vlan_proto.i.i, align 8
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 9
  %71 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 10
  %72 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %68, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %73 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %bf.load.i.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, -2147483648
  store i32 %bf.set.i.i.i, ptr %vlan_present.i.i.i, align 2
  br label %nft_reject_br_push_etherhdr.exit.i

nft_reject_br_push_etherhdr.exit.i:               ; preds = %if.then.i.i, %if.end.i.nft_reject_br_push_etherhdr.exit.i_crit_edge
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 95
  %74 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i5.i = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i.i, label %nft_reject_br_push_etherhdr.exit.i.br_port_get_rcu.exit.i_crit_edge

nft_reject_br_push_etherhdr.exit.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %nft_reject_br_push_etherhdr.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %nft_reject_br_push_etherhdr.exit.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, label %if.then.i7.i

land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit.i

if.then.i7.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @.str.2) #3
  br label %br_port_get_rcu.exit.i

br_port_get_rcu.exit.i:                           ; preds = %if.then.i7.i, %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, %nft_reject_br_push_etherhdr.exit.i.br_port_get_rcu.exit.i_crit_edge
  tail call void @br_forward(ptr noundef %75, ptr noundef nonnull %call.i, i1 noundef zeroext false, i1 noundef zeroext true) #3
  br label %out

sw.bb16:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %state.i93 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %76 = ptrtoint ptr %state.i93 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %state.i93, align 4
  %net.i94 = getelementptr inbounds %struct.nf_hook_state, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %net.i94 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net.i94, align 4
  %in.i96 = getelementptr inbounds %struct.nf_hook_state, ptr %77, i32 0, i32 2
  %80 = ptrtoint ptr %in.i96 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %in.i96, align 4
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %77, align 4
  %conv.i98 = zext i8 %83 to i32
  %icmp_code21 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %84 = ptrtoint ptr %icmp_code21 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %icmp_code21, align 1
  %call22 = tail call i32 @nft_reject_icmp_code(i8 noundef zeroext %85) #3
  %conv23 = trunc i32 %call22 to i8
  tail call fastcc void @nft_reject_br_send_v4_unreach(ptr noundef %79, ptr noundef %1, ptr noundef %81, i32 noundef %conv.i98, i8 noundef zeroext %conv23)
  br label %out

sw.bb24:                                          ; preds = %if.end
  %86 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load2579 = load i8, ptr %data.i, align 4
  %87 = zext i8 %bf.load2579 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %bf.load2579, label %sw.bb24.out_crit_edge [
    i8 0, label %sw.bb27
    i8 1, label %sw.bb33
    i8 2, label %sw.bb38
  ]

sw.bb24.out_crit_edge:                            ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

sw.bb27:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #5
  %state.i99 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %88 = ptrtoint ptr %state.i99 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %state.i99, align 4
  %net.i100 = getelementptr inbounds %struct.nf_hook_state, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %net.i100 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %net.i100, align 4
  %in.i102 = getelementptr inbounds %struct.nf_hook_state, ptr %89, i32 0, i32 2
  %92 = ptrtoint ptr %in.i102 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %in.i102, align 4
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %89, align 4
  %conv.i104 = zext i8 %95 to i32
  %icmp_code32 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %96 = ptrtoint ptr %icmp_code32 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %icmp_code32, align 1
  tail call fastcc void @nft_reject_br_send_v6_unreach(ptr noundef %91, ptr noundef %1, ptr noundef %93, i32 noundef %conv.i104, i8 noundef zeroext %97)
  br label %out

sw.bb33:                                          ; preds = %sw.bb24
  %state.i105 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %98 = ptrtoint ptr %state.i105 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %state.i105, align 4
  %net.i106 = getelementptr inbounds %struct.nf_hook_state, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %net.i106 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %net.i106, align 4
  %in.i108 = getelementptr inbounds %struct.nf_hook_state, ptr %99, i32 0, i32 2
  %102 = ptrtoint ptr %in.i108 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %in.i108, align 4
  %104 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %99, align 4
  %conv.i110 = zext i8 %105 to i32
  %call.i111 = tail call ptr @nf_reject_skb_v6_tcp_reset(ptr noundef %101, ptr noundef %1, ptr noundef null, i32 noundef %conv.i110) #3
  %tobool.not.i112 = icmp eq ptr %call.i111, null
  br i1 %tobool.not.i112, label %sw.bb33.out_crit_edge, label %if.end.i141

sw.bb33.out_crit_edge:                            ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i141:                                      ; preds = %sw.bb33
  %call.i.i113 = tail call ptr @skb_push(ptr noundef nonnull %call.i111, i32 noundef 14) #3
  %data.i.i.i114 = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 19
  %106 = ptrtoint ptr %data.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i114, align 4
  %head.i.i.i115 = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 18
  %108 = ptrtoint ptr %head.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %head.i.i.i115, align 8
  %sub.ptr.lhs.cast.i.i.i116 = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast.i.i.i117 = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i.i.i118 = sub i32 %sub.ptr.lhs.cast.i.i.i116, %sub.ptr.rhs.cast.i.i.i117
  %conv.i.i.i119 = trunc i32 %sub.ptr.sub.i.i.i118 to i16
  %mac_header.i.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 15, i32 0, i32 21
  %110 = ptrtoint ptr %mac_header.i.i.i120 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i.i.i119, ptr %mac_header.i.i.i120, align 2
  %h_source.i.i121 = getelementptr inbounds %struct.ethhdr, ptr %call.i.i113, i32 0, i32 1
  %111 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %head.i.i, align 8
  %113 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i.i124 = zext i16 %114 to i32
  %add.ptr.i.i.i.i125 = getelementptr i8, ptr %112, i32 %conv.i.i.i.i124
  %115 = ptrtoint ptr %add.ptr.i.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr.i.i.i.i125, align 4
  %117 = ptrtoint ptr %h_source.i.i121 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %h_source.i.i121, align 4
  %add.ptr.i.i.i126 = getelementptr i8, ptr %add.ptr.i.i.i.i125, i32 4
  %118 = ptrtoint ptr %add.ptr.i.i.i126 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr.i.i.i126, align 2
  %add.ptr1.i.i.i127 = getelementptr %struct.ethhdr, ptr %call.i.i113, i32 0, i32 1, i32 4
  %120 = ptrtoint ptr %add.ptr1.i.i.i127 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %add.ptr1.i.i.i127, align 2
  %121 = load ptr, ptr %head.i.i, align 8
  %122 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i23.i.i128 = zext i16 %122 to i32
  %add.ptr.i.i24.i.i129 = getelementptr i8, ptr %121, i32 %conv.i.i23.i.i128
  %h_source6.i.i130 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i24.i.i129, i32 0, i32 1
  %123 = ptrtoint ptr %h_source6.i.i130 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %h_source6.i.i130, align 4
  %125 = ptrtoint ptr %call.i.i113 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %call.i.i113, align 4
  %add.ptr.i25.i.i131 = getelementptr i8, ptr %h_source6.i.i130, i32 4
  %126 = ptrtoint ptr %add.ptr.i25.i.i131 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %add.ptr.i25.i.i131, align 2
  %add.ptr1.i26.i.i132 = getelementptr i8, ptr %call.i.i113, i32 4
  %128 = ptrtoint ptr %add.ptr1.i26.i.i132 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %add.ptr1.i26.i.i132, align 2
  %129 = load ptr, ptr %head.i.i, align 8
  %130 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i29.i.i133 = zext i16 %130 to i32
  %add.ptr.i.i30.i.i134 = getelementptr i8, ptr %129, i32 %conv.i.i29.i.i133
  %h_proto.i.i135 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i30.i.i134, i32 0, i32 2
  %131 = ptrtoint ptr %h_proto.i.i135 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %h_proto.i.i135, align 1
  %h_proto9.i.i136 = getelementptr inbounds %struct.ethhdr, ptr %call.i.i113, i32 0, i32 2
  %133 = ptrtoint ptr %h_proto9.i.i136 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %132, ptr %h_proto9.i.i136, align 1
  %call10.i.i137 = tail call ptr @skb_pull(ptr noundef nonnull %call.i111, i32 noundef 14) #3
  %vlan_present.i.i138 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 3
  %134 = ptrtoint ptr %vlan_present.i.i138 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %bf.load.i.i139 = load i32, ptr %vlan_present.i.i138, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i139)
  %tobool.not.i.i140 = icmp sgt i32 %bf.load.i.i139, -1
  br i1 %tobool.not.i.i140, label %if.end.i141.nft_reject_br_push_etherhdr.exit.i153_crit_edge, label %if.then.i.i149

if.end.i141.nft_reject_br_push_etherhdr.exit.i153_crit_edge: ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #5
  br label %nft_reject_br_push_etherhdr.exit.i153

if.then.i.i149:                                   ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #5
  %vlan_tci.i.i142 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 10
  %135 = ptrtoint ptr %vlan_tci.i.i142 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %vlan_tci.i.i142, align 2
  %vlan_proto.i.i143 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 9
  %137 = ptrtoint ptr %vlan_proto.i.i143 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %vlan_proto.i.i143, align 8
  %vlan_proto1.i.i.i144 = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 15, i32 0, i32 9
  %139 = ptrtoint ptr %vlan_proto1.i.i.i144 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %vlan_proto1.i.i.i144, align 8
  %vlan_tci2.i.i.i145 = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 15, i32 0, i32 10
  %140 = ptrtoint ptr %vlan_tci2.i.i.i145 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %136, ptr %vlan_tci2.i.i.i145, align 2
  %vlan_present.i.i.i146 = getelementptr inbounds %struct.sk_buff, ptr %call.i111, i32 0, i32 15, i32 0, i32 3
  %141 = ptrtoint ptr %vlan_present.i.i.i146 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %bf.load.i.i.i147 = load i32, ptr %vlan_present.i.i.i146, align 2
  %bf.set.i.i.i148 = or i32 %bf.load.i.i.i147, -2147483648
  store i32 %bf.set.i.i.i148, ptr %vlan_present.i.i.i146, align 2
  br label %nft_reject_br_push_etherhdr.exit.i153

nft_reject_br_push_etherhdr.exit.i153:            ; preds = %if.then.i.i149, %if.end.i141.nft_reject_br_push_etherhdr.exit.i153_crit_edge
  %rx_handler_data.i.i150 = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 95
  %142 = ptrtoint ptr %rx_handler_data.i.i150 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile ptr, ptr %rx_handler_data.i.i150, align 4
  %call.i5.i151 = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i151)
  %tobool.not.i6.i152 = icmp eq i32 %call.i5.i151, 0
  br i1 %tobool.not.i6.i152, label %land.lhs.true.i.i156, label %nft_reject_br_push_etherhdr.exit.i153.br_port_get_rcu.exit.i160_crit_edge

nft_reject_br_push_etherhdr.exit.i153.br_port_get_rcu.exit.i160_crit_edge: ; preds = %nft_reject_br_push_etherhdr.exit.i153
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit.i160

land.lhs.true.i.i156:                             ; preds = %nft_reject_br_push_etherhdr.exit.i153
  %call2.i.i154 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i154)
  %tobool3.not.i.i155 = icmp eq i32 %call2.i.i154, 0
  br i1 %tobool3.not.i.i155, label %land.lhs.true.i.i156.br_port_get_rcu.exit.i160_crit_edge, label %land.lhs.true4.i.i158

land.lhs.true.i.i156.br_port_get_rcu.exit.i160_crit_edge: ; preds = %land.lhs.true.i.i156
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit.i160

land.lhs.true4.i.i158:                            ; preds = %land.lhs.true.i.i156
  %.b9.i.i157 = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i157, label %land.lhs.true4.i.i158.br_port_get_rcu.exit.i160_crit_edge, label %if.then.i7.i159

land.lhs.true4.i.i158.br_port_get_rcu.exit.i160_crit_edge: ; preds = %land.lhs.true4.i.i158
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit.i160

if.then.i7.i159:                                  ; preds = %land.lhs.true4.i.i158
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @.str.2) #3
  br label %br_port_get_rcu.exit.i160

br_port_get_rcu.exit.i160:                        ; preds = %if.then.i7.i159, %land.lhs.true4.i.i158.br_port_get_rcu.exit.i160_crit_edge, %land.lhs.true.i.i156.br_port_get_rcu.exit.i160_crit_edge, %nft_reject_br_push_etherhdr.exit.i153.br_port_get_rcu.exit.i160_crit_edge
  tail call void @br_forward(ptr noundef %143, ptr noundef nonnull %call.i111, i1 noundef zeroext false, i1 noundef zeroext true) #3
  br label %out

sw.bb38:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #5
  %state.i161 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %144 = ptrtoint ptr %state.i161 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %state.i161, align 4
  %net.i162 = getelementptr inbounds %struct.nf_hook_state, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %net.i162 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %net.i162, align 4
  %in.i164 = getelementptr inbounds %struct.nf_hook_state, ptr %145, i32 0, i32 2
  %148 = ptrtoint ptr %in.i164 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %in.i164, align 4
  %150 = ptrtoint ptr %145 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %145, align 4
  %conv.i166 = zext i8 %151 to i32
  %icmp_code43 = getelementptr inbounds %struct.nft_reject, ptr %data.i, i32 0, i32 1
  %152 = ptrtoint ptr %icmp_code43 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %icmp_code43, align 1
  %call44 = tail call i32 @nft_reject_icmpv6_code(i8 noundef zeroext %153) #3
  %conv45 = trunc i32 %call44 to i8
  tail call fastcc void @nft_reject_br_send_v6_unreach(ptr noundef %147, ptr noundef %1, ptr noundef %149, i32 noundef %conv.i166, i8 noundef zeroext %conv45)
  br label %out

out:                                              ; preds = %sw.bb38, %br_port_get_rcu.exit.i160, %sw.bb33.out_crit_edge, %sw.bb27, %sw.bb24.out_crit_edge, %sw.bb16, %br_port_get_rcu.exit.i, %sw.bb11.out_crit_edge, %sw.bb6, %sw.bb.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %154 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %regs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_dump(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_reject_bridge_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call = tail call i32 @nft_chain_validate_hooks(ptr noundef %1, i32 noundef 3) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_reject_br_send_v4_unreach(ptr noundef %net, ptr noundef %oldskb, ptr noundef %dev, i32 noundef %hook, i8 noundef zeroext %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nf_reject_skb_v4_unreach(ptr noundef %net, ptr noundef %oldskb, ptr noundef null, i32 noundef %hook, i8 noundef zeroext %code) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 14) #3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call.i, i32 0, i32 1
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  %11 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h_source.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ethhdr, ptr %call.i, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i.i, align 2
  %15 = load ptr, ptr %head.i.i.i, align 8
  %16 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i23.i = zext i16 %16 to i32
  %add.ptr.i.i24.i = getelementptr i8, ptr %15, i32 %conv.i.i23.i
  %h_source6.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i24.i, i32 0, i32 1
  %17 = ptrtoint ptr %h_source6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_source6.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %h_source6.i, i32 4
  %20 = ptrtoint ptr %add.ptr.i25.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i25.i, align 2
  %add.ptr1.i26.i = getelementptr i8, ptr %call.i, i32 4
  %22 = ptrtoint ptr %add.ptr1.i26.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i26.i, align 2
  %23 = load ptr, ptr %head.i.i.i, align 8
  %24 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i29.i = zext i16 %24 to i32
  %add.ptr.i.i30.i = getelementptr i8, ptr %23, i32 %conv.i.i29.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i30.i, i32 0, i32 2
  %25 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %h_proto.i, align 1
  %h_proto9.i = getelementptr inbounds %struct.ethhdr, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %h_proto9.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %h_proto9.i, align 1
  %call10.i = tail call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 14) #3
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 15, i32 0, i32 3
  %28 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.nft_reject_br_push_etherhdr.exit_crit_edge, label %if.then.i

if.end.nft_reject_br_push_etherhdr.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %nft_reject_br_push_etherhdr.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 15, i32 0, i32 10
  %29 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vlan_tci.i, align 2
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 15, i32 0, i32 9
  %31 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vlan_proto.i, align 8
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 9
  %33 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 10
  %34 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %30, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 3
  %35 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %nft_reject_br_push_etherhdr.exit

nft_reject_br_push_etherhdr.exit:                 ; preds = %if.then.i, %if.end.nft_reject_br_push_etherhdr.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %36 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i5 = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i, label %nft_reject_br_push_etherhdr.exit.br_port_get_rcu.exit_crit_edge

nft_reject_br_push_etherhdr.exit.br_port_get_rcu.exit_crit_edge: ; preds = %nft_reject_br_push_etherhdr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %nft_reject_br_push_etherhdr.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_port_get_rcu.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i7

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

if.then.i7:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @.str.2) #3
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i7, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, %nft_reject_br_push_etherhdr.exit.br_port_get_rcu.exit_crit_edge
  tail call void @br_forward(ptr noundef %37, ptr noundef nonnull %call, i1 noundef zeroext false, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %br_port_get_rcu.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_icmp_code(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_reject_br_send_v6_unreach(ptr noundef %net, ptr noundef %oldskb, ptr noundef %dev, i32 noundef %hook, i8 noundef zeroext %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nf_reject_skb_v6_unreach(ptr noundef %net, ptr noundef %oldskb, ptr noundef null, i32 noundef %hook, i8 noundef zeroext %code) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 14) #3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call.i, i32 0, i32 1
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  %11 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h_source.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ethhdr, ptr %call.i, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i.i, align 2
  %15 = load ptr, ptr %head.i.i.i, align 8
  %16 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i23.i = zext i16 %16 to i32
  %add.ptr.i.i24.i = getelementptr i8, ptr %15, i32 %conv.i.i23.i
  %h_source6.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i24.i, i32 0, i32 1
  %17 = ptrtoint ptr %h_source6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_source6.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %h_source6.i, i32 4
  %20 = ptrtoint ptr %add.ptr.i25.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i25.i, align 2
  %add.ptr1.i26.i = getelementptr i8, ptr %call.i, i32 4
  %22 = ptrtoint ptr %add.ptr1.i26.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i26.i, align 2
  %23 = load ptr, ptr %head.i.i.i, align 8
  %24 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i29.i = zext i16 %24 to i32
  %add.ptr.i.i30.i = getelementptr i8, ptr %23, i32 %conv.i.i29.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i30.i, i32 0, i32 2
  %25 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %h_proto.i, align 1
  %h_proto9.i = getelementptr inbounds %struct.ethhdr, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %h_proto9.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %h_proto9.i, align 1
  %call10.i = tail call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 14) #3
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 15, i32 0, i32 3
  %28 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.nft_reject_br_push_etherhdr.exit_crit_edge, label %if.then.i

if.end.nft_reject_br_push_etherhdr.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %nft_reject_br_push_etherhdr.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 15, i32 0, i32 10
  %29 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vlan_tci.i, align 2
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %oldskb, i32 0, i32 15, i32 0, i32 9
  %31 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vlan_proto.i, align 8
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 9
  %33 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 10
  %34 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %30, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 3
  %35 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %nft_reject_br_push_etherhdr.exit

nft_reject_br_push_etherhdr.exit:                 ; preds = %if.then.i, %if.end.nft_reject_br_push_etherhdr.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %36 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i5 = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i, label %nft_reject_br_push_etherhdr.exit.br_port_get_rcu.exit_crit_edge

nft_reject_br_push_etherhdr.exit.br_port_get_rcu.exit_crit_edge: ; preds = %nft_reject_br_push_etherhdr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %nft_reject_br_push_etherhdr.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_port_get_rcu.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i7

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_port_get_rcu.exit

if.then.i7:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @.str.2) #3
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i7, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, %nft_reject_br_push_etherhdr.exit.br_port_get_rcu.exit_crit_edge
  tail call void @br_forward(ptr noundef %37, ptr noundef nonnull %call, i1 noundef zeroext false, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %br_port_get_rcu.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_reject_icmpv6_code(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_reject_skb_v4_unreach(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_forward(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_nft_reject_bridge__696_209_nft_reject_bridge_module_init6, !1, !"__initcall__kmod_nft_reject_bridge__696_209_nft_reject_bridge_module_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/nft_reject_bridge.c", i32 209, i32 1}
!2 = !{ptr @__exitcall_nft_reject_bridge_module_exit, !3, !"__exitcall_nft_reject_bridge_module_exit", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/nft_reject_bridge.c", i32 210, i32 1}
!4 = !{ptr @__UNIQUE_ID_file697, !5, !"__UNIQUE_ID_file697", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/nft_reject_bridge.c", i32 212, i32 1}
!6 = !{ptr @__UNIQUE_ID_license698, !5, !"__UNIQUE_ID_license698", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author699, !8, !"__UNIQUE_ID_author699", i1 false, i1 false}
!8 = !{!"../net/bridge/netfilter/nft_reject_bridge.c", i32 213, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias700, !10, !"__UNIQUE_ID_alias700", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/nft_reject_bridge.c", i32 214, i32 1}
!11 = !{ptr @__UNIQUE_ID_description701, !12, !"__UNIQUE_ID_description701", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/nft_reject_bridge.c", i32 215, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bridge/netfilter/nft_reject_bridge.c", i32 192, i32 11}
!15 = !{ptr @nft_reject_bridge_type, !16, !"nft_reject_bridge_type", i1 false, i1 false}
!16 = !{!"../net/bridge/netfilter/nft_reject_bridge.c", i32 190, i32 29}
!17 = !{ptr @nft_reject_bridge_ops, !18, !"nft_reject_bridge_ops", i1 false, i1 false}
!18 = !{!"../net/bridge/netfilter/nft_reject_bridge.c", i32 181, i32 34}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/bridge/netfilter/../br_private.h", i32 416, i32 9}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
