; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/nf_nat_snmp_basic_main.c_pt.bc'
source_filename = "../net/ipv4/netfilter/nf_nat_snmp_basic_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.nf_inet_addr = type { [4 x i32] }
%struct.anon.154 = type { i16 }
%struct.anon.159 = type { %union.nf_inet_addr, %union.anon.160, i8, i8 }
%union.anon.160 = type { i16 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.asn1_decoder = type opaque
%struct.snmp_ctx = type { ptr, ptr, i32, i32 }
%struct.sk_buff = type { %union.anon.1, %union.anon.136, %union.anon.137, [48 x i8], %union.anon.138, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.140, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { i64 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, ptr }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.142, i32, i32, i32, i16, i16, %union.anon.144, i32, %union.anon.145, %union.anon.146, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.142 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.167, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.159 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_conntrack_man_proto = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.167 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }

@__UNIQUE_ID_file590 = internal constant [60 x i8] c"nf_nat_snmp_basic.file=net/ipv4/netfilter/nf_nat_snmp_basic\00", section ".modinfo", align 1
@__UNIQUE_ID_license591 = internal constant [30 x i8] c"nf_nat_snmp_basic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author592 = internal constant [65 x i8] c"nf_nat_snmp_basic.author=James Morris <jmorris@intercode.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description593 = internal constant [67 x i8] c"nf_nat_snmp_basic.description=Basic SNMP Application Layer Gateway\00", section ".modinfo", align 1
@__UNIQUE_ID_alias594 = internal constant [42 x i8] c"nf_nat_snmp_basic.alias=ip_nat_snmp_basic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias595 = internal constant [46 x i8] c"nf_nat_snmp_basic.alias=nfct-helper-snmp_trap\00", section ".modinfo", align 1
@snmp_helper.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_nat_snmp_basic\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snmp_helper\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"net/ipv4/netfilter/nf_nat_snmp_basic_main.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %pI4 to %pI4\0A\00", [46 x i8] zeroinitializer }, align 32
@nf_nat_snmp_hook = external dso_local global ptr, align 4
@__initcall__kmod_nf_nat_snmp_basic__599_230_nf_nat_snmp_basic_init6 = internal global ptr @nf_nat_snmp_basic_init, section ".initcall6.init", align 4
@__exitcall_nf_nat_snmp_basic_fini = internal global ptr @nf_nat_snmp_basic_fini, section ".exitcall.exit", align 4
@snmp_exp_policy = internal constant { %struct.nf_conntrack_expect_policy, [40 x i8] } { %struct.nf_conntrack_expect_policy { i32 0, i32 180, [16 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@snmp_trap_helper = internal global { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, { { %union.nf_inet_addr, { %struct.anon.154 }, i16 }, %struct.anon.159 }, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] } { %struct.hlist_node zeroinitializer, [16 x i8] c"snmp_trap\00\00\00\00\00\00\00", %struct.refcount_struct zeroinitializer, ptr null, ptr @snmp_exp_policy, { { %union.nf_inet_addr, { %struct.anon.154 }, i16 }, %struct.anon.159 } { { %union.nf_inet_addr, { %struct.anon.154 }, i16 } { %union.nf_inet_addr zeroinitializer, { %struct.anon.154 } { %struct.anon.154 { i16 162 } }, i16 2 }, %struct.anon.159 { %union.nf_inet_addr zeroinitializer, %union.anon.160 zeroinitializer, i8 17, i8 0 } }, ptr @help, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i16 0, [16 x i8] zeroinitializer }, section ".data..read_mostly", align 4
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dropping malformed packet\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot mangle packet\00", [43 x i8] zeroinitializer }, align 32
@snmp_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snmp_lock\00", [22 x i8] zeroinitializer }, align 32
@nf_nat_snmp_basic_decoder = external dso_local constant %struct.asn1_decoder, align 1
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parser failed\0A\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 115, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"snmp_exp_policy\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 200, i32 48 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 185, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 190, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"snmp_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 58, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [47 x i8] c"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 150, i32 29 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias594, ptr @__UNIQUE_ID_alias595, ptr @__UNIQUE_ID_author592, ptr @__UNIQUE_ID_description593, ptr @__UNIQUE_ID_file590, ptr @__UNIQUE_ID_license591, ptr @__exitcall_nf_nat_snmp_basic_fini, ptr @__initcall__kmod_nf_nat_snmp_basic__599_230_nf_nat_snmp_basic_init6, ptr @nf_nat_snmp_basic_fini, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snmp_exp_policy, ptr @.str.5, ptr @.str.6, ptr @snmp_lock, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snmp_exp_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snmp_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snmp_version(ptr nocapture noundef readnone %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readonly %data, i32 noundef %datalen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %datalen)
  %cmp.not = icmp eq i32 %datalen, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1 = icmp ugt i8 %1, 1
  %. = select i1 %cmp1, i32 -524, i32 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snmp_helper(ptr noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %data, i32 noundef %datalen) local_unnamed_addr #1 align 64 {
entry:
  %s.i = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %datalen)
  %cmp.not = icmp eq i32 %datalen, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %from = getelementptr inbounds %struct.snmp_ctx, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %from, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp1 = icmp eq i32 %1, %3
  br i1 %cmp1, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snmp_helper.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snmp_helper, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !43

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %to = getelementptr inbounds %struct.snmp_ctx, ptr %context, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snmp_helper.__UNIQUE_ID_ddebug596, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %from, ptr noundef %to) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %check = getelementptr inbounds %struct.snmp_ctx, ptr %context, i32 0, i32 1
  %4 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  br i1 %tobool8.not, label %do.end.if.end10_crit_edge, label %if.then9

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %do.end
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %s.i) #5
  %10 = call ptr @memset(ptr %s.i, i32 0, i32 12)
  %11 = and i32 %sub.ptr.sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %from, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i = getelementptr inbounds [12 x i8], ptr %s.i, i32 0, i32 7
  %to.i = getelementptr inbounds %struct.snmp_ctx, ptr %context, i32 0, i32 3
  %14 = ptrtoint ptr %to.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %to.i, align 4
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %arrayidx1.i, align 1
  %17 = ptrtoint ptr %s.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %s.i, align 4
  %18 = lshr i32 %13, 24
  %19 = lshr i32 %13, 16
  %20 = lshr i32 %13, 8
  %arrayidx17.i = getelementptr inbounds [12 x i8], ptr %s.i, i32 0, i32 4
  %21 = trunc i32 %13 to i8
  %neg19.i = xor i8 %21, -1
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %neg19.i, ptr %arrayidx17.i, align 4
  %arrayidx22.i = getelementptr inbounds [12 x i8], ptr %s.i, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %arrayidx22.i, align 1
  br label %fast_csum.exit

if.else.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25.i = getelementptr inbounds [12 x i8], ptr %s.i, i32 0, i32 4
  %to26.i = getelementptr inbounds %struct.snmp_ctx, ptr %context, i32 0, i32 3
  %24 = ptrtoint ptr %to26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %to26.i, align 4
  %26 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx25.i, align 4
  %27 = lshr i32 %13, 24
  %28 = trunc i32 %27 to i8
  %neg29.i = xor i8 %28, -1
  %29 = ptrtoint ptr %s.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %neg29.i, ptr %s.i, align 4
  %30 = lshr i32 %13, 16
  %31 = lshr i32 %13, 8
  br label %fast_csum.exit

fast_csum.exit:                                   ; preds = %if.else.i, %if.then.i
  %neg.i.sink.in.in = phi i32 [ %30, %if.else.i ], [ %18, %if.then.i ]
  %neg9.i.sink.in.in = phi i32 [ %31, %if.else.i ], [ %19, %if.then.i ]
  %neg14.i.sink.in.in = phi i32 [ %13, %if.else.i ], [ %20, %if.then.i ]
  %size.0.i = phi i32 [ 8, %if.else.i ], [ 12, %if.then.i ]
  %neg14.i.sink.in = trunc i32 %neg14.i.sink.in.in to i8
  %neg14.i.sink = xor i8 %neg14.i.sink.in, -1
  %neg9.i.sink.in = trunc i32 %neg9.i.sink.in.in to i8
  %neg9.i.sink = xor i8 %neg9.i.sink.in, -1
  %neg.i.sink.in = trunc i32 %neg.i.sink.in.in to i8
  %neg.i.sink = xor i8 %neg.i.sink.in, -1
  %32 = getelementptr inbounds [12 x i8], ptr %s.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %neg.i.sink, ptr %32, align 1
  %34 = getelementptr inbounds [12 x i8], ptr %s.i, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %neg9.i.sink, ptr %34, align 2
  %36 = getelementptr inbounds [12 x i8], ptr %s.i, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %neg14.i.sink, ptr %36, align 1
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %5, align 2
  %conv.i.i = zext i16 %39 to i32
  %neg47.i = xor i32 %conv.i.i, -1
  %call48.i = call i32 @csum_partial(ptr noundef nonnull %s.i, i32 noundef %size.0.i, i32 noundef %neg47.i) #5
  %40 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call48.i) #8, !srcloc !44
  %neg.i.i = xor i32 %40, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i56.i = trunc i32 %shr.i.i to i16
  %41 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %check, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i56.i, ptr %42, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %s.i) #5
  br label %if.end10

if.end10:                                         ; preds = %fast_csum.exit, %do.end.if.end10_crit_edge
  %to11 = getelementptr inbounds %struct.snmp_ctx, ptr %context, i32 0, i32 3
  %44 = ptrtoint ptr %to11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %to11, align 4
  %46 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end10 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_snmp_basic_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_snmp_hook to i32))
  store volatile ptr null, ptr @nf_nat_snmp_hook, align 4
  tail call void @synchronize_rcu() #5
  tail call void @nf_conntrack_helper_unregister(ptr noundef nonnull @snmp_trap_helper) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helper_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_snmp_basic_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_snmp_hook to i32))
  %0 = load ptr, ptr @nf_nat_snmp_hook, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %do.body10, label %do.body2, !prof !45

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_snmp_basic_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #5, !srcloc !46
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_snmp_hook to i32))
  store volatile ptr @help, ptr @nf_nat_snmp_hook, align 4
  %call = tail call i32 @nf_conntrack_helper_register(ptr noundef nonnull @snmp_trap_helper) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @help(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ct, i32 noundef %ctinfo) #1 align 64 {
entry:
  %ctx.i = alloca %struct.snmp_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  %add.ptr = getelementptr i32, ptr %add.ptr.i.i, i32 %conv
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 161, i16 %6)
  %cmp2 = icmp ne i16 %6, 161
  %brmerge = or i1 %cmp, %cmp2
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 162, i16 %8)
  %cmp7 = icmp eq i16 %8, 162
  %9 = and i1 %cmp, %cmp7
  br i1 %9, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  %and = and i32 %11, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end13
  %len = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len, align 2
  %conv16 = zext i16 %13 to i32
  %len17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len17, align 4
  %bf.clear19 = shl i8 %bf.load, 2
  %16 = and i8 %bf.clear19, 60
  %shl = zext i8 %16 to i32
  %sub = sub i32 %15, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv16)
  %cmp21.not = icmp eq i32 %sub, %conv16
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %call26 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @snmp_lock) #5
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %20 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %conv.i.i.i
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %add.ptr.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 %conv.i
  %len.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i, i32 0, i32 2
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len.i, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx.i) #5
  %24 = getelementptr inbounds %struct.snmp_ctx, ptr %ctx.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.snmp_ctx, ptr %ctx.i, i32 0, i32 3
  %storemerge56.in.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %storemerge56.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %storemerge56.i = load i32, ptr %storemerge56.in.i, align 8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge56.i, ptr %24, align 4
  %storemerge.in.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge.i, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge56.i, i32 %storemerge.i)
  %cmp26.i = icmp eq i32 %storemerge56.i, %storemerge.i
  br i1 %cmp26.i, label %if.end29.snmp_translate.exit_crit_edge, label %if.end29.i

if.end29.snmp_translate.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %snmp_translate.exit

if.end29.i:                                       ; preds = %if.end29
  %30 = getelementptr inbounds %struct.snmp_ctx, ptr %ctx.i, i32 0, i32 1
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %sub.i = add i16 %23, -8
  %31 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr3.i, ptr %ctx.i, align 4
  %check.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i, i32 0, i32 3
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %check.i, ptr %30, align 4
  %conv32.i = zext i16 %sub.i to i32
  %call33.i = call i32 @asn1_ber_decoder(ptr noundef nonnull @nf_nat_snmp_basic_decoder, ptr noundef nonnull %ctx.i, ptr noundef %add.ptr3.i, i32 noundef %conv32.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.then36.i, label %if.end29.i.snmp_translate.exit_crit_edge

if.end29.i.snmp_translate.exit_crit_edge:         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snmp_translate.exit

if.then36.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.8) #5
  br label %snmp_translate.exit

snmp_translate.exit:                              ; preds = %if.then36.i, %if.end29.i.snmp_translate.exit_crit_edge, %if.end29.snmp_translate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then36.i ], [ 1, %if.end29.snmp_translate.exit_crit_edge ], [ 1, %if.end29.i.snmp_translate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx.i) #5
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @snmp_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %snmp_translate.exit, %if.then28, %if.then23, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23 ], [ 0, %if.then28 ], [ %retval.0.i, %snmp_translate.exit ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helper_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__UNIQUE_ID_file590, !1, !"__UNIQUE_ID_file590", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_license591, !1, !"__UNIQUE_ID_license591", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author592, !4, !"__UNIQUE_ID_author592", i1 false, i1 false}
!4 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 50, i32 1}
!5 = !{ptr @__UNIQUE_ID_description593, !6, !"__UNIQUE_ID_description593", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 51, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias594, !8, !"__UNIQUE_ID_alias594", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 52, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias595, !10, !"__UNIQUE_ID_alias595", i1 false, i1 false}
!10 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 53, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 115, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snmp_helper.__UNIQUE_ID_ddebug596, !12, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_nf_nat_snmp_basic__599_230_nf_nat_snmp_basic_init6, !18, !"__initcall__kmod_nf_nat_snmp_basic__599_230_nf_nat_snmp_basic_init6", i1 false, i1 false}
!18 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 230, i32 1}
!19 = !{ptr @__exitcall_nf_nat_snmp_basic_fini, !20, !"__exitcall_nf_nat_snmp_basic_fini", i1 false, i1 false}
!20 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 231, i32 1}
!21 = !{ptr @snmp_trap_helper, !22, !"snmp_trap_helper", i1 false, i1 false}
!22 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 205, i32 35}
!23 = !{ptr @snmp_exp_policy, !24, !"snmp_exp_policy", i1 false, i1 false}
!24 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 200, i32 48}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 185, i32 29}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 190, i32 29}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 58, i32 8}
!31 = !{ptr @snmp_lock, !30, !"snmp_lock", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ipv4/netfilter/nf_nat_snmp_basic_main.c", i32 150, i32 29}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2148957683, i64 2148957688, i64 2148957701, i64 2148957745, i64 2148957779, i64 2148957800}
!44 = !{i64 6603067}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2158136838, i64 2158137346, i64 2158136875, i64 2158136931, i64 2158136965, i64 2158136989, i64 2158137030, i64 2158137051, i64 2158137079, i64 2158137113}
