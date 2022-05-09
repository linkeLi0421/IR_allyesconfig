; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_physdev.c_pt.bc'
source_filename = "../net/netfilter/xt_physdev.c"
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
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_physdev_info = type { [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.nf_bridge_info = type { i16, i16, ptr, ptr, %union.anon.147 }
%union.anon.147 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file476 = internal constant [41 x i8] c"xt_physdev.file=net/netfilter/xt_physdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license477 = internal constant [23 x i8] c"xt_physdev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author478 = internal constant [57 x i8] c"xt_physdev.author=Bart De Schuymer <bdschuym@pandora.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description479 = internal constant [61 x i8] c"xt_physdev.description=Xtables: Bridge physical device match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias480 = internal constant [29 x i8] c"xt_physdev.alias=ipt_physdev\00", section ".modinfo", align 1
@__UNIQUE_ID_alias481 = internal constant [30 x i8] c"xt_physdev.alias=ip6t_physdev\00", section ".modinfo", align 1
@physdev_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"physdev\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @physdev_mt, ptr @physdev_mt_check, ptr null, ptr null, ptr null, i32 66, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_physdev__482_138_physdev_mt_init6 = internal global ptr @physdev_mt_init, section ".initcall6.init", align 4
@__exitcall_physdev_mt_exit = internal global ptr @physdev_mt_exit, section ".exitcall.exit", align 4
@physdev_mt_check.brnf_probed = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@physdev_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.physdev_mt_check = private unnamed_addr constant [17 x i8] c"physdev_mt_check\00", align 1
@physdev_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.physdev_mt_check, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"\016xt_physdev: --physdev-out and --physdev-is-out only supported in the FORWARD and POSTROUTING chains with bridged traffic\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/xt_physdev.c\00", [37 x i8] zeroinitializer }, align 32
@physdev_mt_check._entry_ptr = internal global ptr @physdev_mt_check._entry, section ".printk_index", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"br_netfilter\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 106, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [30 x i8] c"../net/netfilter/xt_physdev.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 112, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias480, ptr @__UNIQUE_ID_alias481, ptr @__UNIQUE_ID_author478, ptr @__UNIQUE_ID_description479, ptr @__UNIQUE_ID_file476, ptr @__UNIQUE_ID_license477, ptr @__exitcall_physdev_mt_exit, ptr @__initcall__kmod_xt_physdev__482_138_physdev_mt_init6, ptr @physdev_mt_check._entry, ptr @physdev_mt_check._entry_ptr, ptr @physdev_mt_exit, ptr @physdev_mt_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physdev_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physdev_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @physdev_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_match(ptr noundef nonnull @physdev_mt_reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @physdev_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @physdev_mt_reg) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @physdev_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %active_extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %3 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %active_extensions.i.i, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.i.not, label %if.then, label %nf_bridge_info_get.exit.i

if.then:                                          ; preds = %entry
  %bitmask = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 5
  %6 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bitmask, align 1
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %invert = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %invert, align 1
  %11 = and i8 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %12 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %if.end.if.end15_crit_edge, label %land.lhs.true9

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true9:                                   ; preds = %if.end
  %invert10 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %13 = ptrtoint ptr %invert10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %invert10, align 1
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end15_crit_edge

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true9.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %16 = and i8 %7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool19.not = icmp eq i8 %16, 0
  br i1 %tobool19.not, label %if.end15.if.end26_crit_edge, label %land.lhs.true20

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

land.lhs.true20:                                  ; preds = %if.end15
  %invert21 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %17 = ptrtoint ptr %invert21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %invert21, align 1
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true20.if.end26_crit_edge

land.lhs.true20.if.end26_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true20.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %20 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not = icmp eq i8 %20, 0
  br i1 %tobool30.not, label %if.end26.if.end37_crit_edge, label %land.lhs.true31

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true31:                                  ; preds = %if.end26
  %invert32 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %21 = ptrtoint ptr %invert32 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %invert32, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool35.not = icmp eq i8 %23, 0
  br i1 %tobool35.not, label %land.lhs.true31.cleanup_crit_edge, label %land.lhs.true31.if.end37_crit_edge

land.lhs.true31.if.end37_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true31.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %24 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool41.not = icmp eq i8 %24, 0
  br i1 %tobool41.not, label %if.end37.if.end48_crit_edge, label %land.lhs.true42

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true42:                                  ; preds = %if.end37
  %invert43 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %25 = ptrtoint ptr %invert43 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %invert43, align 1
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool46.not = icmp eq i8 %27, 0
  br i1 %tobool46.not, label %land.lhs.true42.cleanup_crit_edge, label %land.lhs.true42.if.end48_crit_edge

land.lhs.true42.if.end48_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true42.if.end48_crit_edge, %if.end37.if.end48_crit_edge
  br label %cleanup

nf_bridge_info_get.exit.i:                        ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %28 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %extensions.i.i.i, align 8
  %offset.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %offset.i.i.i, align 1
  %conv.i.i.i = zext i8 %31 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %nf_bridge_info_get.exit.i.nf_bridge_get_physoutdev.exit_crit_edge, label %cond.true.i

nf_bridge_info_get.exit.i.nf_bridge_get_physoutdev.exit_crit_edge: ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_bridge_get_physoutdev.exit

cond.true.i:                                      ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %physoutdev.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %physoutdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %physoutdev.i, align 4
  br label %nf_bridge_get_physoutdev.exit

nf_bridge_get_physoutdev.exit:                    ; preds = %cond.true.i, %nf_bridge_info_get.exit.i.nf_bridge_get_physoutdev.exit_crit_edge
  %cond.i = phi ptr [ %33, %cond.true.i ], [ null, %nf_bridge_info_get.exit.i.nf_bridge_get_physoutdev.exit_crit_edge ]
  %tobool51.not = icmp eq ptr %cond.i, null
  %bitmask52 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 5
  %34 = ptrtoint ptr %bitmask52 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bitmask52, align 1
  %36 = and i8 %35, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool55.not = icmp eq i8 %36, 0
  br i1 %tobool55.not, label %nf_bridge_get_physoutdev.exit.nf_bridge_info_get.exit.i214_crit_edge, label %land.lhs.true56

nf_bridge_get_physoutdev.exit.nf_bridge_info_get.exit.i214_crit_edge: ; preds = %nf_bridge_get_physoutdev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_bridge_info_get.exit.i214

land.lhs.true56:                                  ; preds = %nf_bridge_get_physoutdev.exit
  %tobool57 = icmp ne ptr %cond.i, null
  %invert59 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %37 = ptrtoint ptr %invert59 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %invert59, align 1
  %39 = lshr i8 %38, 2
  %.lobit204 = and i8 %39, 1
  %40 = xor i8 %.lobit204, 1
  %41 = zext i1 %tobool57 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %tobool65.not = icmp eq i8 %40, %41
  br i1 %tobool65.not, label %land.lhs.true56.nf_bridge_info_get.exit.i214_crit_edge, label %land.lhs.true56.cleanup_crit_edge

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true56.nf_bridge_info_get.exit.i214_crit_edge: ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_bridge_info_get.exit.i214

nf_bridge_info_get.exit.i214:                     ; preds = %land.lhs.true56.nf_bridge_info_get.exit.i214_crit_edge, %nf_bridge_get_physoutdev.exit.nf_bridge_info_get.exit.i214_crit_edge
  %42 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extensions.i.i.i, align 8
  %offset.i.i.i209 = getelementptr inbounds %struct.skb_ext, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %offset.i.i.i209 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %offset.i.i.i209, align 1
  %conv.i.i.i210 = zext i8 %45 to i32
  %shl.i.i.i211 = shl nuw nsw i32 %conv.i.i.i210, 3
  %add.ptr.i.i.i212 = getelementptr i8, ptr %43, i32 %shl.i.i.i211
  %tobool.not.i213 = icmp eq ptr %add.ptr.i.i.i212, null
  br i1 %tobool.not.i213, label %nf_bridge_info_get.exit.i214.nf_bridge_get_physindev.exit_crit_edge, label %cond.true.i215

nf_bridge_info_get.exit.i214.nf_bridge_get_physindev.exit_crit_edge: ; preds = %nf_bridge_info_get.exit.i214
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_bridge_get_physindev.exit

cond.true.i215:                                   ; preds = %nf_bridge_info_get.exit.i214
  call void @__sanitizer_cov_trace_pc() #7
  %physindev.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i212, i32 0, i32 2
  %46 = ptrtoint ptr %physindev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %physindev.i, align 4
  br label %nf_bridge_get_physindev.exit

nf_bridge_get_physindev.exit:                     ; preds = %cond.true.i215, %nf_bridge_info_get.exit.i214.nf_bridge_get_physindev.exit_crit_edge
  %cond.i216 = phi ptr [ %47, %cond.true.i215 ], [ null, %nf_bridge_info_get.exit.i214.nf_bridge_get_physindev.exit_crit_edge ]
  %tobool69.not = icmp eq ptr %cond.i216, null
  %48 = and i8 %35, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool79.not = icmp eq i8 %48, 0
  br i1 %tobool79.not, label %nf_bridge_get_physindev.exit.lor.lhs.false_crit_edge, label %land.lhs.true80

nf_bridge_get_physindev.exit.lor.lhs.false_crit_edge: ; preds = %nf_bridge_get_physindev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

land.lhs.true80:                                  ; preds = %nf_bridge_get_physindev.exit
  %tobool81.not = icmp ne ptr %cond.i216, null
  %invert84 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %49 = ptrtoint ptr %invert84 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %invert84, align 1
  %51 = and i8 %50, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %52 = icmp ne i8 %51, 0
  %tobool93.not = xor i1 %tobool81.not, %52
  br i1 %tobool93.not, label %land.lhs.true80.lor.lhs.false_crit_edge, label %land.lhs.true80.cleanup_crit_edge

land.lhs.true80.cleanup_crit_edge:                ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true80.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true80.lor.lhs.false_crit_edge, %nf_bridge_get_physindev.exit.lor.lhs.false_crit_edge
  %53 = and i8 %35, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool97.not = icmp eq i8 %53, 0
  br i1 %tobool97.not, label %lor.lhs.false.if.end113_crit_edge, label %land.lhs.true98

lor.lhs.false.if.end113_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

land.lhs.true98:                                  ; preds = %lor.lhs.false
  %tobool99.not = icmp ne ptr %cond.i, null
  %invert102 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %54 = ptrtoint ptr %invert102 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %invert102, align 1
  %56 = and i8 %55, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %57 = icmp ne i8 %56, 0
  %tobool111.not = xor i1 %tobool99.not, %57
  br i1 %tobool111.not, label %land.lhs.true98.if.end113_crit_edge, label %land.lhs.true98.cleanup_crit_edge

land.lhs.true98.cleanup_crit_edge:                ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true98.if.end113_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.end113:                                        ; preds = %land.lhs.true98.if.end113_crit_edge, %lor.lhs.false.if.end113_crit_edge
  %58 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool117.not = icmp eq i8 %58, 0
  %or.cond = select i1 %tobool117.not, i1 true, i1 %tobool69.not
  br i1 %or.cond, label %if.end113.match_outdev_crit_edge, label %if.then121

if.end113.match_outdev_crit_edge:                 ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_outdev

if.then121:                                       ; preds = %if.end113
  %in_mask = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 1
  %59 = ptrtoint ptr %cond.i216 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cond.i216, align 4
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %2, align 4
  %xor.i = xor i32 %62, %60
  %63 = ptrtoint ptr %in_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %in_mask, align 4
  %and.i = and i32 %xor.i, %64
  %arrayidx3.i = getelementptr i32, ptr %cond.i216, i32 1
  %65 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %2, i32 1
  %67 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx4.i, align 4
  %xor5.i = xor i32 %68, %66
  %arrayidx6.i = getelementptr %struct.xt_physdev_info, ptr %2, i32 0, i32 1, i32 4
  %69 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx6.i, align 4
  %and7.i = and i32 %xor5.i, %70
  %or.i = or i32 %and7.i, %and.i
  %arrayidx8.i = getelementptr i32, ptr %cond.i216, i32 2
  %71 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %2, i32 2
  %73 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx9.i, align 4
  %xor10.i = xor i32 %74, %72
  %arrayidx11.i = getelementptr %struct.xt_physdev_info, ptr %2, i32 0, i32 1, i32 8
  %75 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx11.i, align 4
  %and12.i = and i32 %xor10.i, %76
  %or13.i = or i32 %or.i, %and12.i
  %arrayidx14.i = getelementptr i32, ptr %cond.i216, i32 3
  %77 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %2, i32 3
  %79 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx15.i, align 4
  %xor16.i = xor i32 %80, %78
  %arrayidx17.i = getelementptr %struct.xt_physdev_info, ptr %2, i32 0, i32 1, i32 12
  %81 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx17.i, align 4
  %and18.i = and i32 %xor16.i, %82
  %or19.i = or i32 %or13.i, %and18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %tobool125.not = icmp eq i32 %or19.i, 0
  %invert128 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %83 = ptrtoint ptr %invert128 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %invert128, align 1
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  %87 = zext i1 %tobool125.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %87)
  %tobool135.not = icmp eq i8 %86, %87
  br i1 %tobool135.not, label %if.then121.match_outdev_crit_edge, label %if.then121.cleanup_crit_edge

if.then121.cleanup_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then121.match_outdev_crit_edge:                ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_outdev

match_outdev:                                     ; preds = %if.then121.match_outdev_crit_edge, %if.end113.match_outdev_crit_edge
  %88 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool142.not = icmp eq i8 %88, 0
  %brmerge = select i1 %tobool142.not, i1 true, i1 %tobool51.not
  br i1 %brmerge, label %match_outdev.cleanup_crit_edge, label %if.end147

match_outdev.cleanup_crit_edge:                   ; preds = %match_outdev
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end147:                                        ; preds = %match_outdev
  call void @__sanitizer_cov_trace_pc() #7
  %physoutdev = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 2
  %out_mask = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 3
  %89 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cond.i, align 4
  %91 = ptrtoint ptr %physoutdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %physoutdev, align 4
  %xor.i217 = xor i32 %92, %90
  %93 = ptrtoint ptr %out_mask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %out_mask, align 4
  %and.i218 = and i32 %xor.i217, %94
  %arrayidx3.i219 = getelementptr i32, ptr %cond.i, i32 1
  %95 = ptrtoint ptr %arrayidx3.i219 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx3.i219, align 4
  %arrayidx4.i220 = getelementptr %struct.xt_physdev_info, ptr %2, i32 0, i32 2, i32 4
  %97 = ptrtoint ptr %arrayidx4.i220 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx4.i220, align 4
  %xor5.i221 = xor i32 %98, %96
  %arrayidx6.i222 = getelementptr %struct.xt_physdev_info, ptr %2, i32 0, i32 3, i32 4
  %99 = ptrtoint ptr %arrayidx6.i222 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx6.i222, align 4
  %and7.i223 = and i32 %xor5.i221, %100
  %or.i224 = or i32 %and7.i223, %and.i218
  %arrayidx8.i225 = getelementptr i32, ptr %cond.i, i32 2
  %101 = ptrtoint ptr %arrayidx8.i225 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx8.i225, align 4
  %arrayidx9.i226 = getelementptr %struct.xt_physdev_info, ptr %2, i32 0, i32 2, i32 8
  %103 = ptrtoint ptr %arrayidx9.i226 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx9.i226, align 4
  %xor10.i227 = xor i32 %104, %102
  %arrayidx11.i228 = getelementptr %struct.xt_physdev_info, ptr %2, i32 0, i32 3, i32 8
  %105 = ptrtoint ptr %arrayidx11.i228 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx11.i228, align 4
  %and12.i229 = and i32 %xor10.i227, %106
  %or13.i230 = or i32 %or.i224, %and12.i229
  %arrayidx14.i231 = getelementptr i32, ptr %cond.i, i32 3
  %107 = ptrtoint ptr %arrayidx14.i231 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx14.i231, align 4
  %arrayidx15.i232 = getelementptr %struct.xt_physdev_info, ptr %2, i32 0, i32 2, i32 12
  %109 = ptrtoint ptr %arrayidx15.i232 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx15.i232, align 4
  %xor16.i233 = xor i32 %110, %108
  %arrayidx17.i234 = getelementptr %struct.xt_physdev_info, ptr %2, i32 0, i32 3, i32 12
  %111 = ptrtoint ptr %arrayidx17.i234 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx17.i234, align 4
  %and18.i235 = and i32 %xor16.i233, %112
  %or19.i236 = or i32 %or13.i230, %and18.i235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i236)
  %tobool151 = icmp ne i32 %or19.i236, 0
  %invert156 = getelementptr inbounds %struct.xt_physdev_info, ptr %2, i32 0, i32 4
  %113 = ptrtoint ptr %invert156 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %invert156, align 1
  %115 = lshr i8 %114, 1
  %.lobit = and i8 %115, 1
  %116 = xor i8 %.lobit, 1
  %117 = zext i1 %tobool151 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %117)
  %tobool163 = icmp ne i8 %116, %117
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %match_outdev.cleanup_crit_edge, %if.then121.cleanup_crit_edge, %land.lhs.true98.cleanup_crit_edge, %land.lhs.true80.cleanup_crit_edge, %land.lhs.true56.cleanup_crit_edge, %if.end48, %land.lhs.true42.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool163, %if.end147 ], [ true, %if.end48 ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %land.lhs.true9.cleanup_crit_edge ], [ false, %land.lhs.true20.cleanup_crit_edge ], [ false, %land.lhs.true31.cleanup_crit_edge ], [ false, %land.lhs.true42.cleanup_crit_edge ], [ false, %land.lhs.true56.cleanup_crit_edge ], [ false, %land.lhs.true98.cleanup_crit_edge ], [ false, %land.lhs.true80.cleanup_crit_edge ], [ false, %if.then121.cleanup_crit_edge ], [ %tobool142.not, %match_outdev.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @physdev_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %bitmask = getelementptr inbounds %struct.xt_physdev_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bitmask, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and3 = and i32 %conv, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = and i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and7 = and i32 %conv, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %and11 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.land.lhs.true17_crit_edge, label %lor.lhs.false13

land.lhs.true.land.lhs.true17_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true17

lor.lhs.false13:                                  ; preds = %land.lhs.true
  %invert = getelementptr inbounds %struct.xt_physdev_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invert, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool16.not = icmp eq i8 %6, 0
  br i1 %tobool16.not, label %lor.lhs.false13.if.end25_crit_edge, label %lor.lhs.false13.land.lhs.true17_crit_edge

lor.lhs.false13.land.lhs.true17_crit_edge:        ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true17

lor.lhs.false13.if.end25_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true17:                                  ; preds = %lor.lhs.false13.land.lhs.true17_crit_edge, %land.lhs.true.land.lhs.true17_crit_edge
  %hook_mask = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 5
  %7 = ptrtoint ptr %hook_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hook_mask, align 4
  %and18 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end25_crit_edge, label %if.then20

land.lhs.true17.if.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then20:                                        ; preds = %land.lhs.true17
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @physdev_mt_check._rs, ptr noundef nonnull @__func__.physdev_mt_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.then20.cleanup_crit_edge, label %do.end

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true17.if.end25_crit_edge, %lor.lhs.false13.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %.b35 = load i1, ptr @physdev_mt_check.brnf_probed, align 1
  br i1 %.b35, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @physdev_mt_check.brnf_probed, align 1
  %call28 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %do.end, %if.then20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then20.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__UNIQUE_ID_file476, !1, !"__UNIQUE_ID_file476", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_physdev.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_license477, !1, !"__UNIQUE_ID_license477", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author478, !4, !"__UNIQUE_ID_author478", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_physdev.c", i32 17, i32 1}
!5 = !{ptr @__UNIQUE_ID_description479, !6, !"__UNIQUE_ID_description479", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_physdev.c", i32 18, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias480, !8, !"__UNIQUE_ID_alias480", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_physdev.c", i32 19, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias481, !10, !"__UNIQUE_ID_alias481", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_physdev.c", i32 20, i32 1}
!11 = !{ptr @__initcall__kmod_xt_physdev__482_138_physdev_mt_init6, !12, !"__initcall__kmod_xt_physdev__482_138_physdev_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_physdev.c", i32 138, i32 1}
!13 = !{ptr @__exitcall_physdev_mt_exit, !14, !"__exitcall_physdev_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_physdev.c", i32 139, i32 1}
!15 = !{ptr @physdev_mt_reg, !16, !"physdev_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_physdev.c", i32 118, i32 24}
!17 = distinct !{null, !18, !"brnf_probed", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_physdev.c", i32 97, i32 14}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_physdev.c", i32 106, i32 3}
!21 = !{ptr @physdev_mt_check._rs, !20, !"_rs", i1 false, i1 false}
!22 = !{ptr @__func__.physdev_mt_check, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @physdev_mt_check._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @physdev_mt_check._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/xt_physdev.c", i32 112, i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
