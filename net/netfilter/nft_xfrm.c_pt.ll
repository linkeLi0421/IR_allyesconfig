; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_xfrm.c_pt.bc'
source_filename = "../net/netfilter/nft_xfrm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_xfrm = type { i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.3, %union.anon.133, %union.anon.134, [48 x i8], %union.anon.135, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.137, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.133 = type { ptr }
%union.anon.134 = type { i64 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { i32, ptr }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.139, i32, i32, i32, i16, i16, %union.anon.141, i32, %union.anon.142, %union.anon.143, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.139 = type { i32 }
%union.anon.141 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.156, i32, i32, i8, i8 }
%struct.anon.156 = type { i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_dst = type { %union.anon.157, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.157 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.130, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.131, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.130 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.131 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }

@nft_xfrm_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_xfrm_get_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_xfrm_policy, i32 4, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_xfrm__575_284_nft_xfrm_module_init6 = internal global ptr @nft_xfrm_module_init, section ".initcall6.init", align 4
@__exitcall_nft_xfrm_module_exit = internal global ptr @nft_xfrm_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file576 = internal constant [37 x i8] c"nft_xfrm.file=net/netfilter/nft_xfrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license577 = internal constant [21 x i8] c"nft_xfrm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description578 = internal constant [52 x i8] c"nft_xfrm.description=nf_tables: xfrm/IPSec matching\00", section ".modinfo", align 1
@__UNIQUE_ID_author579 = internal constant [48 x i8] c"nft_xfrm.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author580 = internal constant [48 x i8] c"nft_xfrm.author=M\C3\A1t\C3\A9 Eckl <ecklm94@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias581 = internal constant [29 x i8] c"nft_xfrm.alias=nft-expr-xfrm\00", section ".modinfo", align 1
@nft_xfrm_get_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_xfrm_get_eval, ptr null, i32 16, ptr @nft_xfrm_get_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_xfrm_get_dump, ptr @nft_xfrm_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_xfrm_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xfrm\00", [27 x i8] zeroinitializer }, align 32
@nft_xfrm_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@nft_xfrm_get_eval.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/netfilter/nft_xfrm.c\00", [39 x i8] zeroinitializer }, align 32
@nft_xfrm_state_get_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@nft_xfrm_validate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.nft_xfrm_get_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 4, i32 16, i32 4, i32 16, i32 4, i32 4], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"nft_xfrm_get_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 257, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 267, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"nft_xfrm_policy\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 18, i32 32 }
@___asan_gen_.18 = private constant [28 x i8] c"../net/netfilter/nft_xfrm.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 206, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 1011, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"switch.table.nft_xfrm_get_init\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias581, ptr @__UNIQUE_ID_author579, ptr @__UNIQUE_ID_author580, ptr @__UNIQUE_ID_description578, ptr @__UNIQUE_ID_file576, ptr @__UNIQUE_ID_license577, ptr @__exitcall_nft_xfrm_module_exit, ptr @__initcall__kmod_nft_xfrm__575_284_nft_xfrm_module_init6, ptr @nft_xfrm_module_exit, ptr @nft_xfrm_get_ops, ptr @.str, ptr @nft_xfrm_policy, ptr @.str.1, ptr @.str.2, ptr @switch.table.nft_xfrm_get_init], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_xfrm_get_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_xfrm_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nft_xfrm_get_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_xfrm_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_xfrm_type) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_xfrm_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_xfrm_type) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_xfrm_get_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dir = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 2
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dir, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %land.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pkt, align 4
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool.i.not.i.i.i, label %sw.bb.if.then.i_crit_edge, label %skb_sec_path.exit.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

skb_sec_path.exit.i:                              ; preds = %sw.bb
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 22
  %8 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %11 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %shl.i.i.i
  %cmp.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i, label %skb_sec_path.exit.i.if.then.i_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.if.then.i_crit_edge:          ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 4
  %spnum.i = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 3
  %14 = ptrtoint ptr %spnum.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %spnum.i, align 1
  %conv.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp1.not.i = icmp sgt i32 %13, %conv.i
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %skb_sec_path.exit.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2, ptr %regs, align 4
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %conv.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @nft_xfrm_state_get_key(ptr noundef %data.i, ptr noundef %regs, ptr noundef %18) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %19 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pkt, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb1.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb1.skb_dst.exit.i_crit_edge:                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb1
  %call.i.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !41

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1013, i32 noundef 9, ptr noundef null) #4
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %sw.bb1.skb_dst.exit.i_crit_edge
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 8
  %and25.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not11.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not11.i, label %skb_dst.exit.i.for.end.i_crit_edge, label %land.rhs.lr.ph.i

skb_dst.exit.i.for.end.i_crit_edge:               ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %skb_dst.exit.i
  %26 = inttoptr i32 %and25.i.i to ptr
  %spnum.i43 = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.013.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %dst.012.i = phi ptr [ %26, %land.rhs.lr.ph.i ], [ %32, %for.inc.i.land.rhs.i_crit_edge ]
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %dst.012.i, i32 0, i32 4
  %27 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xfrm.i, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %29 = ptrtoint ptr %spnum.i43 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %spnum.i43, align 1
  %conv.i44 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.013.i, i32 %conv.i44)
  %cmp.i45 = icmp ult i32 %i.013.i, %conv.i44
  br i1 %cmp.i45, label %for.inc.i, label %if.end.i46

if.end.i46:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @nft_xfrm_state_get_key(ptr noundef %data.i, ptr noundef %regs, ptr noundef nonnull %28) #4
  br label %sw.epilog

for.inc.i:                                        ; preds = %for.body.i
  %child.i = getelementptr inbounds %struct.xfrm_dst, ptr %dst.012.i, i32 0, i32 2
  %31 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %child.i, align 4
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %skb_dst.exit.i.for.end.i_crit_edge
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -2, ptr %regs, align 4
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b42 = load i1, ptr @nft_xfrm_get_eval.__already_done, align 1
  br i1 %.b42, label %land.end.if.end27_crit_edge, label %if.then, !prof !42

land.end.if.end27_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nft_xfrm_get_eval.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 9, ptr noundef null) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.end.if.end27_crit_edge
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -2, ptr %regs, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end27, %for.end.i, %if.end.i46, %if.end.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_xfrm_get_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 2, label %if.end.sw.epilog_crit_edge
    i8 10, label %if.end.sw.epilog_crit_edge56
    i8 1, label %if.end.sw.epilog_crit_edge57
  ]

if.end.sw.epilog_crit_edge57:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge56:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge56, %if.end.sw.epilog_crit_edge57
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %11 = trunc i32 %10 to i8
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %data.i, align 4
  %switch.tableidx = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %13 = icmp ult i8 %switch.tableidx, 6
  br i1 %13, label %switch.lookup, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %sw.epilog
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.nft_xfrm_get_init, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i51 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i.i51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %switch = icmp ult i8 %19, 2
  br i1 %switch, label %sw.bb16, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb16:                                          ; preds = %switch.lookup
  %dir17 = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 2
  %20 = ptrtoint ptr %dir17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %dir17, align 2
  %arrayidx20 = getelementptr ptr, ptr %tb, i32 4
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %sw.bb16.if.end28_crit_edge, label %if.end25

sw.bb16.if.end28_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.end25:                                         ; preds = %sw.bb16
  %add.ptr.i.i52 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp = icmp ugt i32 %24, 5
  br i1 %cmp, label %if.end25.cleanup_crit_edge, label %if.end25.if.end28_crit_edge

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end25.if.end28_crit_edge, %sw.bb16.if.end28_crit_edge
  %spnum.055 = phi i32 [ %24, %if.end25.if.end28_crit_edge ], [ 0, %sw.bb16.if.end28_crit_edge ]
  %conv29 = trunc i32 %spnum.055 to i8
  %spnum30 = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 3
  %25 = ptrtoint ptr %spnum30 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv29, ptr %spnum30, align 1
  %26 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx4, align 4
  %dreg = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 1
  %call32 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %27, ptr noundef %dreg, ptr noundef null, i32 noundef 0, i32 noundef %switch.load) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end25.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end28 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -34, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_xfrm_get_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i23 = alloca i32, align 4
  %tmp.i21 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 1
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %data.i, align 4
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dir = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dir, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i21) #4
  %6 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tmp.i21, align 1
  %call.i22 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i21) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool7.not = icmp eq i32 %call.i22, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %spnum = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 3
  %7 = ptrtoint ptr %spnum to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %spnum, align 1
  %conv10 = zext i8 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i23) #4
  %9 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv10, ptr %tmp.i23, align 4
  %call.i24 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i23) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool12.not = icmp ne i32 %call.i24, 0
  %. = sext i1 %tobool12.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_xfrm_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dir = getelementptr inbounds %struct.nft_xfrm, ptr %data.i, i32 0, i32 2
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dir, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %1, label %land.end [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @nft_xfrm_validate.__already_done, align 1
  br i1 %.b39, label %land.end.cleanup_crit_edge, label %if.then, !prof !42

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nft_xfrm_validate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 248, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %hooks.0 = phi i32 [ 28, %sw.bb1 ], [ 7, %entry.sw.epilog_crit_edge ]
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %3 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chain, align 4
  %call35 = tail call i32 @nft_chain_validate_hooks(ptr noundef %4, i32 noundef %hooks.0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %sw.epilog ], [ -22, %if.then ], [ -22, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_xfrm_state_get_key(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dreg = getelementptr inbounds %struct.nft_xfrm, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %priv, align 4
  %family = getelementptr inbounds %struct.xfrm_state, ptr %state, i32 0, i32 14, i32 7
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %family, align 2
  %conv = trunc i16 %4 to i8
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %state, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode, align 4
  %7 = zext i8 %bf.load to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %bf.load, label %entry.sw.epilog_crit_edge [
    i8 1, label %entry.sw.bb.i_crit_edge
    i8 3, label %entry.sw.bb.i_crit_edge76
    i8 2, label %entry.sw.bb2.i_crit_edge
    i8 4, label %entry.sw.bb2.i_crit_edge77
    i8 0, label %entry.land.end_crit_edge
    i8 7, label %entry.land.end_crit_edge78
    i8 5, label %sw.bb48
    i8 6, label %sw.bb50
  ]

entry.land.end_crit_edge78:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

entry.sw.bb2.i_crit_edge77:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2.i

entry.sw.bb.i_crit_edge76:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge76
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv)
  %cmp.i = icmp eq i8 %conv, 2
  br i1 %cmp.i, label %sw.bb.i.xfrm_state_addr_ok.exit_crit_edge, label %sw.bb.i.if.then_crit_edge

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.bb.i.xfrm_state_addr_ok.exit_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfrm_state_addr_ok.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge77
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv)
  %cmp4.i = icmp eq i8 %conv, 10
  br i1 %cmp4.i, label %sw.bb2.i.xfrm_state_addr_ok.exit_crit_edge, label %sw.bb2.i.if.then_crit_edge

sw.bb2.i.if.then_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.bb2.i.xfrm_state_addr_ok.exit_crit_edge:       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfrm_state_addr_ok.exit

xfrm_state_addr_ok.exit:                          ; preds = %sw.bb2.i.xfrm_state_addr_ok.exit_crit_edge, %sw.bb.i.xfrm_state_addr_ok.exit_crit_edge
  %8 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %6, label %xfrm_state_addr_ok.exit.if.then_crit_edge [
    i8 4, label %xfrm_state_addr_ok.exit.if.end_crit_edge
    i8 1, label %xfrm_state_addr_ok.exit.if.end_crit_edge79
  ]

xfrm_state_addr_ok.exit.if.end_crit_edge79:       ; preds = %xfrm_state_addr_ok.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

xfrm_state_addr_ok.exit.if.end_crit_edge:         ; preds = %xfrm_state_addr_ok.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

xfrm_state_addr_ok.exit.if.then_crit_edge:        ; preds = %xfrm_state_addr_ok.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %xfrm_state_addr_ok.exit.if.then_crit_edge, %sw.bb2.i.if.then_crit_edge, %sw.bb.i.if.then_crit_edge
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end:                                           ; preds = %xfrm_state_addr_ok.exit.if.end_crit_edge, %xfrm_state_addr_ok.exit.if.end_crit_edge79
  %10 = zext i8 %bf.load to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %bf.load, label %if.end.sw.epilog_crit_edge [
    i8 4, label %sw.bb45
    i8 3, label %sw.bb43
    i8 1, label %sw.bb39
    i8 2, label %sw.bb40
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.end:                                         ; preds = %entry.land.end_crit_edge, %entry.land.end_crit_edge78
  %.b72 = load i1, ptr @nft_xfrm_state_get_key.__already_done, align 1
  br i1 %.b72, label %land.end.sw.epilog_crit_edge, label %if.then9, !prof !42

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nft_xfrm_state_get_key.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 9, ptr noundef null) #4
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %id = getelementptr inbounds %struct.xfrm_state, ptr %state, i32 0, i32 7
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  br label %cleanup

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %id41 = getelementptr inbounds %struct.xfrm_state, ptr %state, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %arrayidx, ptr %id41, i32 16)
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %saddr = getelementptr inbounds %struct.xfrm_state, ptr %state, i32 0, i32 14, i32 8
  %15 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %saddr, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %saddr47 = getelementptr inbounds %struct.xfrm_state, ptr %state, i32 0, i32 14, i32 8
  %18 = call ptr @memcpy(ptr %arrayidx, ptr %saddr47, i32 16)
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %props = getelementptr inbounds %struct.xfrm_state, ptr %state, i32 0, i32 14
  %19 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %props, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %state, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %spi, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.then9, %land.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb50, %sw.bb48, %sw.bb45, %sw.bb43, %sw.bb40, %sw.bb39, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_nft_xfrm__575_284_nft_xfrm_module_init6, !1, !"__initcall__kmod_nft_xfrm__575_284_nft_xfrm_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_xfrm.c", i32 284, i32 1}
!2 = !{ptr @__exitcall_nft_xfrm_module_exit, !3, !"__exitcall_nft_xfrm_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_xfrm.c", i32 285, i32 1}
!4 = !{ptr @__UNIQUE_ID_file576, !5, !"__UNIQUE_ID_file576", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_xfrm.c", i32 287, i32 1}
!6 = !{ptr @__UNIQUE_ID_license577, !5, !"__UNIQUE_ID_license577", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description578, !8, !"__UNIQUE_ID_description578", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_xfrm.c", i32 288, i32 1}
!9 = !{ptr @__UNIQUE_ID_author579, !10, !"__UNIQUE_ID_author579", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_xfrm.c", i32 289, i32 1}
!11 = !{ptr @__UNIQUE_ID_author580, !12, !"__UNIQUE_ID_author580", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_xfrm.c", i32 290, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias581, !14, !"__UNIQUE_ID_alias581", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_xfrm.c", i32 291, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_xfrm.c", i32 267, i32 11}
!17 = !{ptr @nft_xfrm_type, !18, !"nft_xfrm_type", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_xfrm.c", i32 266, i32 29}
!19 = !{ptr @nft_xfrm_get_ops, !20, !"nft_xfrm_get_ops", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_xfrm.c", i32 257, i32 34}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_xfrm.c", i32 206, i32 3}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/netfilter/nft_xfrm.c", i32 132, i32 3}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../net/netfilter/nft_xfrm.c", i32 248, i32 3}
!30 = !{ptr @nft_xfrm_policy, !31, !"nft_xfrm_policy", i1 false, i1 false}
!31 = !{!"../net/netfilter/nft_xfrm.c", i32 18, i32 32}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{!"branch_weights", i32 2000, i32 1}
