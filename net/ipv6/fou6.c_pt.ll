; ModuleID = '/llk/IR_all_yes/net/ipv6/fou6.c_pt.bc'
source_filename = "../net/ipv6/fou6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip6_tnl_encap_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
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
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.anon.157 = type { i8, i8, i16 }
%struct.guehdr = type { %union.anon.156 }
%union.anon.156 = type { i32 }

@__initcall__kmod_fou6__574_223_fou6_init6 = internal global ptr @fou6_init, section ".initcall6.init", align 4
@__exitcall_fou6_fini = internal global ptr @fou6_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author575 = internal constant [46 x i8] c"fou6.author=Tom Herbert <therbert@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file576 = internal constant [24 x i8] c"fou6.file=net/ipv6/fou6\00", section ".modinfo", align 1
@__UNIQUE_ID_license577 = internal constant [17 x i8] c"fou6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description578 = internal constant [37 x i8] c"fou6.description=Foo over UDP (IPv6)\00", section ".modinfo", align 1
@fou_ip6tun_ops = internal constant { %struct.ip6_tnl_encap_ops, [20 x i8] } { %struct.ip6_tnl_encap_ops { ptr @fou_encap_hlen, ptr @fou6_build_header, ptr @gue6_err }, [20 x i8] zeroinitializer }, align 32
@gue_ip6tun_ops = internal constant { %struct.ip6_tnl_encap_ops, [20 x i8] } { %struct.ip6_tnl_encap_ops { ptr @gue_encap_hlen, ptr @gue6_build_header, ptr @gue6_err }, [20 x i8] zeroinitializer }, align 32
@inet6_protos = external dso_local global [256 x ptr], align 4
@gue6_err_proto_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv6/fou6.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ip6_tnl_encap_add_fou_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013can't add fou6 ops\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ip6_tnl_encap_add_fou_ops\00", [38 x i8] zeroinitializer }, align 32
@ip6_tnl_encap_add_fou_ops._entry_ptr = internal global ptr @ip6_tnl_encap_add_fou_ops._entry, section ".printk_index", align 4
@ip6_tnl_encap_add_fou_ops._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013can't add gue6 ops\0A\00", [42 x i8] zeroinitializer }, align 32
@ip6_tnl_encap_add_fou_ops._entry_ptr.6 = internal global ptr @ip6_tnl_encap_add_fou_ops._entry.4, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 136]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"fou_ip6tun_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 158, i32 39 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"gue_ip6tun_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 164, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 80, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 176, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [19 x i8] c"../net/ipv6/fou6.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 182, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author575, ptr @__UNIQUE_ID_description578, ptr @__UNIQUE_ID_file576, ptr @__UNIQUE_ID_license577, ptr @__exitcall_fou6_fini, ptr @__initcall__kmod_fou6__574_223_fou6_init6, ptr @fou6_fini, ptr @ip6_tnl_encap_add_fou_ops._entry, ptr @ip6_tnl_encap_add_fou_ops._entry.4, ptr @ip6_tnl_encap_add_fou_ops._entry_ptr, ptr @ip6_tnl_encap_add_fou_ops._entry_ptr.6, ptr @fou_ip6tun_ops, ptr @gue_ip6tun_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fou_ip6tun_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gue_ip6tun_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_tnl_encap_add_fou_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_tnl_encap_add_fou_ops._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fou6_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @ip6_tnl_encap_del_ops(ptr noundef nonnull @fou_ip6tun_ops, i32 noundef 1) #5
  %call1.i = tail call i32 @ip6_tnl_encap_del_ops(ptr noundef nonnull @gue_ip6tun_ops, i32 noundef 2) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fou6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @ip6_tnl_encap_add_ops(ptr noundef nonnull @fou_ip6tun_ops, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %ip6_tnl_encap_add_fou_ops.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @ip6_tnl_encap_add_ops(ptr noundef nonnull @gue_ip6tun_ops, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end7.i, label %if.end.i.ip6_tnl_encap_add_fou_ops.exit_crit_edge

if.end.i.ip6_tnl_encap_add_fou_ops.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ip6_tnl_encap_add_fou_ops.exit

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  %call10.i = tail call i32 @ip6_tnl_encap_del_ops(ptr noundef nonnull @fou_ip6tun_ops, i32 noundef 1) #5
  br label %ip6_tnl_encap_add_fou_ops.exit

ip6_tnl_encap_add_fou_ops.exit:                   ; preds = %do.end7.i, %if.end.i.ip6_tnl_encap_add_fou_ops.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call2.i, %do.end7.i ], [ 0, %if.end.i.ip6_tnl_encap_add_fou_ops.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_encap_del_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fou_encap_hlen(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fou6_build_header(ptr noundef %skb, ptr noundef %e, ptr noundef %protocol, ptr noundef %fl6) #2 align 64 {
entry:
  %sport = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sport) #5
  %0 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sport, align 2, !annotation !37
  %flags = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 2
  %3 = and i16 %2, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %cond = select i1 %tobool.not, i32 1024, i32 2048
  %call = call i32 @__fou_build_header(ptr noundef %skb, ptr noundef %e, ptr noundef %protocol, ptr noundef nonnull %sport, i32 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sport, align 2
  %call.i = call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %dport.i = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 3
  %11 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dport.i, align 2
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %dest.i, align 2
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %5, ptr %add.ptr.i.i.i, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %16 to i16
  %len2.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %len2.i, align 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 2
  %20 = and i16 %19, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  %saddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  call void @udp6_set_csum(i1 noundef zeroext %tobool.not.i, ptr noundef %skb, ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %22) #5
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 17, ptr %protocol, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sport) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gue6_err(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 12
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !38

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i = icmp ult i32 %7, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !38

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %12 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i77 = zext i16 %13 to i32
  %add.ptr.i.i78 = getelementptr i8, ptr %11, i32 %conv.i.i77
  %arrayidx = getelementptr %struct.udphdr, ptr %add.ptr.i.i78, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %arrayidx, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  %15 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i80 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv1.i = add i16 %conv.i.i80, -8
  %18 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load3 = load i8, ptr %arrayidx, align 4
  %bf.lshr4 = lshr i8 %bf.load3, 4
  %conv5 = zext i8 %bf.lshr4 to i32
  %20 = zext i32 %conv5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %conv5, label %sw.bb.out_crit_edge [
    i32 4, label %sw.bb6
    i32 6, label %sw.bb8
  ]

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb6:                                           ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @inet6_protos, i32 0, i32 4) to i32))
  %21 = load volatile ptr, ptr getelementptr inbounds ([256 x ptr], ptr @inet6_protos, i32 0, i32 4), align 4
  %call.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sw.bb6.do.end7.i_crit_edge

sw.bb6.do.end7.i_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %sw.bb6
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b22.i = load i1, ptr @gue6_err_proto_handler.__warned, align 1
  br i1 %.b22.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @gue6_err_proto_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 80, ptr noundef nonnull @.str.1) #5
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %sw.bb6.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %21, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end18.i_crit_edge, label %land.lhs.true10.i

do.end7.i.if.end18.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

land.lhs.true10.i:                                ; preds = %do.end7.i
  %err_handler.i = getelementptr inbounds %struct.inet6_protocol, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %err_handler.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %err_handler.i, align 4
  %tobool11.not.i = icmp eq ptr %23, null
  br i1 %tobool11.not.i, label %land.lhs.true10.i.if.end18.i_crit_edge, label %if.then12.i

land.lhs.true10.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  %call14.i = tail call i32 %23(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then12.i.out_crit_edge, label %if.then12.i.if.end18.i_crit_edge

if.then12.i.if.end18.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then12.i.out_crit_edge:                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18.i:                                       ; preds = %if.then12.i.if.end18.i_crit_edge, %land.lhs.true10.i.if.end18.i_crit_edge, %do.end7.i.if.end18.i_crit_edge
  br label %out

sw.bb8:                                           ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @inet6_protos, i32 0, i32 41) to i32))
  %24 = load volatile ptr, ptr getelementptr inbounds ([256 x ptr], ptr @inet6_protos, i32 0, i32 41), align 4
  %call.i83 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i87, label %sw.bb8.do.end7.i92_crit_edge

sw.bb8.do.end7.i92_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i92

land.lhs.true.i87:                                ; preds = %sw.bb8
  %call2.i85 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i85)
  %tobool3.not.i86 = icmp eq i32 %call2.i85, 0
  br i1 %tobool3.not.i86, label %land.lhs.true.i87.do.end7.i92_crit_edge, label %land.lhs.true4.i89

land.lhs.true.i87.do.end7.i92_crit_edge:          ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i92

land.lhs.true4.i89:                               ; preds = %land.lhs.true.i87
  %.b22.i88 = load i1, ptr @gue6_err_proto_handler.__warned, align 1
  br i1 %.b22.i88, label %land.lhs.true4.i89.do.end7.i92_crit_edge, label %if.then.i90

land.lhs.true4.i89.do.end7.i92_crit_edge:         ; preds = %land.lhs.true4.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i92

if.then.i90:                                      ; preds = %land.lhs.true4.i89
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @gue6_err_proto_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 80, ptr noundef nonnull @.str.1) #5
  br label %do.end7.i92

do.end7.i92:                                      ; preds = %if.then.i90, %land.lhs.true4.i89.do.end7.i92_crit_edge, %land.lhs.true.i87.do.end7.i92_crit_edge, %sw.bb8.do.end7.i92_crit_edge
  %tobool9.not.i91 = icmp eq ptr %24, null
  br i1 %tobool9.not.i91, label %do.end7.i92.if.end18.i99_crit_edge, label %land.lhs.true10.i95

do.end7.i92.if.end18.i99_crit_edge:               ; preds = %do.end7.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i99

land.lhs.true10.i95:                              ; preds = %do.end7.i92
  %err_handler.i93 = getelementptr inbounds %struct.inet6_protocol, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %err_handler.i93 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %err_handler.i93, align 4
  %tobool11.not.i94 = icmp eq ptr %26, null
  br i1 %tobool11.not.i94, label %land.lhs.true10.i95.if.end18.i99_crit_edge, label %if.then12.i98

land.lhs.true10.i95.if.end18.i99_crit_edge:       ; preds = %land.lhs.true10.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i99

if.then12.i98:                                    ; preds = %land.lhs.true10.i95
  %call14.i96 = tail call i32 %26(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i96)
  %tobool15.not.i97 = icmp eq i32 %call14.i96, 0
  br i1 %tobool15.not.i97, label %if.then12.i98.out_crit_edge, label %if.then12.i98.if.end18.i99_crit_edge

if.then12.i98.if.end18.i99_crit_edge:             ; preds = %if.then12.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i99

if.then12.i98.out_crit_edge:                      ; preds = %if.then12.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18.i99:                                     ; preds = %if.then12.i98.if.end18.i99_crit_edge, %land.lhs.true10.i95.if.end18.i99_crit_edge, %do.end7.i92.if.end18.i99_crit_edge
  br label %out

sw.epilog:                                        ; preds = %if.end
  %27 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.end14, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %sw.epilog
  %bf.clear16 = shl i8 %bf.load, 2
  %28 = and i8 %bf.clear16, 124
  %shl = zext i8 %28 to i32
  %add19 = add i32 %add, %shl
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %31 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i104 = sub i32 %30, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %sub.i.i104)
  %cmp.not.i105 = icmp ugt i32 %add19, %sub.i.i104
  br i1 %cmp.not.i105, label %if.end.i107, label %if.end14.if.end22_crit_edge, !prof !38

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end.i107:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add19)
  %cmp3.i106 = icmp ult i32 %30, %add19
  br i1 %cmp3.i106, label %if.end.i107.cleanup_crit_edge, label %pskb_may_pull.exit113, !prof !38

if.end.i107.cleanup_crit_edge:                    ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit113:                            ; preds = %if.end.i107
  %sub.i108 = sub i32 %add19, %sub.i.i104
  %call13.i109 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i108) #5
  %cmp14.i110.not = icmp eq ptr %call13.i109, null
  br i1 %cmp14.i110.not, label %pskb_may_pull.exit113.cleanup_crit_edge, label %pskb_may_pull.exit113.if.end22_crit_edge

pskb_may_pull.exit113.if.end22_crit_edge:         ; preds = %pskb_may_pull.exit113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

pskb_may_pull.exit113.cleanup_crit_edge:          ; preds = %pskb_may_pull.exit113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %pskb_may_pull.exit113.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %35 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i116 = zext i16 %36 to i32
  %add.ptr.i.i117 = getelementptr i8, ptr %34, i32 %conv.i.i116
  %arrayidx24 = getelementptr %struct.udphdr, ptr %add.ptr.i.i117, i32 1
  %flags1.i = getelementptr inbounds %struct.anon.157, ptr %arrayidx24, i32 0, i32 2
  %37 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags1.i, align 2
  %conv.i = zext i16 %38 to i32
  %and.i = and i32 %conv.i, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i118 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i118, label %if.end.i119, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i119:                                      ; preds = %if.end22
  %39 = shl i16 %38, 2
  %40 = and i16 %39, 4
  %41 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %shl)
  %cmp.i = icmp ugt i32 %41, %shl
  br i1 %cmp.i, label %if.end.i119.cleanup_crit_edge, label %if.end4.i

if.end.i119.cleanup_crit_edge:                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i119
  %and6.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end28_crit_edge, label %if.then8.i

if.end4.i.if.end28_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then8.i:                                       ; preds = %if.end4.i
  %arrayidx.i = getelementptr %struct.guehdr, ptr %arrayidx24, i32 1
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i, i32 %41
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %42 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr9.i, align 4
  %and10.i = and i32 %43, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i120 = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i120, label %if.then8.i.if.end28_crit_edge, label %if.then8.i.cleanup_crit_edge

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8.i.if.end28_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %if.then8.i.if.end28_crit_edge, %if.end4.i.if.end28_crit_edge
  %proto_ctype = getelementptr inbounds %struct.anon.157, ptr %arrayidx24, i32 0, i32 1
  %44 = ptrtoint ptr %proto_ctype to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %proto_ctype, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %45, label %if.end36 [
    i8 17, label %if.end28.cleanup_crit_edge
    i8 -120, label %if.end28.cleanup_crit_edge145
  ]

if.end28.cleanup_crit_edge145:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i123 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i.i124 = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i125 = sub i32 %sub.ptr.lhs.cast.i.i123, %sub.ptr.rhs.cast.i.i124
  %conv.i.i126 = trunc i32 %sub.ptr.sub.i.i125 to i16
  %conv1.i128 = add i16 %conv.i.i126, -8
  %49 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i128, ptr %transport_header.i.i, align 2
  %50 = ptrtoint ptr %proto_ctype to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %proto_ctype, align 1
  %conv38 = zext i8 %51 to i32
  %call39 = tail call fastcc i32 @gue6_err_proto_handler(i32 noundef %conv38, ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info)
  br label %out

out:                                              ; preds = %if.end36, %if.end18.i99, %if.then12.i98.out_crit_edge, %if.end18.i, %if.then12.i.out_crit_edge, %sw.bb.out_crit_edge
  %ret.0 = phi i32 [ %call39, %if.end36 ], [ -95, %sw.bb.out_crit_edge ], [ -2, %if.end18.i ], [ 0, %if.then12.i.out_crit_edge ], [ -2, %if.end18.i99 ], [ 0, %if.then12.i98.out_crit_edge ]
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %54 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i131 = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i132 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i133 = sub i32 %sub.ptr.lhs.cast.i.i131, %sub.ptr.rhs.cast.i.i132
  %conv.i.i134 = trunc i32 %sub.ptr.sub.i.i133 to i16
  %56 = trunc i32 %sub.ptr.sub.i to i16
  %conv1.i136 = add i16 %conv.i.i134, %56
  %57 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv1.i136, ptr %transport_header.i.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end28.cleanup_crit_edge, %if.end28.cleanup_crit_edge145, %if.then8.i.cleanup_crit_edge, %if.end.i119.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %pskb_may_pull.exit113.cleanup_crit_edge, %if.end.i107.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %pskb_may_pull.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -2, %sw.epilog.cleanup_crit_edge ], [ -22, %pskb_may_pull.exit113.cleanup_crit_edge ], [ -95, %if.end28.cleanup_crit_edge ], [ -95, %if.end28.cleanup_crit_edge145 ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.i107.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %if.end.i119.cleanup_crit_edge ], [ -22, %if.then8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fou_build_header(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp6_set_csum(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gue6_err_proto_handler(i32 noundef %proto, ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %proto
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @gue6_err_proto_handler.__warned, align 1
  br i1 %.b22, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @gue6_err_proto_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 80, ptr noundef nonnull @.str.1) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end7.if.end18_crit_edge, label %land.lhs.true10

do.end7.if.end18_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true10:                                  ; preds = %do.end7
  %err_handler = getelementptr inbounds %struct.inet6_protocol, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %err_handler, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %land.lhs.true10.if.end18_crit_edge, label %if.then12

land.lhs.true10.if.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then12:                                        ; preds = %land.lhs.true10
  %call14 = tail call i32 %3(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.cleanup_crit_edge, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %land.lhs.true10.if.end18_crit_edge, %do.end7.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end18 ], [ 0, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gue_encap_hlen(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gue6_build_header(ptr noundef %skb, ptr noundef %e, ptr noundef %protocol, ptr noundef %fl6) #2 align 64 {
entry:
  %sport = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sport) #5
  %0 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sport, align 2, !annotation !37
  %flags = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 2
  %3 = and i16 %2, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %cond = select i1 %tobool.not, i32 1024, i32 2048
  %call = call i32 @__gue_build_header(ptr noundef %skb, ptr noundef %e, ptr noundef %protocol, ptr noundef nonnull %sport, i32 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sport, align 2
  %call.i = call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %dport.i = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 3
  %11 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dport.i, align 2
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %dest.i, align 2
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %5, ptr %add.ptr.i.i.i, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %16 to i16
  %len2.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %len2.i, align 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 2
  %20 = and i16 %19, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  %saddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  call void @udp6_set_csum(i1 noundef zeroext %tobool.not.i, ptr noundef %skb, ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %22) #5
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 17, ptr %protocol, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sport) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gue_build_header(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_fou6__574_223_fou6_init6, !1, !"__initcall__kmod_fou6__574_223_fou6_init6", i1 false, i1 false}
!1 = !{!"../net/ipv6/fou6.c", i32 223, i32 1}
!2 = !{ptr @__exitcall_fou6_fini, !3, !"__exitcall_fou6_fini", i1 false, i1 false}
!3 = !{!"../net/ipv6/fou6.c", i32 224, i32 1}
!4 = !{ptr @__UNIQUE_ID_author575, !5, !"__UNIQUE_ID_author575", i1 false, i1 false}
!5 = !{!"../net/ipv6/fou6.c", i32 225, i32 1}
!6 = !{ptr @__UNIQUE_ID_file576, !7, !"__UNIQUE_ID_file576", i1 false, i1 false}
!7 = !{!"../net/ipv6/fou6.c", i32 226, i32 1}
!8 = !{ptr @__UNIQUE_ID_license577, !7, !"__UNIQUE_ID_license577", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description578, !10, !"__UNIQUE_ID_description578", i1 false, i1 false}
!10 = !{!"../net/ipv6/fou6.c", i32 227, i32 1}
!11 = !{ptr @fou_ip6tun_ops, !12, !"fou_ip6tun_ops", i1 false, i1 false}
!12 = !{!"../net/ipv6/fou6.c", i32 158, i32 39}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/ipv6/fou6.c", i32 80, i32 11}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gue_ip6tun_ops, !18, !"gue_ip6tun_ops", i1 false, i1 false}
!18 = !{!"../net/ipv6/fou6.c", i32 164, i32 39}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv6/fou6.c", i32 176, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ip6_tnl_encap_add_fou_ops._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ip6_tnl_encap_add_fou_ops._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv6/fou6.c", i32 182, i32 3}
!26 = !{ptr @ip6_tnl_encap_add_fou_ops._entry.4, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ip6_tnl_encap_add_fou_ops._entry_ptr.6, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 1, i32 2000}
