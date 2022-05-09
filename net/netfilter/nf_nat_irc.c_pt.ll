; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_nat_irc.c_pt.bc'
source_filename = "../net/netfilter/nf_nat_irc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nf_conntrack_nat_helper = type { %struct.list_head, [16 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.161 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%struct.anon.161 = type { %union.nf_inet_addr, %union.anon.162, i8, i8 }
%union.anon.162 = type { i16 }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.169 }
%struct.anon.169 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.nf_conntrack_man_proto = type { i16 }
%struct.callback_head = type { ptr, ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.170, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.170 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }

@__UNIQUE_ID_author581 = internal constant [54 x i8] c"nf_nat_irc.author=Harald Welte <laforge@gnumonks.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description582 = internal constant [44 x i8] c"nf_nat_irc.description=IRC (DCC) NAT helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file583 = internal constant [41 x i8] c"nf_nat_irc.file=net/netfilter/nf_nat_irc\00", section ".modinfo", align 1
@__UNIQUE_ID_license584 = internal constant [23 x i8] c"nf_nat_irc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [28 x i8] c"nf_nat_irc.alias=ip_nat_irc\00", section ".modinfo", align 1
@nat_helper_irc = internal global { %struct.nf_conntrack_nat_helper, [36 x i8] } { %struct.nf_conntrack_nat_helper { %struct.list_head zeroinitializer, [16 x i8] c"ip_nat_irc\00\00\00\00\00\00", ptr null }, [36 x i8] zeroinitializer }, align 32
@nf_nat_irc_hook = external dso_local global ptr, align 4
@__param_str_ports = internal constant [17 x i8] c"nf_nat_irc.ports\00", align 1
@__param_ops_ports = internal constant %struct.kernel_param_ops { i32 0, ptr @warn_set, ptr null, ptr null }, align 4
@__param_ports = internal constant %struct.kernel_param { ptr @__param_str_ports, ptr null, ptr @__param_ops_ports, i16 0, i8 -1, i8 0, %union.anon.134 zeroinitializer }, section "__param", align 4
@__initcall__kmod_nf_nat_irc__589_121_nf_nat_irc_init6 = internal global ptr @nf_nat_irc_init, section ".initcall6.init", align 4
@__exitcall_nf_nat_irc_fini = internal global ptr @nf_nat_irc_fini, section ".exitcall.exit", align 4
@warn_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016nf_nat_irc: kernel >= 2.6.10 only uses 'ports' for conntrack modules\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"warn_set\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/nf_nat_irc.c\00", [37 x i8] zeroinitializer }, align 32
@warn_set._entry_ptr = internal global ptr @warn_set._entry, section ".printk_index", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"all ports in use\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u %u\00", [26 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nf_nat_irc\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"help\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"inserting '%s' == %pI4, port %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nf_nat_irc: inserting '%s' == %pI4, port %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot mangle packet\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"nat_helper_irc\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 29, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 116, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 66, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 84, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 85, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [30 x i8] c"../net/netfilter/nf_nat_irc.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 90, i32 29 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_author581, ptr @__UNIQUE_ID_description582, ptr @__UNIQUE_ID_file583, ptr @__UNIQUE_ID_license584, ptr @__exitcall_nf_nat_irc_fini, ptr @__initcall__kmod_nf_nat_irc__589_121_nf_nat_irc_init6, ptr @__param_ports, ptr @nf_nat_irc_fini, ptr @warn_set._entry, ptr @warn_set._entry_ptr, ptr @nat_helper_irc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_helper_irc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_irc_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nf_nat_helper_unregister(ptr noundef nonnull @nat_helper_irc) #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_irc_hook to i32))
  store volatile ptr null, ptr @nf_nat_irc_hook, align 4
  tail call void @synchronize_rcu() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_irc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_irc_hook to i32))
  %0 = load ptr, ptr @nf_nat_irc_hook, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !46

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nf_nat_irc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nf_nat_helper_register(ptr noundef nonnull @nat_helper_irc) #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_irc_hook to i32))
  store volatile ptr @help, ptr @nf_nat_irc_hook, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @warn_set(ptr nocapture noundef readnone %val, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @help(ptr noundef %skb, i32 noundef %ctinfo, i32 noundef %protoff, i32 noundef %matchoff, i32 noundef %matchlen, ptr noundef %exp) #2 align 64 {
entry:
  %buffer = alloca [17 x i8], align 1
  %newaddr = alloca %union.nf_inet_addr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer) #7
  %master = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 6
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 17)
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newaddr) #7
  %dst = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 1
  %3 = call ptr @memcpy(ptr %newaddr, ptr %dst, i32 16)
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %6 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %saved_proto, align 4
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dir, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %8 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nf_nat_follow_master, ptr %expectfn, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not74 = icmp eq i16 %5, 0
  br i1 %cmp.not74, label %entry.if.then21_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %port.075 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %port.075, ptr %u, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %10 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %for.body.if.then21_crit_edge [
    i32 0, label %if.end22
    i32 -16, label %for.inc
  ]

for.body.if.then21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

for.inc:                                          ; preds = %for.body
  %inc = add i16 %port.075, 1
  %cmp.not = icmp eq i16 %inc, 0
  br i1 %cmp.not, label %for.inc.if.then21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %for.inc.if.then21_crit_edge, %for.body.if.then21_crit_edge, %entry.if.then21_crit_edge
  tail call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %cleanup38

if.end22:                                         ; preds = %for.body
  %conv18 = zext i16 %port.075 to i32
  %11 = ptrtoint ptr %newaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %newaddr, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 17, ptr noundef nonnull @.str.4, i32 noundef %12, i32 noundef %conv18)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then28)) #7
          to label %do.end [label %if.then28], !srcloc !48

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug586, ptr noundef nonnull @.str.8, ptr noundef nonnull %buffer, ptr noundef nonnull %newaddr, i32 noundef %conv18) #7
  br label %do.end

do.end:                                           ; preds = %if.then28, %if.end22
  %call34 = call i32 @strlen(ptr noundef nonnull %buffer) #11
  %call.i61 = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %2, i32 noundef %ctinfo, i32 noundef %protoff, i32 noundef %matchoff, i32 noundef %matchlen, ptr noundef nonnull %buffer, i32 noundef %call34, i1 noundef zeroext true) #7
  br i1 %call.i61, label %do.end.cleanup38_crit_edge, label %if.then36

do.end.cleanup38_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.9) #7
  call void @nf_ct_unexpect_related(ptr noundef %exp) #7
  br label %cleanup38

cleanup38:                                        ; preds = %if.then36, %do.end.cleanup38_crit_edge, %if.then21
  %retval.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.then36 ], [ 1, %do.end.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newaddr) #7
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_follow_master(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_unexpect_related(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_author581, !1, !"__UNIQUE_ID_author581", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_nat_irc.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description582, !3, !"__UNIQUE_ID_description582", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_nat_irc.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file583, !5, !"__UNIQUE_ID_file583", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_nat_irc.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license584, !5, !"__UNIQUE_ID_license584", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias585, !8, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_nat_irc.c", i32 27, i32 1}
!9 = !{ptr @__param_ports, !10, !"__param_ports", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_nat_irc.c", i32 119, i32 1}
!11 = !{ptr @__initcall__kmod_nf_nat_irc__589_121_nf_nat_irc_init6, !12, !"__initcall__kmod_nf_nat_irc__589_121_nf_nat_irc_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_nat_irc.c", i32 121, i32 1}
!13 = !{ptr @__exitcall_nf_nat_irc_fini, !14, !"__exitcall_nf_nat_irc_fini", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_nat_irc.c", i32 122, i32 1}
!15 = !{ptr @nat_helper_irc, !16, !"nat_helper_irc", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_nat_irc.c", i32 29, i32 39}
!17 = !{ptr @__param_str_ports, !10, !"__param_str_ports", i1 false, i1 false}
!18 = !{ptr @__param_ops_ports, !10, !"__param_ops_ports", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_nat_irc.c", i32 116, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @warn_set._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @warn_set._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_nat_irc.c", i32 66, i32 29}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_nat_irc.c", i32 84, i32 35}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/nf_nat_irc.c", i32 85, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @help.__UNIQUE_ID_ddebug586, !30, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!34 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/netfilter/nf_nat_irc.c", i32 90, i32 29}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2158016113, i64 2158016604, i64 2158016150, i64 2158016206, i64 2158016240, i64 2158016264, i64 2158016305, i64 2158016326, i64 2158016354, i64 2158016388}
!48 = !{i64 2148954963, i64 2148954968, i64 2148954981, i64 2148955025, i64 2148955059, i64 2148955080}
