; ModuleID = '/llk/IR_all_yes/crypto/scompress.c_pt.bc'
source_filename = "../crypto/scompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crypto_register_scomp\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_register_scomp\09\09\09\09"
module asm "\09.long\09__crc_crypto_register_scomp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_scomp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_scomp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_scomp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_unregister_scomp\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_unregister_scomp\09\09\09\09"
module asm "\09.long\09__crc_crypto_unregister_scomp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_scomp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_scomp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_scomp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_register_scomps\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_register_scomps\09\09\09\09"
module asm "\09.long\09__crc_crypto_register_scomps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_scomps:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_scomps\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_scomps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_unregister_scomps\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_unregister_scomps\09\09\09\09"
module asm "\09.long\09__crc_crypto_unregister_scomps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_scomps:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_scomps\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_scomps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.scomp_scratch = type { %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.acomp_req = type { %struct.crypto_async_request, ptr, ptr, i32, i32, i32, [84 x i8], [0 x ptr] }
%struct.scomp_alg = type { ptr, ptr, ptr, ptr, [112 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.94, ptr, ptr, ptr, ptr, %union.anon.95, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.94 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.95 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_report_comp = type { [64 x i8] }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scomp_scratch.lock\00", [45 x i8] zeroinitializer }, align 32
@scomp_scratch = weak dso_local global %struct.scomp_scratch { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null, ptr null }, section ".data..percpu", align 4
@crypto_scomp_type = internal constant { %struct.crypto_type, [52 x i8] } { %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_scomp_init_tfm, ptr @crypto_scomp_show, ptr @crypto_scomp_report, ptr null, i32 11, i32 -16, i32 15, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_crypto_register_scomp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_scomp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_scomp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_scomp to i32), ptr @__kstrtab_crypto_register_scomp, ptr @__kstrtabns_crypto_register_scomp }, section "___ksymtab_gpl+crypto_register_scomp", align 4
@__kstrtab_crypto_unregister_scomp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_scomp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_scomp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_scomp to i32), ptr @__kstrtab_crypto_unregister_scomp, ptr @__kstrtabns_crypto_unregister_scomp }, section "___ksymtab_gpl+crypto_unregister_scomp", align 4
@__kstrtab_crypto_register_scomps = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_scomps = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_scomps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_scomps to i32), ptr @__kstrtab_crypto_register_scomps, ptr @__kstrtabns_crypto_register_scomps }, section "___ksymtab_gpl+crypto_register_scomps", align 4
@__kstrtab_crypto_unregister_scomps = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_scomps = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_scomps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_scomps to i32), ptr @__kstrtab_crypto_unregister_scomps, ptr @__kstrtabns_crypto_unregister_scomps }, section "___ksymtab_gpl+crypto_unregister_scomps", align 4
@__UNIQUE_ID_file272 = internal constant [46 x i8] c"crypto_acompress.file=crypto/crypto_acompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [29 x i8] c"crypto_acompress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description274 = internal constant [58 x i8] c"crypto_acompress.description=Synchronous compression type\00", section ".modinfo", align 1
@__pcpu_unique_scomp_scratch = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@scomp_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scomp_lock, i64 52), ptr getelementptr (i8, ptr @scomp_lock, i64 52) }, ptr @scomp_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@scomp_scratch_users = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scomp_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scomp_lock\00", [21 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"type         : scomp\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scomp\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 34, i32 10 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"crypto_scomp_type\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 244, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"scomp_lock\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"scomp_scratch_users\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 38, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 39, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 65, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [22 x i8] c"../crypto/scompress.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 48, i32 23 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__ksymtab_crypto_register_scomp, ptr @__ksymtab_crypto_register_scomps, ptr @__ksymtab_crypto_unregister_scomp, ptr @__ksymtab_crypto_unregister_scomps, ptr @.str, ptr @crypto_scomp_type, ptr @scomp_lock, ptr @scomp_scratch_users, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_scomp_type to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scomp_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scomp_scratch_users to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_init_scomp_ops_async(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %add.ptr.i = getelementptr i8, ptr %tfm, i32 -128
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call2 = tail call ptr @crypto_mod_get(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @crypto_create_tfm_node(ptr noundef %1, ptr noundef nonnull @crypto_scomp_type, i32 noundef -1) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_mod_put(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %__crt_ctx.i, align 4
  %exit = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 2
  %4 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @crypto_exit_scomp_ops_async, ptr %exit, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @scomp_acomp_compress, ptr %add.ptr.i, align 128
  %decompress = getelementptr i8, ptr %tfm, i32 -124
  %6 = ptrtoint ptr %decompress to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @scomp_acomp_decompress, ptr %decompress, align 4
  %dst_free = getelementptr i8, ptr %tfm, i32 -120
  %7 = ptrtoint ptr %dst_free to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sgl_free, ptr %dst_free, align 8
  %reqsize = getelementptr i8, ptr %tfm, i32 -116
  %8 = ptrtoint ptr %reqsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %reqsize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ 0, %if.end7 ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_mod_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_mod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_exit_scomp_ops_async(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @scomp_lock, i32 noundef 0) #6
  %2 = load i32, ptr @scomp_scratch_users, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @scomp_scratch_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call9.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %3)
  %cmp10.i = icmp ult i32 %call9.i, %3
  br i1 %cmp10.i, label %if.then.do.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %call11.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call9.i, %if.then.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @scomp_scratch to i32)
  %6 = inttoptr i32 %add.i to ptr
  %src.i = getelementptr inbounds %struct.scomp_scratch, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src.i, align 4
  tail call void @vfree(ptr noundef %8) #6
  %dst.i = getelementptr inbounds %struct.scomp_scratch, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst.i, align 4
  tail call void @vfree(ptr noundef %10) #6
  %11 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %src.i, align 4
  %12 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dst.i, align 4
  %call.i = tail call i32 @cpumask_next(i32 noundef %call11.i, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %13
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.if.end_crit_edge

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end:                                           ; preds = %do.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @scomp_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scomp_acomp_compress(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @scomp_acomp_comp_decomp(ptr noundef %req, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scomp_acomp_decompress(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @scomp_acomp_comp_decomp(ptr noundef %req, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgl_free(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @crypto_acomp_scomp_alloc_ctx(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call1.i = tail call ptr %7(ptr noundef %3) #6
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %req) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__ctx = getelementptr inbounds %struct.acomp_req, ptr %req, i32 0, i32 7
  %8 = ptrtoint ptr %__ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %__ctx, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %req, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_acomp_scomp_free_ctx(ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx = getelementptr inbounds %struct.acomp_req, ptr %req, i32 0, i32 7
  %0 = ptrtoint ptr %__ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %free_ctx.i = getelementptr i8, ptr %7, i32 -124
  %8 = ptrtoint ptr %free_ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_ctx.i, align 4
  tail call void %9(ptr noundef %5, ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_register_scomp(ptr noundef %alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.scomp_alg, ptr %alg, i32 0, i32 5
  %cra_type = getelementptr inbounds %struct.scomp_alg, ptr %alg, i32 0, i32 5, i32 10
  %0 = ptrtoint ptr %cra_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @crypto_scomp_type, ptr %cra_type, align 8
  %cra_flags = getelementptr inbounds %struct.scomp_alg, ptr %alg, i32 0, i32 5, i32 2
  %1 = ptrtoint ptr %cra_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cra_flags, align 16
  %and = and i32 %2, -16
  %or = or i32 %and, 11
  store i32 %or, ptr %cra_flags, align 16
  %call = tail call i32 @crypto_register_alg(ptr noundef %base1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_unregister_scomp(ptr noundef %alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.scomp_alg, ptr %alg, i32 0, i32 5
  tail call void @crypto_unregister_alg(ptr noundef %base) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_register_scomps(ptr noundef %algs, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp19 = icmp sgt i32 %count, 0
  br i1 %cmp19, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %base1.i = getelementptr %struct.scomp_alg, ptr %algs, i32 %i.020, i32 5
  %cra_type.i = getelementptr %struct.scomp_alg, ptr %algs, i32 %i.020, i32 5, i32 10
  %0 = ptrtoint ptr %cra_type.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @crypto_scomp_type, ptr %cra_type.i, align 8
  %cra_flags.i = getelementptr %struct.scomp_alg, ptr %algs, i32 %i.020, i32 5, i32 2
  %1 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %2, -16
  %or.i = or i32 %and.i, 11
  store i32 %or.i, ptr %cra_flags.i, align 16
  %call.i = tail call i32 @crypto_register_alg(ptr noundef %base1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.inc, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.020)
  %cmp222.not = icmp eq i32 %i.020, 0
  br i1 %cmp222.not, label %for.cond1.preheader.cleanup_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.cleanup_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.123.in = phi i32 [ %i.123, %for.body3.for.body3_crit_edge ], [ %i.020, %for.cond1.preheader.for.body3_crit_edge ]
  %i.123 = add nsw i32 %i.123.in, -1
  %base.i = getelementptr %struct.scomp_alg, ptr %algs, i32 %i.123, i32 5
  tail call void @crypto_unregister_alg(ptr noundef %base.i) #6
  %cmp2 = icmp sgt i32 %i.123.in, 1
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.cleanup_crit_edge

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

cleanup:                                          ; preds = %for.body3.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond1.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %for.cond1.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %for.body3.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_unregister_scomps(ptr noundef %algs, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i.03 = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.03)
  %cmp4 = icmp sgt i32 %i.03, -1
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.03, %entry.for.body_crit_edge ]
  %base.i = getelementptr %struct.scomp_alg, ptr %algs, i32 %i.05, i32 5
  tail call void @crypto_unregister_alg(ptr noundef %base.i) #6
  %i.0 = add nsw i32 %i.05, -1
  %cmp = icmp sgt i32 %i.05, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_create_tfm_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scomp_acomp_comp_decomp(ptr noundef %req, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i, align 4
  %__ctx.i = getelementptr inbounds %struct.acomp_req, ptr %req, i32 0, i32 7
  %src = getelementptr inbounds %struct.acomp_req, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %slen = getelementptr inbounds %struct.acomp_req, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %slen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slen, align 32
  %8 = add i32 %7, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131072, i32 %8)
  %9 = icmp ult i32 %8, -131072
  br i1 %9, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dst = getelementptr inbounds %struct.acomp_req, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %dlen = getelementptr inbounds %struct.acomp_req, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %dlen10 = getelementptr inbounds %struct.acomp_req, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %dlen10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dlen10, align 4
  %16 = add i32 %15, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131072, i32 %16)
  %17 = icmp ult i32 %16, -131072
  br i1 %17, label %if.then15, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dlen10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 131072, ptr %dlen10, align 4
  br label %do.body

do.body:                                          ; preds = %if.then15, %if.end9.do.body_crit_edge
  %19 = tail call i32 @llvm.read_register.i32(metadata !30) #6
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %add = add i32 %24, ptrtoint (ptr @scomp_scratch to i32)
  %25 = inttoptr i32 %add to ptr
  tail call void @_raw_spin_lock(ptr noundef %25) #6
  %src20 = getelementptr inbounds %struct.scomp_scratch, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %src20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src20, align 4
  %28 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src, align 8
  %30 = ptrtoint ptr %slen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slen, align 32
  tail call void @scatterwalk_map_and_copy(ptr noundef %27, ptr noundef %29, i32 noundef 0, i32 noundef %31, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool23.not = icmp eq i32 %dir, 0
  %32 = ptrtoint ptr %src20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src20, align 4
  %34 = ptrtoint ptr %slen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slen, align 32
  %dst32 = getelementptr inbounds %struct.scomp_scratch, ptr %25, i32 0, i32 2
  %36 = ptrtoint ptr %dst32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dst32, align 4
  %38 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__ctx.i, align 4
  %__crt_alg.i.i92 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %__crt_alg.i.i92 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__crt_alg.i.i92, align 4
  %. = select i1 %tobool23.not, i32 -116, i32 -120
  %decompress.i = getelementptr i8, ptr %41, i32 %.
  %42 = ptrtoint ptr %decompress.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.sink = load ptr, ptr %decompress.i, align 4
  %call1.i93 = tail call i32 %.sink(ptr noundef %3, ptr noundef %33, i32 noundef %35, ptr noundef %37, ptr noundef %dlen10, ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool36.not = icmp eq i32 %call1.i93, 0
  br i1 %tobool36.not, label %if.then37, label %do.body.out_crit_edge

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then37:                                        ; preds = %do.body
  %43 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dst, align 4
  %tobool39.not = icmp eq ptr %44, null
  br i1 %tobool39.not, label %if.then40, label %if.then37.if.end48_crit_edge

if.then37.if.end48_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then40:                                        ; preds = %if.then37
  %45 = ptrtoint ptr %dlen10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dlen10, align 4
  %conv = zext i32 %46 to i64
  %call42 = tail call ptr @sgl_alloc(i64 noundef %conv, i32 noundef 2592, ptr noundef null) #6
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call42, ptr %dst, align 4
  %tobool45.not = icmp eq ptr %call42, null
  br i1 %tobool45.not, label %if.then40.out_crit_edge, label %if.then40.if.end48_crit_edge

if.then40.if.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then40.out_crit_edge:                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end48:                                         ; preds = %if.then40.if.end48_crit_edge, %if.then37.if.end48_crit_edge
  %dst49 = getelementptr inbounds %struct.scomp_scratch, ptr %25, i32 0, i32 2
  %48 = ptrtoint ptr %dst49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dst49, align 4
  %50 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dst, align 4
  %52 = ptrtoint ptr %dlen10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dlen10, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %49, ptr noundef %51, i32 noundef 0, i32 noundef %53, i32 noundef 1) #6
  br label %out

out:                                              ; preds = %if.end48, %if.then40.out_crit_edge, %do.body.out_crit_edge
  %ret.1 = phi i32 [ %call1.i93, %do.body.out_crit_edge ], [ 0, %if.end48 ], [ -12, %if.then40.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %25) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sgl_alloc(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_scomp_init_tfm(ptr nocapture noundef readnone %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @scomp_lock, i32 noundef 0) #6
  %0 = load i32, ptr @scomp_scratch_users, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @scomp_scratch_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call19.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i, i32 %1)
  %cmp20.i = icmp ult i32 %call19.i, %1
  br i1 %cmp20.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %call21.i = phi i32 [ %call.i, %cleanup.i.for.body.i_crit_edge ], [ %call19.i, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call21.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, ptrtoint (ptr @scomp_scratch to i32)
  %4 = inttoptr i32 %add.i to ptr
  %call2.i = tail call noalias ptr @vmalloc_node(i32 noundef 131072, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body.i.error.i_crit_edge, label %if.end.i

for.body.i.error.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end.i:                                         ; preds = %for.body.i
  %src.i = getelementptr inbounds %struct.scomp_scratch, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.i, ptr %src.i, align 4
  %call3.i = tail call noalias ptr @vmalloc_node(i32 noundef 131072, i32 noundef 0) #10
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.error.i_crit_edge, label %cleanup.i

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

cleanup.i:                                        ; preds = %if.end.i
  %dst.i = getelementptr inbounds %struct.scomp_scratch, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3.i, ptr %dst.i, align 4
  %call.i = tail call i32 @cpumask_next(i32 noundef %call21.i, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %7
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

error.i:                                          ; preds = %if.end.i.error.i_crit_edge, %for.body.i.error.i_crit_edge
  %call9.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i.i, i32 %8)
  %cmp10.i.i = icmp ult i32 %call9.i.i, %8
  br i1 %cmp10.i.i, label %error.i.do.body.i.i_crit_edge, label %error.i.if.end_crit_edge

error.i.if.end_crit_edge:                         ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

error.i.do.body.i.i_crit_edge:                    ; preds = %error.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %error.i.do.body.i.i_crit_edge
  %call11.i.i = phi i32 [ %call.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %call9.i.i, %error.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, ptrtoint (ptr @scomp_scratch to i32)
  %11 = inttoptr i32 %add.i.i to ptr
  %src.i.i = getelementptr inbounds %struct.scomp_scratch, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src.i.i, align 4
  tail call void @vfree(ptr noundef %13) #6
  %dst.i.i = getelementptr inbounds %struct.scomp_scratch, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst.i.i, align 4
  tail call void @vfree(ptr noundef %15) #6
  %16 = ptrtoint ptr %src.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %src.i.i, align 4
  %17 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dst.i.i, align 4
  %call.i.i = tail call i32 @cpumask_next(i32 noundef %call11.i.i, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i = icmp ult i32 %call.i.i, %18
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.if.end_crit_edge

do.body.i.i.if.end_crit_edge:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.end:                                           ; preds = %do.body.i.i.if.end_crit_edge, %error.i.if.end_crit_edge, %cleanup.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ -12, %error.i.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ -12, %do.body.i.i.if.end_crit_edge ], [ 0, %cleanup.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @scomp_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_scomp_show(ptr noundef %m, ptr nocapture noundef readnone %alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_scomp_report(ptr noundef %skb, ptr nocapture noundef readnone %alg) #0 align 64 {
entry:
  %rscomp = alloca %struct.crypto_report_comp, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rscomp) #6
  %0 = call ptr @memset(ptr %rscomp, i32 0, i32 64)
  %call = call i32 @strscpy(ptr noundef nonnull %rscomp, ptr noundef nonnull @.str.4, i32 noundef 64) #6
  %call1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 64, ptr noundef nonnull %rscomp) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rscomp) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !22, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/scompress.c", i32 34, i32 10}
!2 = !{ptr @scomp_scratch, !3, !"scomp_scratch", i1 false, i1 false}
!3 = !{!"../crypto/scompress.c", i32 33, i32 8}
!4 = !{ptr @__ksymtab_crypto_register_scomp, !5, !"__ksymtab_crypto_register_scomp", i1 false, i1 false}
!5 = !{!"../crypto/scompress.c", i32 267, i32 1}
!6 = !{ptr @__ksymtab_crypto_unregister_scomp, !7, !"__ksymtab_crypto_unregister_scomp", i1 false, i1 false}
!7 = !{!"../crypto/scompress.c", i32 273, i32 1}
!8 = !{ptr @__ksymtab_crypto_register_scomps, !9, !"__ksymtab_crypto_register_scomps", i1 false, i1 false}
!9 = !{!"../crypto/scompress.c", i32 293, i32 1}
!10 = !{ptr @__ksymtab_crypto_unregister_scomps, !11, !"__ksymtab_crypto_unregister_scomps", i1 false, i1 false}
!11 = !{!"../crypto/scompress.c", i32 302, i32 1}
!12 = !{ptr @__UNIQUE_ID_file272, !13, !"__UNIQUE_ID_file272", i1 false, i1 false}
!13 = !{!"../crypto/scompress.c", i32 304, i32 1}
!14 = !{ptr @__UNIQUE_ID_license273, !13, !"__UNIQUE_ID_license273", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description274, !16, !"__UNIQUE_ID_description274", i1 false, i1 false}
!16 = !{!"../crypto/scompress.c", i32 305, i32 1}
!17 = !{ptr @__pcpu_unique_scomp_scratch, !3, !"__pcpu_unique_scomp_scratch", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../crypto/scompress.c", i32 39, i32 8}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scomp_lock, !19, !"scomp_lock", i1 false, i1 false}
!22 = !{ptr @scomp_scratch_users, !23, !"scomp_scratch_users", i1 false, i1 false}
!23 = !{!"../crypto/scompress.c", i32 38, i32 12}
!24 = !{ptr @crypto_scomp_type, !25, !"crypto_scomp_type", i1 false, i1 false}
!25 = !{!"../crypto/scompress.c", i32 244, i32 33}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../crypto/scompress.c", i32 65, i32 14}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/scompress.c", i32 48, i32 23}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
