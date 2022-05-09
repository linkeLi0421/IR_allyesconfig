; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_srh.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_srh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipv6_sr_hdr = type { i8, i8, i8, i8, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ip6t_srh = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ip6t_srh1 = type { i8, i8, i8, i8, i16, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i16, i16 }

@srh_mt6_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"srh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @srh_mt6, ptr @srh_mt6_check, ptr null, ptr null, ptr null, i32 10, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"srh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @srh1_mt6, ptr @srh1_mt6_check, ptr null, ptr null, ptr null, i32 108, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_srh__618_315_srh_mt6_init6 = internal global ptr @srh_mt6_init, section ".initcall6.init", align 4
@__exitcall_srh_mt6_exit = internal global ptr @srh_mt6_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file619 = internal constant [42 x i8] c"ip6t_srh.file=net/ipv6/netfilter/ip6t_srh\00", section ".modinfo", align 1
@__UNIQUE_ID_license620 = internal constant [21 x i8] c"ip6t_srh.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [64 x i8] c"ip6t_srh.description=Xtables: IPv6 Segment Routing Header match\00", section ".modinfo", align 1
@__UNIQUE_ID_author622 = internal constant [55 x i8] c"ip6t_srh.author=Ahmed Abdelsalam <amsalam20@gmail.com>\00", section ".modinfo", align 1
@srh_mt6_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.srh_mt6_check = private unnamed_addr constant [14 x i8] c"srh_mt6_check\00", align 1
@srh_mt6_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.srh_mt6_check, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ip6t_srh: unknown srh match flags  %X\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/ipv6/netfilter/ip6t_srh.c\00", [34 x i8] zeroinitializer }, align 32
@srh_mt6_check._entry_ptr = internal global ptr @srh_mt6_check._entry, section ".printk_index", align 4
@srh_mt6_check._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@srh_mt6_check._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.srh_mt6_check, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ip6t_srh: unknown srh invflags %X\0A\00", [59 x i8] zeroinitializer }, align 32
@srh_mt6_check._entry_ptr.6 = internal global ptr @srh_mt6_check._entry.4, section ".printk_index", align 4
@srh1_mt6_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.srh1_mt6_check = private unnamed_addr constant [15 x i8] c"srh1_mt6_check\00", align 1
@srh1_mt6_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.srh1_mt6_check, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@srh1_mt6_check._entry_ptr = internal global ptr @srh1_mt6_check._entry, section ".printk_index", align 4
@srh1_mt6_check._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@srh1_mt6_check._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.srh1_mt6_check, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@srh1_mt6_check._entry_ptr.9 = internal global ptr @srh1_mt6_check._entry.8, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 251, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 257, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 270, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private constant [33 x i8] c"../net/ipv6/netfilter/ip6t_srh.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 276, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author622, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file619, ptr @__UNIQUE_ID_license620, ptr @__exitcall_srh_mt6_exit, ptr @__initcall__kmod_ip6t_srh__618_315_srh_mt6_init6, ptr @srh1_mt6_check._entry, ptr @srh1_mt6_check._entry.8, ptr @srh1_mt6_check._entry_ptr, ptr @srh1_mt6_check._entry_ptr.9, ptr @srh_mt6_check._entry, ptr @srh_mt6_check._entry.4, ptr @srh_mt6_check._entry_ptr, ptr @srh_mt6_check._entry_ptr.6, ptr @srh_mt6_exit, ptr @srh_mt6_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @srh_mt6_check._rs.3, ptr @.str.5, ptr @srh1_mt6_check._rs, ptr @srh1_mt6_check._rs.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srh_mt6_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srh_mt6_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srh_mt6_check._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srh_mt6_check._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srh1_mt6_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srh1_mt6_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srh1_mt6_check._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srh1_mt6_check._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @srh_mt6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xt_unregister_matches(ptr noundef nonnull @srh_mt6_reg, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @srh_mt6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @srh_mt6_reg, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @srh_mt6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_srh = alloca %struct.ipv6_sr_hdr, align 8
  %srhoff = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_srh) #7
  %3 = ptrtoint ptr %_srh to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %_srh, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srhoff) #7
  %4 = ptrtoint ptr %srhoff to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %srhoff, align 4
  %call = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %srhoff, i32 noundef 43, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %srhoff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %srhoff, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %11 = add i32 %6, %10
  %sub.i4.i = sub i32 %8, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !44

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %6, ptr noundef nonnull %_srh, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end3_crit_edge

lor.lhs.false.i.i.if.end3_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %6
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end3_crit_edge

skb_header_pointer.exit.if.end3_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %skb_header_pointer.exit.if.end3_crit_edge, %lor.lhs.false.i.i.if.end3_crit_edge
  %retval.0.i.i353 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end3_crit_edge ], [ %_srh, %lor.lhs.false.i.i.if.end3_crit_edge ]
  %hdrlen4 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i353, i32 0, i32 1
  %14 = ptrtoint ptr %hdrlen4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdrlen4, align 1
  %conv = zext i8 %15 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  %18 = ptrtoint ptr %srhoff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srhoff, align 4
  %sub = sub i32 %17, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl)
  %cmp5 = icmp ult i32 %sub, %shl
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %type = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i353, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp10.not = icmp eq i8 %21, 4
  br i1 %cmp10.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %segments_left = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i353, i32 0, i32 3
  %22 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %segments_left, align 1
  %first_segment = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i353, i32 0, i32 4
  %24 = ptrtoint ptr %first_segment to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %first_segment, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp16 = icmp ugt i8 %23, %25
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %mt_flags = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 5
  %26 = ptrtoint ptr %mt_flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mt_flags, align 2
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool21.not = icmp eq i16 %28, 0
  br i1 %tobool21.not, label %if.end19.if.end37_crit_edge, label %if.then22

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then22:                                        ; preds = %if.end19
  %29 = ptrtoint ptr %retval.0.i.i353 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %retval.0.i.i353, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp25 = icmp eq i8 %30, %32
  %mt_invflags = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %33 = ptrtoint ptr %mt_invflags to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mt_invflags, align 2
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %36 = icmp ne i16 %35, 0
  %tobool34.not = xor i1 %cmp25, %36
  br i1 %tobool34.not, label %if.then22.if.end37_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.if.end37_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37:                                         ; preds = %if.then22.if.end37_crit_edge, %if.end19.if.end37_crit_edge
  %37 = and i16 %27, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool41.not = icmp eq i16 %37, 0
  br i1 %tobool41.not, label %if.end37.if.end62_crit_edge, label %if.then42

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then42:                                        ; preds = %if.end37
  %hdr_len = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 1
  %38 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hdr_len, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %39)
  %cmp46 = icmp eq i8 %15, %39
  %mt_invflags50 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %40 = ptrtoint ptr %mt_invflags50 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mt_invflags50, align 2
  %42 = and i16 %41, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %43 = icmp ne i16 %42, 0
  %tobool59.not = xor i1 %cmp46, %43
  br i1 %tobool59.not, label %if.then42.if.end62_crit_edge, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42.if.end62_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end62:                                         ; preds = %if.then42.if.end62_crit_edge, %if.end37.if.end62_crit_edge
  %44 = and i16 %27, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool66.not = icmp eq i16 %44, 0
  br i1 %tobool66.not, label %if.end62.if.end88_crit_edge, label %if.then67

if.end62.if.end88_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then67:                                        ; preds = %if.end62
  %hdr_len70 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 1
  %45 = ptrtoint ptr %hdr_len70 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %hdr_len70, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %46)
  %cmp72 = icmp ugt i8 %15, %46
  %mt_invflags76 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %47 = ptrtoint ptr %mt_invflags76 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mt_invflags76, align 2
  %49 = and i16 %48, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %50 = icmp ne i16 %49, 0
  %tobool85.not = xor i1 %cmp72, %50
  br i1 %tobool85.not, label %if.then67.if.end88_crit_edge, label %if.then67.cleanup_crit_edge

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67.if.end88_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.end88:                                         ; preds = %if.then67.if.end88_crit_edge, %if.end62.if.end88_crit_edge
  %51 = and i16 %27, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool92.not = icmp eq i16 %51, 0
  br i1 %tobool92.not, label %if.end88.if.end114_crit_edge, label %if.then93

if.end88.if.end114_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then93:                                        ; preds = %if.end88
  %hdr_len96 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 1
  %52 = ptrtoint ptr %hdr_len96 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hdr_len96, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %53)
  %cmp98 = icmp ult i8 %15, %53
  %mt_invflags102 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %54 = ptrtoint ptr %mt_invflags102 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mt_invflags102, align 2
  %56 = and i16 %55, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %57 = icmp ne i16 %56, 0
  %tobool111.not = xor i1 %cmp98, %57
  br i1 %tobool111.not, label %if.then93.if.end114_crit_edge, label %if.then93.cleanup_crit_edge

if.then93.cleanup_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then93.if.end114_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.end114:                                        ; preds = %if.then93.if.end114_crit_edge, %if.end88.if.end114_crit_edge
  %58 = and i16 %27, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool118.not = icmp eq i16 %58, 0
  br i1 %tobool118.not, label %if.end114.if.end139_crit_edge, label %if.then119

if.end114.if.end139_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then119:                                       ; preds = %if.end114
  %segs_left = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 2
  %59 = ptrtoint ptr %segs_left to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %segs_left, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %60)
  %cmp123 = icmp eq i8 %23, %60
  %mt_invflags127 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %61 = ptrtoint ptr %mt_invflags127 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mt_invflags127, align 2
  %63 = and i16 %62, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %64 = icmp ne i16 %63, 0
  %tobool136.not = xor i1 %cmp123, %64
  br i1 %tobool136.not, label %if.then119.if.end139_crit_edge, label %if.then119.cleanup_crit_edge

if.then119.cleanup_crit_edge:                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then119.if.end139_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.end139:                                        ; preds = %if.then119.if.end139_crit_edge, %if.end114.if.end139_crit_edge
  %65 = and i16 %27, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool143.not = icmp eq i16 %65, 0
  br i1 %tobool143.not, label %if.end139.if.end165_crit_edge, label %if.then144

if.end139.if.end165_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then144:                                       ; preds = %if.end139
  %segs_left147 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 2
  %66 = ptrtoint ptr %segs_left147 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %segs_left147, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %67)
  %cmp149 = icmp ugt i8 %23, %67
  %mt_invflags153 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %68 = ptrtoint ptr %mt_invflags153 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %mt_invflags153, align 2
  %70 = and i16 %69, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %71 = icmp ne i16 %70, 0
  %tobool162.not = xor i1 %cmp149, %71
  br i1 %tobool162.not, label %if.then144.if.end165_crit_edge, label %if.then144.cleanup_crit_edge

if.then144.cleanup_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then144.if.end165_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.end165:                                        ; preds = %if.then144.if.end165_crit_edge, %if.end139.if.end165_crit_edge
  %72 = and i16 %27, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool169.not = icmp eq i16 %72, 0
  br i1 %tobool169.not, label %if.end165.if.end191_crit_edge, label %if.then170

if.end165.if.end191_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.then170:                                       ; preds = %if.end165
  %segs_left173 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 2
  %73 = ptrtoint ptr %segs_left173 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %segs_left173, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %74)
  %cmp175 = icmp ult i8 %23, %74
  %mt_invflags179 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %75 = ptrtoint ptr %mt_invflags179 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %mt_invflags179, align 2
  %77 = and i16 %76, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %78 = icmp ne i16 %77, 0
  %tobool188.not = xor i1 %cmp175, %78
  br i1 %tobool188.not, label %if.then170.if.end191_crit_edge, label %if.then170.cleanup_crit_edge

if.then170.cleanup_crit_edge:                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then170.if.end191_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.end191:                                        ; preds = %if.then170.if.end191_crit_edge, %if.end165.if.end191_crit_edge
  %79 = and i16 %27, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool195.not = icmp eq i16 %79, 0
  br i1 %tobool195.not, label %if.end191.if.end216_crit_edge, label %if.then196

if.end191.if.end216_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.then196:                                       ; preds = %if.end191
  %last_entry = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 3
  %80 = ptrtoint ptr %last_entry to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %last_entry, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %81)
  %cmp200 = icmp eq i8 %25, %81
  %mt_invflags204 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %82 = ptrtoint ptr %mt_invflags204 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %mt_invflags204, align 2
  %84 = and i16 %83, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %85 = icmp ne i16 %84, 0
  %tobool213.not = xor i1 %cmp200, %85
  br i1 %tobool213.not, label %if.then196.if.end216_crit_edge, label %if.then196.cleanup_crit_edge

if.then196.cleanup_crit_edge:                     ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then196.if.end216_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.end216:                                        ; preds = %if.then196.if.end216_crit_edge, %if.end191.if.end216_crit_edge
  %86 = and i16 %27, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool220.not = icmp eq i16 %86, 0
  br i1 %tobool220.not, label %if.end216.if.end242_crit_edge, label %if.then221

if.end216.if.end242_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.then221:                                       ; preds = %if.end216
  %last_entry224 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 3
  %87 = ptrtoint ptr %last_entry224 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %last_entry224, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %88)
  %cmp226 = icmp ugt i8 %25, %88
  %mt_invflags230 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %89 = ptrtoint ptr %mt_invflags230 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %mt_invflags230, align 2
  %91 = and i16 %90, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %92 = icmp ne i16 %91, 0
  %tobool239.not = xor i1 %cmp226, %92
  br i1 %tobool239.not, label %if.then221.if.end242_crit_edge, label %if.then221.cleanup_crit_edge

if.then221.cleanup_crit_edge:                     ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then221.if.end242_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.end242:                                        ; preds = %if.then221.if.end242_crit_edge, %if.end216.if.end242_crit_edge
  %93 = and i16 %27, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool246.not = icmp eq i16 %93, 0
  br i1 %tobool246.not, label %if.end242.if.end268_crit_edge, label %if.then247

if.end242.if.end268_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.then247:                                       ; preds = %if.end242
  %last_entry250 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 3
  %94 = ptrtoint ptr %last_entry250 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %last_entry250, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %95)
  %cmp252 = icmp ult i8 %25, %95
  %mt_invflags256 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %96 = ptrtoint ptr %mt_invflags256 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %mt_invflags256, align 2
  %98 = and i16 %97, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %99 = icmp ne i16 %98, 0
  %tobool265.not = xor i1 %cmp252, %99
  br i1 %tobool265.not, label %if.then247.if.end268_crit_edge, label %if.then247.cleanup_crit_edge

if.then247.cleanup_crit_edge:                     ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then247.if.end268_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.end268:                                        ; preds = %if.then247.if.end268_crit_edge, %if.end242.if.end268_crit_edge
  %100 = and i16 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool272.not = icmp eq i16 %100, 0
  br i1 %tobool272.not, label %if.end268.if.end293_crit_edge, label %if.then273

if.end268.if.end293_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end293

if.then273:                                       ; preds = %if.end268
  %tag = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i353, i32 0, i32 6
  %101 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %tag, align 2
  %tag275 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 4
  %103 = ptrtoint ptr %tag275 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %tag275, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %102, i16 %104)
  %cmp277 = icmp eq i16 %102, %104
  %mt_invflags281 = getelementptr inbounds %struct.ip6t_srh, ptr %2, i32 0, i32 6
  %105 = ptrtoint ptr %mt_invflags281 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %mt_invflags281, align 2
  %107 = and i16 %106, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %108 = icmp ne i16 %107, 0
  %tobool290.not = xor i1 %cmp277, %108
  br i1 %tobool290.not, label %if.then273.if.end293_crit_edge, label %if.then273.cleanup_crit_edge

if.then273.cleanup_crit_edge:                     ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then273.if.end293_crit_edge:                   ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end293

if.end293:                                        ; preds = %if.then273.if.end293_crit_edge, %if.end268.if.end293_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end293, %if.then273.cleanup_crit_edge, %if.then247.cleanup_crit_edge, %if.then221.cleanup_crit_edge, %if.then196.cleanup_crit_edge, %if.then170.cleanup_crit_edge, %if.then144.cleanup_crit_edge, %if.then119.cleanup_crit_edge, %if.then93.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end293 ], [ false, %entry.cleanup_crit_edge ], [ false, %skb_header_pointer.exit.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %if.end13.cleanup_crit_edge ], [ false, %if.then22.cleanup_crit_edge ], [ false, %if.then42.cleanup_crit_edge ], [ false, %if.then67.cleanup_crit_edge ], [ false, %if.then93.cleanup_crit_edge ], [ false, %if.then119.cleanup_crit_edge ], [ false, %if.then144.cleanup_crit_edge ], [ false, %if.then170.cleanup_crit_edge ], [ false, %if.then196.cleanup_crit_edge ], [ false, %if.then221.cleanup_crit_edge ], [ false, %if.then247.cleanup_crit_edge ], [ false, %if.then273.cleanup_crit_edge ], [ false, %if.end.i.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srhoff) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_srh) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srh_mt6_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %mt_flags = getelementptr inbounds %struct.ip6t_srh, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mt_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mt_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %tobool.not = icmp ult i16 %3, 16384
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @srh_mt6_check._rs, ptr noundef nonnull @__func__.srh_mt6_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %mt_invflags = getelementptr inbounds %struct.ip6t_srh, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mt_invflags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mt_invflags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %tobool9.not = icmp ult i16 %5, 16384
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.then10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @srh_mt6_check._rs.3, ptr noundef nonnull @__func__.srh_mt6_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.then10.cleanup.sink.split_crit_edge

if.then10.cleanup.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then10.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %mt_invflags.sink = phi ptr [ %mt_flags, %if.then.cleanup.sink.split_crit_edge ], [ %mt_invflags, %if.then10.cleanup.sink.split_crit_edge ]
  %.str.5.sink = phi ptr [ @.str.1, %if.then.cleanup.sink.split_crit_edge ], [ @.str.5, %if.then10.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %mt_invflags.sink to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mt_invflags.sink, align 2
  %conv19 = zext i16 %7 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink, i32 noundef %conv19) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then10.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @srh1_mt6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %srhoff = alloca i32, align 4
  %_psid = alloca %struct.in6_addr, align 4
  %_nsid = alloca %struct.in6_addr, align 4
  %_lsid = alloca %struct.in6_addr, align 4
  %_srh = alloca %struct.ipv6_sr_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srhoff) #7
  %0 = ptrtoint ptr %srhoff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %srhoff, align 4
  %1 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_psid) #7
  %4 = call ptr @memset(ptr %_psid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_nsid) #7
  %5 = call ptr @memset(ptr %_nsid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_lsid) #7
  %6 = call ptr @memset(ptr %_lsid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_srh) #7
  %7 = ptrtoint ptr %_srh to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %_srh, align 8
  %call = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %srhoff, i32 noundef 43, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %srhoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %srhoff, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %14 = add i32 %9, %13
  %sub.i4.i = sub i32 %11, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !44

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %9, ptr noundef nonnull %_srh, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end3_crit_edge

lor.lhs.false.i.i.if.end3_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %9
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end3_crit_edge

skb_header_pointer.exit.if.end3_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %skb_header_pointer.exit.if.end3_crit_edge, %lor.lhs.false.i.i.if.end3_crit_edge
  %retval.0.i.i483 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end3_crit_edge ], [ %_srh, %lor.lhs.false.i.i.if.end3_crit_edge ]
  %hdrlen4 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i483, i32 0, i32 1
  %17 = ptrtoint ptr %hdrlen4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hdrlen4, align 1
  %conv = zext i8 %18 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %21 = ptrtoint ptr %srhoff to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %srhoff, align 4
  %sub = sub i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl)
  %cmp5 = icmp ult i32 %sub, %shl
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %type = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i483, i32 0, i32 2
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %cmp10.not = icmp eq i8 %24, 4
  br i1 %cmp10.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %segments_left = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i483, i32 0, i32 3
  %25 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %segments_left, align 1
  %first_segment = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i483, i32 0, i32 4
  %27 = ptrtoint ptr %first_segment to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %first_segment, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp16 = icmp ugt i8 %26, %28
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %mt_flags = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %mt_flags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mt_flags, align 4
  %31 = and i16 %30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool21.not = icmp eq i16 %31, 0
  br i1 %tobool21.not, label %if.end19.if.end37_crit_edge, label %if.then22

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then22:                                        ; preds = %if.end19
  %32 = ptrtoint ptr %retval.0.i.i483 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %retval.0.i.i483, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp25 = icmp eq i8 %33, %35
  %mt_invflags = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %36 = ptrtoint ptr %mt_invflags to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mt_invflags, align 2
  %38 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %39 = icmp ne i16 %38, 0
  %tobool34.not = xor i1 %cmp25, %39
  br i1 %tobool34.not, label %if.then22.if.end37_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.if.end37_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37:                                         ; preds = %if.then22.if.end37_crit_edge, %if.end19.if.end37_crit_edge
  %40 = and i16 %30, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool41.not = icmp eq i16 %40, 0
  br i1 %tobool41.not, label %if.end37.if.end62_crit_edge, label %if.then42

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then42:                                        ; preds = %if.end37
  %hdr_len = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hdr_len, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %42)
  %cmp46 = icmp eq i8 %18, %42
  %mt_invflags50 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %43 = ptrtoint ptr %mt_invflags50 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mt_invflags50, align 2
  %45 = and i16 %44, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %46 = icmp ne i16 %45, 0
  %tobool59.not = xor i1 %cmp46, %46
  br i1 %tobool59.not, label %if.then42.if.end62_crit_edge, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42.if.end62_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end62:                                         ; preds = %if.then42.if.end62_crit_edge, %if.end37.if.end62_crit_edge
  %47 = and i16 %30, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool66.not = icmp eq i16 %47, 0
  br i1 %tobool66.not, label %if.end62.if.end88_crit_edge, label %if.then67

if.end62.if.end88_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then67:                                        ; preds = %if.end62
  %hdr_len70 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %hdr_len70 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hdr_len70, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %49)
  %cmp72 = icmp ugt i8 %18, %49
  %mt_invflags76 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %50 = ptrtoint ptr %mt_invflags76 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mt_invflags76, align 2
  %52 = and i16 %51, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %53 = icmp ne i16 %52, 0
  %tobool85.not = xor i1 %cmp72, %53
  br i1 %tobool85.not, label %if.then67.if.end88_crit_edge, label %if.then67.cleanup_crit_edge

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67.if.end88_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.end88:                                         ; preds = %if.then67.if.end88_crit_edge, %if.end62.if.end88_crit_edge
  %54 = and i16 %30, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool92.not = icmp eq i16 %54, 0
  br i1 %tobool92.not, label %if.end88.if.end114_crit_edge, label %if.then93

if.end88.if.end114_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then93:                                        ; preds = %if.end88
  %hdr_len96 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 1
  %55 = ptrtoint ptr %hdr_len96 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hdr_len96, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %56)
  %cmp98 = icmp ult i8 %18, %56
  %mt_invflags102 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %57 = ptrtoint ptr %mt_invflags102 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mt_invflags102, align 2
  %59 = and i16 %58, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %60 = icmp ne i16 %59, 0
  %tobool111.not = xor i1 %cmp98, %60
  br i1 %tobool111.not, label %if.then93.if.end114_crit_edge, label %if.then93.cleanup_crit_edge

if.then93.cleanup_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then93.if.end114_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.end114:                                        ; preds = %if.then93.if.end114_crit_edge, %if.end88.if.end114_crit_edge
  %61 = and i16 %30, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool118.not = icmp eq i16 %61, 0
  br i1 %tobool118.not, label %if.end114.if.end139_crit_edge, label %if.then119

if.end114.if.end139_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then119:                                       ; preds = %if.end114
  %segs_left = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 2
  %62 = ptrtoint ptr %segs_left to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %segs_left, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %63)
  %cmp123 = icmp eq i8 %26, %63
  %mt_invflags127 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %64 = ptrtoint ptr %mt_invflags127 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %mt_invflags127, align 2
  %66 = and i16 %65, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %67 = icmp ne i16 %66, 0
  %tobool136.not = xor i1 %cmp123, %67
  br i1 %tobool136.not, label %if.then119.if.end139_crit_edge, label %if.then119.cleanup_crit_edge

if.then119.cleanup_crit_edge:                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then119.if.end139_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.end139:                                        ; preds = %if.then119.if.end139_crit_edge, %if.end114.if.end139_crit_edge
  %68 = and i16 %30, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool143.not = icmp eq i16 %68, 0
  br i1 %tobool143.not, label %if.end139.if.end165_crit_edge, label %if.then144

if.end139.if.end165_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then144:                                       ; preds = %if.end139
  %segs_left147 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 2
  %69 = ptrtoint ptr %segs_left147 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %segs_left147, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %70)
  %cmp149 = icmp ugt i8 %26, %70
  %mt_invflags153 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %71 = ptrtoint ptr %mt_invflags153 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mt_invflags153, align 2
  %73 = and i16 %72, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %74 = icmp ne i16 %73, 0
  %tobool162.not = xor i1 %cmp149, %74
  br i1 %tobool162.not, label %if.then144.if.end165_crit_edge, label %if.then144.cleanup_crit_edge

if.then144.cleanup_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then144.if.end165_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.end165:                                        ; preds = %if.then144.if.end165_crit_edge, %if.end139.if.end165_crit_edge
  %75 = and i16 %30, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool169.not = icmp eq i16 %75, 0
  br i1 %tobool169.not, label %if.end165.if.end191_crit_edge, label %if.then170

if.end165.if.end191_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.then170:                                       ; preds = %if.end165
  %segs_left173 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 2
  %76 = ptrtoint ptr %segs_left173 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %segs_left173, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %77)
  %cmp175 = icmp ult i8 %26, %77
  %mt_invflags179 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %78 = ptrtoint ptr %mt_invflags179 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %mt_invflags179, align 2
  %80 = and i16 %79, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %81 = icmp ne i16 %80, 0
  %tobool188.not = xor i1 %cmp175, %81
  br i1 %tobool188.not, label %if.then170.if.end191_crit_edge, label %if.then170.cleanup_crit_edge

if.then170.cleanup_crit_edge:                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then170.if.end191_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.end191:                                        ; preds = %if.then170.if.end191_crit_edge, %if.end165.if.end191_crit_edge
  %82 = and i16 %30, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool195.not = icmp eq i16 %82, 0
  br i1 %tobool195.not, label %if.end191.if.end216_crit_edge, label %if.then196

if.end191.if.end216_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.then196:                                       ; preds = %if.end191
  %last_entry = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 3
  %83 = ptrtoint ptr %last_entry to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %last_entry, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %84)
  %cmp200 = icmp eq i8 %28, %84
  %mt_invflags204 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %85 = ptrtoint ptr %mt_invflags204 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %mt_invflags204, align 2
  %87 = and i16 %86, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %88 = icmp ne i16 %87, 0
  %tobool213.not = xor i1 %cmp200, %88
  br i1 %tobool213.not, label %if.then196.if.end216_crit_edge, label %if.then196.cleanup_crit_edge

if.then196.cleanup_crit_edge:                     ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then196.if.end216_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.end216:                                        ; preds = %if.then196.if.end216_crit_edge, %if.end191.if.end216_crit_edge
  %89 = and i16 %30, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool220.not = icmp eq i16 %89, 0
  br i1 %tobool220.not, label %if.end216.if.end242_crit_edge, label %if.then221

if.end216.if.end242_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.then221:                                       ; preds = %if.end216
  %last_entry224 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 3
  %90 = ptrtoint ptr %last_entry224 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %last_entry224, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %91)
  %cmp226 = icmp ugt i8 %28, %91
  %mt_invflags230 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %92 = ptrtoint ptr %mt_invflags230 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %mt_invflags230, align 2
  %94 = and i16 %93, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %95 = icmp ne i16 %94, 0
  %tobool239.not = xor i1 %cmp226, %95
  br i1 %tobool239.not, label %if.then221.if.end242_crit_edge, label %if.then221.cleanup_crit_edge

if.then221.cleanup_crit_edge:                     ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then221.if.end242_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.end242:                                        ; preds = %if.then221.if.end242_crit_edge, %if.end216.if.end242_crit_edge
  %96 = and i16 %30, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool246.not = icmp eq i16 %96, 0
  br i1 %tobool246.not, label %if.end242.if.end268_crit_edge, label %if.then247

if.end242.if.end268_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.then247:                                       ; preds = %if.end242
  %last_entry250 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 3
  %97 = ptrtoint ptr %last_entry250 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %last_entry250, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %98)
  %cmp252 = icmp ult i8 %28, %98
  %mt_invflags256 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %99 = ptrtoint ptr %mt_invflags256 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %mt_invflags256, align 2
  %101 = and i16 %100, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %102 = icmp ne i16 %101, 0
  %tobool265.not = xor i1 %cmp252, %102
  br i1 %tobool265.not, label %if.then247.if.end268_crit_edge, label %if.then247.cleanup_crit_edge

if.then247.cleanup_crit_edge:                     ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then247.if.end268_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.end268:                                        ; preds = %if.then247.if.end268_crit_edge, %if.end242.if.end268_crit_edge
  %103 = and i16 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool272.not = icmp eq i16 %103, 0
  br i1 %tobool272.not, label %if.end268.if.end293_crit_edge, label %if.then273

if.end268.if.end293_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end293

if.then273:                                       ; preds = %if.end268
  %tag = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %retval.0.i.i483, i32 0, i32 6
  %104 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %tag, align 2
  %tag275 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 4
  %106 = ptrtoint ptr %tag275 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %tag275, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %105, i16 %107)
  %cmp277 = icmp eq i16 %105, %107
  %mt_invflags281 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %108 = ptrtoint ptr %mt_invflags281 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %mt_invflags281, align 2
  %110 = and i16 %109, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %111 = icmp ne i16 %110, 0
  %tobool290.not = xor i1 %cmp277, %111
  br i1 %tobool290.not, label %if.then273.if.end293_crit_edge, label %if.then273.cleanup_crit_edge

if.then273.cleanup_crit_edge:                     ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then273.if.end293_crit_edge:                   ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end293

if.end293:                                        ; preds = %if.then273.if.end293_crit_edge, %if.end268.if.end293_crit_edge
  %112 = and i16 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool297.not = icmp eq i16 %112, 0
  br i1 %tobool297.not, label %if.end293.if.end330_crit_edge, label %if.then298

if.end293.if.end330_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end330

if.then298:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp303 = icmp eq i8 %26, %28
  br i1 %cmp303, label %if.then298.cleanup_crit_edge, label %if.end306

if.then298.cleanup_crit_edge:                     ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end306:                                        ; preds = %if.then298
  %conv300 = zext i8 %26 to i32
  %add310 = shl nuw nsw i32 %conv300, 4
  %mul = add i32 %22, 24
  %add311 = add i32 %mul, %add310
  %call312 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %add311, i32 noundef 16, ptr noundef nonnull %_psid)
  %tobool313.not = icmp eq ptr %call312, null
  br i1 %tobool313.not, label %if.end306.cleanup_crit_edge, label %if.end315

if.end306.cleanup_crit_edge:                      ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end315:                                        ; preds = %if.end306
  %psid_msk = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 8
  %psid_addr = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 5
  %call316 = call fastcc zeroext i1 @ipv6_masked_addr_cmp(ptr noundef nonnull %call312, ptr noundef %psid_msk, ptr noundef %psid_addr)
  %mt_invflags318 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %113 = ptrtoint ptr %mt_invflags318 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mt_invflags318, align 2
  %115 = and i16 %114, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %116 = icmp eq i16 %115, 0
  %tobool327.not = xor i1 %call316, %116
  br i1 %tobool327.not, label %if.end315.if.end330_crit_edge, label %if.end315.cleanup_crit_edge

if.end315.cleanup_crit_edge:                      ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end315.if.end330_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end330

if.end330:                                        ; preds = %if.end315.if.end330_crit_edge, %if.end293.if.end330_crit_edge
  %117 = ptrtoint ptr %mt_flags to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %mt_flags, align 4
  %119 = and i16 %118, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool334.not = icmp eq i16 %119, 0
  br i1 %tobool334.not, label %if.end330.if.end366_crit_edge, label %if.then335

if.end330.if.end366_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end366

if.then335:                                       ; preds = %if.end330
  %120 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %segments_left, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp338 = icmp eq i8 %121, 0
  br i1 %cmp338, label %if.then335.cleanup_crit_edge, label %if.end341

if.then335.cleanup_crit_edge:                     ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end341:                                        ; preds = %if.then335
  %conv337 = zext i8 %121 to i32
  %122 = ptrtoint ptr %srhoff to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %srhoff, align 4
  %sub345 = shl nuw nsw i32 %conv337, 4
  %mul346 = add nsw i32 %sub345, -8
  %add347 = add i32 %mul346, %123
  %call348 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %add347, i32 noundef 16, ptr noundef nonnull %_nsid)
  %tobool349.not = icmp eq ptr %call348, null
  br i1 %tobool349.not, label %if.end341.cleanup_crit_edge, label %if.end351

if.end341.cleanup_crit_edge:                      ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end351:                                        ; preds = %if.end341
  %nsid_msk = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 9
  %nsid_addr = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 6
  %call352 = call fastcc zeroext i1 @ipv6_masked_addr_cmp(ptr noundef nonnull %call348, ptr noundef %nsid_msk, ptr noundef %nsid_addr)
  %mt_invflags354 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %124 = ptrtoint ptr %mt_invflags354 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %mt_invflags354, align 2
  %126 = and i16 %125, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %127 = icmp eq i16 %126, 0
  %tobool363.not = xor i1 %call352, %127
  br i1 %tobool363.not, label %if.end351.if.end366_crit_edge, label %if.end351.cleanup_crit_edge

if.end351.cleanup_crit_edge:                      ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end351.if.end366_crit_edge:                    ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end366

if.end366:                                        ; preds = %if.end351.if.end366_crit_edge, %if.end330.if.end366_crit_edge
  %128 = ptrtoint ptr %mt_flags to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %mt_flags, align 4
  %130 = and i16 %129, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool370.not = icmp eq i16 %130, 0
  br i1 %tobool370.not, label %if.end366.if.end391_crit_edge, label %if.then371

if.end366.if.end391_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end391

if.then371:                                       ; preds = %if.end366
  %131 = ptrtoint ptr %srhoff to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %srhoff, align 4
  %add372 = add i32 %132, 8
  %call373 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %add372, i32 noundef 16, ptr noundef nonnull %_lsid)
  %tobool374.not = icmp eq ptr %call373, null
  br i1 %tobool374.not, label %if.then371.cleanup_crit_edge, label %if.end376

if.then371.cleanup_crit_edge:                     ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end376:                                        ; preds = %if.then371
  %lsid_msk = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 10
  %lsid_addr = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 7
  %call377 = call fastcc zeroext i1 @ipv6_masked_addr_cmp(ptr noundef nonnull %call373, ptr noundef %lsid_msk, ptr noundef %lsid_addr)
  %mt_invflags379 = getelementptr inbounds %struct.ip6t_srh1, ptr %3, i32 0, i32 12
  %133 = ptrtoint ptr %mt_invflags379 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %mt_invflags379, align 2
  %135 = and i16 %134, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %136 = icmp eq i16 %135, 0
  %tobool388.not = xor i1 %call377, %136
  br i1 %tobool388.not, label %if.end376.if.end391_crit_edge, label %if.end376.cleanup_crit_edge

if.end376.cleanup_crit_edge:                      ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end376.if.end391_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end391

if.end391:                                        ; preds = %if.end376.if.end391_crit_edge, %if.end366.if.end391_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end391, %if.end376.cleanup_crit_edge, %if.then371.cleanup_crit_edge, %if.end351.cleanup_crit_edge, %if.end341.cleanup_crit_edge, %if.then335.cleanup_crit_edge, %if.end315.cleanup_crit_edge, %if.end306.cleanup_crit_edge, %if.then298.cleanup_crit_edge, %if.then273.cleanup_crit_edge, %if.then247.cleanup_crit_edge, %if.then221.cleanup_crit_edge, %if.then196.cleanup_crit_edge, %if.then170.cleanup_crit_edge, %if.then144.cleanup_crit_edge, %if.then119.cleanup_crit_edge, %if.then93.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end391 ], [ false, %entry.cleanup_crit_edge ], [ false, %skb_header_pointer.exit.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %if.end13.cleanup_crit_edge ], [ false, %if.then22.cleanup_crit_edge ], [ false, %if.then42.cleanup_crit_edge ], [ false, %if.then67.cleanup_crit_edge ], [ false, %if.then93.cleanup_crit_edge ], [ false, %if.then119.cleanup_crit_edge ], [ false, %if.then144.cleanup_crit_edge ], [ false, %if.then170.cleanup_crit_edge ], [ false, %if.then196.cleanup_crit_edge ], [ false, %if.then221.cleanup_crit_edge ], [ false, %if.then247.cleanup_crit_edge ], [ false, %if.then273.cleanup_crit_edge ], [ false, %if.then298.cleanup_crit_edge ], [ false, %if.end306.cleanup_crit_edge ], [ false, %if.end315.cleanup_crit_edge ], [ false, %if.then335.cleanup_crit_edge ], [ false, %if.end341.cleanup_crit_edge ], [ false, %if.end351.cleanup_crit_edge ], [ false, %if.then371.cleanup_crit_edge ], [ false, %if.end376.cleanup_crit_edge ], [ false, %if.end.i.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_srh) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_lsid) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_nsid) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_psid) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srhoff) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srh1_mt6_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %mt_flags = getelementptr inbounds %struct.ip6t_srh1, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mt_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mt_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %tobool.not = icmp ult i16 %3, 16384
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @srh1_mt6_check._rs, ptr noundef nonnull @__func__.srh1_mt6_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %mt_invflags = getelementptr inbounds %struct.ip6t_srh1, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %mt_invflags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mt_invflags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %tobool9.not = icmp ult i16 %5, 16384
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.then10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @srh1_mt6_check._rs.7, ptr noundef nonnull @__func__.srh1_mt6_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.then10.cleanup.sink.split_crit_edge

if.then10.cleanup.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then10.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink.in = phi ptr [ %mt_flags, %if.then.cleanup.sink.split_crit_edge ], [ %mt_invflags, %if.then10.cleanup.sink.split_crit_edge ]
  %.str.5.sink = phi ptr [ @.str.1, %if.then.cleanup.sink.split_crit_edge ], [ @.str.5, %if.then10.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv19 = zext i16 %.sink to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink, i32 noundef %conv19) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then10.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %4 = add i32 %3, %offset
  %sub.i4 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4, i32 %len)
  %cmp.not.i = icmp slt i32 %sub.i4, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !44

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %offset
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !44
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ipv6_masked_addr_cmp(ptr nocapture noundef readonly %a1, ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %a2) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a1, align 4
  %2 = ptrtoint ptr %a2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a2, align 4
  %xor = xor i32 %3, %1
  %4 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m, align 4
  %and = and i32 %xor, %5
  %arrayidx6 = getelementptr [4 x i32], ptr %a1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr %a2, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8, align 4
  %xor9 = xor i32 %9, %7
  %arrayidx11 = getelementptr [4 x i32], ptr %m, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %and12 = and i32 %xor9, %11
  %or = or i32 %and12, %and
  %arrayidx14 = getelementptr [4 x i32], ptr %a1, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr [4 x i32], ptr %a2, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %15, %13
  %arrayidx19 = getelementptr [4 x i32], ptr %m, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19, align 4
  %and20 = and i32 %xor17, %17
  %or21 = or i32 %or, %and20
  %arrayidx23 = getelementptr [4 x i32], ptr %a1, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr [4 x i32], ptr %a2, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx25, align 4
  %xor26 = xor i32 %21, %19
  %arrayidx28 = getelementptr [4 x i32], ptr %m, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx28, align 4
  %and29 = and i32 %xor26, %23
  %or30 = or i32 %or21, %and29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30)
  %tobool = icmp ne i32 %or30, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_ip6t_srh__618_315_srh_mt6_init6, !1, !"__initcall__kmod_ip6t_srh__618_315_srh_mt6_init6", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 315, i32 1}
!2 = !{ptr @__exitcall_srh_mt6_exit, !3, !"__exitcall_srh_mt6_exit", i1 false, i1 false}
!3 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 316, i32 1}
!4 = !{ptr @__UNIQUE_ID_file619, !5, !"__UNIQUE_ID_file619", i1 false, i1 false}
!5 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 318, i32 1}
!6 = !{ptr @__UNIQUE_ID_license620, !5, !"__UNIQUE_ID_license620", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description621, !8, !"__UNIQUE_ID_description621", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 319, i32 1}
!9 = !{ptr @__UNIQUE_ID_author622, !10, !"__UNIQUE_ID_author622", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 320, i32 1}
!11 = !{ptr @srh_mt6_reg, !12, !"srh_mt6_reg", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 284, i32 24}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 251, i32 3}
!15 = !{ptr @srh_mt6_check._rs, !14, !"_rs", i1 false, i1 false}
!16 = !{ptr @__func__.srh_mt6_check, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @srh_mt6_check._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @srh_mt6_check._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @srh_mt6_check._rs.3, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 257, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @srh_mt6_check._entry.4, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @srh_mt6_check._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @srh1_mt6_check._rs, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 270, i32 3}
!28 = !{ptr @__func__.srh1_mt6_check, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @srh1_mt6_check._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @srh1_mt6_check._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @srh1_mt6_check._rs.7, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../net/ipv6/netfilter/ip6t_srh.c", i32 276, i32 3}
!33 = !{ptr @srh1_mt6_check._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @srh1_mt6_check._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
