; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/iptable_mangle.c_pt.bc'
source_filename = "../net/ipv4/netfilter/iptable_mangle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xt_table = type { %struct.list_head, i32, ptr, ptr, ptr, i8, i32, [32 x i8] }
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_file509 = internal constant [54 x i8] c"iptable_mangle.file=net/ipv4/netfilter/iptable_mangle\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [27 x i8] c"iptable_mangle.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author511 = internal constant [67 x i8] c"iptable_mangle.author=Netfilter Core Team <coreteam@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description512 = internal constant [49 x i8] c"iptable_mangle.description=iptables mangle table\00", section ".modinfo", align 1
@iptable_mangle_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr @iptable_mangle_net_pre_exit, ptr @iptable_mangle_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@packet_mangler = internal constant { %struct.xt_table, [32 x i8] } { %struct.xt_table { %struct.list_head zeroinitializer, i32 31, ptr null, ptr null, ptr null, i8 2, i32 -150, [32 x i8] c"mangle\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [32 x i8] zeroinitializer }, align 32
@mangle_ops = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_iptable_mangle__513_142_iptable_mangle_init6 = internal global ptr @iptable_mangle_init, section ".initcall6.init", align 4
@__exitcall_iptable_mangle_fini = internal global ptr @iptable_mangle_fini, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"iptable_mangle_net_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 106, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"packet_mangler\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 28, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [39 x i8] c"../net/ipv4/netfilter/iptable_mangle.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 98, i32 37 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author511, ptr @__UNIQUE_ID_description512, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_license510, ptr @__exitcall_iptable_mangle_fini, ptr @__initcall__kmod_iptable_mangle__513_142_iptable_mangle_init6, ptr @iptable_mangle_fini, ptr @iptable_mangle_net_ops, ptr @packet_mangler, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iptable_mangle_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_mangler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iptable_mangle_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @iptable_mangle_net_ops) #3
  tail call void @xt_unregister_template(ptr noundef nonnull @packet_mangler) #3
  %0 = load ptr, ptr @mangle_ops, align 4
  tail call void @kfree(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iptable_mangle_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_template(ptr noundef nonnull @packet_mangler, ptr noundef nonnull @iptable_mangle_table_init) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @xt_hook_ops_alloc(ptr noundef nonnull @packet_mangler, ptr noundef nonnull @iptable_mangle_hook) #3
  store ptr %call1, ptr @mangle_ops, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_template(ptr noundef nonnull @packet_mangler) #3
  %0 = load ptr, ptr @mangle_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @iptable_mangle_net_ops) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_template(ptr noundef nonnull @packet_mangler) #3
  %2 = load ptr, ptr @mangle_ops, align 4
  tail call void @kfree(ptr noundef %2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %call6, %if.then8 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iptable_mangle_net_pre_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipt_unregister_table_pre_exit(ptr noundef %net, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iptable_mangle_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipt_unregister_table_exit(ptr noundef %net, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipt_unregister_table_pre_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipt_unregister_table_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_template(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iptable_mangle_table_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ipt_alloc_initial_table(ptr noundef nonnull @packet_mangler) #3
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load ptr, ptr @mangle_ops, align 4
  %call1 = tail call i32 @ipt_register_table(ptr noundef %net, ptr noundef nonnull @packet_mangler, ptr noundef nonnull %call, ptr noundef %0) #3
  tail call void @kfree(ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_hook_ops_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iptable_mangle_hook(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %8 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %saddr1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %saddr1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %saddr1.i, align 4
  %daddr2.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %daddr2.i, align 4
  %tos3.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %tos3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tos3.i, align 1
  %call4.i = tail call i32 @ipt_do_table(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #3
  %15 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %if.then.i [
    i32 0, label %if.then.return_crit_edge
    i32 2, label %if.end24.fold.split.i
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then.i:                                        ; preds = %if.then
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %18 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i42.i = zext i16 %19 to i32
  %add.ptr.i.i43.i = getelementptr i8, ptr %17, i32 %conv.i.i42.i
  %saddr7.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i43.i, i32 0, i32 8
  %20 = ptrtoint ptr %saddr7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saddr7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %10)
  %cmp8.not.i = icmp eq i32 %21, %10
  br i1 %cmp8.not.i, label %lor.lhs.false.i, label %if.then.i.if.then18.i_crit_edge

if.then.i.if.then18.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %daddr9.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i43.i, i32 0, i32 9
  %22 = ptrtoint ptr %daddr9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %daddr9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %12)
  %cmp10.not.i = icmp eq i32 %23, %12
  br i1 %cmp10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false.i.if.then18.i_crit_edge

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %4)
  %cmp12.not.i = icmp eq i32 %25, %4
  br i1 %cmp12.not.i, label %lor.lhs.false13.i, label %lor.lhs.false11.i.if.then18.i_crit_edge

lor.lhs.false11.i.if.then18.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false11.i
  %tos14.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i43.i, i32 0, i32 1
  %26 = ptrtoint ptr %tos14.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tos14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %14)
  %cmp16.not.i = icmp eq i8 %27, %14
  br i1 %cmp16.not.i, label %lor.lhs.false13.i.return_crit_edge, label %lor.lhs.false13.i.if.then18.i_crit_edge

lor.lhs.false13.i.if.then18.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18.i

lor.lhs.false13.i.return_crit_edge:               ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then18.i:                                      ; preds = %lor.lhs.false13.i.if.then18.i_crit_edge, %lor.lhs.false11.i.if.then18.i_crit_edge, %lor.lhs.false.i.if.then18.i_crit_edge, %if.then.i.if.then18.i_crit_edge
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %28 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i, align 4
  %sk.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %30 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk.i, align 4
  %call19.i = tail call i32 @ip_route_me_harder(ptr noundef %29, ptr noundef %31, ptr noundef %skb, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  %.neg.i = mul i32 %call19.i, -65536
  %spec.select.i = select i1 %cmp20.i, i32 %.neg.i, i32 %call4.i
  br label %return

if.end24.fold.split.i:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @ipt_do_table(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #3
  br label %return

return:                                           ; preds = %if.end, %if.end24.fold.split.i, %if.then18.i, %lor.lhs.false13.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call4.i, %lor.lhs.false13.i.return_crit_edge ], [ %call4.i, %if.then.return_crit_edge ], [ 2, %if.end24.fold.split.i ], [ %spec.select.i, %if.then18.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipt_alloc_initial_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipt_register_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipt_do_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_me_harder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_file509, !1, !"__UNIQUE_ID_file509", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/iptable_mangle.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_license510, !1, !"__UNIQUE_ID_license510", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author511, !4, !"__UNIQUE_ID_author511", i1 false, i1 false}
!4 = !{!"../net/ipv4/netfilter/iptable_mangle.c", i32 19, i32 1}
!5 = !{ptr @__UNIQUE_ID_description512, !6, !"__UNIQUE_ID_description512", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/iptable_mangle.c", i32 20, i32 1}
!7 = !{ptr @__initcall__kmod_iptable_mangle__513_142_iptable_mangle_init6, !8, !"__initcall__kmod_iptable_mangle__513_142_iptable_mangle_init6", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/iptable_mangle.c", i32 142, i32 1}
!9 = !{ptr @__exitcall_iptable_mangle_fini, !10, !"__exitcall_iptable_mangle_fini", i1 false, i1 false}
!10 = !{!"../net/ipv4/netfilter/iptable_mangle.c", i32 143, i32 1}
!11 = !{ptr @mangle_ops, !12, !"mangle_ops", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/iptable_mangle.c", i32 82, i32 28}
!13 = !{ptr @iptable_mangle_net_ops, !14, !"iptable_mangle_net_ops", i1 false, i1 false}
!14 = !{!"../net/ipv4/netfilter/iptable_mangle.c", i32 106, i32 33}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv4/netfilter/iptable_mangle.c", i32 98, i32 37}
!17 = !{ptr @packet_mangler, !18, !"packet_mangler", i1 false, i1 false}
!18 = !{!"../net/ipv4/netfilter/iptable_mangle.c", i32 28, i32 30}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
