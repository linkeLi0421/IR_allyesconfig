; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_init.c_pt.bc'
source_filename = "../security/integrity/ima/ima_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.integrity_iint_cache = type { %struct.rb_node, %struct.mutex, ptr, i64, i32, i32, i32, i24, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ima_event_data = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.anon.77 = type { %struct.ima_digest_data, [64 x i8] }
%struct.ima_digest_data = type { i8, i8, %union.anon.74, [0 x i8] }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i8, i8 }

@boot_aggregate_name = dso_local constant { [15 x i8], [17 x i8] } { [15 x i8] c"boot_aggregate\00", [17 x i8] zeroinitializer }, align 32
@ima_policy_flag = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"/etc/keys/x509_ima.der\00", [41 x i8] zeroinitializer }, align 32
@ima_tpm_chip = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ima_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ima: No TPM chip found, activating TPM-bypass!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ima_init\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/integrity/ima/ima_init.c\00", [62 x i8] zeroinitializer }, align 32
@ima_init._entry_ptr = internal global ptr @ima_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kernel_info\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel_version\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.17.0\00", [25 x i8] zeroinitializer }, align 32
@ima_add_boot_aggregate.op = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"add_boot_aggregate\00", [45 x i8] zeroinitializer }, align 32
@ima_hash_algo = external dso_local local_unnamed_addr global i32, section ".data..ro_after_init", align 4
@hash_digest_size = external dso_local local_unnamed_addr constant [20 x i32], align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hashing_error\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alloc_entry\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"store_entry\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"boot_aggregate_name\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 24, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 110, i32 45 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"ima_tpm_chip\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 25, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 125, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 156, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 156, i32 43 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 157, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 44, i32 20 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 78, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 85, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [37 x i8] c"../security/integrity/ima/ima_init.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 94, i32 17 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @ima_init._entry, ptr @ima_init._entry_ptr, ptr @boot_aggregate_name, ptr @.str, ptr @ima_tpm_chip, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ima_add_boot_aggregate.op, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_aggregate_name to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_tpm_chip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_add_boot_aggregate.op to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_load_x509() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %0 = load i32, ptr @ima_policy_flag, align 4
  %and = and i32 %0, 4
  %and1 = and i32 %0, -5
  store i32 %and1, ptr @ima_policy_flag, align 4
  %call = tail call i32 @integrity_load_x509(i32 noundef 1, ptr noundef nonnull @.str) #7
  tail call void @evm_load_x509() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %1 = load i32, ptr @ima_policy_flag, align 4
  %or = or i32 %1, %and
  store i32 %or, ptr @ima_policy_flag, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @integrity_load_x509(i32 noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @evm_load_x509() local_unnamed_addr #2 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tpm_default_chip() #4
  store ptr %call, ptr @ima_tpm_chip, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @integrity_init_keyring(i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ima_init_crypto() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @ima_init_template() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call13 = tail call i32 @ima_init_digests() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @ima_add_boot_aggregate() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  tail call void @ima_init_policy() #4
  %call21 = tail call i32 @ima_fs_init() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ima_init_key_queue() #4
  %call25 = tail call i32 @ima_measure_critical_data(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 6, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpm_default_chip() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @integrity_init_keyring(i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_init_crypto() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_init_template() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ima_init_digests() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ima_add_boot_aggregate() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %entry1 = alloca ptr, align 4
  %tmp_iint = alloca %struct.integrity_iint_cache, align 8
  %event_data = alloca %struct.ima_event_data, align 4
  %hash = alloca %struct.anon.77, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #4
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry1, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %tmp_iint) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %event_data) #4
  %1 = getelementptr inbounds i8, ptr %event_data, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 32)
  %3 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tmp_iint, ptr %event_data, align 4
  %filename = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 2
  %4 = ptrtoint ptr %filename to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @boot_aggregate_name, ptr %filename, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %hash) #4
  %5 = call ptr @memset(ptr %tmp_iint, i32 0, i32 144)
  %6 = getelementptr inbounds i8, ptr %hash, i32 2
  %7 = call ptr @memset(ptr %6, i32 0, i32 66)
  %ima_hash = getelementptr inbounds %struct.integrity_iint_cache, ptr %tmp_iint, i32 0, i32 8
  %8 = ptrtoint ptr %ima_hash to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hash, ptr %ima_hash, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %9 = load i32, ptr @ima_hash_algo, align 4
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %hash to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %hash, align 1
  %arrayidx = getelementptr [20 x i32], ptr @hash_digest_size, i32 0, i32 %9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %conv4 = trunc i32 %12 to i8
  %length = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %length, align 1
  %14 = load ptr, ptr @ima_tpm_chip, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %entry
  %call = call i32 @ima_calc_boot_aggregate(ptr noundef nonnull %hash) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.err_out_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then.err_out_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = call i32 @ima_alloc_init_template(ptr noundef nonnull %event_data, ptr noundef nonnull %entry1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.err_out_crit_edge, label %if.end14

if.end9.err_out_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out

if.end14:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry1, align 4
  %call15 = call i32 @ima_store_template(ptr noundef %16, i32 noundef 0, ptr noundef null, ptr noundef nonnull @boot_aggregate_name, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entry1, align 4
  call void @ima_free_template_entry(ptr noundef %18) #4
  br label %err_out

err_out:                                          ; preds = %if.then18, %if.end9.err_out_crit_edge, %if.then.err_out_crit_edge
  %audit_cause.0 = phi ptr [ @.str.10, %if.then18 ], [ @.str.8, %if.then.err_out_crit_edge ], [ @.str.9, %if.end9.err_out_crit_edge ]
  %result.0 = phi i32 [ %call15, %if.then18 ], [ %call, %if.then.err_out_crit_edge ], [ %call10, %if.end9.err_out_crit_edge ]
  call void @integrity_audit_msg(i32 noundef 1804, ptr noundef null, ptr noundef nonnull @boot_aggregate_name, ptr noundef nonnull @ima_add_boot_aggregate.op, ptr noundef nonnull %audit_cause.0, i32 noundef %result.0, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %err_out ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %hash) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %event_data) #4
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp_iint) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_init_policy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_fs_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_init_key_queue() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_measure_critical_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_calc_boot_aggregate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_alloc_init_template(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_store_template(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_free_template_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_msg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @boot_aggregate_name, !1, !"boot_aggregate_name", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_init.c", i32 24, i32 12}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/integrity/ima/ima_init.c", i32 110, i32 45}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/integrity/ima/ima_init.c", i32 125, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ima_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ima_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/ima/ima_init.c", i32 156, i32 28}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/integrity/ima/ima_init.c", i32 156, i32 43}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/ima/ima_init.c", i32 157, i32 7}
!16 = !{ptr @ima_tpm_chip, !17, !"ima_tpm_chip", i1 false, i1 false}
!17 = !{!"../security/integrity/ima/ima_init.c", i32 25, i32 18}
!18 = !{ptr @ima_add_boot_aggregate.op, !19, !"op", i1 false, i1 false}
!19 = !{!"../security/integrity/ima/ima_init.c", i32 44, i32 20}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/integrity/ima/ima_init.c", i32 45, i32 28}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/integrity/ima/ima_init.c", i32 78, i32 18}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/integrity/ima/ima_init.c", i32 85, i32 17}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/integrity/ima/ima_init.c", i32 94, i32 17}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
