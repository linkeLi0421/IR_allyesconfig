; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_seqadj.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_seqadj.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_ct_seqadj_init\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_seqadj_init\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_seqadj_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_seqadj_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_seqadj_init\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_seqadj_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_seqadj_set\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_seqadj_set\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_seqadj_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_seqadj_set:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_seqadj_set\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_seqadj_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_tcp_seqadj_set\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_tcp_seqadj_set\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_tcp_seqadj_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_tcp_seqadj_set:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_tcp_seqadj_set\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_tcp_seqadj_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_seq_adjust\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_seq_adjust\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_seq_adjust\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_seq_adjust:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_seq_adjust\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_seq_adjust:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_seq_offset\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_seq_offset\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_seq_offset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_seq_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_seq_offset\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_seq_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nf_ct_ext_type = type { ptr, i32, i8, i8 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.174, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.9 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.9 = type { %union.nf_inet_addr, %union.anon.10, i8, i8 }
%union.anon.10 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.174 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_ct_seqadj = type { i32, i32, i32 }
%struct.sk_buff = type { %union.anon.36, %union.anon.39, %union.anon.40, [48 x i8], %union.anon.41, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.43, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, ptr, %union.anon.38 }
%union.anon.38 = type { ptr }
%union.anon.39 = type { ptr }
%union.anon.40 = type { i64 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.45, i32, i32, i32, i16, i16, %union.anon.47, i32, %union.anon.48, %union.anon.49, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.45 = type { i32 }
%union.anon.47 = type { i32 }
%union.anon.48 = type { i32 }
%union.anon.49 = type { i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.tcp_sack_block_wire = type { i32, i32 }

@__kstrtab_nf_ct_seqadj_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_seqadj_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_seqadj_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_seqadj_init to i32), ptr @__kstrtab_nf_ct_seqadj_init, ptr @__kstrtabns_nf_ct_seqadj_init }, section "___ksymtab_gpl+nf_ct_seqadj_init", align 4
@nf_ct_seqadj_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/netfilter/nf_conntrack_seqadj.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Missing nfct_seqadj_ext_add() setup call\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_nf_ct_seqadj_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_seqadj_set = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_seqadj_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_seqadj_set to i32), ptr @__kstrtab_nf_ct_seqadj_set, ptr @__kstrtabns_nf_ct_seqadj_set }, section "___ksymtab_gpl+nf_ct_seqadj_set", align 4
@__kstrtab_nf_ct_tcp_seqadj_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_tcp_seqadj_set = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_tcp_seqadj_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_tcp_seqadj_set to i32), ptr @__kstrtab_nf_ct_tcp_seqadj_set, ptr @__kstrtabns_nf_ct_tcp_seqadj_set }, section "___ksymtab_gpl+nf_ct_tcp_seqadj_set", align 4
@nf_ct_seq_adjust.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nf_conntrack\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nf_ct_seq_adjust\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adjusting sequence number from %u->%u\0A\00", [57 x i8] zeroinitializer }, align 32
@nf_ct_seq_adjust.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.5, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Adjusting ack number from %u->%u, ack from %u->%u\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_nf_ct_seq_adjust = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_seq_adjust = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_seq_adjust = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_seq_adjust to i32), ptr @__kstrtab_nf_ct_seq_adjust, ptr @__kstrtabns_nf_ct_seq_adjust }, section "___ksymtab_gpl+nf_ct_seq_adjust", align 4
@__kstrtab_nf_ct_seq_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_seq_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_seq_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_seq_offset to i32), ptr @__kstrtab_nf_ct_seq_offset, ptr @__kstrtabns_nf_ct_seq_offset }, section "___ksymtab_gpl+nf_ct_seq_offset", align 4
@nf_ct_seqadj_extend = internal constant { %struct.nf_ct_ext_type, [20 x i8] } { %struct.nf_ct_ext_type { ptr null, i32 2, i8 24, i8 4 }, [20 x i8] zeroinitializer }, align 32
@nf_ct_sack_block_adjust.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nf_ct_sack_block_adjust\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sack_adjust: start_seq: %u->%u, end_seq: %u->%u\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 41, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 191, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 207, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"nf_ct_seqadj_extend\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 236, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [39 x i8] c"../net/netfilter/nf_conntrack_seqadj.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 102, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_nf_ct_seq_adjust, ptr @__ksymtab_nf_ct_seq_offset, ptr @__ksymtab_nf_ct_seqadj_init, ptr @__ksymtab_nf_ct_seqadj_set, ptr @__ksymtab_nf_ct_tcp_seqadj_set, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nf_ct_seqadj_extend, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_seqadj_extend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_ct_seqadj_init(ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp1 = icmp eq i32 %off, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status) #3
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %if.end.nfct_seqadj.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end.nfct_seqadj.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %nfct_seqadj.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nfct_seqadj.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_seqadj.exit

nfct_seqadj.exit:                                 ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge, %if.end.nfct_seqadj.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge ], [ null, %if.end.nfct_seqadj.exit_crit_edge ]
  %offset_before = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %cond, i32 1
  %4 = ptrtoint ptr %offset_before to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %off, ptr %offset_before, align 4
  %offset_after = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %cond, i32 2
  %5 = ptrtoint ptr %offset_after to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %off, ptr %offset_after, align 4
  br label %cleanup

cleanup:                                          ; preds = %nfct_seqadj.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_ct_seqadj_set(ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %seq, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_seqadj.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_seqadj.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nfct_seqadj.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nfct_seqadj.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_seqadj.exit

nfct_seqadj.exit:                                 ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge, %entry.nfct_seqadj.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge ], [ null, %entry.nfct_seqadj.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp1 = icmp eq i32 %off, 0
  br i1 %cmp1, label %nfct_seqadj.exit.cleanup_crit_edge, label %if.end

nfct_seqadj.exit.cleanup_crit_edge:               ; preds = %nfct_seqadj.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nfct_seqadj.exit
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %land.end, label %if.end46, !prof !37

land.end:                                         ; preds = %if.end
  %.b73 = load i1, ptr @nf_ct_seqadj_set.__already_done, align 1
  br i1 %.b73, label %land.end.cleanup_crit_edge, label %if.then16, !prof !38

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then16:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @nf_ct_seqadj_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %cleanup

if.end46:                                         ; preds = %if.end
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status) #3
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #3
  %arrayidx = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %cond
  %offset_before = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %cond, i32 1
  %4 = ptrtoint ptr %offset_before to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset_before, align 4
  %offset_after = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %cond, i32 2
  %6 = ptrtoint ptr %offset_after to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset_after, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp48 = icmp eq i32 %5, %7
  br i1 %cmp48, label %if.end46.if.then50_crit_edge, label %lor.lhs.false

if.end46.if.then50_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then50

lor.lhs.false:                                    ; preds = %if.end46
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub.i = sub i32 %9, %seq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.if.then50_crit_edge, label %lor.lhs.false.if.end55_crit_edge

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end55

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %if.end46.if.then50_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %seq, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %offset_before to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %offset_before, align 4
  %add = add i32 %7, %off
  %12 = ptrtoint ptr %offset_after to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %offset_after, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %lor.lhs.false.if.end55_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then16, %land.end.cleanup_crit_edge, %nfct_seqadj.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_ct_tcp_seqadj_set(ptr nocapture noundef readonly %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %0 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protonum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp.not = icmp eq i8 %1, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %7 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 2
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq, align 4
  %call4 = tail call i32 @nf_ct_seqadj_set(ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %9, i32 noundef %off)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_ct_seq_adjust(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_seqadj.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_seqadj.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nfct_seqadj.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nfct_seqadj.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_seqadj.exit

nfct_seqadj.exit:                                 ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge, %entry.nfct_seqadj.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_seqadj.exit_crit_edge ], [ null, %entry.nfct_seqadj.exit_crit_edge ]
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx2 = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %lnot.ext
  %add = add i32 %protoff, 20
  %call3 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %nfct_seqadj.exit.cleanup_crit_edge

nfct_seqadj.exit.cleanup_crit_edge:               ; preds = %nfct_seqadj.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nfct_seqadj.exit
  %arrayidx = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %cond
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %protoff
  %lock = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %seq5 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 2
  %8 = ptrtoint ptr %seq5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq5, align 4
  %sub.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %offset_after = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %cond, i32 2
  %offset_before = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %cond, i32 1
  %seqoff.0.in = select i1 %cmp.i, ptr %offset_after, ptr %offset_before
  %10 = ptrtoint ptr %seqoff.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %seqoff.0 = load i32, ptr %seqoff.0.in, align 4
  %add10 = add i32 %seqoff.0, %9
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 6
  tail call void @inet_proto_csum_replace4(ptr noundef %check, ptr noundef %skb, i32 noundef %9, i32 noundef %add10, i1 noundef zeroext false) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_seq_adjust.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_seq_adjust, %if.then19)) #3
          to label %do.end [label %if.then19], !srcloc !39

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %seq5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seq5, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_seq_adjust.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.4, i32 noundef %12, i32 noundef %add10) #3
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end
  %13 = ptrtoint ptr %seq5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add10, ptr %seq5, align 4
  %ack = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 4
  %14 = ptrtoint ptr %ack to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %ack, align 4
  %15 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool23.not = icmp eq i16 %15, 0
  br i1 %tobool23.not, label %do.end.out_crit_edge, label %if.end25

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end25:                                         ; preds = %do.end
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2, align 4
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 3
  %18 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ack_seq, align 4
  %offset_before27 = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %lnot.ext, i32 1
  %20 = ptrtoint ptr %offset_before27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset_before27, align 4
  %sub.neg = sub i32 %17, %19
  %sub.i106 = add i32 %sub.neg, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i106)
  %cmp.i107 = icmp slt i32 %sub.i106, 0
  %offset_after30 = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i, i32 0, i32 %lnot.ext, i32 2
  %ackoff.0.in = select i1 %cmp.i107, ptr %offset_after30, ptr %offset_before27
  %22 = ptrtoint ptr %ackoff.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %ackoff.0 = load i32, ptr %ackoff.0.in, align 4
  %sub35 = sub i32 %19, %ackoff.0
  tail call void @inet_proto_csum_replace4(ptr noundef %check, ptr noundef %skb, i32 noundef %19, i32 noundef %sub35, i1 noundef zeroext false) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_seq_adjust.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_seq_adjust, %if.then50)) #3
          to label %do.end55 [label %if.then50], !srcloc !39

if.then50:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %seq5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seq5, align 4
  %25 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ack_seq, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_seq_adjust.__UNIQUE_ID_ddebug690, ptr noundef nonnull @.str.5, i32 noundef %24, i32 noundef %add10, i32 noundef %26, i32 noundef %sub35) #3
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %if.end25
  %27 = ptrtoint ptr %ack_seq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub35, ptr %ack_seq, align 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %protoff
  %30 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i.i, label %do.end55.nfct_seqadj.exit.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

do.end55.nfct_seqadj.exit.i_crit_edge:            ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %nfct_seqadj.exit.i

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %do.end55
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.i.i.not.i.i.i = icmp eq i8 %33, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.nfct_seqadj.exit.i_crit_edge, label %if.end.i.i.i

nf_ct_ext_exist.exit.i.i.i.nfct_seqadj.exit.i_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nfct_seqadj.exit.i

if.end.i.i.i:                                     ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i.i.i = zext i8 %33 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 %conv.i.i.i
  br label %nfct_seqadj.exit.i

nfct_seqadj.exit.i:                               ; preds = %if.end.i.i.i, %nf_ct_ext_exist.exit.i.i.i.nfct_seqadj.exit.i_crit_edge, %do.end55.nfct_seqadj.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end.i.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.i.nfct_seqadj.exit.i_crit_edge ], [ null, %do.end55.nfct_seqadj.exit.i_crit_edge ]
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %34 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %35 = lshr i16 %bf.load.i, 10
  %36 = and i16 %35, 60
  %mul.i = zext i16 %36 to i32
  %add1.i = add i32 %mul.i, %protoff
  %call2.i = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add1.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %nfct_seqadj.exit.i.out_crit_edge

nfct_seqadj.exit.i.out_crit_edge:                 ; preds = %nfct_seqadj.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i:                                         ; preds = %nfct_seqadj.exit.i
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %add.ptr4.i = getelementptr i8, ptr %38, i32 %protoff
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add1.i)
  %cmp685.i = icmp ult i32 %add, %add1.i
  br i1 %cmp685.i, label %while.body.lr.ph.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.body.lr.ph.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctinfo)
  %cmp.i108 = icmp ult i32 %ctinfo, 3
  %lnot.ext.i = zext i1 %cmp.i108 to i32
  %arrayidx46.i = getelementptr [2 x %struct.nf_ct_seqadj], ptr %retval.0.i.i.i, i32 0, i32 %lnot.ext.i
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %optoff.086.i = phi i32 [ %add, %while.body.lr.ph.i ], [ %optoff.1.i, %cleanup.i.while.body.i_crit_edge ]
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %add.ptr9.i = getelementptr i8, ptr %40, i32 %optoff.086.i
  %41 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr9.i, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i8 %42, label %sw.default.i [
    i8 0, label %while.body.i.out_crit_edge
    i8 1, label %while.body.i.cleanup.i_crit_edge
  ]

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.i

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

sw.default.i:                                     ; preds = %while.body.i
  %add12.i = add nuw i32 %optoff.086.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %add1.i)
  %cmp13.i = icmp eq i32 %add12.i, %add1.i
  br i1 %cmp13.i, label %sw.default.i.out_crit_edge, label %lor.lhs.false.i

sw.default.i.out_crit_edge:                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false.i:                                  ; preds = %sw.default.i
  %arrayidx15.i = getelementptr i8, ptr %add.ptr9.i, i32 1
  %44 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %45 to i32
  %add17.i = add i32 %optoff.086.i, %conv16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %add1.i)
  %cmp18.i = icmp ugt i32 %add17.i, %add1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp23.i = icmp ult i8 %45, 2
  %or.cond.i = select i1 %cmp18.i, i1 true, i1 %cmp23.i
  br i1 %or.cond.i, label %lor.lhs.false.i.out_crit_edge, label %if.end26.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end26.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %42)
  %cmp29.i = icmp eq i8 %42, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %45)
  %cmp33.i = icmp ugt i8 %45, 9
  %or.cond81.i = select i1 %cmp29.i, i1 %cmp33.i, i1 false
  br i1 %or.cond81.i, label %land.lhs.true35.i, label %if.end26.i.if.end47.i_crit_edge

if.end26.i.if.end47.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47.i

land.lhs.true35.i:                                ; preds = %if.end26.i
  %sub.i109 = add nuw nsw i32 %conv16.i, 6
  %46 = and i32 %sub.i109, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp38.i = icmp eq i32 %46, 0
  br i1 %cmp38.i, label %if.then40.i, label %land.lhs.true35.i.if.end47.i_crit_edge

land.lhs.true35.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47.i

if.then40.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #5
  %add41.i = add i32 %optoff.086.i, 2
  tail call fastcc void @nf_ct_sack_block_adjust(ptr noundef %skb, ptr noundef %add.ptr4.i, i32 noundef %add41.i, i32 noundef %add17.i, ptr noundef %arrayidx46.i) #3
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then40.i, %land.lhs.true35.i.if.end47.i_crit_edge, %if.end26.i.if.end47.i_crit_edge
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx15.i, align 1
  %conv49.i = zext i8 %48 to i32
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end47.i, %while.body.i.cleanup.i_crit_edge
  %conv49.pn.i = phi i32 [ %conv49.i, %if.end47.i ], [ 1, %while.body.i.cleanup.i_crit_edge ]
  %optoff.1.i = add i32 %conv49.pn.i, %optoff.086.i
  %cmp6.i = icmp ult i32 %optoff.1.i, %add1.i
  br i1 %cmp6.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.out_crit_edge

cleanup.i.out_crit_edge:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

out:                                              ; preds = %cleanup.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %sw.default.i.out_crit_edge, %while.body.i.out_crit_edge, %if.end.i.out_crit_edge, %nfct_seqadj.exit.i.out_crit_edge, %do.end.out_crit_edge
  %res.0 = phi i32 [ 1, %do.end.out_crit_edge ], [ 0, %nfct_seqadj.exit.i.out_crit_edge ], [ 1, %if.end.i.out_crit_edge ], [ 0, %sw.default.i.out_crit_edge ], [ 0, %lor.lhs.false.i.out_crit_edge ], [ 1, %while.body.i.out_crit_edge ], [ 1, %cleanup.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %nfct_seqadj.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out ], [ 0, %nfct_seqadj.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nf_ct_seq_offset(ptr nocapture noundef readonly %ct, i32 noundef %dir, i32 noundef %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nfct_seqadj.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

nfct_seqadj.exit:                                 ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nfct_seqadj.exit.cleanup_crit_edge, label %if.end

nfct_seqadj.exit.cleanup_crit_edge:               ; preds = %nfct_seqadj.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nfct_seqadj.exit
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [2 x %struct.nf_ct_seqadj], ptr %add.ptr.i.i, i32 0, i32 %dir
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %sub.i = sub i32 %5, %seq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %offset_after = getelementptr [2 x %struct.nf_ct_seqadj], ptr %add.ptr.i.i, i32 0, i32 %dir, i32 2
  %offset_before = getelementptr [2 x %struct.nf_ct_seqadj], ptr %add.ptr.i.i, i32 0, i32 %dir, i32 1
  %cond.in = select i1 %cmp.i, ptr %offset_after, ptr %offset_before
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfct_seqadj.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %nfct_seqadj.exit.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_seqadj_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_ct_extend_register(ptr noundef nonnull @nf_ct_seqadj_extend) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_extend_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_seqadj_fini() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_ct_extend_unregister(ptr noundef nonnull @nf_ct_seqadj_extend) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_extend_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_ct_sack_block_adjust(ptr noundef %skb, ptr noundef %tcph, i32 noundef %sackoff, i32 noundef %sackend, ptr nocapture noundef readonly %seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %sackoff, i32 %sackend)
  %cmp61 = icmp ult i32 %sackoff, %sackend
  br i1 %cmp61, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %offset_before = getelementptr inbounds %struct.nf_ct_seqadj, ptr %seq, i32 0, i32 1
  %offset_after = getelementptr inbounds %struct.nf_ct_seqadj, ptr %seq, i32 0, i32 2
  %check = getelementptr inbounds %struct.tcphdr, ptr %tcph, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %sackoff.addr.062 = phi i32 [ %sackoff, %while.body.lr.ph ], [ %add, %do.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %sackoff.addr.062
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %offset_before to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset_before, align 4
  %sub = sub i32 %5, %7
  %sub.i = sub i32 %3, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %offset_after to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset_after, align 4
  %sub2 = sub i32 %5, %9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %new_start_seq.0 = phi i32 [ %sub2, %if.then ], [ %sub, %while.body.if.end_crit_edge ]
  %end_seq = getelementptr inbounds %struct.tcp_sack_block_wire, ptr %add.ptr, i32 0, i32 1
  %10 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end_seq, align 4
  %sub8 = sub i32 %11, %7
  %sub.i58 = sub i32 %3, %sub8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i58)
  %cmp.i59 = icmp slt i32 %sub.i58, 0
  br i1 %cmp.i59, label %if.then10, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %offset_after to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset_after, align 4
  %sub13 = sub i32 %11, %13
  br label %do.body

do.body:                                          ; preds = %if.then10, %if.end.do.body_crit_edge
  %new_end_seq.0 = phi i32 [ %sub13, %if.then10 ], [ %sub8, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_sack_block_adjust.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_sack_block_adjust, %if.then22)) #3
          to label %do.end [label %if.then22], !srcloc !39

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %16 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end_seq, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_sack_block_adjust.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef %new_start_seq.0, i32 noundef %17, i32 noundef %new_end_seq.0) #3
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  tail call void @inet_proto_csum_replace4(ptr noundef %check, ptr noundef %skb, i32 noundef %19, i32 noundef %new_start_seq.0, i1 noundef zeroext false) #3
  %20 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end_seq, align 4
  tail call void @inet_proto_csum_replace4(ptr noundef %check, ptr noundef %skb, i32 noundef %21, i32 noundef %new_end_seq.0, i1 noundef zeroext false) #3
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %new_start_seq.0, ptr %add.ptr, align 4
  %23 = ptrtoint ptr %end_seq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %new_end_seq.0, ptr %end_seq, align 4
  %add = add i32 %sackoff.addr.062, 8
  %cmp = icmp ult i32 %add, %sackend
  br i1 %cmp, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !20, !22, !24, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__ksymtab_nf_ct_seqadj_init, !1, !"__ksymtab_nf_ct_seqadj_init", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 28, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 41, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_nf_ct_seqadj_set, !7, !"__ksymtab_nf_ct_seqadj_set", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 58, i32 1}
!8 = !{ptr @__ksymtab_nf_ct_tcp_seqadj_set, !9, !"__ksymtab_nf_ct_tcp_seqadj_set", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 72, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 191, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nf_ct_seq_adjust.__UNIQUE_ID_ddebug689, !11, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 207, i32 2}
!17 = !{ptr @nf_ct_seq_adjust.__UNIQUE_ID_ddebug690, !16, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!18 = !{ptr @__ksymtab_nf_ct_seq_adjust, !19, !"__ksymtab_nf_ct_seq_adjust", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 218, i32 1}
!20 = !{ptr @__ksymtab_nf_ct_seq_offset, !21, !"__ksymtab_nf_ct_seq_offset", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 234, i32 1}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 102, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nf_ct_sack_block_adjust.__UNIQUE_ID_ddebug688, !23, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!26 = !{ptr @nf_ct_seqadj_extend, !27, !"nf_ct_seqadj_extend", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_seqadj.c", i32 236, i32 36}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2148849061, i64 2148849066, i64 2148849079, i64 2148849123, i64 2148849157, i64 2148849178}
