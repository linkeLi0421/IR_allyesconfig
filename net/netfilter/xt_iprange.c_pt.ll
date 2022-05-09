; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_iprange.c_pt.bc'
source_filename = "../net/netfilter/xt_iprange.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.xt_iprange_mtinfo = type { %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i8 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }

@iprange_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"iprange\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @iprange_mt4, ptr null, ptr null, ptr null, ptr null, i32 68, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"iprange\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @iprange_mt6, ptr null, ptr null, ptr null, ptr null, i32 68, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_iprange__493_130_iprange_mt_init6 = internal global ptr @iprange_mt_init, section ".initcall6.init", align 4
@__exitcall_iprange_mt_exit = internal global ptr @iprange_mt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file494 = internal constant [41 x i8] c"xt_iprange.file=net/netfilter/xt_iprange\00", section ".modinfo", align 1
@__UNIQUE_ID_license495 = internal constant [23 x i8] c"xt_iprange.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author496 = internal constant [58 x i8] c"xt_iprange.author=Jozsef Kadlecsik <kadlec@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author497 = internal constant [54 x i8] c"xt_iprange.author=Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description498 = internal constant [62 x i8] c"xt_iprange.description=Xtables: arbitrary IPv4 range matching\00", section ".modinfo", align 1
@__UNIQUE_ID_alias499 = internal constant [29 x i8] c"xt_iprange.alias=ipt_iprange\00", section ".modinfo", align 1
@__UNIQUE_ID_alias500 = internal constant [30 x i8] c"xt_iprange.alias=ip6t_iprange\00", section ".modinfo", align 1
@iprange_mt4.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xt_iprange\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iprange_mt4\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/xt_iprange.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"src IP %pI4 NOT in range %s%pI4-%pI4\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"xt_iprange: src IP %pI4 NOT in range %s%pI4-%pI4\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(INV) \00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@iprange_mt4.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dst IP %pI4 NOT in range %s%pI4-%pI4\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"xt_iprange: dst IP %pI4 NOT in range %s%pI4-%pI4\0A\00", [46 x i8] zeroinitializer }, align 32
@iprange_mt6.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iprange_mt6\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"src IP %pI6 NOT in range %s%pI6-%pI6\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"xt_iprange: src IP %pI6 NOT in range %s%pI6-%pI6\0A\00", [46 x i8] zeroinitializer }, align 32
@iprange_mt6.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dst IP %pI6 NOT in range %s%pI6-%pI6\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"xt_iprange: dst IP %pI6 NOT in range %s%pI6-%pI6\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 28, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 41, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 77, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [30 x i8] c"../net/netfilter/xt_iprange.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 90, i32 4 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias499, ptr @__UNIQUE_ID_alias500, ptr @__UNIQUE_ID_author496, ptr @__UNIQUE_ID_author497, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file494, ptr @__UNIQUE_ID_license495, ptr @__exitcall_iprange_mt_exit, ptr @__initcall__kmod_xt_iprange__493_130_iprange_mt_init6, ptr @iprange_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iprange_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_matches(ptr noundef nonnull @iprange_mt_reg, i32 noundef 2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iprange_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @iprange_mt_reg, i32 noundef 2) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iprange_mt4(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %flags = getelementptr inbounds %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 4
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then:                                          ; preds = %entry
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %saddr, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp ult i32 %10, %12
  %src_max = getelementptr inbounds %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %src_max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp3 = icmp ugt i32 %10, %14
  %or121 = or i1 %cmp, %cmp3
  %15 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  %tobool16.not = xor i1 %16, %or121
  br i1 %tobool16.not, label %if.then.if.end37_crit_edge, label %do.body

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iprange_mt4.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iprange_mt4, %if.then28)) #3
          to label %cleanup [label %if.then28], !srcloc !50

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags, align 4
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool33.not = icmp eq i8 %19, 0
  %cond = select i1 %tobool33.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iprange_mt4.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.4, ptr noundef %saddr, ptr noundef nonnull %cond, ptr noundef %2, ptr noundef %src_max) #3
  br label %cleanup

if.end37:                                         ; preds = %if.then.if.end37_crit_edge, %entry.if.end37_crit_edge
  %and40 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.cleanup_crit_edge, label %if.then42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %daddr, align 4
  %dst_min = getelementptr inbounds %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 2
  %22 = ptrtoint ptr %dst_min to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp43 = icmp ult i32 %21, %23
  %dst_max = getelementptr inbounds %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 3
  %24 = ptrtoint ptr %dst_max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp47 = icmp ugt i32 %21, %25
  %or51120 = or i1 %cmp43, %cmp47
  %26 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  %tobool65.not = xor i1 %27, %or51120
  br i1 %tobool65.not, label %if.then42.cleanup_crit_edge, label %do.body69

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body69:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iprange_mt4.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iprange_mt4, %if.then81)) #3
          to label %cleanup [label %if.then81], !srcloc !50

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags, align 4
  %30 = and i8 %29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool86.not = icmp eq i8 %30, 0
  %cond87 = select i1 %tobool86.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iprange_mt4.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.8, ptr noundef %daddr, ptr noundef nonnull %cond87, ptr noundef %dst_min, ptr noundef %dst_max) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.body69, %if.then42.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then28, %do.body
  %retval.0 = phi i1 [ false, %if.then28 ], [ false, %if.then81 ], [ true, %if.then42.cleanup_crit_edge ], [ true, %if.end37.cleanup_crit_edge ], [ false, %do.body ], [ false, %do.body69 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iprange_mt6(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %flags = getelementptr inbounds %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 4
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then:                                          ; preds = %entry
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saddr, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3.not.i = icmp eq i32 %11, %13
  br i1 %cmp3.not.i, label %for.cond.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

for.cond.i:                                       ; preds = %if.then
  %arrayidx.1.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx2.1.i = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp3.not.1.i = icmp eq i32 %15, %17
  br i1 %cmp3.not.1.i, label %for.cond.1.i, label %for.cond.i.if.then.i_crit_edge

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2.i, align 4
  %arrayidx2.2.i = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp3.not.2.i = icmp eq i32 %19, %21
  br i1 %cmp3.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.then.i_crit_edge

for.cond.1.i.if.then.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3.i, align 4
  %arrayidx2.3.i = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp3.not.3.i = icmp eq i32 %23, %25
  br i1 %cmp3.not.3.i, label %for.cond.2.i.iprange_ipv6_lt.exit_crit_edge, label %for.cond.2.i.if.then.i_crit_edge

for.cond.2.i.if.then.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

for.cond.2.i.iprange_ipv6_lt.exit_crit_edge:      ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %iprange_ipv6_lt.exit

if.then.i:                                        ; preds = %for.cond.2.i.if.then.i_crit_edge, %for.cond.1.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %.lcssa20.i = phi i32 [ %11, %if.then.if.then.i_crit_edge ], [ %15, %for.cond.i.if.then.i_crit_edge ], [ %19, %for.cond.1.i.if.then.i_crit_edge ], [ %23, %for.cond.2.i.if.then.i_crit_edge ]
  %.lcssa.i = phi i32 [ %13, %if.then.if.then.i_crit_edge ], [ %17, %for.cond.i.if.then.i_crit_edge ], [ %21, %for.cond.1.i.if.then.i_crit_edge ], [ %25, %for.cond.2.i.if.then.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa20.i, i32 %.lcssa.i)
  %cmp8.i = icmp ult i32 %.lcssa20.i, %.lcssa.i
  %phi.cast = zext i1 %cmp8.i to i32
  br label %iprange_ipv6_lt.exit

iprange_ipv6_lt.exit:                             ; preds = %if.then.i, %for.cond.2.i.iprange_ipv6_lt.exit_crit_edge
  %retval.0.i122 = phi i32 [ %phi.cast, %if.then.i ], [ 0, %for.cond.2.i.iprange_ipv6_lt.exit_crit_edge ]
  %src_max = getelementptr inbounds %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 1
  %26 = ptrtoint ptr %src_max to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %11)
  %cmp3.not.i123 = icmp eq i32 %27, %11
  br i1 %cmp3.not.i123, label %for.cond.i127, label %iprange_ipv6_lt.exit.if.then.i140_crit_edge

iprange_ipv6_lt.exit.if.then.i140_crit_edge:      ; preds = %iprange_ipv6_lt.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i140

for.cond.i127:                                    ; preds = %iprange_ipv6_lt.exit
  %arrayidx.1.i124 = getelementptr %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i124 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i124, align 4
  %arrayidx2.1.i125 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx2.1.i125 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.1.i125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp3.not.1.i126 = icmp eq i32 %29, %31
  br i1 %cmp3.not.1.i126, label %for.cond.1.i131, label %for.cond.i127.if.then.i140_crit_edge

for.cond.i127.if.then.i140_crit_edge:             ; preds = %for.cond.i127
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i140

for.cond.1.i131:                                  ; preds = %for.cond.i127
  %arrayidx.2.i128 = getelementptr %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx.2.i128 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2.i128, align 4
  %arrayidx2.2.i129 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx2.2.i129 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.2.i129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp3.not.2.i130 = icmp eq i32 %33, %35
  br i1 %cmp3.not.2.i130, label %for.cond.2.i135, label %for.cond.1.i131.if.then.i140_crit_edge

for.cond.1.i131.if.then.i140_crit_edge:           ; preds = %for.cond.1.i131
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i140

for.cond.2.i135:                                  ; preds = %for.cond.1.i131
  %arrayidx.3.i132 = getelementptr %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx.3.i132 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3.i132, align 4
  %arrayidx2.3.i133 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx2.3.i133 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.3.i133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp3.not.3.i134 = icmp eq i32 %37, %39
  br i1 %cmp3.not.3.i134, label %for.cond.2.i135.iprange_ipv6_lt.exit142_crit_edge, label %for.cond.2.i135.if.then.i140_crit_edge

for.cond.2.i135.if.then.i140_crit_edge:           ; preds = %for.cond.2.i135
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i140

for.cond.2.i135.iprange_ipv6_lt.exit142_crit_edge: ; preds = %for.cond.2.i135
  call void @__sanitizer_cov_trace_pc() #5
  br label %iprange_ipv6_lt.exit142

if.then.i140:                                     ; preds = %for.cond.2.i135.if.then.i140_crit_edge, %for.cond.1.i131.if.then.i140_crit_edge, %for.cond.i127.if.then.i140_crit_edge, %iprange_ipv6_lt.exit.if.then.i140_crit_edge
  %.lcssa20.i136 = phi i32 [ %27, %iprange_ipv6_lt.exit.if.then.i140_crit_edge ], [ %29, %for.cond.i127.if.then.i140_crit_edge ], [ %33, %for.cond.1.i131.if.then.i140_crit_edge ], [ %37, %for.cond.2.i135.if.then.i140_crit_edge ]
  %.lcssa.i137 = phi i32 [ %11, %iprange_ipv6_lt.exit.if.then.i140_crit_edge ], [ %31, %for.cond.i127.if.then.i140_crit_edge ], [ %35, %for.cond.1.i131.if.then.i140_crit_edge ], [ %39, %for.cond.2.i135.if.then.i140_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa20.i136, i32 %.lcssa.i137)
  %cmp8.i138 = icmp ult i32 %.lcssa20.i136, %.lcssa.i137
  %conv.i139 = zext i1 %cmp8.i138 to i32
  br label %iprange_ipv6_lt.exit142

iprange_ipv6_lt.exit142:                          ; preds = %if.then.i140, %for.cond.2.i135.iprange_ipv6_lt.exit142_crit_edge
  %retval.0.i141 = phi i32 [ %conv.i139, %if.then.i140 ], [ 0, %for.cond.2.i135.iprange_ipv6_lt.exit142_crit_edge ]
  %or = or i32 %retval.0.i141, %retval.0.i122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool7 = icmp eq i32 %or, 0
  %40 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %41 = icmp ne i8 %40, 0
  %tobool16.not = xor i1 %41, %tobool7
  br i1 %tobool16.not, label %iprange_ipv6_lt.exit142.if.end37_crit_edge, label %do.body

iprange_ipv6_lt.exit142.if.end37_crit_edge:       ; preds = %iprange_ipv6_lt.exit142
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

do.body:                                          ; preds = %iprange_ipv6_lt.exit142
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iprange_mt6.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iprange_mt6, %if.then28)) #3
          to label %cleanup [label %if.then28], !srcloc !50

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags, align 4
  %44 = and i8 %43, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool33.not = icmp eq i8 %44, 0
  %cond = select i1 %tobool33.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iprange_mt6.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.11, ptr noundef %saddr, ptr noundef nonnull %cond, ptr noundef %2, ptr noundef %src_max) #3
  br label %cleanup

if.end37:                                         ; preds = %iprange_ipv6_lt.exit142.if.end37_crit_edge, %entry.if.end37_crit_edge
  %45 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool41.not = icmp eq i8 %45, 0
  br i1 %tobool41.not, label %if.end37.cleanup_crit_edge, label %if.then42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %dst_min = getelementptr inbounds %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 2
  %46 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %daddr, align 4
  %48 = ptrtoint ptr %dst_min to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dst_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp3.not.i143 = icmp eq i32 %47, %49
  br i1 %cmp3.not.i143, label %for.cond.i147, label %if.then42.if.then.i160_crit_edge

if.then42.if.then.i160_crit_edge:                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i160

for.cond.i147:                                    ; preds = %if.then42
  %arrayidx.1.i144 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx.1.i144 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.1.i144, align 4
  %arrayidx2.1.i145 = getelementptr %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 2, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx2.1.i145 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2.1.i145, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp3.not.1.i146 = icmp eq i32 %51, %53
  br i1 %cmp3.not.1.i146, label %for.cond.1.i151, label %for.cond.i147.if.then.i160_crit_edge

for.cond.i147.if.then.i160_crit_edge:             ; preds = %for.cond.i147
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i160

for.cond.1.i151:                                  ; preds = %for.cond.i147
  %arrayidx.2.i148 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx.2.i148 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.2.i148, align 4
  %arrayidx2.2.i149 = getelementptr %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 2, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx2.2.i149 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx2.2.i149, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp3.not.2.i150 = icmp eq i32 %55, %57
  br i1 %cmp3.not.2.i150, label %for.cond.2.i155, label %for.cond.1.i151.if.then.i160_crit_edge

for.cond.1.i151.if.then.i160_crit_edge:           ; preds = %for.cond.1.i151
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i160

for.cond.2.i155:                                  ; preds = %for.cond.1.i151
  %arrayidx.3.i152 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx.3.i152 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.3.i152, align 4
  %arrayidx2.3.i153 = getelementptr %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 2, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx2.3.i153 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx2.3.i153, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp3.not.3.i154 = icmp eq i32 %59, %61
  br i1 %cmp3.not.3.i154, label %for.cond.2.i155.iprange_ipv6_lt.exit162_crit_edge, label %for.cond.2.i155.if.then.i160_crit_edge

for.cond.2.i155.if.then.i160_crit_edge:           ; preds = %for.cond.2.i155
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i160

for.cond.2.i155.iprange_ipv6_lt.exit162_crit_edge: ; preds = %for.cond.2.i155
  call void @__sanitizer_cov_trace_pc() #5
  br label %iprange_ipv6_lt.exit162

if.then.i160:                                     ; preds = %for.cond.2.i155.if.then.i160_crit_edge, %for.cond.1.i151.if.then.i160_crit_edge, %for.cond.i147.if.then.i160_crit_edge, %if.then42.if.then.i160_crit_edge
  %.lcssa20.i156 = phi i32 [ %47, %if.then42.if.then.i160_crit_edge ], [ %51, %for.cond.i147.if.then.i160_crit_edge ], [ %55, %for.cond.1.i151.if.then.i160_crit_edge ], [ %59, %for.cond.2.i155.if.then.i160_crit_edge ]
  %.lcssa.i157 = phi i32 [ %49, %if.then42.if.then.i160_crit_edge ], [ %53, %for.cond.i147.if.then.i160_crit_edge ], [ %57, %for.cond.1.i151.if.then.i160_crit_edge ], [ %61, %for.cond.2.i155.if.then.i160_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa20.i156, i32 %.lcssa.i157)
  %cmp8.i158 = icmp ult i32 %.lcssa20.i156, %.lcssa.i157
  %phi.cast185 = zext i1 %cmp8.i158 to i32
  br label %iprange_ipv6_lt.exit162

iprange_ipv6_lt.exit162:                          ; preds = %if.then.i160, %for.cond.2.i155.iprange_ipv6_lt.exit162_crit_edge
  %retval.0.i161 = phi i32 [ %phi.cast185, %if.then.i160 ], [ 0, %for.cond.2.i155.iprange_ipv6_lt.exit162_crit_edge ]
  %dst_max = getelementptr inbounds %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 3
  %62 = ptrtoint ptr %dst_max to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dst_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %47)
  %cmp3.not.i163 = icmp eq i32 %63, %47
  br i1 %cmp3.not.i163, label %for.cond.i167, label %iprange_ipv6_lt.exit162.if.then.i180_crit_edge

iprange_ipv6_lt.exit162.if.then.i180_crit_edge:   ; preds = %iprange_ipv6_lt.exit162
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i180

for.cond.i167:                                    ; preds = %iprange_ipv6_lt.exit162
  %arrayidx.1.i164 = getelementptr %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 3, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx.1.i164 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.1.i164, align 4
  %arrayidx2.1.i165 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx2.1.i165 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx2.1.i165, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp3.not.1.i166 = icmp eq i32 %65, %67
  br i1 %cmp3.not.1.i166, label %for.cond.1.i171, label %for.cond.i167.if.then.i180_crit_edge

for.cond.i167.if.then.i180_crit_edge:             ; preds = %for.cond.i167
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i180

for.cond.1.i171:                                  ; preds = %for.cond.i167
  %arrayidx.2.i168 = getelementptr %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 3, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx.2.i168 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.2.i168, align 4
  %arrayidx2.2.i169 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx2.2.i169 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx2.2.i169, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp3.not.2.i170 = icmp eq i32 %69, %71
  br i1 %cmp3.not.2.i170, label %for.cond.2.i175, label %for.cond.1.i171.if.then.i180_crit_edge

for.cond.1.i171.if.then.i180_crit_edge:           ; preds = %for.cond.1.i171
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i180

for.cond.2.i175:                                  ; preds = %for.cond.1.i171
  %arrayidx.3.i172 = getelementptr %struct.xt_iprange_mtinfo, ptr %2, i32 0, i32 3, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx.3.i172 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.3.i172, align 4
  %arrayidx2.3.i173 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx2.3.i173 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx2.3.i173, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp3.not.3.i174 = icmp eq i32 %73, %75
  br i1 %cmp3.not.3.i174, label %for.cond.2.i175.iprange_ipv6_lt.exit182_crit_edge, label %for.cond.2.i175.if.then.i180_crit_edge

for.cond.2.i175.if.then.i180_crit_edge:           ; preds = %for.cond.2.i175
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i180

for.cond.2.i175.iprange_ipv6_lt.exit182_crit_edge: ; preds = %for.cond.2.i175
  call void @__sanitizer_cov_trace_pc() #5
  br label %iprange_ipv6_lt.exit182

if.then.i180:                                     ; preds = %for.cond.2.i175.if.then.i180_crit_edge, %for.cond.1.i171.if.then.i180_crit_edge, %for.cond.i167.if.then.i180_crit_edge, %iprange_ipv6_lt.exit162.if.then.i180_crit_edge
  %.lcssa20.i176 = phi i32 [ %63, %iprange_ipv6_lt.exit162.if.then.i180_crit_edge ], [ %65, %for.cond.i167.if.then.i180_crit_edge ], [ %69, %for.cond.1.i171.if.then.i180_crit_edge ], [ %73, %for.cond.2.i175.if.then.i180_crit_edge ]
  %.lcssa.i177 = phi i32 [ %47, %iprange_ipv6_lt.exit162.if.then.i180_crit_edge ], [ %67, %for.cond.i167.if.then.i180_crit_edge ], [ %71, %for.cond.1.i171.if.then.i180_crit_edge ], [ %75, %for.cond.2.i175.if.then.i180_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa20.i176, i32 %.lcssa.i177)
  %cmp8.i178 = icmp ult i32 %.lcssa20.i176, %.lcssa.i177
  %conv.i179 = zext i1 %cmp8.i178 to i32
  br label %iprange_ipv6_lt.exit182

iprange_ipv6_lt.exit182:                          ; preds = %if.then.i180, %for.cond.2.i175.iprange_ipv6_lt.exit182_crit_edge
  %retval.0.i181 = phi i32 [ %conv.i179, %if.then.i180 ], [ 0, %for.cond.2.i175.iprange_ipv6_lt.exit182_crit_edge ]
  %or50 = or i32 %retval.0.i181, %retval.0.i161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or50)
  %tobool51 = icmp eq i32 %or50, 0
  %76 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %77 = icmp ne i8 %76, 0
  %tobool64.not = xor i1 %77, %tobool51
  br i1 %tobool64.not, label %iprange_ipv6_lt.exit182.cleanup_crit_edge, label %do.body68

iprange_ipv6_lt.exit182.cleanup_crit_edge:        ; preds = %iprange_ipv6_lt.exit182
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body68:                                        ; preds = %iprange_ipv6_lt.exit182
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iprange_mt6.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iprange_mt6, %if.then80)) #3
          to label %cleanup [label %if.then80], !srcloc !50

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #5
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %flags, align 4
  %80 = and i8 %79, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool85.not = icmp eq i8 %80, 0
  %cond86 = select i1 %tobool85.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iprange_mt6.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.13, ptr noundef %daddr, ptr noundef nonnull %cond86, ptr noundef %dst_min, ptr noundef %dst_max) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %do.body68, %iprange_ipv6_lt.exit182.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then28, %do.body
  %retval.0 = phi i1 [ false, %if.then28 ], [ false, %if.then80 ], [ true, %iprange_ipv6_lt.exit182.cleanup_crit_edge ], [ true, %if.end37.cleanup_crit_edge ], [ false, %do.body ], [ false, %do.body68 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_xt_iprange__493_130_iprange_mt_init6, !1, !"__initcall__kmod_xt_iprange__493_130_iprange_mt_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_iprange.c", i32 130, i32 1}
!2 = !{ptr @__exitcall_iprange_mt_exit, !3, !"__exitcall_iprange_mt_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_iprange.c", i32 131, i32 1}
!4 = !{ptr @__UNIQUE_ID_file494, !5, !"__UNIQUE_ID_file494", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_iprange.c", i32 132, i32 1}
!6 = !{ptr @__UNIQUE_ID_license495, !5, !"__UNIQUE_ID_license495", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author496, !8, !"__UNIQUE_ID_author496", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_iprange.c", i32 133, i32 1}
!9 = !{ptr @__UNIQUE_ID_author497, !10, !"__UNIQUE_ID_author497", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_iprange.c", i32 134, i32 1}
!11 = !{ptr @__UNIQUE_ID_description498, !12, !"__UNIQUE_ID_description498", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_iprange.c", i32 135, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias499, !14, !"__UNIQUE_ID_alias499", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_iprange.c", i32 136, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias500, !16, !"__UNIQUE_ID_alias500", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_iprange.c", i32 137, i32 1}
!17 = !{ptr @iprange_mt_reg, !18, !"iprange_mt_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_iprange.c", i32 101, i32 24}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_iprange.c", i32 28, i32 4}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @iprange_mt4.__UNIQUE_ID_ddebug489, !20, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!25 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/xt_iprange.c", i32 41, i32 4}
!30 = !{ptr @iprange_mt4.__UNIQUE_ID_ddebug490, !29, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/xt_iprange.c", i32 77, i32 4}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @iprange_mt6.__UNIQUE_ID_ddebug491, !33, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!36 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netfilter/xt_iprange.c", i32 90, i32 4}
!39 = !{ptr @iprange_mt6.__UNIQUE_ID_ddebug492, !38, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!40 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2148955182, i64 2148955187, i64 2148955200, i64 2148955244, i64 2148955278, i64 2148955299}
