; ModuleID = '/llk/IR_all_yes/net/ipv4/bpf_tcp_ca.c_pt.bc'
source_filename = "../net/ipv4/bpf_tcp_ca.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_verifier_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_struct_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.btf_func_model], i32, i32 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.102, %union.anon.104, ptr, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, i32, i32, i32, i32 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { ptr, ptr, ptr, ptr, ptr }
%struct.btf_id_set = type { i32, [0 x i32] }
%struct.btf_type = type { i32, i32, %union.anon.73 }
%union.anon.73 = type { i32 }
%struct.btf_member = type { i32, i32, i32 }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.120 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { %struct.anon.122, [0 x %struct.sock_filter] }
%struct.anon.122 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_insn_access_aux = type { i32, %union.anon.106, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, i32 }

@bpf_tcp_ca_verifier_ops = internal constant { %struct.bpf_verifier_ops, [36 x i8] } { %struct.bpf_verifier_ops { ptr @bpf_tcp_ca_get_func_proto, ptr @bpf_tcp_ca_is_valid_access, ptr null, ptr null, ptr null, ptr @bpf_tcp_ca_btf_struct_access, ptr @bpf_tcp_ca_check_kfunc_call }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcp_congestion_ops\00", [45 x i8] zeroinitializer }, align 32
@bpf_tcp_congestion_ops = dso_local global { %struct.bpf_struct_ops, [244 x i8] } { %struct.bpf_struct_ops { ptr @bpf_tcp_ca_verifier_ops, ptr @bpf_tcp_ca_init, ptr @bpf_tcp_ca_check_member, ptr @bpf_tcp_ca_init_member, ptr @bpf_tcp_ca_reg, ptr @bpf_tcp_ca_unreg, ptr null, ptr null, ptr @.str, [64 x %struct.btf_func_model] zeroinitializer, i32 0, i32 0 }, [244 x i8] zeroinitializer }, align 32
@bpf_tcp_send_ack_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_tcp_send_ack, i8 0, i8 0, i32 0, %union.anon.102 { %struct.anon.103 { i32 16, i32 10, i32 0, i32 0, i32 0 } }, %union.anon.104 { %struct.anon.105 { ptr @tcp_sock_id, ptr null, ptr null, ptr null, ptr null } }, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_sk_storage_get_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_sk_storage_delete_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_sk_setsockopt_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_sk_getsockopt_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_ktime_get_coarse_ns_proto = external dso_local constant %struct.bpf_func_proto, align 4
@tcp_sock_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sock_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tcp_sock_type = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"only read is supported\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no write support to tcp_sock at off %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"write access at off %d with size %d beyond the member of tcp_sock ended at %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@bpf_tcp_ca_kfunc_ids = internal global { %struct.btf_id_set, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sock\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcp_sock\00", [23 x i8] zeroinitializer }, align 32
@btf_vmlinux = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 44, i64 76]
@__sancov_gen_cov_switch_values.6 = internal global [8 x i64] [i64 6, i64 32, i64 49, i64 57, i64 107, i64 108, i64 116, i64 160]
@__sancov_gen_cov_switch_values.7 = internal global [7 x i64] [i64 5, i64 32, i64 1436, i64 1862, i64 1900, i64 1904, i64 1908]
@___asan_gen_.8 = private unnamed_addr constant [24 x i8] c"bpf_tcp_ca_verifier_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 230, i32 38 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 301, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"bpf_tcp_congestion_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 294, i32 23 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"bpf_tcp_send_ack_proto\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 152, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"tcp_sock_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 33, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"sock_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 33, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"tcp_sock_type\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 32, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 106, i32 16 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 131, i32 16 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 137, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"bpf_tcp_ca_kfunc_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 215, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 39, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [25 x i8] c"../net/ipv4/bpf_tcp_ca.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 44, i32 39 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @bpf_tcp_ca_verifier_ops, ptr @.str, ptr @bpf_tcp_congestion_ops, ptr @bpf_tcp_send_ack_proto, ptr @tcp_sock_id, ptr @sock_id, ptr @tcp_sock_type, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bpf_tcp_ca_kfunc_ids, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_tcp_ca_verifier_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_tcp_congestion_ops to i32), i32 940, i32 1184, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_tcp_send_ack_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_sock_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_sock_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_tcp_ca_kfunc_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_tcp_send_ack(i64 noundef %tp, i64 noundef %rcv_nxt, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %tp to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %rcv_nxt to i32
  tail call void @__tcp_send_ack(ptr noundef %0, i32 noundef %conv1) #4
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_tcp_ca_init(ptr noundef %btf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @btf_find_by_name_kind(ptr noundef %btf, ptr noundef nonnull @.str.4, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 %call, ptr @sock_id, align 4
  %call1 = tail call i32 @btf_find_by_name_kind(ptr noundef %btf, ptr noundef nonnull @.str.5, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i32 %call1, ptr @tcp_sock_id, align 4
  %call5 = tail call ptr @btf_type_by_id(ptr noundef %btf, i32 noundef %call1) #4
  store ptr %call5, ptr @tcp_sock_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpf_tcp_ca_check_member(ptr nocapture noundef readonly %t, ptr nocapture noundef readonly %member) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i.i = getelementptr inbounds %struct.btf_type, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.i = icmp slt i32 %1, 0
  %offset.i = getelementptr inbounds %struct.btf_member, ptr %member, i32 0, i32 2
  %2 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset.i, align 4
  %4 = lshr i32 %3, 3
  %5 = and i32 %4, 2097151
  %div2 = select i1 %tobool.i.i, i32 %5, i32 %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %div2)
  %cmp1.not.i = icmp eq i32 %div2, 40
  %. = select i1 %cmp1.not.i, i32 -524, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_tcp_ca_init_member(ptr nocapture noundef readonly %t, ptr nocapture noundef readonly %member, ptr noundef %kdata, ptr noundef %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i.i = getelementptr inbounds %struct.btf_type, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.i = icmp slt i32 %1, 0
  %offset.i = getelementptr inbounds %struct.btf_member, ptr %member, i32 0, i32 2
  %2 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset.i, align 4
  %4 = lshr i32 %3, 3
  %5 = and i32 %4, 2097151
  %div37 = select i1 %tobool.i.i, i32 %5, i32 %4
  %6 = zext i32 %div37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div37, label %sw.epilog [
    i32 76, label %sw.bb
    i32 44, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %flags = getelementptr inbounds %struct.tcp_congestion_ops, ptr %udata, i32 0, i32 15
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %tobool.not = icmp ult i32 %8, 4
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %flags2 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %kdata, i32 0, i32 15
  %9 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flags2, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tcp_congestion_ops, ptr %kdata, i32 0, i32 11
  %name4 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %udata, i32 0, i32 11
  %call6 = tail call i32 @bpf_obj_name_cpy(ptr noundef %name, ptr noundef %name4, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp slt i32 %call6, 1
  br i1 %cmp, label %sw.bb3.cleanup_crit_edge, label %if.end8

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call ptr @tcp_ca_find(ptr noundef %name4) #4
  %tobool12.not = icmp eq ptr %call11, null
  %. = select i1 %tobool12.not, i32 1, i32 -17
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_vmlinux to i32))
  %10 = load ptr, ptr @btf_vmlinux, align 4
  %type = getelementptr inbounds %struct.btf_member, ptr %member, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %call15 = tail call ptr @btf_type_resolve_func_ptr(ptr noundef %10, i32 noundef %12, ptr noundef null) #4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %sw.epilog.cleanup_crit_edge, label %if.end18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  %add.ptr = getelementptr i8, ptr %udata, i32 %div37
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end18
  %15 = add nsw i32 %div37, -8
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %16)
  %17 = icmp ult i32 %16, 20
  br i1 %17, label %switch.hole_check, label %land.lhs.true.land.lhs.true21_crit_edge

land.lhs.true.land.lhs.true21_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %switch.hole_check.land.lhs.true21_crit_edge, %land.lhs.true.land.lhs.true21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %div37)
  %cmp1.not.i = icmp eq i32 %div37, 40
  br i1 %cmp1.not.i, label %land.lhs.true21.if.end24_crit_edge, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true21.if.end24_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true21.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  br label %cleanup

switch.hole_check:                                ; preds = %land.lhs.true
  %switch.shifted = lshr i32 786623, %16
  %18 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %switch.lobit.not = icmp eq i32 %18, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.lhs.true21_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check.land.lhs.true21_crit_edge:      ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true21

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.end24, %land.lhs.true21.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end8, %sw.bb3.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ 1, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ %., %if.end8 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %land.lhs.true21.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_tcp_ca_reg(ptr noundef %kdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef %kdata) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_tcp_ca_unreg(ptr noundef %kdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcp_unregister_congestion_control(ptr noundef %kdata) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tcp_send_ack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_tcp_ca_get_func_proto(i32 noundef %func_id, ptr nocapture noundef readonly %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %func_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %func_id, label %sw.default [
    i32 116, label %entry.return_crit_edge
    i32 107, label %sw.bb1
    i32 108, label %sw.bb2
    i32 49, label %sw.bb3
    i32 57, label %sw.bb4
    i32 160, label %sw.bb9
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %expected_attach_type.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %1 = ptrtoint ptr %expected_attach_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %expected_attach_type.i, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_tcp_congestion_ops, i32 0, i32 6), align 4
  %add.ptr.i.i = getelementptr %struct.btf_type, ptr %3, i32 1
  %arrayidx.i = getelementptr %struct.btf_member, ptr %add.ptr.i.i, i32 %2
  %info.i.i.i = getelementptr inbounds %struct.btf_type, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.i.i = icmp slt i32 %5, 0
  %offset.i.i = getelementptr inbounds %struct.btf_member, ptr %arrayidx.i, i32 0, i32 2
  %6 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i.i, align 4
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 2097151
  %div3.i = select i1 %tobool.i.i.i, i32 %9, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %div3.i)
  %cmp.not = icmp eq i32 %div3.i, 84
  %.bpf_sk_setsockopt_proto = select i1 %cmp.not, ptr null, ptr @bpf_sk_setsockopt_proto
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %expected_attach_type.i13 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %10 = ptrtoint ptr %expected_attach_type.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %expected_attach_type.i13, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_tcp_congestion_ops, i32 0, i32 6), align 4
  %add.ptr.i.i14 = getelementptr %struct.btf_type, ptr %12, i32 1
  %arrayidx.i15 = getelementptr %struct.btf_member, ptr %add.ptr.i.i14, i32 %11
  %info.i.i.i16 = getelementptr inbounds %struct.btf_type, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %info.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info.i.i.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.i.i17 = icmp slt i32 %14, 0
  %offset.i.i18 = getelementptr inbounds %struct.btf_member, ptr %arrayidx.i15, i32 0, i32 2
  %15 = ptrtoint ptr %offset.i.i18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i.i18, align 4
  %17 = lshr i32 %16, 3
  %18 = and i32 %17, 2097151
  %div3.i19 = select i1 %tobool.i.i.i17, i32 %18, i32 %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %div3.i19)
  %cmp6.not = icmp eq i32 %div3.i19, 84
  %.bpf_sk_getsockopt_proto = select i1 %cmp6.not, ptr null, ptr @bpf_sk_getsockopt_proto
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call ptr @bpf_base_func_proto(i32 noundef %func_id) #4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb9, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call10, %sw.default ], [ @bpf_ktime_get_coarse_ns_proto, %sw.bb9 ], [ @bpf_sk_storage_delete_proto, %sw.bb2 ], [ @bpf_sk_storage_get_proto, %sw.bb1 ], [ @bpf_tcp_send_ack_proto, %entry.return_crit_edge ], [ %.bpf_sk_setsockopt_proto, %sw.bb3 ], [ %.bpf_sk_getsockopt_proto, %sw.bb4 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bpf_tcp_ca_is_valid_access(i32 noundef %off, i32 noundef %size, i32 noundef %type, ptr noundef %prog, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %off)
  %cmp1.i.i = icmp ult i32 %off, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2.not.i.i = icmp eq i32 %type, 1
  %or.cond10.i.i = and i1 %cmp1.i.i, %cmp2.not.i.i
  br i1 %or.cond10.i.i, label %bpf_tracing_ctx_access.exit.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

bpf_tracing_ctx_access.exit.i:                    ; preds = %entry
  %rem.i.i = srem i32 %off, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp5.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp5.not.i.i, label %bpf_tracing_btf_ctx_access.exit, label %bpf_tracing_ctx_access.exit.i.return_crit_edge

bpf_tracing_ctx_access.exit.i.return_crit_edge:   ; preds = %bpf_tracing_ctx_access.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

bpf_tracing_btf_ctx_access.exit:                  ; preds = %bpf_tracing_ctx_access.exit.i
  %call1.i = tail call zeroext i1 @btf_ctx_access(i32 noundef %off, i32 noundef %size, i32 noundef 1, ptr noundef %prog, ptr noundef %info) #4
  br i1 %call1.i, label %if.end, label %bpf_tracing_btf_ctx_access.exit.return_crit_edge

bpf_tracing_btf_ctx_access.exit.return_crit_edge: ; preds = %bpf_tracing_btf_ctx_access.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %bpf_tracing_btf_ctx_access.exit
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %land.lhs.true, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.lhs.true:                                    ; preds = %if.end
  %btf_id = getelementptr inbounds %struct.bpf_insn_access_aux, ptr %info, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %btf_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %btf_id, align 4
  %4 = load i32, ptr @sock_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then2, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %5 = load i32, ptr @tcp_sock_id, align 4
  %6 = ptrtoint ptr %btf_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %btf_id, align 4
  br label %return

return:                                           ; preds = %if.then2, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %bpf_tracing_btf_ctx_access.exit.return_crit_edge, %bpf_tracing_ctx_access.exit.i.return_crit_edge, %entry.return_crit_edge
  %retval.0.i9 = phi i1 [ true, %if.end.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %if.then2 ], [ false, %bpf_tracing_btf_ctx_access.exit.return_crit_edge ], [ false, %bpf_tracing_ctx_access.exit.i.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_tcp_ca_btf_struct_access(ptr noundef %log, ptr noundef %btf, ptr noundef %t, i32 noundef %off, i32 noundef %size, i32 noundef %atype, ptr noundef %next_btf_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %atype)
  %cmp = icmp eq i32 %atype, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @btf_struct_access(ptr noundef %log, ptr noundef %btf, ptr noundef %t, i32 noundef %off, i32 noundef %size, i32 noundef 1, ptr noundef %next_btf_id) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @tcp_sock_type, align 4
  %cmp1.not = icmp eq ptr %0, %t
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %log, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = zext i32 %off to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %off, label %sw.caserange [
    i32 1436, label %if.end3.sw.epilog_crit_edge
    i32 1904, label %sw.bb5
    i32 1908, label %sw.bb6
    i32 1900, label %sw.bb7
    i32 1862, label %sw.bb8
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.caserange:                                     ; preds = %if.end3
  %2 = add i32 %off, -1480
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %2)
  %inbounds = icmp ult i32 %2, 104
  br i1 %inbounds, label %sw.caserange.sw.epilog_crit_edge, label %sw.default

sw.caserange.sw.epilog_crit_edge:                 ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %log, ptr noundef nonnull @.str.2, i32 noundef %off) #4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.caserange.sw.epilog_crit_edge, %if.end3.sw.epilog_crit_edge
  %end.0 = phi i32 [ 1863, %sw.bb8 ], [ 1904, %sw.bb7 ], [ 1912, %sw.bb6 ], [ 1908, %sw.bb5 ], [ 1584, %sw.caserange.sw.epilog_crit_edge ], [ 1437, %if.end3.sw.epilog_crit_edge ]
  %add = add i32 %size, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %end.0)
  %cmp9 = icmp ugt i32 %add, %end.0
  br i1 %cmp9, label %if.then10, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @bpf_log(ptr noundef %log, ptr noundef nonnull @.str.3, i32 noundef %off, i32 noundef %size, i32 noundef %end.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %sw.epilog.cleanup_crit_edge, %sw.default, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -13, %if.then2 ], [ -13, %if.then10 ], [ -13, %sw.default ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bpf_tcp_ca_check_kfunc_call(i32 noundef %kfunc_btf_id, ptr nocapture noundef readnone %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @btf_id_set_contains(ptr noundef nonnull @bpf_tcp_ca_kfunc_ids, i32 noundef %kfunc_btf_id) #4
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_base_func_proto(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btf_ctx_access(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btf_struct_access(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btf_id_set_contains(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btf_find_by_name_kind(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_obj_name_cpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_ca_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_resolve_func_ptr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 301, i32 10}
!2 = !{ptr @bpf_tcp_congestion_ops, !3, !"bpf_tcp_congestion_ops", i1 false, i1 false}
!3 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 294, i32 23}
!4 = !{ptr @bpf_tcp_ca_verifier_ops, !5, !"bpf_tcp_ca_verifier_ops", i1 false, i1 false}
!5 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 230, i32 38}
!6 = !{ptr @bpf_tcp_send_ack_proto, !7, !"bpf_tcp_send_ack_proto", i1 false, i1 false}
!7 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 152, i32 36}
!8 = !{ptr @tcp_sock_id, !9, !"tcp_sock_id", i1 false, i1 false}
!9 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 33, i32 12}
!10 = !{ptr @sock_id, !11, !"sock_id", i1 false, i1 false}
!11 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 33, i32 25}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 106, i32 16}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 131, i32 16}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 137, i32 4}
!18 = !{ptr @tcp_sock_type, !19, !"tcp_sock_type", i1 false, i1 false}
!19 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 32, i32 31}
!20 = !{ptr @bpf_tcp_ca_kfunc_ids, !21, !"bpf_tcp_ca_kfunc_ids", i1 false, i1 false}
!21 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 215, i32 1}
!22 = distinct !{null, !23, !"bpf_tcp_ca_kfunc_list", i1 false, i1 false}
!23 = !{!"../include/linux/btf.h", i32 359, i32 33}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 39, i32 39}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 44, i32 39}
!28 = distinct !{null, !29, !"unsupported_ops", i1 false, i1 false}
!29 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 28, i32 12}
!30 = distinct !{null, !31, !"optional_ops", i1 false, i1 false}
!31 = !{!"../net/ipv4/bpf_tcp_ca.c", i32 16, i32 12}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
