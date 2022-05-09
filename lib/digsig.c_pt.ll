; ModuleID = '/llk/IR_all_yes/lib/digsig.c_pt.bc'
source_filename = "../lib/digsig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+digsig_verify\22, \22a\22\09"
module asm "\09.weak\09__crc_digsig_verify\09\09\09\09"
module asm "\09.long\09__crc_digsig_verify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_digsig_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22digsig_verify\22\09\09\09\09\09"
module asm "__kstrtabns_digsig_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.key_type = type opaque
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.signature_hdr = type <{ i8, i32, i8, i8, [8 x i8], i8, [0 x i8] }>
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.6, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.6 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.pubkey_hdr = type <{ i8, i32, i8, i8, [0 x i8] }>
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llX\00", [27 x i8] zeroinitializer }, align 32
@key_type_user = external dso_local global %struct.key_type, align 1
@digsig_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013digsig: key not found, id: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"digsig_verify\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lib/digsig.c\00", [19 x i8] zeroinitializer }, align 32
@digsig_verify._entry_ptr = internal global ptr @digsig_verify._entry, section ".printk_index", align 4
@shash = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_digsig_verify = external dso_local constant [0 x i8], align 1
@__kstrtabns_digsig_verify = external dso_local constant [0 x i8], align 1
@__ksymtab_digsig_verify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @digsig_verify to i32), ptr @__kstrtab_digsig_verify, ptr @__kstrtabns_digsig_verify }, section "___ksymtab_gpl+digsig_verify", align 4
@__initcall__kmod_digsig__228_276_digsig_init6 = internal global ptr @digsig_init, section ".initcall6.init", align 4
@__exitcall_digsig_cleanup = internal global ptr @digsig_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [23 x i8] c"digsig.file=lib/digsig\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [19 x i8] c"digsig.license=GPL\00", section ".modinfo", align 1
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@digsig_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013digsig: shash allocation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"digsig_init\00", [20 x i8] zeroinitializer }, align 32
@digsig_init._entry_ptr = internal global ptr @digsig_init._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 215, i32 16 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 230, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"shash\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 28, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 53, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 261, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [16 x i8] c"../lib/digsig.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 263, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_digsig_cleanup, ptr @__initcall__kmod_digsig__228_276_digsig_init6, ptr @__ksymtab_digsig_verify, ptr @digsig_cleanup, ptr @digsig_init._entry, ptr @digsig_init._entry_ptr, ptr @digsig_verify._entry, ptr @digsig_verify._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @shash, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digsig_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shash to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digsig_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digsig_verify(ptr noundef %keyring, ptr noundef %sig, i32 noundef %siglen, ptr noundef %data, i32 noundef %datalen) #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  %nret.i = alloca i32, align 4
  %l.i = alloca i32, align 4
  %pkey.i = alloca [2 x ptr], align 4
  %remaining.i = alloca i32, align 4
  %hash = alloca [20 x i8], align 1
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hash) #11
  %0 = call ptr @memset(ptr %hash, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %siglen)
  %cmp = icmp ult i32 %siglen, 18
  %1 = call ptr @memset(ptr %name, i32 255, i32 20)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %algo = getelementptr inbounds %struct.signature_hdr, ptr %sig, i32 0, i32 2
  %2 = ptrtoint ptr %algo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %algo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.not = icmp eq i8 %3, 0
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %keyid = getelementptr inbounds %struct.signature_hdr, ptr %sig, i32 0, i32 4
  %4 = ptrtoint ptr %keyid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %keyid, align 8
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i64 noundef %5)
  %tobool.not = icmp eq ptr %keyring, null
  br i1 %tobool.not, label %if.else16, label %if.then7

if.then7:                                         ; preds = %if.end4
  %6 = ptrtoint ptr %keyring to i32
  %or.i = or i32 %6, 1
  %7 = inttoptr i32 %or.i to ptr
  %call10 = call ptr @keyring_search(ptr noundef nonnull %7, ptr noundef nonnull @key_type_user, ptr noundef nonnull %name, i1 noundef zeroext true) #11
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7.if.end19_crit_edge, label %if.else

if.then7.if.end19_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call10 to i32
  %and.i = and i32 %8, -2
  %9 = inttoptr i32 %and.i to ptr
  br label %if.end19

if.else16:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call ptr @request_key_tag(ptr noundef nonnull @key_type_user, ptr noundef nonnull %name, ptr noundef null, ptr noundef null) #11
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.else, %if.then7.if.end19_crit_edge
  %key.1 = phi ptr [ %call.i, %if.else16 ], [ %9, %if.else ], [ %call10, %if.then7.if.end19_crit_edge ]
  %cmp.i61 = icmp ugt ptr %key.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #12
  %10 = ptrtoint ptr %key.1 to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end19
  %11 = load ptr, ptr @shash, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 128
  %add = add i32 %13, 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool28.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool28.not, label %if.end8.i.i.err38_crit_edge, label %if.end30

if.end8.i.i.err38_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err38

if.end30:                                         ; preds = %if.end8.i.i
  %14 = load ptr, ptr @shash, align 4
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call9.i.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i.i.i, align 128
  %and.i62 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.crypto_shash_init.exit_crit_edge

if.end30.crypto_shash_init.exit_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 -256
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %21(ptr noundef nonnull %call9.i.i) #11
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %if.end30.crypto_shash_init.exit_crit_edge
  %call32 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef %data, i32 noundef %datalen) #11
  %call33 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef %sig, i32 noundef 16) #11
  %call35 = call i32 @crypto_shash_final(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %hash) #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  %add.ptr = getelementptr i8, ptr %sig, i32 16
  %sub = add i32 %siglen, -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nret.i) #11
  %22 = ptrtoint ptr %nret.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %nret.i, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l.i) #11
  %23 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %l.i, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pkey.i) #11
  %24 = ptrtoint ptr %pkey.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %pkey.i, align 4, !annotation !38
  %25 = getelementptr inbounds [2 x ptr], ptr %pkey.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %25, align 4, !annotation !38
  %sem.i = getelementptr inbounds %struct.key, ptr %key.1, i32 0, i32 4
  call void @down_read(ptr noundef %sem.i) #11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sem.i, i32 noundef 4) #11
  %27 = ptrtoint ptr %sem.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %sem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %crypto_shash_init.exit.user_key_payload_locked.exit.i_crit_edge

crypto_shash_init.exit.user_key_payload_locked.exit.i_crit_edge: ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %user_key_payload_locked.exit.i

land.lhs.true.i.i:                                ; preds = %crypto_shash_init.exit
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %user_key_payload_locked.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b6.i.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i.i, label %land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge, label %if.then.i.i63

land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %user_key_payload_locked.exit.i

if.then.i.i63:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 53, ptr noundef nonnull @.str.5) #11
  br label %user_key_payload_locked.exit.i

user_key_payload_locked.exit.i:                   ; preds = %if.then.i.i63, %land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge, %land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge, %crypto_shash_init.exit.user_key_payload_locked.exit.i_crit_edge
  %29 = getelementptr inbounds %struct.key, ptr %key.1, i32 0, i32 17
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool.not.i64 = icmp eq ptr %31, null
  br i1 %tobool.not.i64, label %user_key_payload_locked.exit.i.digsig_verify_rsa.exit.thread_crit_edge, label %if.end.i66

user_key_payload_locked.exit.i.digsig_verify_rsa.exit.thread_crit_edge: ; preds = %user_key_payload_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digsig_verify_rsa.exit.thread

if.end.i66:                                       ; preds = %user_key_payload_locked.exit.i
  %datalen.i = getelementptr inbounds %struct.user_key_payload, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %datalen.i, align 8
  %conv.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %33)
  %cmp.i65 = icmp ult i16 %33, 7
  br i1 %cmp.i65, label %if.end.i66.digsig_verify_rsa.exit.thread_crit_edge, label %if.end3.i

if.end.i66.digsig_verify_rsa.exit.thread_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %digsig_verify_rsa.exit.thread

if.end3.i:                                        ; preds = %if.end.i66
  %data.i = getelementptr inbounds %struct.user_key_payload, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp5.not.i = icmp eq i8 %35, 1
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end3.i.digsig_verify_rsa.exit.thread_crit_edge

if.end3.i.digsig_verify_rsa.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digsig_verify_rsa.exit.thread

if.end8.i:                                        ; preds = %if.end3.i
  %algo.i = getelementptr inbounds %struct.pubkey_hdr, ptr %data.i, i32 0, i32 2
  %36 = ptrtoint ptr %algo.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %algo.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp10.not.i = icmp eq i8 %37, 0
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end8.i.digsig_verify_rsa.exit.thread_crit_edge

if.end8.i.digsig_verify_rsa.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digsig_verify_rsa.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %nmpi.i = getelementptr inbounds %struct.pubkey_hdr, ptr %data.i, i32 0, i32 3
  %38 = ptrtoint ptr %nmpi.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nmpi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp15.not.i = icmp eq i8 %39, 2
  br i1 %cmp15.not.i, label %for.body.lr.ph.i, label %if.end13.i.digsig_verify_rsa.exit.thread_crit_edge

if.end13.i.digsig_verify_rsa.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digsig_verify_rsa.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end13.i
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %conv.i
  %mpi.i = getelementptr inbounds %struct.pubkey_hdr, ptr %data.i, i32 0, i32 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %datap.017.i = phi ptr [ %mpi.i, %for.body.lr.ph.i ], [ %add.ptr35.i, %for.inc.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remaining.i) #11
  %sub.ptr.rhs.cast.i = ptrtoint ptr %datap.017.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %40 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.ptr.sub.i, ptr %remaining.i, align 4
  %call28.i = call ptr @mpi_read_from_buffer(ptr noundef %datap.017.i, ptr noundef nonnull %remaining.i) #11
  %arrayidx.i = getelementptr [2 x ptr], ptr %pkey.i, i32 0, i32 %i.016.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call28.i, ptr %arrayidx.i, align 4
  %cmp.i.i67 = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i67, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining.i) #11
  br label %err82.i

for.inc.i:                                        ; preds = %for.body.i
  %42 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %remaining.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %datap.017.i, i32 %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining.i) #11
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %44 = ptrtoint ptr %nmpi.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nmpi.i, align 1
  %conv25.i = zext i8 %45 to i32
  %cmp26.i = icmp ult i32 %inc.i, %conv25.i
  br i1 %cmp26.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %46 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pkey.i, align 4
  %call37.i = call i32 @mpi_get_nbits(ptr noundef %47) #11
  %sub.i = add i32 %call37.i, 7
  %div1.i = lshr i32 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp38.i = icmp ult i32 %sub.i, 8
  br i1 %cmp38.i, label %for.end.i.err82.i_crit_edge, label %if.end8.i.i.i

for.end.i.err82.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err82.i

if.end8.i.i.i:                                    ; preds = %for.end.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %div1.i, i32 noundef 3520) #13
  %tobool43.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool43.not.i, label %if.end8.i.i.i.err82.i_crit_edge, label %if.end45.i

if.end8.i.i.i.err82.i_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err82.i

if.end45.i:                                       ; preds = %if.end8.i.i.i
  %48 = ptrtoint ptr %nret.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub, ptr %nret.i, align 4
  %call46.i = call ptr @mpi_read_from_buffer(ptr noundef %add.ptr, ptr noundef nonnull %nret.i) #11
  %cmp.i2.i = icmp ugt ptr %call46.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %if.end45.i.err82.i_crit_edge, label %if.end50.i

if.end45.i.err82.i_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err82.i

if.end50.i:                                       ; preds = %if.end45.i
  %nlimbs.i = getelementptr inbounds %struct.gcry_mpi, ptr %call46.i, i32 0, i32 1
  %49 = ptrtoint ptr %nlimbs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nlimbs.i, align 4
  %mul.i = shl i32 %50, 1
  %call51.i = call ptr @mpi_alloc(i32 noundef %mul.i) #11
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %if.end50.i.err82.i_crit_edge, label %if.end54.i

if.end50.i.err82.i_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err82.i

if.end54.i:                                       ; preds = %if.end50.i
  %51 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %25, align 4
  %call57.i = call i32 @mpi_powm(ptr noundef nonnull %call51.i, ptr noundef %call46.i, ptr noundef %52, ptr noundef %47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end54.i.err82.i_crit_edge

if.end54.i.err82.i_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err82.i

if.end60.i:                                       ; preds = %if.end54.i
  %nlimbs61.i = getelementptr inbounds %struct.gcry_mpi, ptr %call51.i, i32 0, i32 1
  %53 = ptrtoint ptr %nlimbs61.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nlimbs61.i, align 4
  %mul62.i = shl i32 %54, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul62.i, i32 %div1.i)
  %cmp63.i = icmp ugt i32 %mul62.i, %div1.i
  br i1 %cmp63.i, label %if.end60.i.err82.i_crit_edge, label %if.end66.i

if.end60.i.err82.i_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err82.i

if.end66.i:                                       ; preds = %if.end60.i
  %call67.i = call ptr @mpi_get_buffer(ptr noundef nonnull %call51.i, ptr noundef nonnull %l.i, ptr noundef null) #11
  %tobool68.not.i = icmp eq ptr %call67.i, null
  br i1 %tobool68.not.i, label %if.end66.i.err82.i_crit_edge, label %if.end70.i

if.end66.i.err82.i_crit_edge:                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err82.i

if.end70.i:                                       ; preds = %if.end66.i
  %55 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div1.i, ptr %len.i, align 4
  %56 = ptrtoint ptr %l.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %l.i, align 4
  %sub71.i = sub i32 %div1.i, %57
  %58 = call ptr @memset(ptr %call9.i.i.i, i32 0, i32 %sub71.i)
  %add.ptr72.i = getelementptr i8, ptr %call9.i.i.i, i32 %sub71.i
  %59 = call ptr @memcpy(ptr %add.ptr72.i, ptr %call67.i, i32 %57)
  call void @kfree(ptr noundef nonnull %call67.i) #11
  %call73.i = call fastcc ptr @pkcs_1_v1_5_decode_emsa(ptr noundef nonnull %call9.i.i.i, i32 noundef %div1.i, i32 noundef %call37.i, ptr noundef nonnull %len.i) #11
  %tobool74.not.i = icmp eq ptr %call73.i, null
  br i1 %tobool74.not.i, label %if.end70.i.if.then80.i_crit_edge, label %lor.lhs.false.i

if.end70.i.if.then80.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80.i

lor.lhs.false.i:                                  ; preds = %if.end70.i
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %61)
  %cmp75.not.i = icmp eq i32 %61, 20
  br i1 %cmp75.not.i, label %lor.lhs.false77.i, label %lor.lhs.false.i.if.then80.i_crit_edge

lor.lhs.false.i.if.then80.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80.i

lor.lhs.false77.i:                                ; preds = %lor.lhs.false.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) %call73.i, ptr noundef nonnull dereferenceable(20) %hash, i32 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool79.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool79.not.i, label %lor.lhs.false77.i.err82.i_crit_edge, label %lor.lhs.false77.i.if.then80.i_crit_edge

lor.lhs.false77.i.if.then80.i_crit_edge:          ; preds = %lor.lhs.false77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80.i

lor.lhs.false77.i.err82.i_crit_edge:              ; preds = %lor.lhs.false77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err82.i

if.then80.i:                                      ; preds = %lor.lhs.false77.i.if.then80.i_crit_edge, %lor.lhs.false.i.if.then80.i_crit_edge, %if.end70.i.if.then80.i_crit_edge
  br label %err82.i

err82.i:                                          ; preds = %if.then80.i, %lor.lhs.false77.i.err82.i_crit_edge, %if.end66.i.err82.i_crit_edge, %if.end60.i.err82.i_crit_edge, %if.end54.i.err82.i_crit_edge, %if.end50.i.err82.i_crit_edge, %if.end45.i.err82.i_crit_edge, %if.end8.i.i.i.err82.i_crit_edge, %for.end.i.err82.i_crit_edge, %cleanup.i
  %i.013.i = phi i32 [ %i.016.i, %cleanup.i ], [ %inc.i, %if.end54.i.err82.i_crit_edge ], [ %inc.i, %if.then80.i ], [ %inc.i, %lor.lhs.false77.i.err82.i_crit_edge ], [ %inc.i, %if.end50.i.err82.i_crit_edge ], [ %inc.i, %if.end8.i.i.i.err82.i_crit_edge ], [ %inc.i, %for.end.i.err82.i_crit_edge ], [ %inc.i, %if.end60.i.err82.i_crit_edge ], [ %inc.i, %if.end66.i.err82.i_crit_edge ], [ %inc.i, %if.end45.i.err82.i_crit_edge ]
  %err.2.i = phi i32 [ -22, %cleanup.i ], [ %call57.i, %if.end54.i.err82.i_crit_edge ], [ -22, %if.then80.i ], [ 0, %lor.lhs.false77.i.err82.i_crit_edge ], [ -22, %if.end50.i.err82.i_crit_edge ], [ -22, %if.end8.i.i.i.err82.i_crit_edge ], [ -22, %for.end.i.err82.i_crit_edge ], [ -22, %if.end60.i.err82.i_crit_edge ], [ -22, %if.end66.i.err82.i_crit_edge ], [ -22, %if.end45.i.err82.i_crit_edge ]
  %out1.0.i = phi ptr [ null, %cleanup.i ], [ %call9.i.i.i, %if.end54.i.err82.i_crit_edge ], [ %call9.i.i.i, %if.then80.i ], [ %call9.i.i.i, %lor.lhs.false77.i.err82.i_crit_edge ], [ %call9.i.i.i, %if.end50.i.err82.i_crit_edge ], [ null, %if.end8.i.i.i.err82.i_crit_edge ], [ null, %for.end.i.err82.i_crit_edge ], [ %call9.i.i.i, %if.end60.i.err82.i_crit_edge ], [ %call9.i.i.i, %if.end66.i.err82.i_crit_edge ], [ %call9.i.i.i, %if.end45.i.err82.i_crit_edge ]
  %in.0.i = phi ptr [ null, %cleanup.i ], [ %call46.i, %if.end54.i.err82.i_crit_edge ], [ %call46.i, %if.then80.i ], [ %call46.i, %lor.lhs.false77.i.err82.i_crit_edge ], [ %call46.i, %if.end50.i.err82.i_crit_edge ], [ null, %if.end8.i.i.i.err82.i_crit_edge ], [ null, %for.end.i.err82.i_crit_edge ], [ %call46.i, %if.end60.i.err82.i_crit_edge ], [ %call46.i, %if.end66.i.err82.i_crit_edge ], [ %call46.i, %if.end45.i.err82.i_crit_edge ]
  %res.0.i = phi ptr [ null, %cleanup.i ], [ %call51.i, %if.end54.i.err82.i_crit_edge ], [ %call51.i, %if.then80.i ], [ %call51.i, %lor.lhs.false77.i.err82.i_crit_edge ], [ null, %if.end50.i.err82.i_crit_edge ], [ null, %if.end8.i.i.i.err82.i_crit_edge ], [ null, %for.end.i.err82.i_crit_edge ], [ %call51.i, %if.end60.i.err82.i_crit_edge ], [ %call51.i, %if.end66.i.err82.i_crit_edge ], [ null, %if.end45.i.err82.i_crit_edge ]
  call void @mpi_free(ptr noundef %in.0.i) #11
  call void @mpi_free(ptr noundef %res.0.i) #11
  call void @kfree(ptr noundef %out1.0.i) #11
  %dec18.i = add i32 %i.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec18.i)
  %cmp8319.i = icmp sgt i32 %dec18.i, -1
  br i1 %cmp8319.i, label %err82.i.while.body.i_crit_edge, label %err82.i.digsig_verify_rsa.exit_crit_edge

err82.i.digsig_verify_rsa.exit_crit_edge:         ; preds = %err82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digsig_verify_rsa.exit

err82.i.while.body.i_crit_edge:                   ; preds = %err82.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %err82.i.while.body.i_crit_edge
  %dec20.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec18.i, %err82.i.while.body.i_crit_edge ]
  %arrayidx85.i = getelementptr [2 x ptr], ptr %pkey.i, i32 0, i32 %dec20.i
  %62 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx85.i, align 4
  call void @mpi_free(ptr noundef %63) #11
  %dec.i = add nsw i32 %dec20.i, -1
  %cmp83.not.i = icmp eq i32 %dec20.i, 0
  br i1 %cmp83.not.i, label %while.body.i.digsig_verify_rsa.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.digsig_verify_rsa.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digsig_verify_rsa.exit

digsig_verify_rsa.exit.thread:                    ; preds = %if.end13.i.digsig_verify_rsa.exit.thread_crit_edge, %if.end8.i.digsig_verify_rsa.exit.thread_crit_edge, %if.end3.i.digsig_verify_rsa.exit.thread_crit_edge, %if.end.i66.digsig_verify_rsa.exit.thread_crit_edge, %user_key_payload_locked.exit.i.digsig_verify_rsa.exit.thread_crit_edge
  call void @up_read(ptr noundef %sem.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pkey.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nret.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  br label %err38

digsig_verify_rsa.exit:                           ; preds = %while.body.i.digsig_verify_rsa.exit_crit_edge, %err82.i.digsig_verify_rsa.exit_crit_edge
  call void @up_read(ptr noundef %sem.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pkey.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nret.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %phi.cmp = icmp eq i32 %err.2.i, 0
  %spec.select = select i1 %phi.cmp, i32 0, i32 -22
  br label %err38

err38:                                            ; preds = %digsig_verify_rsa.exit, %digsig_verify_rsa.exit.thread, %if.end8.i.i.err38_crit_edge
  %err.0 = phi i32 [ -22, %if.end8.i.i.err38_crit_edge ], [ -22, %digsig_verify_rsa.exit.thread ], [ %spec.select, %digsig_verify_rsa.exit ]
  call void @key_put(ptr noundef %key.1) #11
  br label %cleanup

cleanup:                                          ; preds = %err38, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %err.0, %err38 ], [ -22, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hash) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @digsig_cleanup() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @shash, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %base.i.i) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @digsig_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0) #11
  store ptr %call, ptr @shash, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  %0 = load ptr, ptr @shash, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_read_from_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_get_nbits(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_powm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_get_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pkcs_1_v1_5_decode_emsa(ptr noundef readonly %msg, i32 noundef %msglen, i32 noundef %modulus_bitlen, ptr nocapture noundef writeonly %outlen) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %modulus_bitlen, 3
  %and = and i32 %modulus_bitlen, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  %add = add nuw nsw i32 %shr, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %msglen)
  %cmp = icmp ult i32 %add, %msglen
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add)
  %cmp1 = icmp ult i32 %add, 11
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2.not = icmp eq i8 %1, 0
  br i1 %cmp2.not, label %lor.lhs.false4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %arrayidx5 = getelementptr i8, ptr %msg, i32 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp7.not = icmp eq i8 %3, 1
  br i1 %cmp7.not, label %for.body.preheader, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false4
  %sub = add nsw i32 %add, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.047 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 2, %for.body.preheader ]
  %arrayidx13 = getelementptr i8, ptr %msg, i32 %i.047
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp15.not = icmp eq i8 %5, -1
  br i1 %cmp15.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %sub, %for.inc.for.end_crit_edge ], [ %i.047, %for.body.for.end_crit_edge ]
  %arrayidx19 = getelementptr i8, ptr %msg, i32 %i.0.lcssa
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp21.not = icmp eq i8 %7, 0
  br i1 %cmp21.not, label %if.end24, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %add27.neg = xor i32 %i.0.lcssa, -1
  %sub28 = add i32 %add27.neg, %msglen
  %8 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub28, ptr %outlen, align 4
  %add.ptr30 = getelementptr i8, ptr %arrayidx19, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %for.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr30, %if.end24 ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false4.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !25, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/digsig.c", i32 215, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/digsig.c", i32 230, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @digsig_verify._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @digsig_verify._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_digsig_verify, !9, !"__ksymtab_digsig_verify", i1 false, i1 false}
!9 = !{!"../lib/digsig.c", i32 257, i32 1}
!10 = !{ptr @__initcall__kmod_digsig__228_276_digsig_init6, !11, !"__initcall__kmod_digsig__228_276_digsig_init6", i1 false, i1 false}
!11 = !{!"../lib/digsig.c", i32 276, i32 1}
!12 = !{ptr @__exitcall_digsig_cleanup, !13, !"__exitcall_digsig_cleanup", i1 false, i1 false}
!13 = !{!"../lib/digsig.c", i32 277, i32 1}
!14 = !{ptr @__UNIQUE_ID_file229, !15, !"__UNIQUE_ID_file229", i1 false, i1 false}
!15 = !{!"../lib/digsig.c", i32 279, i32 1}
!16 = !{ptr @__UNIQUE_ID_license230, !15, !"__UNIQUE_ID_license230", i1 false, i1 false}
!17 = !{ptr @shash, !18, !"shash", i1 false, i1 false}
!18 = !{!"../lib/digsig.c", i32 28, i32 29}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/digsig.c", i32 261, i32 29}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/digsig.c", i32 263, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @digsig_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @digsig_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
