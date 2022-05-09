; ModuleID = '/llk/IR_all_yes/security/keys/user_defined.c_pt.bc'
source_filename = "../security/keys/user_defined.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+key_type_user\22, \22a\22\09"
module asm "\09.weak\09__crc_key_type_user\09\09\09\09"
module asm "\09.long\09__crc_key_type_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_user:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_user\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+key_type_logon\22, \22a\22\09"
module asm "\09.weak\09__crc_key_type_logon\09\09\09\09"
module asm "\09.long\09__crc_key_type_logon\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_logon:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_logon\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_logon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+user_preparse\22, \22a\22\09"
module asm "\09.weak\09__crc_user_preparse\09\09\09\09"
module asm "\09.long\09__crc_user_preparse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_preparse:\09\09\09\09\09"
module asm "\09.asciz \09\22user_preparse\22\09\09\09\09\09"
module asm "__kstrtabns_user_preparse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+user_free_preparse\22, \22a\22\09"
module asm "\09.weak\09__crc_user_free_preparse\09\09\09\09"
module asm "\09.long\09__crc_user_free_preparse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_free_preparse:\09\09\09\09\09"
module asm "\09.asciz \09\22user_free_preparse\22\09\09\09\09\09"
module asm "__kstrtabns_user_free_preparse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+user_update\22, \22a\22\09"
module asm "\09.weak\09__crc_user_update\09\09\09\09"
module asm "\09.long\09__crc_user_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_update:\09\09\09\09\09"
module asm "\09.asciz \09\22user_update\22\09\09\09\09\09"
module asm "__kstrtabns_user_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+user_revoke\22, \22a\22\09"
module asm "\09.weak\09__crc_user_revoke\09\09\09\09"
module asm "\09.long\09__crc_user_revoke\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22user_revoke\22\09\09\09\09\09"
module asm "__kstrtabns_user_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+user_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_user_destroy\09\09\09\09"
module asm "\09.long\09__crc_user_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22user_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_user_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+user_describe\22, \22a\22\09"
module asm "\09.weak\09__crc_user_describe\09\09\09\09"
module asm "\09.long\09__crc_user_describe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_describe:\09\09\09\09\09"
module asm "\09.asciz \09\22user_describe\22\09\09\09\09\09"
module asm "__kstrtabns_user_describe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+user_read\22, \22a\22\09"
module asm "\09.weak\09__crc_user_read\09\09\09\09"
module asm "\09.long\09__crc_user_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_read:\09\09\09\09\09"
module asm "\09.asciz \09\22user_read\22\09\09\09\09\09"
module asm "__kstrtabns_user_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.62, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.63, %union.anon.68, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.62 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.64, ptr, ptr, ptr }
%union.anon.64 = type { i32 }
%union.anon.68 = type { %union.key_payload }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@key_type_user = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr @user_preparse, ptr @user_free_preparse, ptr @generic_key_instantiate, ptr @user_update, ptr null, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @user_describe, ptr @user_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_key_type_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_user = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_user to i32), ptr @__kstrtab_key_type_user, ptr @__kstrtabns_key_type_user }, section "___ksymtab_gpl+key_type_user", align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"logon\00", [26 x i8] zeroinitializer }, align 32
@key_type_logon = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str.1, i32 0, i32 0, ptr @logon_vet_description, ptr @user_preparse, ptr @user_free_preparse, ptr @generic_key_instantiate, ptr @user_update, ptr null, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @user_describe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_key_type_logon = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_logon = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_logon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_logon to i32), ptr @__kstrtab_key_type_logon, ptr @__kstrtabns_key_type_logon }, section "___ksymtab_gpl+key_type_logon", align 4
@__kstrtab_user_preparse = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_preparse = external dso_local constant [0 x i8], align 1
@__ksymtab_user_preparse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_preparse to i32), ptr @__kstrtab_user_preparse, ptr @__kstrtabns_user_preparse }, section "___ksymtab_gpl+user_preparse", align 4
@__kstrtab_user_free_preparse = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_free_preparse = external dso_local constant [0 x i8], align 1
@__ksymtab_user_free_preparse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_free_preparse to i32), ptr @__kstrtab_user_free_preparse, ptr @__kstrtabns_user_free_preparse }, section "___ksymtab_gpl+user_free_preparse", align 4
@user_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"security/keys/user_defined.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_user_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_update = external dso_local constant [0 x i8], align 1
@__ksymtab_user_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_update to i32), ptr @__kstrtab_user_update, ptr @__kstrtabns_user_update }, section "___ksymtab_gpl+user_update", align 4
@__kstrtab_user_revoke = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_revoke = external dso_local constant [0 x i8], align 1
@__ksymtab_user_revoke = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_revoke to i32), ptr @__kstrtab_user_revoke, ptr @__kstrtabns_user_revoke }, section "___ksymtab+user_revoke", align 4
@__kstrtab_user_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_user_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_destroy to i32), ptr @__kstrtab_user_destroy, ptr @__kstrtabns_user_destroy }, section "___ksymtab_gpl+user_destroy", align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c": %u\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_user_describe = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_describe = external dso_local constant [0 x i8], align 1
@__ksymtab_user_describe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_describe to i32), ptr @__kstrtab_user_describe, ptr @__kstrtabns_user_describe }, section "___ksymtab_gpl+user_describe", align 4
@__kstrtab_user_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_read = external dso_local constant [0 x i8], align 1
@__ksymtab_user_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_read to i32), ptr @__kstrtab_user_read, ptr @__kstrtabns_user_read }, section "___ksymtab_gpl+user_read", align 4
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 24, i32 12 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"key_type_user\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 23, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 44, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"key_type_logon\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 43, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 114, i32 9 }
@___asan_gen_.25 = private constant [32 x i8] c"../security/keys/user_defined.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 162, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 53, i32 36 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_key_type_logon, ptr @__ksymtab_key_type_user, ptr @__ksymtab_user_describe, ptr @__ksymtab_user_destroy, ptr @__ksymtab_user_free_preparse, ptr @__ksymtab_user_preparse, ptr @__ksymtab_user_read, ptr @__ksymtab_user_revoke, ptr @__ksymtab_user_update, ptr @.str, ptr @key_type_user, ptr @.str.1, ptr @key_type_logon, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_user to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_logon to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @user_preparse(ptr nocapture noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen1, align 4
  %2 = add i32 %1, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %2)
  %3 = icmp ult i32 %2, -32767
  br i1 %3, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end8.i

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false3
  %add = add nuw nsw i32 %1, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #9
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %6 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %quotalen, align 8
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %7 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i, ptr %payload, align 8
  %conv = trunc i32 %1 to i16
  %datalen7 = getelementptr inbounds %struct.user_key_payload, ptr %call9.i, i32 0, i32 1
  %8 = ptrtoint ptr %datalen7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %datalen7, align 8
  %data8 = getelementptr inbounds %struct.user_key_payload, ptr %call9.i, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %11 = call ptr @memcpy(ptr %data8, ptr %10, i32 %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end8.i.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_free_preparse(ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload, align 8
  tail call void @kfree_sensitive(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @user_update(ptr noundef %key, ptr nocapture noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen, align 4
  %call = tail call i32 @key_payload_reserve(ptr noundef %key, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %expiry = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 6
  %2 = ptrtoint ptr %expiry to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %expiry, align 8
  %4 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %3, ptr %4, align 8
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp.i = icmp eq i16 %7, 1
  br i1 %cmp.i, label %do.body, label %if.end.do.body12_crit_edge

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.body:                                          ; preds = %if.end
  %sem = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #6
  %8 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i69.not = icmp eq i32 %9, 0
  br i1 %cmp.i69.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b68 = load i1, ptr @user_update.__warned, align 1
  br i1 %.b68, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @user_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 114, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %10 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.end, %if.end.do.body12_crit_edge
  %zap.0 = phi ptr [ %12, %do.end ], [ null, %if.end.do.body12_crit_edge ]
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %13 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %payload, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !45
  %15 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %15, align 4
  %17 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %payload, align 8
  %tobool53.not = icmp eq ptr %zap.0, null
  br i1 %tobool53.not, label %do.body12.cleanup_crit_edge, label %if.then54

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @call_rcu(ptr noundef nonnull %zap.0, ptr noundef nonnull @user_free_payload_rcu) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %do.body12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_revoke(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sem.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem.i, i32 noundef 4) #6
  %0 = ptrtoint ptr %sem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %entry.user_key_payload_locked.exit_crit_edge

entry.user_key_payload_locked.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_key_payload_locked.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_key_payload_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_key_payload_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 53, ptr noundef nonnull @.str.3) #6
  br label %user_key_payload_locked.exit

user_key_payload_locked.exit:                     ; preds = %if.then.i, %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, %entry.user_key_payload_locked.exit_crit_edge
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call1 = tail call i32 @key_payload_reserve(ptr noundef %key, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %user_key_payload_locked.exit.if.end36_crit_edge, label %do.body6

user_key_payload_locked.exit.if.end36_crit_edge:  ; preds = %user_key_payload_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.body6:                                         ; preds = %user_key_payload_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %2, align 4
  tail call void @call_rcu(ptr noundef nonnull %4, ptr noundef nonnull @user_free_payload_rcu) #6
  br label %if.end36

if.end36:                                         ; preds = %do.body6, %user_key_payload_locked.exit.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_destroy(ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree_sensitive(ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_describe(ptr noundef %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef %1) #6
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.i = icmp eq i16 %3, 1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %datalen = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 13
  %4 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %datalen, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %conv) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @user_read(ptr noundef %key, ptr noundef writeonly %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sem.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem.i, i32 noundef 4) #6
  %0 = ptrtoint ptr %sem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %entry.user_key_payload_locked.exit_crit_edge

entry.user_key_payload_locked.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_key_payload_locked.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_key_payload_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %user_key_payload_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 53, ptr noundef nonnull @.str.3) #6
  br label %user_key_payload_locked.exit

user_key_payload_locked.exit:                     ; preds = %if.then.i, %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, %entry.user_key_payload_locked.exit_crit_edge
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %datalen = getelementptr inbounds %struct.user_key_payload, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %datalen, align 8
  %conv = zext i16 %6 to i32
  %tobool.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.not = icmp eq i32 %buflen, 0
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %user_key_payload_locked.exit.if.end9_crit_edge, label %if.then

user_key_payload_locked.exit.if.end9_crit_edge:   ; preds = %user_key_payload_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %user_key_payload_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %buflen)
  %data = getelementptr inbounds %struct.user_key_payload, ptr %4, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %buffer, ptr %data, i32 %7)
  br label %if.end9

if.end9:                                          ; preds = %if.then, %user_key_payload_locked.exit.if.end9_crit_edge
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @logon_vet_description(ptr noundef readonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strchr(ptr noundef %desc, i32 noundef 58)
  %tobool.not = icmp eq ptr %call, null
  %cmp = icmp eq ptr %call, %desc
  %0 = or i1 %tobool.not, %cmp
  %retval.0 = select i1 %0, i32 -22, i32 0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_payload_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @user_free_payload_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_sensitive(ptr noundef %head) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/user_defined.c", i32 24, i32 12}
!2 = !{ptr @key_type_user, !3, !"key_type_user", i1 false, i1 false}
!3 = !{!"../security/keys/user_defined.c", i32 23, i32 17}
!4 = !{ptr @__ksymtab_key_type_user, !5, !"__ksymtab_key_type_user", i1 false, i1 false}
!5 = !{!"../security/keys/user_defined.c", i32 35, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/keys/user_defined.c", i32 44, i32 12}
!8 = !{ptr @key_type_logon, !9, !"key_type_logon", i1 false, i1 false}
!9 = !{!"../security/keys/user_defined.c", i32 43, i32 17}
!10 = !{ptr @__ksymtab_key_type_logon, !11, !"__ksymtab_key_type_logon", i1 false, i1 false}
!11 = !{!"../security/keys/user_defined.c", i32 54, i32 1}
!12 = !{ptr @__ksymtab_user_preparse, !13, !"__ksymtab_user_preparse", i1 false, i1 false}
!13 = !{!"../security/keys/user_defined.c", i32 78, i32 1}
!14 = !{ptr @__ksymtab_user_free_preparse, !15, !"__ksymtab_user_free_preparse", i1 false, i1 false}
!15 = !{!"../security/keys/user_defined.c", i32 87, i32 1}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../security/keys/user_defined.c", i32 114, i32 9}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__ksymtab_user_update, !21, !"__ksymtab_user_update", i1 false, i1 false}
!21 = !{!"../security/keys/user_defined.c", i32 122, i32 1}
!22 = !{ptr @__ksymtab_user_revoke, !23, !"__ksymtab_user_revoke", i1 false, i1 false}
!23 = !{!"../security/keys/user_defined.c", i32 141, i32 1}
!24 = !{ptr @__ksymtab_user_destroy, !25, !"__ksymtab_user_destroy", i1 false, i1 false}
!25 = !{!"../security/keys/user_defined.c", i32 153, i32 1}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/keys/user_defined.c", i32 162, i32 17}
!28 = !{ptr @__ksymtab_user_describe, !29, !"__ksymtab_user_describe", i1 false, i1 false}
!29 = !{!"../security/keys/user_defined.c", i32 165, i32 1}
!30 = !{ptr @__ksymtab_user_read, !31, !"__ksymtab_user_read", i1 false, i1 false}
!31 = !{!"../security/keys/user_defined.c", i32 190, i32 1}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2152669375}
!45 = !{i64 2153498043}
