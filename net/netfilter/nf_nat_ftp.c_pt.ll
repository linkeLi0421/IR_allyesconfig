; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_nat_ftp.c_pt.bc'
source_filename = "../net/netfilter/nf_nat_ftp.c"
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

@__UNIQUE_ID_file581 = internal constant [41 x i8] c"nf_nat_ftp.file=net/netfilter/nf_nat_ftp\00", section ".modinfo", align 1
@__UNIQUE_ID_license582 = internal constant [23 x i8] c"nf_nat_ftp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author583 = internal constant [56 x i8] c"nf_nat_ftp.author=Rusty Russell <rusty@rustcorp.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description584 = internal constant [38 x i8] c"nf_nat_ftp.description=ftp NAT helper\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [28 x i8] c"nf_nat_ftp.alias=ip_nat_ftp\00", section ".modinfo", align 1
@nat_helper_ftp = internal global { %struct.nf_conntrack_nat_helper, [36 x i8] } { %struct.nf_conntrack_nat_helper { %struct.list_head zeroinitializer, [16 x i8] c"ip_nat_ftp\00\00\00\00\00\00", ptr null }, [36 x i8] zeroinitializer }, align 32
@nf_nat_ftp_hook = external dso_local global ptr, align 4
@__param_str_ports = internal constant [17 x i8] c"nf_nat_ftp.ports\00", align 1
@__param_ops_ports = internal constant %struct.kernel_param_ops { i32 0, ptr @warn_set, ptr null, ptr null }, align 4
@__param_ports = internal constant %struct.kernel_param { ptr @__param_str_ports, ptr null, ptr @__param_ops_ports, i16 0, i8 -1, i8 0, %union.anon.134 zeroinitializer }, section "__param", align 4
@__initcall__kmod_nf_nat_ftp__590_150_nf_nat_ftp_init6 = internal global ptr @nf_nat_ftp_init, section ".initcall6.init", align 4
@__exitcall_nf_nat_ftp_fini = internal global ptr @nf_nat_ftp_fini, section ".exitcall.exit", align 4
@warn_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016nf_nat_ftp: kernel >= 2.6.10 only uses 'ports' for conntrack modules\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"warn_set\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/nf_nat_ftp.c\00", [37 x i8] zeroinitializer }, align 32
@warn_set._entry_ptr = internal global ptr @warn_set._entry, section ".printk_index", align 4
@nf_nat_ftp.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.3, ptr @.str.2, ptr @.str.4, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nf_nat_ftp\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"type %i, off %u len %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nf_nat_ftp: type %i, off %u len %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"all ports in use\00", [47 x i8] zeroinitializer }, align 32
@nf_nat_ftp.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.3, ptr @.str.2, ptr @.str.7, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"calling nf_nat_mangle_tcp_packet\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nf_nat_ftp: calling nf_nat_mangle_tcp_packet\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot mangle packet\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%u,%u,%u,%u,%u,%u\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"|1|%pI4|%u|\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"|2|%pI6|%u|\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"|||%u|\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"nat_helper_ftp\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 30, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 145, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 78, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 104, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 113, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 122, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 40, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 49, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 52, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [30 x i8] c"../net/netfilter/nf_nat_ftp.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 55, i32 35 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_author583, ptr @__UNIQUE_ID_description584, ptr @__UNIQUE_ID_file581, ptr @__UNIQUE_ID_license582, ptr @__exitcall_nf_nat_ftp_fini, ptr @__initcall__kmod_nf_nat_ftp__590_150_nf_nat_ftp_init6, ptr @__param_ports, ptr @nf_nat_ftp_fini, ptr @warn_set._entry, ptr @warn_set._entry_ptr, ptr @nat_helper_ftp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_helper_ftp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_ftp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_nat_helper_unregister(ptr noundef nonnull @nat_helper_ftp) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_ftp_hook to i32))
  store volatile ptr null, ptr @nf_nat_ftp_hook, align 4
  tail call void @synchronize_rcu() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_ftp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_ftp_hook to i32))
  %0 = load ptr, ptr @nf_nat_ftp_hook, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !55

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nf_nat_ftp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #6, !srcloc !56
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_nat_helper_register(ptr noundef nonnull @nat_helper_ftp) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_ftp_hook to i32))
  store volatile ptr @nf_nat_ftp, ptr @nf_nat_ftp_hook, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @warn_set(ptr nocapture noundef readnone %val, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_ftp(ptr noundef %skb, i32 noundef %ctinfo, i32 noundef %type, i32 noundef %protoff, i32 noundef %matchoff, i32 noundef %matchlen, ptr noundef %exp) #2 align 64 {
entry:
  %newaddr = alloca %union.nf_inet_addr, align 4
  %buffer = alloca [59 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newaddr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctinfo)
  %cmp = icmp ult i32 %ctinfo, 3
  %master = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 6
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %buffer) #6
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 59)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_nat_ftp.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_nat_ftp, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_nat_ftp.__UNIQUE_ID_ddebug586, ptr noundef nonnull @.str.5, i32 noundef %type, i32 noundef %matchoff, i32 noundef %matchlen) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lnot.ext5 = zext i1 %cmp to i32
  %dst = getelementptr %struct.nf_conn, ptr %1, i32 0, i32 4, i32 %lnot.ext5, i32 1, i32 1
  %3 = call ptr @memcpy(ptr %newaddr, ptr %dst, i32 16)
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %6 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %saved_proto, align 4
  %dir13 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %7 = ptrtoint ptr %dir13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %lnot.ext5, ptr %dir13, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %8 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nf_nat_follow_master, ptr %expectfn, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp16.not110 = icmp eq i16 %5, 0
  br i1 %cmp16.not110, label %do.end.if.then34_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.then34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %port.0111 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ %5, %do.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %port.0111, ptr %u, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %10 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %for.body.if.then34_crit_edge [
    i32 0, label %if.end35
    i32 -16, label %for.inc
  ]

for.body.if.then34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

for.inc:                                          ; preds = %for.body
  %inc = add i16 %port.0111, 1
  %cmp16.not = icmp eq i16 %inc, 0
  br i1 %cmp16.not, label %for.inc.if.then34_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.then34:                                        ; preds = %for.inc.if.then34_crit_edge, %for.body.if.then34_crit_edge, %do.end.if.then34_crit_edge
  tail call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %1, ptr noundef nonnull @.str.6) #6
  br label %cleanup60

if.end35:                                         ; preds = %for.body
  %11 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %type, label %if.end35.out_crit_edge [
    i32 0, label %if.end35.sw.bb.i_crit_edge
    i32 1, label %if.end35.sw.bb.i_crit_edge117
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb17.i
  ]

if.end35.sw.bb.i_crit_edge117:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end35.sw.bb.i_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb.i:                                          ; preds = %if.end35.sw.bb.i_crit_edge, %if.end35.sw.bb.i_crit_edge117
  %12 = ptrtoint ptr %newaddr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %newaddr, align 4
  %conv.i = zext i8 %13 to i32
  %arrayidx1.i = getelementptr inbounds i8, ptr %newaddr, i32 1
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %15 to i32
  %arrayidx3.i = getelementptr inbounds i8, ptr %newaddr, i32 2
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3.i, align 2
  %conv4.i = zext i8 %17 to i32
  %arrayidx5.i = getelementptr inbounds i8, ptr %newaddr, i32 3
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %19 to i32
  %conv7.i = zext i16 %port.0111 to i32
  %20 = lshr i32 %conv7.i, 8
  %and.i = and i32 %conv7.i, 255
  %call.i94 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 59, ptr noundef nonnull @.str.10, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %20, i32 noundef %and.i) #6
  br label %nf_nat_ftp_fmt_cmd.exit

sw.bb9.i:                                         ; preds = %if.end35
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %l3num.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cmp.i = icmp eq i16 %22, 2
  %conv13.i = zext i16 %port.0111 to i32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 59, ptr noundef nonnull @.str.11, ptr noundef nonnull %newaddr, i32 noundef %conv13.i) #6
  br label %nf_nat_ftp_fmt_cmd.exit

if.else.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 59, ptr noundef nonnull @.str.12, ptr noundef nonnull %newaddr, i32 noundef %conv13.i) #6
  br label %nf_nat_ftp_fmt_cmd.exit

sw.bb17.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %conv18.i = zext i16 %port.0111 to i32
  %call19.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 59, ptr noundef nonnull @.str.13, i32 noundef %conv18.i) #6
  br label %nf_nat_ftp_fmt_cmd.exit

nf_nat_ftp_fmt_cmd.exit:                          ; preds = %sw.bb17.i, %if.else.i, %if.then.i, %sw.bb.i
  %retval.0.i95 = phi i32 [ %call19.i, %sw.bb17.i ], [ %call14.i, %if.then.i ], [ %call16.i, %if.else.i ], [ %call.i94, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i95)
  %tobool37.not = icmp eq i32 %retval.0.i95, 0
  br i1 %tobool37.not, label %nf_nat_ftp_fmt_cmd.exit.out_crit_edge, label %do.body40

nf_nat_ftp_fmt_cmd.exit.out_crit_edge:            ; preds = %nf_nat_ftp_fmt_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body40:                                        ; preds = %nf_nat_ftp_fmt_cmd.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_nat_ftp.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_nat_ftp, %if.then52)) #6
          to label %do.end55 [label %if.then52], !srcloc !57

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_nat_ftp.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.8) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %do.body40
  %call.i96 = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %1, i32 noundef %ctinfo, i32 noundef %protoff, i32 noundef %matchoff, i32 noundef %matchlen, ptr noundef nonnull %buffer, i32 noundef %retval.0.i95, i1 noundef zeroext true) #6
  br i1 %call.i96, label %do.end55.cleanup60_crit_edge, label %do.end55.out_crit_edge

do.end55.out_crit_edge:                           ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end55.cleanup60_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

out:                                              ; preds = %do.end55.out_crit_edge, %nf_nat_ftp_fmt_cmd.exit.out_crit_edge, %if.end35.out_crit_edge
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %1, ptr noundef nonnull @.str.9) #6
  call void @nf_ct_unexpect_related(ptr noundef %exp) #6
  br label %cleanup60

cleanup60:                                        ; preds = %out, %do.end55.cleanup60_crit_edge, %if.then34
  %retval.0 = phi i32 [ 0, %if.then34 ], [ 0, %out ], [ 1, %do.end55.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %buffer) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newaddr) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_follow_master(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_unexpect_related(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__UNIQUE_ID_file581, !1, !"__UNIQUE_ID_file581", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_nat_ftp.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_license582, !1, !"__UNIQUE_ID_license582", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author583, !4, !"__UNIQUE_ID_author583", i1 false, i1 false}
!4 = !{!"../net/netfilter/nf_nat_ftp.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_description584, !6, !"__UNIQUE_ID_description584", i1 false, i1 false}
!6 = !{!"../net/netfilter/nf_nat_ftp.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias585, !8, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_nat_ftp.c", i32 26, i32 1}
!9 = !{ptr @__param_ports, !10, !"__param_ports", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_nat_ftp.c", i32 148, i32 1}
!11 = !{ptr @__initcall__kmod_nf_nat_ftp__590_150_nf_nat_ftp_init6, !12, !"__initcall__kmod_nf_nat_ftp__590_150_nf_nat_ftp_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_nat_ftp.c", i32 150, i32 1}
!13 = !{ptr @__exitcall_nf_nat_ftp_fini, !14, !"__exitcall_nf_nat_ftp_fini", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_nat_ftp.c", i32 151, i32 1}
!15 = !{ptr @nat_helper_ftp, !16, !"nat_helper_ftp", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_nat_ftp.c", i32 30, i32 39}
!17 = !{ptr @__param_str_ports, !10, !"__param_str_ports", i1 false, i1 false}
!18 = !{ptr @__param_ops_ports, !10, !"__param_ops_ports", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_nat_ftp.c", i32 145, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @warn_set._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @warn_set._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_nat_ftp.c", i32 78, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nf_nat_ftp.__UNIQUE_ID_ddebug586, !26, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/nf_nat_ftp.c", i32 104, i32 29}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/nf_nat_ftp.c", i32 113, i32 2}
!34 = !{ptr @nf_nat_ftp.__UNIQUE_ID_ddebug587, !33, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_nat_ftp.c", i32 122, i32 28}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/netfilter/nf_nat_ftp.c", i32 40, i32 35}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/nf_nat_ftp.c", i32 49, i32 36}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/nf_nat_ftp.c", i32 52, i32 36}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netfilter/nf_nat_ftp.c", i32 55, i32 35}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2158022884, i64 2158023375, i64 2158022921, i64 2158022977, i64 2158023011, i64 2158023035, i64 2158023076, i64 2158023097, i64 2158023125, i64 2158023159}
!57 = !{i64 2148955597, i64 2148955602, i64 2148955615, i64 2148955659, i64 2148955693, i64 2148955714}
