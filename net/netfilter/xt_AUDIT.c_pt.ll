; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_AUDIT.c_pt.bc'
source_filename = "../net/netfilter/xt_AUDIT.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_action_param = type { %union.anon.142, %union.anon.143, ptr, i32, i16, i8 }
%union.anon.142 = type { ptr }
%union.anon.143 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }

@__UNIQUE_ID_file515 = internal constant [37 x i8] c"xt_AUDIT.file=net/netfilter/xt_AUDIT\00", section ".modinfo", align 1
@__UNIQUE_ID_license516 = internal constant [21 x i8] c"xt_AUDIT.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author517 = internal constant [47 x i8] c"xt_AUDIT.author=Thomas Graf <tgraf@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description518 = internal constant [81 x i8] c"xt_AUDIT.description=Xtables: creates audit records for dropped/accepted packets\00", section ".modinfo", align 1
@__UNIQUE_ID_alias519 = internal constant [25 x i8] c"xt_AUDIT.alias=ipt_AUDIT\00", section ".modinfo", align 1
@__UNIQUE_ID_alias520 = internal constant [26 x i8] c"xt_AUDIT.alias=ip6t_AUDIT\00", section ".modinfo", align 1
@__UNIQUE_ID_alias521 = internal constant [25 x i8] c"xt_AUDIT.alias=ebt_AUDIT\00", section ".modinfo", align 1
@__UNIQUE_ID_alias522 = internal constant [26 x i8] c"xt_AUDIT.alias=arpt_AUDIT\00", section ".modinfo", align 1
@audit_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"AUDIT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @audit_tg, ptr @audit_tg_check, ptr null, ptr null, ptr null, i32 1, i32 0, i32 0, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"AUDIT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @audit_tg_ebt, ptr @audit_tg_check, ptr null, ptr null, ptr null, i32 1, i32 0, i32 0, i16 0, i16 7 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_AUDIT__523_157_audit_tg_init6 = internal global ptr @audit_tg_init, section ".initcall6.init", align 4
@__exitcall_audit_tg_exit = internal global ptr @audit_tg_exit, section ".exitcall.exit", align 4
@audit_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mark=%#x\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" saddr=? daddr=? proto=-1\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" saddr=%pI4 daddr=%pI4 proto=%hhu\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" saddr=%pI6c daddr=%pI6c proto=%hhu\00", [60 x i8] zeroinitializer }, align 32
@audit_tg_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.audit_tg_check = private unnamed_addr constant [15 x i8] c"audit_tg_check\00", align 1
@audit_tg_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.audit_tg_check, ptr @.str.6, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016xt_AUDIT: Audit type out of range (valid range: 0..%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/netfilter/xt_AUDIT.c\00", [39 x i8] zeroinitializer }, align 32
@audit_tg_check._entry_ptr = internal global ptr @audit_tg_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 7, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 78, i32 23 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 100, i32 24 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 40, i32 23 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 60, i32 23 }
@___asan_gen_.20 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [28 x i8] c"../net/netfilter/xt_AUDIT.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 120, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias519, ptr @__UNIQUE_ID_alias520, ptr @__UNIQUE_ID_alias521, ptr @__UNIQUE_ID_alias522, ptr @__UNIQUE_ID_author517, ptr @__UNIQUE_ID_description518, ptr @__UNIQUE_ID_file515, ptr @__UNIQUE_ID_license516, ptr @__exitcall_audit_tg_exit, ptr @__initcall__kmod_xt_AUDIT__523_157_audit_tg_init6, ptr @audit_tg_check._entry, ptr @audit_tg_check._entry_ptr, ptr @audit_tg_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @audit_tg_check._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_tg_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audit_tg_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @audit_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_targets(ptr noundef nonnull @audit_tg_reg, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @audit_tg_reg, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_iph.i39 = alloca %struct.iphdr, align 4
  %_iph.i = alloca %struct.iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %0 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.errout_crit_edge, label %if.end

entry.errout_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout

if.end:                                           ; preds = %entry
  %call = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 2592, i32 noundef 1324) #5
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.end.errout_crit_edge, label %if.end3

if.end.errout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout

if.end3:                                          ; preds = %if.end
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call, ptr noundef nonnull @.str, i32 noundef %3) #5
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end3.if.then25_crit_edge [
    i8 7, label %sw.bb
    i8 2, label %sw.bb14
    i8 10, label %sw.bb18
  ]

if.end3.if.then25_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

sw.bb:                                            ; preds = %if.end3
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %11 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %h_proto, align 1
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %14, label %sw.bb.if.then25_crit_edge [
    i16 2048, label %sw.bb7
    i16 -31011, label %sw.bb10
  ]

sw.bb.if.then25_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

sw.bb7:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i) #5
  %16 = call ptr @memset(ptr %_iph.i, i32 255, i32 20)
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %18 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i, align 8
  %25 = add i32 %24, %sub.ptr.sub.i.i
  %sub.i4.i.i = sub i32 %22, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 20
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !46

if.end.i.i.i:                                     ; preds = %sw.bb7
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.audit_ip4.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.audit_ip4.exit.thread_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %audit_ip4.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i, ptr noundef nonnull %_iph.i, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.audit_ip4.exit.thread_crit_edge, label %lor.lhs.false.i.i.i._crit_edge

lor.lhs.false.i.i.i._crit_edge:                   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %26

lor.lhs.false.i.i.i.audit_ip4.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %audit_ip4.exit.thread

skb_header_pointer.exit.i:                        ; preds = %sw.bb7
  %add.ptr.i.i8.i = getelementptr i8, ptr %20, i32 %sub.ptr.sub.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i8.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.audit_ip4.exit.thread_crit_edge, label %skb_header_pointer.exit.i._crit_edge

skb_header_pointer.exit.i._crit_edge:             ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %26

skb_header_pointer.exit.i.audit_ip4.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %audit_ip4.exit.thread

audit_ip4.exit.thread:                            ; preds = %skb_header_pointer.exit.i.audit_ip4.exit.thread_crit_edge, %lor.lhs.false.i.i.i.audit_ip4.exit.thread_crit_edge, %if.end.i.i.i.audit_ip4.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i) #5
  br label %if.then25

26:                                               ; preds = %skb_header_pointer.exit.i._crit_edge, %lor.lhs.false.i.i.i._crit_edge
  %retval.0.i.i15.i = phi ptr [ %add.ptr.i.i8.i, %skb_header_pointer.exit.i._crit_edge ], [ %_iph.i, %lor.lhs.false.i.i.i._crit_edge ]
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i, i32 0, i32 8
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i, i32 0, i32 9
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i, i32 0, i32 6
  %27 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %protocol.i, align 1
  %conv.i = zext i8 %28 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call, ptr noundef nonnull @.str.2, ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %conv.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i) #5
  br label %if.end26

sw.bb10:                                          ; preds = %sw.bb
  %call11 = tail call fastcc zeroext i1 @audit_ip6(ptr noundef nonnull %call, ptr noundef %skb)
  br i1 %call11, label %sw.bb10.if.end26_crit_edge, label %sw.bb10.if.then25_crit_edge

sw.bb10.if.then25_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

sw.bb10.if.end26_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

sw.bb14:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i39) #5
  %head.i.i.i40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = call ptr @memset(ptr %_iph.i39, i32 255, i32 20)
  %30 = ptrtoint ptr %head.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i.i40, align 8
  %network_header.i.i.i41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i.i41 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i.i41, align 4
  %conv.i.i.i42 = zext i16 %33 to i32
  %add.ptr.i.i.i43 = getelementptr i8, ptr %31, i32 %conv.i.i.i42
  %data.i.i44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i44, align 4
  %sub.ptr.lhs.cast.i.i45 = ptrtoint ptr %add.ptr.i.i.i43 to i32
  %sub.ptr.rhs.cast.i.i46 = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i47 = sub i32 %sub.ptr.lhs.cast.i.i45, %sub.ptr.rhs.cast.i.i46
  %len.i.i.i48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i.i48, align 4
  %data_len.i.i.i49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i.i49, align 8
  %40 = add i32 %39, %sub.ptr.sub.i.i47
  %sub.i4.i.i50 = sub i32 %37, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i50)
  %cmp.not.i.i.i51 = icmp slt i32 %sub.i4.i.i50, 20
  br i1 %cmp.not.i.i.i51, label %if.end.i.i.i53, label %skb_header_pointer.exit.i59, !prof !46

if.end.i.i.i53:                                   ; preds = %sw.bb14
  %tobool2.not.i.i.i52 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i52, label %if.end.i.i.i53.audit_ip4.exit67.thread_crit_edge, label %lor.lhs.false.i.i.i56

if.end.i.i.i53.audit_ip4.exit67.thread_crit_edge: ; preds = %if.end.i.i.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %audit_ip4.exit67.thread

lor.lhs.false.i.i.i56:                            ; preds = %if.end.i.i.i53
  %call.i.i.i54 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i47, ptr noundef nonnull %_iph.i39, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i54)
  %cmp3.i.i.i55 = icmp slt i32 %call.i.i.i54, 0
  br i1 %cmp3.i.i.i55, label %lor.lhs.false.i.i.i56.audit_ip4.exit67.thread_crit_edge, label %lor.lhs.false.i.i.i56._crit_edge

lor.lhs.false.i.i.i56._crit_edge:                 ; preds = %lor.lhs.false.i.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %41

lor.lhs.false.i.i.i56.audit_ip4.exit67.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %audit_ip4.exit67.thread

skb_header_pointer.exit.i59:                      ; preds = %sw.bb14
  %add.ptr.i.i8.i57 = getelementptr i8, ptr %35, i32 %sub.ptr.sub.i.i47
  %tobool.not.i58 = icmp eq ptr %add.ptr.i.i8.i57, null
  br i1 %tobool.not.i58, label %skb_header_pointer.exit.i59.audit_ip4.exit67.thread_crit_edge, label %skb_header_pointer.exit.i59._crit_edge

skb_header_pointer.exit.i59._crit_edge:           ; preds = %skb_header_pointer.exit.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %41

skb_header_pointer.exit.i59.audit_ip4.exit67.thread_crit_edge: ; preds = %skb_header_pointer.exit.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %audit_ip4.exit67.thread

audit_ip4.exit67.thread:                          ; preds = %skb_header_pointer.exit.i59.audit_ip4.exit67.thread_crit_edge, %lor.lhs.false.i.i.i56.audit_ip4.exit67.thread_crit_edge, %if.end.i.i.i53.audit_ip4.exit67.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i39) #5
  br label %if.then25

41:                                               ; preds = %skb_header_pointer.exit.i59._crit_edge, %lor.lhs.false.i.i.i56._crit_edge
  %retval.0.i.i15.i60 = phi ptr [ %add.ptr.i.i8.i57, %skb_header_pointer.exit.i59._crit_edge ], [ %_iph.i39, %lor.lhs.false.i.i.i56._crit_edge ]
  %saddr.i61 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i60, i32 0, i32 8
  %daddr.i62 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i60, i32 0, i32 9
  %protocol.i63 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i15.i60, i32 0, i32 6
  %42 = ptrtoint ptr %protocol.i63 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %protocol.i63, align 1
  %conv.i64 = zext i8 %43 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call, ptr noundef nonnull @.str.2, ptr noundef %saddr.i61, ptr noundef %daddr.i62, i32 noundef %conv.i64) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i39) #5
  br label %if.end26

sw.bb18:                                          ; preds = %if.end3
  %call19 = tail call fastcc zeroext i1 @audit_ip6(ptr noundef nonnull %call, ptr noundef %skb)
  br i1 %call19, label %sw.bb18.if.end26_crit_edge, label %sw.bb18.if.then25_crit_edge

sw.bb18.if.then25_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

sw.bb18.if.end26_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then25:                                        ; preds = %sw.bb18.if.then25_crit_edge, %audit_ip4.exit67.thread, %sw.bb10.if.then25_crit_edge, %audit_ip4.exit.thread, %sw.bb.if.then25_crit_edge, %if.end3.if.then25_crit_edge
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call, ptr noundef nonnull @.str.1) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %sw.bb18.if.end26_crit_edge, %41, %sw.bb10.if.end26_crit_edge, %26
  call void @audit_log_end(ptr noundef nonnull %call) #5
  br label %errout

errout:                                           ; preds = %if.end26, %if.end.errout_crit_edge, %entry.errout_crit_edge
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_tg_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @audit_tg_check._rs, ptr noundef nonnull @__func__.audit_tg_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %do.end ], [ -34, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audit_tg_ebt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @audit_tg(ptr noundef %skb, ptr noundef %par)
  ret i32 -3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @audit_ip6(ptr noundef %ab, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %_ip6h = alloca %struct.ipv6hdr, align 4
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6h) #5
  %0 = call ptr @memset(ptr %_ip6h, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #5
  %1 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %frag_off, align 2, !annotation !47
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %11, %sub.ptr.sub.i
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 40
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !46

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %_ip6h, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %add.ptr.i.i15 = getelementptr i8, ptr %7, i32 %sub.ptr.sub.i
  %tobool.not = icmp eq ptr %add.ptr.i.i15, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i30 = phi ptr [ %add.ptr.i.i15, %skb_header_pointer.exit.if.end_crit_edge ], [ %_ip6h, %lor.lhs.false.i.i.if.end_crit_edge ]
  %nexthdr2 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i30, i32 0, i32 3
  %13 = ptrtoint ptr %nexthdr2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nexthdr2, align 2
  %15 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %nexthdr, align 1
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i18 = zext i16 %19 to i32
  %add.ptr.i.i19 = getelementptr i8, ptr %17, i32 %conv.i.i18
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i21 = ptrtoint ptr %add.ptr.i.i19 to i32
  %sub.ptr.rhs.cast.i22 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i23 = sub i32 40, %sub.ptr.rhs.cast.i22
  %add = add i32 %sub.ptr.sub.i23, %sub.ptr.lhs.cast.i21
  %call4 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %add, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #5
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i30, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i30, i32 0, i32 6
  %22 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nexthdr, align 1
  %conv = zext i8 %23 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.3, ptr noundef %saddr, ptr noundef %daddr, i32 noundef %conv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %tobool.not26 = phi i1 [ false, %skb_header_pointer.exit.cleanup_crit_edge ], [ true, %if.end ], [ false, %if.end.i.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h) #5
  ret i1 %tobool.not26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_file515, !1, !"__UNIQUE_ID_file515", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_AUDIT.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_license516, !1, !"__UNIQUE_ID_license516", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author517, !4, !"__UNIQUE_ID_author517", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_AUDIT.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_description518, !6, !"__UNIQUE_ID_description518", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_AUDIT.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias519, !8, !"__UNIQUE_ID_alias519", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_AUDIT.c", i32 26, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias520, !10, !"__UNIQUE_ID_alias520", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_AUDIT.c", i32 27, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias521, !12, !"__UNIQUE_ID_alias521", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_AUDIT.c", i32 28, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias522, !14, !"__UNIQUE_ID_alias522", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_AUDIT.c", i32 29, i32 1}
!15 = !{ptr @__initcall__kmod_xt_AUDIT__523_157_audit_tg_init6, !16, !"__initcall__kmod_xt_AUDIT__523_157_audit_tg_init6", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_AUDIT.c", i32 157, i32 1}
!17 = !{ptr @__exitcall_audit_tg_exit, !18, !"__exitcall_audit_tg_exit", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_AUDIT.c", i32 158, i32 1}
!19 = !{ptr @audit_tg_reg, !20, !"audit_tg_reg", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_AUDIT.c", i32 128, i32 25}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_AUDIT.c", i32 78, i32 23}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_AUDIT.c", i32 100, i32 24}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_AUDIT.c", i32 40, i32 23}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/xt_AUDIT.c", i32 60, i32 23}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/xt_AUDIT.c", i32 120, i32 3}
!31 = !{ptr @audit_tg_check._rs, !30, !"_rs", i1 false, i1 false}
!32 = !{ptr @__func__.audit_tg_check, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @audit_tg_check._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @audit_tg_check._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"auto-init"}
