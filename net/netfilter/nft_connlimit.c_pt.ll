; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_connlimit.c_pt.bc'
source_filename = "../net/netfilter/nft_connlimit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_object_type = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nft_object_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.112 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.112 = type { %union.nf_inet_addr, %union.anon.113, i8, i8 }
%union.anon.113 = type { i16 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.3, %union.anon.150, %union.anon.151, [48 x i8], %union.anon.152, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.154, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { i32, ptr }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.156, i32, i32, i32, i16, i16, %union.anon.158, i32, %union.anon.159, %union.anon.160, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.156 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.169, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.169 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nf_conncount_list = type { %struct.spinlock, %struct.list_head, i32 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.nft_connlimit = type { ptr, i32, i8 }
%struct.nft_object = type { %struct.list_head, %struct.rhlist_head, %struct.nft_object_hash_key, i32, i64, i16, ptr, [80 x i8], ptr, [4 x i8], [0 x i8], [120 x i8] }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_object_hash_key = type { ptr, ptr }

@nft_connlimit_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_connlimit_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_connlimit_policy, i32 2, i8 0, i8 3 }, section ".data..read_mostly", align 4
@nft_connlimit_obj_type = internal global %struct.nft_object_type { ptr null, ptr @nft_connlimit_obj_ops, %struct.list_head zeroinitializer, i32 5, i32 2, ptr null, ptr @nft_connlimit_policy }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_connlimit__635_295_nft_connlimit_module_init6 = internal global ptr @nft_connlimit_module_init, section ".initcall6.init", align 4
@__exitcall_nft_connlimit_module_exit = internal global ptr @nft_connlimit_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file636 = internal constant [47 x i8] c"nft_connlimit.file=net/netfilter/nft_connlimit\00", section ".modinfo", align 1
@__UNIQUE_ID_license637 = internal constant [26 x i8] c"nft_connlimit.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author638 = internal constant [39 x i8] c"nft_connlimit.author=Pablo Neira Ayuso\00", section ".modinfo", align 1
@__UNIQUE_ID_alias639 = internal constant [39 x i8] c"nft_connlimit.alias=nft-expr-connlimit\00", section ".modinfo", align 1
@__UNIQUE_ID_alias640 = internal constant [30 x i8] c"nft_connlimit.alias=nft-obj-5\00", section ".modinfo", align 1
@__UNIQUE_ID_description641 = internal constant [58 x i8] c"nft_connlimit.description=nftables connlimit rule support\00", section ".modinfo", align 1
@nft_connlimit_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_connlimit_eval, ptr @nft_connlimit_clone, i32 24, ptr @nft_connlimit_init, ptr null, ptr null, ptr @nft_connlimit_destroy, ptr @nft_connlimit_destroy_clone, ptr @nft_connlimit_dump, ptr null, ptr null, ptr @nft_connlimit_gc, ptr null, ptr null, ptr null, ptr @nft_connlimit_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connlimit\00", [22 x i8] zeroinitializer }, align 32
@nft_connlimit_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nf_ct_zone_dflt = external dso_local constant %struct.nf_conntrack_zone, align 2
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nft_connlimit_obj_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_connlimit_obj_eval, i32 12, ptr @nft_connlimit_obj_init, ptr @nft_connlimit_obj_destroy, ptr @nft_connlimit_obj_dump, ptr null, ptr @nft_connlimit_obj_type }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"nft_connlimit_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 250, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 263, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"nft_connlimit_policy\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 156, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"nft_connlimit_obj_ops\00", align 1
@___asan_gen_.11 = private constant [33 x i8] c"../net/netfilter/nft_connlimit.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 162, i32 36 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias639, ptr @__UNIQUE_ID_alias640, ptr @__UNIQUE_ID_author638, ptr @__UNIQUE_ID_description641, ptr @__UNIQUE_ID_file636, ptr @__UNIQUE_ID_license637, ptr @__exitcall_nft_connlimit_module_exit, ptr @__initcall__kmod_nft_connlimit__635_295_nft_connlimit_module_init6, ptr @nft_connlimit_module_exit, ptr @nft_connlimit_ops, ptr @.str, ptr @nft_connlimit_policy, ptr @nft_connlimit_obj_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_connlimit_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_connlimit_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_connlimit_obj_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_connlimit_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_connlimit_type) #6
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_connlimit_obj_type) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_connlimit_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_obj(ptr noundef nonnull @nft_connlimit_obj_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_connlimit_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err1:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_connlimit_obj_type) #6
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err1 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_connlimit_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %tuple.i = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple.i) #6
  %0 = call ptr @memset(ptr %tuple.i, i32 255, i32 40)
  %1 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pkt, align 4
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i.i, align 8
  %and1.i.i = and i32 %4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %and1.i.i to ptr
  %tuple1.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 3
  br label %if.end10.i

if.else.i:                                        ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %state.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i.i, align 4
  %pf.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pf.i.i, align 1
  %conv.i = zext i8 %15 to i16
  %net.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i.i, align 4
  %call8.i = call zeroext i1 @nf_ct_get_tuplepr(ptr noundef %2, i32 noundef %sub.ptr.sub.i.i, i16 noundef zeroext %conv.i, ptr noundef %17, ptr noundef nonnull %tuple.i) #6
  br i1 %call8.i, label %if.else.i.if.end10.i_crit_edge, label %if.else.i.cleanup.sink.split.i_crit_edge

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i.if.end10.i_crit_edge, %if.then.i
  %zone.0.i = phi ptr [ %zone.i.i, %if.then.i ], [ @nf_ct_zone_dflt, %if.else.i.if.end10.i_crit_edge ]
  %tuple_ptr.0.i = phi ptr [ %tuple1.i, %if.then.i ], [ %tuple.i, %if.else.i.if.end10.i_crit_edge ]
  %state.i2.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %18 = ptrtoint ptr %state.i2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state.i2.i, align 4
  %net.i3.i = getelementptr inbounds %struct.nf_hook_state, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %net.i3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i3.i, align 4
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %call12.i = call i32 @nf_conncount_add(ptr noundef %21, ptr noundef %23, ptr noundef %tuple_ptr.0.i, ptr noundef %zone.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end15.i, label %if.end10.i.cleanup.sink.split.i_crit_edge

if.end10.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end15.i:                                       ; preds = %if.end10.i
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %count17.i = getelementptr inbounds %struct.nf_conncount_list, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %count17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count17.i, align 4
  %limit.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %28 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp18.i = icmp ugt i32 %27, %29
  %invert.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %30 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %invert.i, align 4, !range !36
  %32 = zext i1 %cmp18.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %32)
  %tobool22.not.i = icmp eq i8 %31, %32
  br i1 %tobool22.not.i, label %if.end15.i.nft_connlimit_do_eval.exit_crit_edge, label %if.end15.i.cleanup.sink.split.i_crit_edge

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end15.i.nft_connlimit_do_eval.exit_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_connlimit_do_eval.exit

cleanup.sink.split.i:                             ; preds = %if.end15.i.cleanup.sink.split.i_crit_edge, %if.end10.i.cleanup.sink.split.i_crit_edge, %if.else.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.else.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end10.i.cleanup.sink.split.i_crit_edge ], [ -2, %if.end15.i.cleanup.sink.split.i_crit_edge ]
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink.i, ptr %regs, align 4
  br label %nft_connlimit_do_eval.exit

nft_connlimit_do_eval.exit:                       ; preds = %cleanup.sink.split.i, %if.end15.i.nft_connlimit_do_eval.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_connlimit_clone(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 56) #9
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_conncount_list_init(ptr noundef nonnull %call7.i) #6
  %limit = getelementptr inbounds %struct.nft_expr, ptr %src, i32 1, i32 1
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit, align 4
  %limit5 = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 1, i32 1
  %4 = ptrtoint ptr %limit5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %limit5, align 4
  %invert = getelementptr inbounds %struct.nft_expr, ptr %src, i32 2
  %5 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %invert, align 4, !range !36
  %invert7 = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 2
  %7 = ptrtoint ptr %invert7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %invert7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_connlimit_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @nft_connlimit_do_init(ptr noundef %ctx, ptr noundef %tb, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_connlimit_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %family.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family.i, align 2
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  tail call void @nf_conncount_cache_free(ptr noundef %5) #6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_connlimit_destroy_clone(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @nf_conncount_cache_free(ptr noundef %1) #6
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_connlimit_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i8.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %limit.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %0 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limit.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.nla_put_failure.i_crit_edge

entry.nla_put_failure.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure.i

if.end.i:                                         ; preds = %entry
  %invert.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %3 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %invert.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.nft_connlimit_do_dump.exit_crit_edge, label %land.lhs.true.i

if.end.i.nft_connlimit_do_dump.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_connlimit_do_dump.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i8.i) #6
  %5 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %tmp.i8.i, align 4
  %call.i9.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i8.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool3.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.nft_connlimit_do_dump.exit_crit_edge, label %land.lhs.true.i.nla_put_failure.i_crit_edge

land.lhs.true.i.nla_put_failure.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure.i

land.lhs.true.i.nft_connlimit_do_dump.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_connlimit_do_dump.exit

nla_put_failure.i:                                ; preds = %land.lhs.true.i.nla_put_failure.i_crit_edge, %entry.nla_put_failure.i_crit_edge
  br label %nft_connlimit_do_dump.exit

nft_connlimit_do_dump.exit:                       ; preds = %nla_put_failure.i, %land.lhs.true.i.nft_connlimit_do_dump.exit_crit_edge, %if.end.i.nft_connlimit_do_dump.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %nla_put_failure.i ], [ 0, %land.lhs.true.i.nft_connlimit_do_dump.exit_crit_edge ], [ 0, %if.end.i.nft_connlimit_do_dump.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_connlimit_gc(ptr noundef %net, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  tail call fastcc void @local_bh_disable()
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %call1 = tail call zeroext i1 @nf_conncount_gc_list(ptr noundef %net, ptr noundef %1) #6
  tail call fastcc void @local_bh_enable()
  ret i1 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_get_tuplepr(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conncount_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conncount_list_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_connlimit_do_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %add.ptr.i.i43 = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %tobool7.not = icmp ult i32 %7, 2
  br i1 %tobool7.not, label %if.end9, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp ne i32 %7, 0
  br label %if.end14

if.end14:                                         ; preds = %if.end9, %if.end.if.end14_crit_edge
  %invert.0.off0 = phi i1 [ false, %if.end.if.end14_crit_edge ], [ %tobool11.not, %if.end9 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 56) #9
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %priv, align 4
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  tail call void @nf_conncount_list_init(ptr noundef nonnull %call7.i) #6
  %limit21 = getelementptr inbounds %struct.nft_connlimit, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %limit21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %limit21, align 4
  %invert23 = getelementptr inbounds %struct.nft_connlimit, ptr %priv, i32 0, i32 2
  %frombool = zext i1 %invert.0.off0 to i8
  %11 = ptrtoint ptr %invert23 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %invert23, align 4
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family, align 2
  %call24 = tail call i32 @nf_ct_netns_get(ptr noundef %13, i8 noundef zeroext %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %err_netns, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_netns:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %err_netns, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %err_netns ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.then4.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conncount_cache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_conncount_gc_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_connlimit_obj_eval(ptr nocapture noundef readonly %obj, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #5 align 64 {
entry:
  %tuple.i = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple.i) #6
  %0 = call ptr @memset(ptr %tuple.i, i32 255, i32 40)
  %1 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pkt, align 4
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i.i, align 8
  %and1.i.i = and i32 %4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %and1.i.i to ptr
  %tuple1.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 3
  br label %if.end10.i

if.else.i:                                        ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %state.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i.i, align 4
  %pf.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pf.i.i, align 1
  %conv.i = zext i8 %15 to i16
  %net.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i.i, align 4
  %call8.i = call zeroext i1 @nf_ct_get_tuplepr(ptr noundef %2, i32 noundef %sub.ptr.sub.i.i, i16 noundef zeroext %conv.i, ptr noundef %17, ptr noundef nonnull %tuple.i) #6
  br i1 %call8.i, label %if.else.i.if.end10.i_crit_edge, label %if.else.i.cleanup.sink.split.i_crit_edge

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i.if.end10.i_crit_edge, %if.then.i
  %zone.0.i = phi ptr [ %zone.i.i, %if.then.i ], [ @nf_ct_zone_dflt, %if.else.i.if.end10.i_crit_edge ]
  %tuple_ptr.0.i = phi ptr [ %tuple1.i, %if.then.i ], [ %tuple.i, %if.else.i.if.end10.i_crit_edge ]
  %state.i2.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %18 = ptrtoint ptr %state.i2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state.i2.i, align 4
  %net.i3.i = getelementptr inbounds %struct.nf_hook_state, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %net.i3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i3.i, align 4
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %call12.i = call i32 @nf_conncount_add(ptr noundef %21, ptr noundef %23, ptr noundef %tuple_ptr.0.i, ptr noundef %zone.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end15.i, label %if.end10.i.cleanup.sink.split.i_crit_edge

if.end10.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end15.i:                                       ; preds = %if.end10.i
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %count17.i = getelementptr inbounds %struct.nf_conncount_list, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %count17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count17.i, align 4
  %limit.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %28 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp18.i = icmp ugt i32 %27, %29
  %invert.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %30 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %invert.i, align 4, !range !36
  %32 = zext i1 %cmp18.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %32)
  %tobool22.not.i = icmp eq i8 %31, %32
  br i1 %tobool22.not.i, label %if.end15.i.nft_connlimit_do_eval.exit_crit_edge, label %if.end15.i.cleanup.sink.split.i_crit_edge

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end15.i.nft_connlimit_do_eval.exit_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_connlimit_do_eval.exit

cleanup.sink.split.i:                             ; preds = %if.end15.i.cleanup.sink.split.i_crit_edge, %if.end10.i.cleanup.sink.split.i_crit_edge, %if.else.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.else.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end10.i.cleanup.sink.split.i_crit_edge ], [ -2, %if.end15.i.cleanup.sink.split.i_crit_edge ]
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink.i, ptr %regs, align 4
  br label %nft_connlimit_do_eval.exit

nft_connlimit_do_eval.exit:                       ; preds = %cleanup.sink.split.i, %if.end15.i.nft_connlimit_do_eval.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_connlimit_obj_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call1 = tail call fastcc i32 @nft_connlimit_do_init(ptr noundef %ctx, ptr noundef %tb, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_connlimit_obj_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %family.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family.i, align 2
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  tail call void @nf_conncount_cache_free(ptr noundef %5) #6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_connlimit_obj_dump(ptr noundef %skb, ptr nocapture noundef readonly %obj, i1 noundef zeroext %reset) #2 align 64 {
entry:
  %tmp.i8.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %limit.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %0 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limit.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.nla_put_failure.i_crit_edge

entry.nla_put_failure.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure.i

if.end.i:                                         ; preds = %entry
  %invert.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %3 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %invert.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.nft_connlimit_do_dump.exit_crit_edge, label %land.lhs.true.i

if.end.i.nft_connlimit_do_dump.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_connlimit_do_dump.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i8.i) #6
  %5 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %tmp.i8.i, align 4
  %call.i9.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i8.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool3.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.nft_connlimit_do_dump.exit_crit_edge, label %land.lhs.true.i.nla_put_failure.i_crit_edge

land.lhs.true.i.nla_put_failure.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure.i

land.lhs.true.i.nft_connlimit_do_dump.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_connlimit_do_dump.exit

nla_put_failure.i:                                ; preds = %land.lhs.true.i.nla_put_failure.i_crit_edge, %entry.nla_put_failure.i_crit_edge
  br label %nft_connlimit_do_dump.exit

nft_connlimit_do_dump.exit:                       ; preds = %nla_put_failure.i, %land.lhs.true.i.nft_connlimit_do_dump.exit_crit_edge, %if.end.i.nft_connlimit_do_dump.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %nla_put_failure.i ], [ 0, %land.lhs.true.i.nft_connlimit_do_dump.exit_crit_edge ], [ 0, %if.end.i.nft_connlimit_do_dump.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_nft_connlimit__635_295_nft_connlimit_module_init6, !1, !"__initcall__kmod_nft_connlimit__635_295_nft_connlimit_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_connlimit.c", i32 295, i32 1}
!2 = !{ptr @__exitcall_nft_connlimit_module_exit, !3, !"__exitcall_nft_connlimit_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_connlimit.c", i32 296, i32 1}
!4 = !{ptr @__UNIQUE_ID_file636, !5, !"__UNIQUE_ID_file636", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_connlimit.c", i32 298, i32 1}
!6 = !{ptr @__UNIQUE_ID_license637, !5, !"__UNIQUE_ID_license637", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author638, !8, !"__UNIQUE_ID_author638", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_connlimit.c", i32 299, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias639, !10, !"__UNIQUE_ID_alias639", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_connlimit.c", i32 300, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias640, !12, !"__UNIQUE_ID_alias640", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_connlimit.c", i32 301, i32 1}
!13 = !{ptr @__UNIQUE_ID_description641, !14, !"__UNIQUE_ID_description641", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_connlimit.c", i32 302, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_connlimit.c", i32 263, i32 11}
!17 = !{ptr @nft_connlimit_type, !18, !"nft_connlimit_type", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_connlimit.c", i32 262, i32 29}
!19 = !{ptr @nft_connlimit_ops, !20, !"nft_connlimit_ops", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_connlimit.c", i32 250, i32 34}
!21 = !{ptr @nft_connlimit_policy, !22, !"nft_connlimit_policy", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_connlimit.c", i32 156, i32 32}
!23 = !{ptr @nft_connlimit_obj_type, !24, !"nft_connlimit_obj_type", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_connlimit.c", i32 171, i32 31}
!25 = !{ptr @nft_connlimit_obj_ops, !26, !"nft_connlimit_obj_ops", i1 false, i1 false}
!26 = !{!"../net/netfilter/nft_connlimit.c", i32 162, i32 36}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
