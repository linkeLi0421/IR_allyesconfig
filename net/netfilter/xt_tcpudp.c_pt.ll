; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_tcpudp.c_pt.bc'
source_filename = "../net/netfilter/xt_tcpudp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
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
%struct.xt_tcp = type { [2 x i16], [2 x i16], i8, i8, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.xt_udp = type { [2 x i16], [2 x i16], i8 }

@__UNIQUE_ID_description619 = internal constant [59 x i8] c"xt_tcpudp.description=Xtables: TCP, UDP and UDP-Lite match\00", section ".modinfo", align 1
@__UNIQUE_ID_file620 = internal constant [39 x i8] c"xt_tcpudp.file=net/netfilter/xt_tcpudp\00", section ".modinfo", align 1
@__UNIQUE_ID_license621 = internal constant [22 x i8] c"xt_tcpudp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [23 x i8] c"xt_tcpudp.alias=xt_tcp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [23 x i8] c"xt_tcpudp.alias=xt_udp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias624 = internal constant [24 x i8] c"xt_tcpudp.alias=ipt_udp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias625 = internal constant [24 x i8] c"xt_tcpudp.alias=ipt_tcp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias626 = internal constant [25 x i8] c"xt_tcpudp.alias=ip6t_udp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias627 = internal constant [25 x i8] c"xt_tcpudp.alias=ip6t_tcp\00", section ".modinfo", align 1
@tcpudp_mt_reg = internal global [6 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"tcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @tcp_mt, ptr @tcp_mt_check, ptr null, ptr null, ptr null, i32 12, i32 0, i32 0, i16 6, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"tcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @tcp_mt, ptr @tcp_mt_check, ptr null, ptr null, ptr null, i32 12, i32 0, i32 0, i16 6, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"udp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @udp_mt, ptr @udp_mt_check, ptr null, ptr null, ptr null, i32 10, i32 0, i32 0, i16 17, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"udp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @udp_mt, ptr @udp_mt_check, ptr null, ptr null, ptr null, i32 10, i32 0, i32 0, i16 17, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"udplite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @udp_mt, ptr @udp_mt_check, ptr null, ptr null, ptr null, i32 10, i32 0, i32 0, i16 136, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"udplite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @udp_mt, ptr @udp_mt_check, ptr null, ptr null, ptr null, i32 10, i32 0, i32 0, i16 136, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_tcpudp__632_231_tcpudp_mt_init6 = internal global ptr @tcpudp_mt_init, section ".initcall6.init", align 4
@__exitcall_tcpudp_mt_exit = internal global ptr @tcpudp_mt_exit, section ".exitcall.exit", align 4
@tcp_mt.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xt_tcpudp\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tcp_mt\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/netfilter/xt_tcpudp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Dropping evil TCP offset=1 frag.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"xt_tcpudp: Dropping evil TCP offset=1 frag.\0A\00", [51 x i8] zeroinitializer }, align 32
@tcp_mt.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Dropping evil TCP offset=0 tinygram.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"xt_tcpudp: Dropping evil TCP offset=0 tinygram.\0A\00", [47 x i8] zeroinitializer }, align 32
@tcp_find_option.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_find_option\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"finding option\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xt_tcpudp: finding option\0A\00", [37 x i8] zeroinitializer }, align 32
@udp_mt.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"udp_mt\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dropping evil UDP tinygram.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"xt_tcpudp: Dropping evil UDP tinygram.\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 80, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 91, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 44, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [29 x i8] c"../net/netfilter/xt_tcpudp.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 143, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_alias624, ptr @__UNIQUE_ID_alias625, ptr @__UNIQUE_ID_alias626, ptr @__UNIQUE_ID_alias627, ptr @__UNIQUE_ID_description619, ptr @__UNIQUE_ID_file620, ptr @__UNIQUE_ID_license621, ptr @__exitcall_tcpudp_mt_exit, ptr @__initcall__kmod_xt_tcpudp__632_231_tcpudp_mt_init6, ptr @tcpudp_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcpudp_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_matches(ptr noundef nonnull @tcpudp_mt_reg, i32 noundef 6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpudp_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @tcpudp_mt_reg, i32 noundef 6) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tcp_mt(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_tcph = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #5
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %4 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoff, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %entry.cleanup_crit_edge [
    i16 0, label %if.end11
    i16 1, label %do.body
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_mt.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_mt, %if.then9)) #5
          to label %do.end [label %if.then9], !srcloc !53

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_mt.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %7 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

if.end11:                                         ; preds = %entry
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %8 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thoff, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !54

if.end.i.i:                                       ; preds = %if.end11
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body16_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body16_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %9, ptr noundef nonnull %_tcph, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.body16_crit_edge, label %lor.lhs.false.i.i.if.end33_crit_edge

lor.lhs.false.i.i.if.end33_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

lor.lhs.false.i.i.do.body16_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

skb_header_pointer.exit:                          ; preds = %if.end11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %9
  %cmp13 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp13, label %skb_header_pointer.exit.do.body16_crit_edge, label %skb_header_pointer.exit.if.end33_crit_edge

skb_header_pointer.exit.if.end33_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

skb_header_pointer.exit.do.body16_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

do.body16:                                        ; preds = %skb_header_pointer.exit.do.body16_crit_edge, %lor.lhs.false.i.i.do.body16_crit_edge, %if.end.i.i.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_mt.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_mt, %if.then28)) #5
          to label %do.end31 [label %if.then28], !srcloc !53

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_mt.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.6) #5
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.body16
  %hotdrop32 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %17 = ptrtoint ptr %hotdrop32 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %hotdrop32, align 2
  br label %cleanup

if.end33:                                         ; preds = %skb_header_pointer.exit.if.end33_crit_edge, %lor.lhs.false.i.i.if.end33_crit_edge
  %retval.0.i.i142 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end33_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end33_crit_edge ]
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %3, align 2
  %arrayidx35 = getelementptr [2 x i16], ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx35, align 2
  %22 = ptrtoint ptr %retval.0.i.i142 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %retval.0.i.i142, align 4
  %invflags = getelementptr inbounds %struct.xt_tcp, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %invflags, align 1
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool37 = icmp ne i8 %26, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %19)
  %cmp.not.i = icmp uge i16 %23, %19
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %21)
  %cmp5.i = icmp ule i16 %23, %21
  %narrow.i = and i1 %cmp.not.i, %cmp5.i
  %tobool8.i = xor i1 %narrow.i, %tobool37
  br i1 %tobool8.i, label %if.end44, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %dpts = getelementptr inbounds %struct.xt_tcp, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %dpts to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dpts, align 2
  %arrayidx47 = getelementptr %struct.xt_tcp, ptr %3, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx47, align 2
  %dest = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i142, i32 0, i32 1
  %31 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dest, align 2
  %33 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool51 = icmp ne i8 %33, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %28)
  %cmp.not.i132 = icmp uge i16 %32, %28
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %30)
  %cmp5.i133 = icmp ule i16 %32, %30
  %narrow.i134 = and i1 %cmp.not.i132, %cmp5.i133
  %tobool8.i135 = xor i1 %tobool51, %narrow.i134
  br i1 %tobool8.i135, label %if.end58, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end58:                                         ; preds = %if.end44
  %arrayidx59 = getelementptr i8, ptr %retval.0.i.i142, i32 13
  %34 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx59, align 1
  %flg_mask = getelementptr inbounds %struct.xt_tcp, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %flg_mask to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flg_mask, align 1
  %and62128 = and i8 %37, %35
  %flg_cmp = getelementptr inbounds %struct.xt_tcp, ptr %3, i32 0, i32 4
  %38 = ptrtoint ptr %flg_cmp to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flg_cmp, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %and62128, i8 %39)
  %cmp64 = icmp ne i8 %and62128, %39
  %conv67 = zext i8 %25 to i32
  %40 = and i32 %conv67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp ne i32 %40, 0
  %tobool74.not = xor i1 %41, %cmp64
  br i1 %tobool74.not, label %if.end58.cleanup_crit_edge, label %if.end76

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end76:                                         ; preds = %if.end58
  %option = getelementptr inbounds %struct.xt_tcp, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %option to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %option, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool77.not = icmp eq i8 %43, 0
  br i1 %tobool77.not, label %if.end76.if.end100_crit_edge, label %if.then78

if.end76.if.end100_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then78:                                        ; preds = %if.end76
  %doff = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i142, i32 0, i32 4
  %44 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load = load i16, ptr %doff, align 4
  %45 = lshr i16 %bf.load, 10
  %46 = and i16 %45, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %46)
  %cmp80 = icmp ult i16 %46, 20
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %hotdrop83 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %47 = ptrtoint ptr %hotdrop83 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %hotdrop83, align 2
  br label %cleanup

if.end84:                                         ; preds = %if.then78
  %mul = zext i16 %46 to i32
  %48 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %thoff, align 4
  %sub = add nsw i32 %mul, -20
  %and94 = and i32 %conv67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95 = icmp ne i32 %and94, 0
  %hotdrop96 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %call97 = call fastcc zeroext i1 @tcp_find_option(i8 noundef zeroext %43, ptr noundef %skb, i32 noundef %49, i32 noundef %sub, i1 noundef zeroext %tobool95, ptr noundef %hotdrop96)
  br i1 %call97, label %if.end84.if.end100_crit_edge, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end84.if.end100_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.end100:                                        ; preds = %if.end84.if.end100_crit_edge, %if.end76.if.end100_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %if.end84.cleanup_crit_edge, %if.then82, %if.end58.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end31 ], [ false, %if.then82 ], [ true, %if.end100 ], [ false, %entry.cleanup_crit_edge ], [ false, %do.end ], [ false, %if.end33.cleanup_crit_edge ], [ false, %if.end44.cleanup_crit_edge ], [ false, %if.end58.cleanup_crit_edge ], [ false, %if.end84.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #5
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcp_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invflags = getelementptr inbounds %struct.xt_tcp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invflags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %tobool.not = icmp ult i8 %3, 16
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @udp_mt(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_udph = alloca %struct.udphdr, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_udph) #5
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %_udph to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %_udph, align 8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %4 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %6 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %thoff, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %7, %11
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !54

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %7, ptr noundef nonnull %_udph, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.body_crit_edge, label %lor.lhs.false.i.i.if.end10_crit_edge

lor.lhs.false.i.i.if.end10_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

lor.lhs.false.i.i.do.body_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %7
  %cmp2 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp2, label %skb_header_pointer.exit.do.body_crit_edge, label %skb_header_pointer.exit.if.end10_crit_edge

skb_header_pointer.exit.if.end10_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

skb_header_pointer.exit.do.body_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %skb_header_pointer.exit.do.body_crit_edge, %lor.lhs.false.i.i.do.body_crit_edge, %if.end.i.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp_mt.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udp_mt, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !53

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp_mt.__UNIQUE_ID_ddebug631, ptr noundef nonnull @.str.12) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %15 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

if.end10:                                         ; preds = %skb_header_pointer.exit.if.end10_crit_edge, %lor.lhs.false.i.i.if.end10_crit_edge
  %retval.0.i.i55 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end10_crit_edge ], [ %_udph, %lor.lhs.false.i.i.if.end10_crit_edge ]
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 2
  %arrayidx12 = getelementptr [2 x i16], ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx12, align 2
  %20 = ptrtoint ptr %retval.0.i.i55 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %retval.0.i.i55, align 2
  %invflags = getelementptr inbounds %struct.xt_udp, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %invflags, align 2
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool14 = icmp ne i8 %24, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %17)
  %cmp.not.i = icmp uge i16 %21, %17
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %19)
  %cmp5.i = icmp ule i16 %21, %19
  %narrow.i = and i1 %cmp.not.i, %cmp5.i
  %tobool8.i = xor i1 %narrow.i, %tobool14
  br i1 %tobool8.i, label %land.rhs, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %dpts = getelementptr inbounds %struct.xt_udp, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %dpts to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dpts, align 2
  %arrayidx23 = getelementptr %struct.xt_udp, ptr %3, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx23, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i55, i32 0, i32 1
  %29 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dest, align 2
  %31 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool27 = icmp ne i8 %31, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %26)
  %cmp.not.i46 = icmp uge i16 %30, %26
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %28)
  %cmp5.i47 = icmp ule i16 %30, %28
  %narrow.i48 = and i1 %cmp.not.i46, %cmp5.i47
  %tobool8.i49 = xor i1 %tobool27, %narrow.i48
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ %tobool8.i49, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph) #5
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @udp_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invflags = getelementptr inbounds %struct.xt_udp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invflags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %tobool.not = icmp ult i8 %3, 4
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_find_option(i8 noundef zeroext %option, ptr noundef %skb, i32 noundef %protoff, i32 noundef %optlen, i1 noundef zeroext %invert, ptr nocapture noundef writeonly %hotdrop) unnamed_addr #2 align 64 {
entry:
  %_opt = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_opt) #5
  %0 = call ptr @memset(ptr %_opt, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_find_option.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_find_option, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !53

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_find_option.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optlen)
  %tobool4.not = icmp eq i32 %optlen, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %add = add i32 %protoff, 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %5 = add i32 %2, -20
  %6 = add i32 %4, %protoff
  %sub.i4.i = sub i32 %5, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i, i32 %optlen)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, %optlen
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !54

if.end.i.i:                                       ; preds = %if.end7
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then9_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then9_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_opt, i32 noundef %optlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then9_crit_edge, label %lor.lhs.false.i.i.for.body.preheader_crit_edge

lor.lhs.false.i.i.for.body.preheader_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

lor.lhs.false.i.i.if.then9_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

skb_header_pointer.exit:                          ; preds = %if.end7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %add
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.if.then9_crit_edge, label %skb_header_pointer.exit.for.body.preheader_crit_edge

skb_header_pointer.exit.for.body.preheader_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

skb_header_pointer.exit.if.then9_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

for.body.preheader:                               ; preds = %skb_header_pointer.exit.for.body.preheader_crit_edge, %lor.lhs.false.i.i.for.body.preheader_crit_edge
  %retval.0.i.i54 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.for.body.preheader_crit_edge ], [ %_opt, %lor.lhs.false.i.i.for.body.preheader_crit_edge ]
  br label %for.body

if.then9:                                         ; preds = %skb_header_pointer.exit.if.then9_crit_edge, %lor.lhs.false.i.i.if.then9_crit_edge, %if.end.i.i.if.then9_crit_edge
  %9 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %hotdrop, align 1
  br label %cleanup

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %for.body.preheader
  %i.051 = phi i32 [ %i.1, %if.end30.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %retval.0.i.i54, i32 %i.051
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %option)
  %cmp13 = icmp eq i8 %11, %option
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %lnot17 = xor i1 %invert, true
  br label %cleanup

if.end19:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp22 = icmp ult i8 %11, 2
  %inc = add nuw i32 %i.051, 1
  br i1 %cmp22, label %if.end19.if.end30_crit_edge, label %if.else

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx26 = getelementptr i8, ptr %retval.0.i.i54, i32 %inc
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  %narrow = select i1 %tobool28.not, i8 1, i8 %13
  %conv27. = zext i8 %narrow to i32
  %add29 = add i32 %i.051, %conv27.
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end19.if.end30_crit_edge
  %i.1 = phi i32 [ %add29, %if.else ], [ %inc, %if.end19.if.end30_crit_edge ]
  %cmp11 = icmp ult i32 %i.1, %optlen
  br i1 %cmp11, label %if.end30.for.body_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %if.then15, %if.then9, %do.end.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then9 ], [ %lnot17, %if.then15 ], [ %invert, %do.end.cleanup_crit_edge ], [ %invert, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_opt) #5
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__UNIQUE_ID_description619, !1, !"__UNIQUE_ID_description619", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_tcpudp.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_file620, !3, !"__UNIQUE_ID_file620", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_tcpudp.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_license621, !3, !"__UNIQUE_ID_license621", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias622, !6, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_tcpudp.c", i32 17, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias623, !8, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_tcpudp.c", i32 18, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias624, !10, !"__UNIQUE_ID_alias624", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_tcpudp.c", i32 19, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias625, !12, !"__UNIQUE_ID_alias625", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_tcpudp.c", i32 20, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias626, !14, !"__UNIQUE_ID_alias626", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_tcpudp.c", i32 21, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias627, !16, !"__UNIQUE_ID_alias627", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_tcpudp.c", i32 22, i32 1}
!17 = !{ptr @__initcall__kmod_xt_tcpudp__632_231_tcpudp_mt_init6, !18, !"__initcall__kmod_xt_tcpudp__632_231_tcpudp_mt_init6", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_tcpudp.c", i32 231, i32 1}
!19 = !{ptr @__exitcall_tcpudp_mt_exit, !20, !"__exitcall_tcpudp_mt_exit", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_tcpudp.c", i32 232, i32 1}
!21 = !{ptr @tcpudp_mt_reg, !22, !"tcpudp_mt_reg", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_tcpudp.c", i32 164, i32 24}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_tcpudp.c", i32 80, i32 4}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tcp_mt.__UNIQUE_ID_ddebug629, !24, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!29 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/xt_tcpudp.c", i32 91, i32 3}
!32 = !{ptr @tcp_mt.__UNIQUE_ID_ddebug630, !31, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/xt_tcpudp.c", i32 44, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tcp_find_option.__UNIQUE_ID_ddebug628, !35, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!38 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/netfilter/xt_tcpudp.c", i32 143, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @udp_mt.__UNIQUE_ID_ddebug631, !40, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!43 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2148957247, i64 2148957252, i64 2148957265, i64 2148957309, i64 2148957343, i64 2148957364}
!54 = !{!"branch_weights", i32 1, i32 2000}
