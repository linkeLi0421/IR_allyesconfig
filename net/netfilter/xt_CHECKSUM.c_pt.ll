; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_CHECKSUM.c_pt.bc'
source_filename = "../net/netfilter/xt_CHECKSUM.c"
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }

@__UNIQUE_ID_file618 = internal constant [43 x i8] c"xt_CHECKSUM.file=net/netfilter/xt_CHECKSUM\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [24 x i8] c"xt_CHECKSUM.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [55 x i8] c"xt_CHECKSUM.author=Michael S. Tsirkin <mst@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [55 x i8] c"xt_CHECKSUM.description=Xtables: checksum modification\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [31 x i8] c"xt_CHECKSUM.alias=ipt_CHECKSUM\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [32 x i8] c"xt_CHECKSUM.alias=ip6t_CHECKSUM\00", section ".modinfo", align 1
@checksum_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"CHECKSUM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @checksum_tg, ptr @checksum_tg_check, ptr null, ptr null, ptr @.str, i32 1, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_CHECKSUM__624_86_checksum_tg_init6 = internal global ptr @checksum_tg_init, section ".initcall6.init", align 4
@__exitcall_checksum_tg_exit = internal global ptr @checksum_tg_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@checksum_tg_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.checksum_tg_check = private unnamed_addr constant [18 x i8] c"checksum_tg_check\00", align 1
@checksum_tg_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.checksum_tg_check, ptr @.str.3, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016xt_CHECKSUM: unsupported CHECKSUM operation %x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/netfilter/xt_CHECKSUM.c\00", [36 x i8] zeroinitializer }, align 32
@checksum_tg_check._entry_ptr = internal global ptr @checksum_tg_check._entry, section ".printk_index", align 4
@checksum_tg_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@checksum_tg_check._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.checksum_tg_check, ptr @.str.3, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\014xt_CHECKSUM: CHECKSUM should be avoided.  If really needed, restrict with \22-p udp\22 and only use in OUTPUT\0A\00", [51 x i8] zeroinitializer }, align 32
@checksum_tg_check._entry_ptr.6 = internal global ptr @checksum_tg_check._entry.4, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 71, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 41, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [31 x i8] c"../net/netfilter/xt_CHECKSUM.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 62, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_checksum_tg_exit, ptr @__initcall__kmod_xt_CHECKSUM__624_86_checksum_tg_init6, ptr @checksum_tg_check._entry, ptr @checksum_tg_check._entry.4, ptr @checksum_tg_check._entry_ptr, ptr @checksum_tg_check._entry_ptr.6, ptr @checksum_tg_exit, ptr @.str, ptr @checksum_tg_check._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checksum_tg_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checksum_tg_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checksum_tg_check._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @checksum_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_target(ptr noundef nonnull @checksum_tg_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @checksum_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @checksum_tg_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @checksum_tg(ptr noundef %skb, ptr nocapture noundef readnone %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp = icmp eq i16 %1, 1536
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @skb_checksum_help(ptr noundef %skb) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @checksum_tg_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %tobool.not = icmp ult i8 %5, 2
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @checksum_tg_check._rs, ptr noundef nonnull @__func__.checksum_tg_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %conv5 = zext i8 %7 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv5) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %if.end11.land.end_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb21
  ]

if.end11.land.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

sw.bb:                                            ; preds = %if.end11
  %proto = getelementptr inbounds %struct.ipt_ip, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %12)
  %cmp = icmp eq i16 %12, 17
  br i1 %cmp, label %land.lhs.true, label %sw.bb.land.end_crit_edge

sw.bb.land.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true:                                    ; preds = %sw.bb
  %invflags = getelementptr inbounds %struct.ipt_ip, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %invflags, align 1
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp17 = icmp eq i8 %15, 0
  br i1 %cmp17, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb21:                                          ; preds = %if.end11
  %flags = getelementptr inbounds %struct.ip6t_ip6, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool24.not = icmp eq i8 %18, 0
  br i1 %tobool24.not, label %sw.bb21.land.end_crit_edge, label %land.lhs.true25

sw.bb21.land.end_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true25:                                  ; preds = %sw.bb21
  %proto26 = getelementptr inbounds %struct.ip6t_ip6, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %proto26 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %proto26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %20)
  %cmp28 = icmp eq i16 %20, 17
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true25.land.end_crit_edge

land.lhs.true25.land.end_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %invflags31 = getelementptr inbounds %struct.ip6t_ip6, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %invflags31 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %invflags31, align 4
  %23 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp34 = icmp eq i8 %23, 0
  br i1 %cmp34, label %land.lhs.true30.cleanup_crit_edge, label %land.lhs.true30.land.end_crit_edge

land.lhs.true30.land.end_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.end:                                         ; preds = %land.lhs.true30.land.end_crit_edge, %land.lhs.true25.land.end_crit_edge, %sw.bb21.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %sw.bb.land.end_crit_edge, %if.end11.land.end_crit_edge
  %.b69 = load i1, ptr @checksum_tg_check.__already_done, align 1
  br i1 %.b69, label %land.end.cleanup_crit_edge, label %if.then44, !prof !41

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then44:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @checksum_tg_check.__already_done, align 1
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %land.end.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true30.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author620, !4, !"__UNIQUE_ID_author620", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 20, i32 1}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 21, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 22, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias623, !10, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 23, i32 1}
!11 = !{ptr @__initcall__kmod_xt_CHECKSUM__624_86_checksum_tg_init6, !12, !"__initcall__kmod_xt_CHECKSUM__624_86_checksum_tg_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 86, i32 1}
!13 = !{ptr @__exitcall_checksum_tg_exit, !14, !"__exitcall_checksum_tg_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 87, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 71, i32 12}
!17 = !{ptr @checksum_tg_reg, !18, !"checksum_tg_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 66, i32 25}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 41, i32 3}
!21 = !{ptr @checksum_tg_check._rs, !20, !"_rs", i1 false, i1 false}
!22 = !{ptr @__func__.checksum_tg_check, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @checksum_tg_check._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @checksum_tg_check._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../net/netfilter/xt_CHECKSUM.c", i32 62, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @checksum_tg_check._entry.4, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @checksum_tg_check._entry_ptr.6, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
