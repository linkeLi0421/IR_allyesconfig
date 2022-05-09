; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6table_mangle.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6table_mangle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xt_table = type { %struct.list_head, i32, ptr, ptr, ptr, i8, i32, [32 x i8] }
%struct.sk_buff = type { %union.anon.82, %union.anon.151, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_file618 = internal constant [56 x i8] c"ip6table_mangle.file=net/ipv6/netfilter/ip6table_mangle\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [28 x i8] c"ip6table_mangle.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [68 x i8] c"ip6table_mangle.author=Netfilter Core Team <coreteam@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [51 x i8] c"ip6table_mangle.description=ip6tables mangle table\00", section ".modinfo", align 1
@ip6table_mangle_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr @ip6table_mangle_net_pre_exit, ptr @ip6table_mangle_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@packet_mangler = internal constant { %struct.xt_table, [32 x i8] } { %struct.xt_table { %struct.list_head zeroinitializer, i32 31, ptr null, ptr null, ptr null, i8 10, i32 -150, [32 x i8] c"mangle\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [32 x i8] zeroinitializer }, align 32
@mangle_ops = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_ip6table_mangle__622_135_ip6table_mangle_init6 = internal global ptr @ip6table_mangle_init, section ".initcall6.init", align 4
@__exitcall_ip6table_mangle_fini = internal global ptr @ip6table_mangle_fini, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"ip6table_mangle_net_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 99, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"packet_mangler\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 23, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [40 x i8] c"../net/ipv6/netfilter/ip6table_mangle.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 91, i32 38 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_ip6table_mangle_fini, ptr @__initcall__kmod_ip6table_mangle__622_135_ip6table_mangle_init6, ptr @ip6table_mangle_fini, ptr @ip6table_mangle_net_ops, ptr @packet_mangler, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6table_mangle_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_mangler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip6table_mangle_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6table_mangle_net_ops) #3
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
define internal i32 @ip6table_mangle_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_template(ptr noundef nonnull @packet_mangler, ptr noundef nonnull @ip6table_mangle_table_init) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @xt_hook_ops_alloc(ptr noundef nonnull @packet_mangler, ptr noundef nonnull @ip6table_mangle_hook) #3
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
  %call6 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6table_mangle_net_ops) #3
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
define internal void @ip6table_mangle_net_pre_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ip6t_unregister_table_pre_exit(ptr noundef %net, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6table_mangle_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ip6t_unregister_table_exit(ptr noundef %net, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6t_unregister_table_pre_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6t_unregister_table_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_template(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6table_mangle_table_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ip6t_alloc_initial_table(ptr noundef nonnull @packet_mangler) #3
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load ptr, ptr @mangle_ops, align 4
  %call1 = tail call i32 @ip6t_register_table(ptr noundef %net, ptr noundef nonnull @packet_mangler, ptr noundef nonnull %call, ptr noundef %0) #3
  tail call void @kfree(ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_hook_ops_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6table_mangle_hook(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #2 align 64 {
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
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %saddr1.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %saddr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %saddr.sroa.0.0.copyload.i = load i32, ptr %saddr1.i, align 4
  %saddr.sroa.5.0.saddr1.sroa_idx.i = getelementptr inbounds i8, ptr %saddr1.i, i32 4
  %7 = ptrtoint ptr %saddr.sroa.5.0.saddr1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %saddr.sroa.5.0.copyload.i = load i32, ptr %saddr.sroa.5.0.saddr1.sroa_idx.i, align 4
  %saddr.sroa.7.0.saddr1.sroa_idx.i = getelementptr inbounds i8, ptr %saddr1.i, i32 8
  %8 = ptrtoint ptr %saddr.sroa.7.0.saddr1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %saddr.sroa.7.0.copyload.i = load i32, ptr %saddr.sroa.7.0.saddr1.sroa_idx.i, align 4
  %saddr.sroa.9.0.saddr1.sroa_idx.i = getelementptr inbounds i8, ptr %saddr1.i, i32 12
  %9 = ptrtoint ptr %saddr.sroa.9.0.saddr1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %saddr.sroa.9.0.copyload.i = load i32, ptr %saddr.sroa.9.0.saddr1.sroa_idx.i, align 4
  %daddr3.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %daddr3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %daddr.sroa.0.0.copyload.i = load i32, ptr %daddr3.i, align 4
  %daddr.sroa.5.0.daddr3.sroa_idx.i = getelementptr inbounds i8, ptr %daddr3.i, i32 4
  %11 = ptrtoint ptr %daddr.sroa.5.0.daddr3.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %daddr.sroa.5.0.copyload.i = load i32, ptr %daddr.sroa.5.0.daddr3.sroa_idx.i, align 4
  %daddr.sroa.7.0.daddr3.sroa_idx.i = getelementptr inbounds i8, ptr %daddr3.i, i32 8
  %12 = ptrtoint ptr %daddr.sroa.7.0.daddr3.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %daddr.sroa.7.0.copyload.i = load i32, ptr %daddr.sroa.7.0.daddr3.sroa_idx.i, align 4
  %daddr.sroa.9.0.daddr3.sroa_idx.i = getelementptr inbounds i8, ptr %daddr3.i, i32 12
  %13 = ptrtoint ptr %daddr.sroa.9.0.daddr3.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %daddr.sroa.9.0.copyload.i = load i32, ptr %daddr.sroa.9.0.daddr3.sroa_idx.i, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %hop_limit5.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %hop_limit5.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hop_limit5.i, align 1
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i.i, align 4
  %call7.i = tail call i32 @ip6t_do_table(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #3
  %21 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7.i, label %land.lhs.true9.i [
    i32 0, label %if.then.return_crit_edge
    i32 2, label %if.end32.fold.split.i
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

land.lhs.true9.i:                                 ; preds = %if.then
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %24 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i63.i = zext i16 %25 to i32
  %add.ptr.i.i64.i = getelementptr i8, ptr %23, i32 %conv.i.i63.i
  %saddr11.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64.i, i32 0, i32 5
  %26 = ptrtoint ptr %saddr11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %saddr11.i, align 4
  %xor.i.i = xor i32 %27, %saddr.sroa.0.0.copyload.i
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %saddr11.i, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i.i, align 4
  %xor7.i.i = xor i32 %29, %saddr.sroa.5.0.copyload.i
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %saddr11.i, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i.i, align 4
  %xor12.i.i = xor i32 %31, %saddr.sroa.7.0.copyload.i
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %saddr11.i, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15.i.i, align 4
  %xor18.i.i = xor i32 %33, %saddr.sroa.9.0.copyload.i
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %land.lhs.true9.i.if.then.i_crit_edge

land.lhs.true9.i.if.then.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true9.i
  %daddr14.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64.i, i32 0, i32 6
  %34 = ptrtoint ptr %daddr14.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %daddr14.i, align 4
  %xor.i69.i = xor i32 %35, %daddr.sroa.0.0.copyload.i
  %arrayidx4.i70.i = getelementptr [4 x i32], ptr %daddr14.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx4.i70.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4.i70.i, align 4
  %xor7.i72.i = xor i32 %37, %daddr.sroa.5.0.copyload.i
  %or.i73.i = or i32 %xor7.i72.i, %xor.i69.i
  %arrayidx9.i74.i = getelementptr [4 x i32], ptr %daddr14.i, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx9.i74.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx9.i74.i, align 4
  %xor12.i76.i = xor i32 %39, %daddr.sroa.7.0.copyload.i
  %or13.i77.i = or i32 %or.i73.i, %xor12.i76.i
  %arrayidx15.i78.i = getelementptr [4 x i32], ptr %daddr14.i, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx15.i78.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx15.i78.i, align 4
  %xor18.i80.i = xor i32 %41, %daddr.sroa.9.0.copyload.i
  %or19.i81.i = or i32 %or13.i77.i, %xor18.i80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i81.i)
  %cmp.i82.i = icmp eq i32 %or19.i81.i, 0
  br i1 %cmp.i82.i, label %lor.lhs.false16.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false.i
  %42 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %16)
  %cmp17.not.i = icmp eq i32 %43, %16
  br i1 %cmp17.not.i, label %lor.lhs.false18.i, label %lor.lhs.false16.i.if.then.i_crit_edge

lor.lhs.false16.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false16.i
  %hop_limit20.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64.i, i32 0, i32 4
  %44 = ptrtoint ptr %hop_limit20.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hop_limit20.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %18)
  %cmp22.not.i = icmp eq i8 %45, %18
  br i1 %cmp22.not.i, label %lor.lhs.false24.i, label %lor.lhs.false18.i.if.then.i_crit_edge

lor.lhs.false18.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false18.i
  %46 = ptrtoint ptr %add.ptr.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i64.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %47)
  %cmp26.not.i = icmp eq i32 %20, %47
  br i1 %cmp26.not.i, label %lor.lhs.false24.i.return_crit_edge, label %lor.lhs.false24.i.if.then.i_crit_edge

lor.lhs.false24.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.false24.i.return_crit_edge:               ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then.i:                                        ; preds = %lor.lhs.false24.i.if.then.i_crit_edge, %lor.lhs.false18.i.if.then.i_crit_edge, %lor.lhs.false16.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true9.i.if.then.i_crit_edge
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %48 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net.i, align 4
  %sk.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %50 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sk.i, align 4
  %call28.i = tail call i32 @ip6_route_me_harder(ptr noundef %49, ptr noundef %51, ptr noundef %skb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  %.neg.i = mul i32 %call28.i, -65536
  %spec.select.i = select i1 %cmp29.i, i32 %.neg.i, i32 %call7.i
  br label %return

if.end32.fold.split.i:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @ip6t_do_table(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #3
  br label %return

return:                                           ; preds = %if.end, %if.end32.fold.split.i, %if.then.i, %lor.lhs.false24.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call7.i, %lor.lhs.false24.i.return_crit_edge ], [ %call7.i, %if.then.return_crit_edge ], [ 2, %if.end32.fold.split.i ], [ %spec.select.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6t_alloc_initial_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6t_register_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6t_do_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_route_me_harder(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6table_mangle.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author620, !4, !"__UNIQUE_ID_author620", i1 false, i1 false}
!4 = !{!"../net/ipv6/netfilter/ip6table_mangle.c", i32 14, i32 1}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6table_mangle.c", i32 15, i32 1}
!7 = !{ptr @__initcall__kmod_ip6table_mangle__622_135_ip6table_mangle_init6, !8, !"__initcall__kmod_ip6table_mangle__622_135_ip6table_mangle_init6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6table_mangle.c", i32 135, i32 1}
!9 = !{ptr @__exitcall_ip6table_mangle_fini, !10, !"__exitcall_ip6table_mangle_fini", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6table_mangle.c", i32 136, i32 1}
!11 = !{ptr @mangle_ops, !12, !"mangle_ops", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6table_mangle.c", i32 75, i32 28}
!13 = !{ptr @ip6table_mangle_net_ops, !14, !"ip6table_mangle_net_ops", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6table_mangle.c", i32 99, i32 33}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv6/netfilter/ip6table_mangle.c", i32 91, i32 38}
!17 = !{ptr @packet_mangler, !18, !"packet_mangler", i1 false, i1 false}
!18 = !{!"../net/ipv6/netfilter/ip6table_mangle.c", i32 23, i32 30}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
