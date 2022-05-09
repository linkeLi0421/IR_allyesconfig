; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_LOG.c_pt.bc'
source_filename = "../net/netfilter/xt_LOG.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nf_loginfo = type { i8, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i16, i16, i16 }
%struct.xt_action_param = type { %union.anon.188, %union.anon.189, ptr, i32, i16, i8 }
%union.anon.188 = type { ptr }
%union.anon.189 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xt_log_info = type { i8, i8, [30 x i8] }
%struct.anon.101 = type { i8, i8 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }

@log_tg_regs = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"LOG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @log_tg, ptr @log_tg_check, ptr @log_tg_destroy, ptr null, ptr null, i32 32, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"LOG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @log_tg, ptr @log_tg_check, ptr @log_tg_destroy, ptr null, ptr null, i32 32, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_LOG__621_110_log_tg_init6 = internal global ptr @log_tg_init, section ".initcall6.init", align 4
@__exitcall_log_tg_exit = internal global ptr @log_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file622 = internal constant [33 x i8] c"xt_LOG.file=net/netfilter/xt_LOG\00", section ".modinfo", align 1
@__UNIQUE_ID_license623 = internal constant [19 x i8] c"xt_LOG.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author624 = internal constant [59 x i8] c"xt_LOG.author=Netfilter Core Team <coreteam@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author625 = internal constant [50 x i8] c"xt_LOG.author=Jan Rekorajski <baggins@pld.org.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description626 = internal constant [53 x i8] c"xt_LOG.description=Xtables: IPv4/IPv6 packet logging\00", section ".modinfo", align 1
@__UNIQUE_ID_alias627 = internal constant [21 x i8] c"xt_LOG.alias=ipt_LOG\00", section ".modinfo", align 1
@__UNIQUE_ID_alias628 = internal constant [22 x i8] c"xt_LOG.alias=ip6t_LOG\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep629 = internal constant [34 x i8] c"xt_LOG.softdep=pre: nf_log_syslog\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@log_tg_check.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xt_LOG\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log_tg_check\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/xt_LOG.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"level %u >= 8\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xt_LOG: level %u >= 8\0A\00", [41 x i8] zeroinitializer }, align 32
@log_tg_check.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"prefix is not null-terminated\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"xt_LOG: prefix is not null-terminated\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nf_log_syslog\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 40, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 53, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 58, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [26 x i8] c"../net/netfilter/xt_LOG.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 64, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias627, ptr @__UNIQUE_ID_alias628, ptr @__UNIQUE_ID_author624, ptr @__UNIQUE_ID_author625, ptr @__UNIQUE_ID_description626, ptr @__UNIQUE_ID_file622, ptr @__UNIQUE_ID_license623, ptr @__UNIQUE_ID_softdep629, ptr @__exitcall_log_tg_exit, ptr @__initcall__kmod_xt_LOG__621_110_log_tg_init6, ptr @log_tg_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @log_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_targets(ptr noundef nonnull @log_tg_regs, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @log_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @log_tg_regs, i32 noundef 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %li = alloca %struct.nf_loginfo, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %li) #4
  %7 = call ptr @memset(ptr %li, i32 255, i32 16)
  %8 = ptrtoint ptr %li to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %li, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %2, align 1
  %u = getelementptr inbounds %struct.nf_loginfo, ptr %li, i32 0, i32 1
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %u, align 4
  %logflags = getelementptr inbounds %struct.xt_log_info, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %logflags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %logflags, align 1
  %logflags3 = getelementptr inbounds %struct.anon.101, ptr %u, i32 0, i32 1
  %14 = ptrtoint ptr %logflags3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %logflags3, align 1
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pf.i, align 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %4, align 4
  %conv.i = zext i8 %18 to i32
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 2
  %19 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 3
  %21 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out.i, align 4
  %prefix = getelementptr inbounds %struct.xt_log_info, ptr %2, i32 0, i32 2
  call void (ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ...) @nf_log_packet(ptr noundef %6, i8 noundef zeroext %16, i32 noundef %conv.i, ptr noundef %skb, ptr noundef %20, ptr noundef %22, ptr noundef nonnull %li, ptr noundef nonnull @.str, ptr noundef %prefix) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %li) #4
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_tg_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 2, label %entry.if.end_crit_edge
    i8 10, label %entry.if.end_crit_edge65
  ]

entry.if.end_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge65
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp7 = icmp ugt i8 %6, 7
  br i1 %cmp7, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @log_tg_check.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@log_tg_check, %if.then12)) #4
          to label %cleanup [label %if.then12], !srcloc !45

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %conv14 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @log_tg_check.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.5, i32 noundef %conv14) #4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.xt_log_info, ptr %1, i32 0, i32 2, i32 29
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp18.not = icmp eq i8 %10, 0
  br i1 %cmp18.not, label %if.end37, label %do.body21

do.body21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @log_tg_check.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@log_tg_check, %if.then33)) #4
          to label %cleanup [label %if.then33], !srcloc !45

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @log_tg_check.__UNIQUE_ID_ddebug620, ptr noundef nonnull @.str.7) #4
  br label %cleanup

if.end37:                                         ; preds = %if.end16
  %conv39 = zext i8 %3 to i32
  %call40 = tail call i32 @nf_logger_find_get(i32 noundef %conv39, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %if.end37.cleanup_crit_edge, label %land.lhs.true43

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true43:                                  ; preds = %if.end37
  %nft_compat = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 7
  %11 = ptrtoint ptr %nft_compat to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nft_compat, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool44.not = icmp eq i8 %12, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true43.cleanup_crit_edge

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  %call46 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #4
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %family, align 4
  %conv48 = zext i8 %14 to i32
  %call49 = tail call i32 @nf_logger_find_get(i32 noundef %conv48, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %land.lhs.true43.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then33, %do.body21, %if.then12, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then12 ], [ -22, %if.then33 ], [ %call40, %land.lhs.true43.cleanup_crit_edge ], [ %call49, %if.then45 ], [ 0, %if.end37.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @log_tg_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  %conv = zext i8 %1 to i32
  tail call void @nf_logger_put(i32 noundef %conv, i32 noundef 0) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_packet(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_logger_find_get(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_logger_put(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_xt_LOG__621_110_log_tg_init6, !1, !"__initcall__kmod_xt_LOG__621_110_log_tg_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_LOG.c", i32 110, i32 1}
!2 = !{ptr @__exitcall_log_tg_exit, !3, !"__exitcall_log_tg_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_LOG.c", i32 111, i32 1}
!4 = !{ptr @__UNIQUE_ID_file622, !5, !"__UNIQUE_ID_file622", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_LOG.c", i32 113, i32 1}
!6 = !{ptr @__UNIQUE_ID_license623, !5, !"__UNIQUE_ID_license623", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author624, !8, !"__UNIQUE_ID_author624", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_LOG.c", i32 114, i32 1}
!9 = !{ptr @__UNIQUE_ID_author625, !10, !"__UNIQUE_ID_author625", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_LOG.c", i32 115, i32 1}
!11 = !{ptr @__UNIQUE_ID_description626, !12, !"__UNIQUE_ID_description626", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_LOG.c", i32 116, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias627, !14, !"__UNIQUE_ID_alias627", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_LOG.c", i32 117, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias628, !16, !"__UNIQUE_ID_alias628", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_LOG.c", i32 118, i32 1}
!17 = !{ptr @__UNIQUE_ID_softdep629, !18, !"__UNIQUE_ID_softdep629", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_LOG.c", i32 119, i32 1}
!19 = !{ptr @log_tg_regs, !20, !"log_tg_regs", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_LOG.c", i32 77, i32 25}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_LOG.c", i32 40, i32 27}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_LOG.c", i32 53, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @log_tg_check.__UNIQUE_ID_ddebug619, !24, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!29 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/xt_LOG.c", i32 58, i32 3}
!32 = !{ptr @log_tg_check.__UNIQUE_ID_ddebug620, !31, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/xt_LOG.c", i32 64, i32 3}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148954380, i64 2148954385, i64 2148954398, i64 2148954442, i64 2148954476, i64 2148954497}
!46 = !{i8 0, i8 2}
