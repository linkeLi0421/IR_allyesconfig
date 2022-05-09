; ModuleID = '/llk/IR_all_yes/security/keys/trusted-keys/trusted_core.c_pt.bc'
source_filename = "../security/keys/trusted-keys/trusted_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+key_type_trusted\22, \22a\22\09"
module asm "\09.weak\09__crc_key_type_trusted\09\09\09\09"
module asm "\09.long\09__crc_key_type_trusted\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_trusted:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_trusted\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_trusted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.static_call_key = type { ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.trusted_key_source = type { ptr, ptr }
%struct.trusted_key_ops = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.trusted_key_payload = type { %struct.callback_head, i32, i32, i8, i8, [129 x i8], [512 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.21, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.22, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.23, %union.anon.27, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.21 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.22 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.23 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.24, ptr, ptr, ptr }
%union.anon.24 = type { i32 }
%union.anon.27 = type { %union.key_payload }
%struct.substring_t = type { ptr, ptr }

@__param_str_source = internal constant [15 x i8] c"trusted.source\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@trusted_key_source = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_source = internal constant %struct.kernel_param { ptr @__param_str_source, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @trusted_key_source } }, section "__param", align 4
@__UNIQUE_ID_sourcetype243 = internal constant [30 x i8] c"trusted.parmtype=source:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_source244 = internal constant [60 x i8] c"trusted.parm=source:Select trusted keys source (tpm or tee)\00", section ".modinfo", align 1
@__SCK__trusted_key_init = dso_local global %struct.static_call_key zeroinitializer, align 4
@__SCK__trusted_key_seal = dso_local global %struct.static_call_key zeroinitializer, align 4
@__SCK__trusted_key_unseal = dso_local global %struct.static_call_key zeroinitializer, align 4
@__SCK__trusted_key_get_random = dso_local global %struct.static_call_key zeroinitializer, align 4
@__SCK__trusted_key_exit = dso_local global %struct.static_call_key zeroinitializer, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trusted\00", [24 x i8] zeroinitializer }, align 32
@key_type_trusted = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @trusted_instantiate, ptr @trusted_update, ptr null, ptr null, ptr null, ptr @trusted_destroy, ptr @user_describe, ptr @trusted_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_key_type_trusted = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_trusted = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_trusted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_trusted to i32), ptr @__kstrtab_key_type_trusted, ptr @__kstrtabns_key_type_trusted }, section "___ksymtab_gpl+key_type_trusted", align 4
@__initcall__kmod_trusted__251_357_init_trusted7 = internal global ptr @init_trusted, section ".initcall7.init", align 4
@__exitcall_cleanup_trusted = internal global ptr @cleanup_trusted, section ".exitcall.exit", align 4
@__UNIQUE_ID_file252 = internal constant [48 x i8] c"trusted.file=security/keys/trusted-keys/trusted\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [20 x i8] c"trusted.license=GPL\00", section ".modinfo", align 1
@trusted_instantiate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016trusted_key: key_unseal failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"trusted_instantiate\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"security/keys/trusted-keys/trusted_core.c\00", [54 x i8] zeroinitializer }, align 32
@trusted_instantiate._entry_ptr = internal global ptr @trusted_instantiate._entry, section ".printk_index", align 4
@trusted_instantiate._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016trusted_key: key_create failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@trusted_instantiate._entry_ptr.6 = internal global ptr @trusted_instantiate._entry.4, section ".printk_index", align 4
@trusted_instantiate._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016trusted_key: key_seal failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@trusted_instantiate._entry_ptr.9 = internal global ptr @trusted_instantiate._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@migratable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" \09\00", [29 x i8] zeroinitializer }, align 32
@key_tokens = internal constant { [4 x %struct.match_token], [32 x i8] } { [4 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.11 }, %struct.match_token { i32 2, ptr @.str.12 }, %struct.match_token { i32 3, ptr @.str.13 }, %struct.match_token zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"new\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"update\00", [25 x i8] zeroinitializer }, align 32
@trusted_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.14, ptr @.str.3, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trusted_update\00", [17 x i8] zeroinitializer }, align 32
@trusted_update._entry_ptr = internal global ptr @trusted_update._entry, section ".printk_index", align 4
@trusted_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@trusted_key_sources = internal constant { [2 x %struct.trusted_key_source], [16 x i8] } { [2 x %struct.trusted_key_source] [%struct.trusted_key_source { ptr @.str.16, ptr @trusted_key_tpm_ops }, %struct.trusted_key_source { ptr @.str.17, ptr @trusted_key_tee_ops }], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tpm\00", [28 x i8] zeroinitializer }, align 32
@trusted_key_tpm_ops = external dso_local global %struct.trusted_key_ops, align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tee\00", [28 x i8] zeroinitializer }, align 32
@trusted_key_tee_ops = external dso_local global %struct.trusted_key_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"trusted_key_source\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 25, i32 14 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 306, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"key_type_trusted\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 305, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 176, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 186, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 193, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"migratable\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 45, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 74, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"key_tokens\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 52, i32 28 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 53, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 54, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 55, i32 15 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 262, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 285, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"trusted_key_sources\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 29, i32 40 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 31, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [45 x i8] c"../security/keys/trusted-keys/trusted_core.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 34, i32 4 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_source244, ptr @__UNIQUE_ID_sourcetype243, ptr @__exitcall_cleanup_trusted, ptr @__initcall__kmod_trusted__251_357_init_trusted7, ptr @__ksymtab_key_type_trusted, ptr @__param_source, ptr @cleanup_trusted, ptr @trusted_instantiate._entry, ptr @trusted_instantiate._entry.4, ptr @trusted_instantiate._entry.7, ptr @trusted_instantiate._entry_ptr, ptr @trusted_instantiate._entry_ptr.6, ptr @trusted_instantiate._entry_ptr.9, ptr @trusted_update._entry, ptr @trusted_update._entry_ptr, ptr @trusted_key_source, ptr @.str, ptr @key_type_trusted, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @migratable, ptr @.str.10, ptr @key_tokens, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @trusted_key_sources, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_key_source to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_trusted to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_instantiate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_instantiate._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_instantiate._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @migratable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_tokens to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_key_sources to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_instantiate(ptr noundef %key, ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  %datablob = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datablob) #8
  %2 = add i32 %1, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %2)
  %3 = icmp ult i32 %2, -32767
  br i1 %3, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end8.i

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false3
  %add = add nuw nsw i32 %1, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %6 = ptrtoint ptr %datablob to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %datablob, align 4
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %9 = call ptr @memcpy(ptr %call9.i, ptr %8, i32 %1)
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = tail call i32 @key_payload_reserve(ptr noundef %key, i32 noundef 660) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i121 = icmp slt i32 %call.i, 0
  br i1 %cmp.i121, label %if.end6.out.thread_crit_edge, label %if.end.i122

if.end6.out.thread_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end.i122:                                      ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 660) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i122.out.thread_crit_edge, label %if.end11

if.end.i122.out.thread_crit_edge:                 ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end11:                                         ; preds = %if.end.i122
  %12 = load i8, ptr @migratable, align 1
  %migratable.i = getelementptr inbounds %struct.trusted_key_payload, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %migratable.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %migratable.i, align 8
  %call12 = call fastcc i32 @datablob_parse(ptr noundef nonnull %datablob, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.out.thread_crit_edge, label %if.end15

if.end11.out.thread_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end15:                                         ; preds = %if.end11
  %14 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %if.end15.out.thread_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb21
  ]

if.end15.out.thread_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

sw.bb:                                            ; preds = %if.end15
  %15 = load ptr, ptr @__SCK__trusted_key_unseal, align 4
  %16 = ptrtoint ptr %datablob to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %datablob, align 4
  %call16 = call i32 %15(ptr noundef nonnull %call7.i.i.i, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call16) #13
  br label %out.thread

sw.bb21:                                          ; preds = %if.end15
  %key_len22 = getelementptr inbounds %struct.trusted_key_payload, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %key_len22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_len22, align 8
  %20 = load ptr, ptr @__SCK__trusted_key_get_random, align 4
  %key23 = getelementptr inbounds %struct.trusted_key_payload, ptr %call7.i.i.i, i32 0, i32 5
  %call24 = call i32 %20(ptr noundef %key23, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %sw.bb21.out.thread_crit_edge, label %if.end27

sw.bb21.out.thread_crit_edge:                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end27:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_cmp4(i32 %call24, i32 %19)
  %cmp28.not = icmp eq i32 %call24, %19
  br i1 %cmp28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call24) #13
  br label %out.thread

if.end35:                                         ; preds = %if.end27
  %21 = load ptr, ptr @__SCK__trusted_key_seal, align 4
  %22 = ptrtoint ptr %datablob to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %datablob, align 4
  %call36 = call i32 %21(ptr noundef nonnull %call7.i.i.i, ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call36) #13
  br label %out.thread

out.thread:                                       ; preds = %do.end41, %do.end32, %sw.bb21.out.thread_crit_edge, %do.end, %if.end15.out.thread_crit_edge, %if.end11.out.thread_crit_edge, %if.end.i122.out.thread_crit_edge, %if.end6.out.thread_crit_edge
  %p.0.i125.ph = phi ptr [ %call7.i.i.i, %if.end15.out.thread_crit_edge ], [ %call7.i.i.i, %if.end11.out.thread_crit_edge ], [ %call7.i.i.i, %do.end ], [ %call7.i.i.i, %do.end41 ], [ %call7.i.i.i, %do.end32 ], [ %call7.i.i.i, %sw.bb21.out.thread_crit_edge ], [ null, %if.end6.out.thread_crit_edge ], [ null, %if.end.i122.out.thread_crit_edge ]
  %ret.0.ph = phi i32 [ -22, %if.end15.out.thread_crit_edge ], [ %call12, %if.end11.out.thread_crit_edge ], [ %call16, %do.end ], [ %call36, %do.end41 ], [ -5, %do.end32 ], [ %call24, %sw.bb21.out.thread_crit_edge ], [ -12, %if.end6.out.thread_crit_edge ], [ -12, %if.end.i122.out.thread_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i) #8
  br label %if.else86

out:                                              ; preds = %if.end35.out_crit_edge, %sw.bb.out_crit_edge
  %ret.0 = phi i32 [ %call36, %if.end35.out_crit_edge ], [ %call16, %sw.bb.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool45.not = icmp eq i32 %ret.0, 0
  br i1 %tobool45.not, label %do.body48, label %out.if.else86_crit_edge

out.if.else86_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else86

do.body48:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !79
  %24 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i.i, ptr %24, align 4
  br label %cleanup

if.else86:                                        ; preds = %out.if.else86_crit_edge, %out.thread
  %ret.0130 = phi i32 [ %ret.0.ph, %out.thread ], [ %ret.0, %out.if.else86_crit_edge ]
  %p.0.i125129 = phi ptr [ %p.0.i125.ph, %out.thread ], [ %call7.i.i.i, %out.if.else86_crit_edge ]
  call void @kfree_sensitive(ptr noundef %p.0.i125129) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else86, %do.body48, %if.end8.i.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %ret.0130, %if.else86 ], [ 0, %do.body48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datablob) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_update(ptr noundef %key, ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  %datablob = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen1 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datablob) #8
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i106 = icmp slt i16 %3, 0
  br i1 %cmp.i106, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %migratable = getelementptr inbounds %struct.trusted_key_payload, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %migratable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %migratable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = add i32 %1, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %9)
  %10 = icmp ult i32 %9, -32767
  br i1 %10, label %if.end3.cleanup_crit_edge, label %lor.lhs.false5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end3
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8.i

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false5
  %add = add nuw nsw i32 %1, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %13 = ptrtoint ptr %datablob to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %datablob, align 4
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %if.end8.i.cleanup_crit_edge, label %if.end12

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i
  %call.i = tail call i32 @key_payload_reserve(ptr noundef %key, i32 noundef 660) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i107 = icmp slt i32 %call.i, 0
  br i1 %cmp.i107, label %if.end12.out_crit_edge, label %if.end.i108

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i108:                                      ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 660) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i108.out_crit_edge, label %if.end16

if.end.i108.out_crit_edge:                        ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %if.end.i108
  %15 = load i8, ptr @migratable, align 1
  %migratable.i = getelementptr inbounds %struct.trusted_key_payload, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %migratable.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %migratable.i, align 8
  %17 = ptrtoint ptr %datablob to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %datablob, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %21 = call ptr @memcpy(ptr %18, ptr %20, i32 %1)
  %arrayidx18 = getelementptr i8, ptr %18, i32 %1
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx18, align 1
  %call19 = call fastcc i32 @datablob_parse(ptr noundef nonnull %datablob, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 3
  br i1 %cmp20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i) #8
  br label %out

if.end22:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %migratable to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %migratable, align 4
  %25 = ptrtoint ptr %migratable.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %migratable.i, align 8
  %key_len = getelementptr inbounds %struct.trusted_key_payload, ptr %6, i32 0, i32 1
  %26 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key_len, align 4
  %key_len25 = getelementptr inbounds %struct.trusted_key_payload, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %key_len25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %key_len25, align 8
  %key26 = getelementptr inbounds %struct.trusted_key_payload, ptr %call7.i.i.i, i32 0, i32 5
  %key27 = getelementptr inbounds %struct.trusted_key_payload, ptr %6, i32 0, i32 5
  %29 = load i32, ptr %key_len, align 4
  %30 = call ptr @memcpy(ptr %key26, ptr %key27, i32 %29)
  %31 = load ptr, ptr @__SCK__trusted_key_seal, align 4
  %32 = ptrtoint ptr %datablob to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %datablob, align 4
  %call30 = call i32 %31(ptr noundef nonnull %call7.i.i.i, ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end, label %do.body36

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call30) #13
  call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i) #8
  br label %out

do.body36:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i.i, ptr %4, align 4
  call void @call_rcu(ptr noundef %6, ptr noundef nonnull @trusted_rcu_free) #8
  br label %out

out:                                              ; preds = %do.body36, %do.end, %if.then21, %if.end.i108.out_crit_edge, %if.end12.out_crit_edge
  %ret.0 = phi i32 [ -22, %if.then21 ], [ %call30, %do.end ], [ %call30, %do.body36 ], [ -12, %if.end12.out_crit_edge ], [ -12, %if.end.i108.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -126, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datablob) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trusted_destroy(ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree_sensitive(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_describe(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_read(ptr noundef %key, ptr noundef writeonly %buffer, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sem = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #8
  %0 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b27 = load i1, ptr @trusted_read.__warned, align 1
  br i1 %.b27, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trusted_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 285, ptr noundef nonnull @.str.15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %tobool8.not = icmp eq ptr %buffer, null
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true9:                                   ; preds = %if.end7
  %blob_len = getelementptr inbounds %struct.trusted_key_payload, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %blob_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blob_len, align 4
  %mul = shl i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %buflen)
  %cmp.not = icmp ugt i32 %mul, %buflen
  br i1 %cmp.not, label %land.lhs.true9.if.end14_crit_edge, label %for.cond.preheader

land.lhs.true9.if.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.cond.preheader:                               ; preds = %land.lhs.true9
  %7 = ptrtoint ptr %blob_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blob_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1229.not = icmp eq i32 %8, 0
  br i1 %cmp1229.not, label %for.cond.preheader.if.end14_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end14_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bufp.030 = phi ptr [ %incdec.ptr4.i, %for.body.for.body_crit_edge ], [ %buffer, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.trusted_key_payload, ptr %4, i32 0, i32 6, i32 %i.031
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv.i28 = zext i8 %10 to i32
  %11 = lshr i32 %conv.i28, 4
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %bufp.030, i32 1
  %14 = ptrtoint ptr %bufp.030 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %bufp.030, align 1
  %and2.i = and i32 %conv.i28, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx3.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %bufp.030, i32 2
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %incdec.ptr.i, align 1
  %inc = add nuw i32 %i.031, 1
  %18 = ptrtoint ptr %blob_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blob_len, align 4
  %cmp12 = icmp ult i32 %inc, %19
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.if.end14_crit_edge

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end14:                                         ; preds = %for.body.if.end14_crit_edge, %for.cond.preheader.if.end14_crit_edge, %land.lhs.true9.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %blob_len15 = getelementptr inbounds %struct.trusted_key_payload, ptr %4, i32 0, i32 2
  %20 = ptrtoint ptr %blob_len15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blob_len15, align 4
  %mul16 = shl i32 %21, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul16, %if.end14 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_trusted() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @__SCK__trusted_key_exit, align 4
  tail call void %0() #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_trusted() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %ret.042 = phi i32 [ 0, %entry ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %0 = load ptr, ptr @trusted_key_source, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [2 x %struct.trusted_key_source], ptr @trusted_key_sources, i32 0, i32 %i.043
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strlen(ptr noundef %2) #14
  %call3 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %ops = getelementptr [2 x %struct.trusted_key_source], ptr @trusted_key_sources, i32 0, i32 %i.043, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %init = getelementptr inbounds %struct.trusted_key_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init, align 4
  store volatile ptr %6, ptr @__SCK__trusted_key_init, align 4
  %seal = getelementptr inbounds %struct.trusted_key_ops, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %seal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %seal, align 4
  store volatile ptr %8, ptr @__SCK__trusted_key_seal, align 4
  %unseal = getelementptr inbounds %struct.trusted_key_ops, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %unseal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unseal, align 4
  store volatile ptr %10, ptr @__SCK__trusted_key_unseal, align 4
  %get_random = getelementptr inbounds %struct.trusted_key_ops, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %get_random to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_random, align 4
  store volatile ptr %12, ptr @__SCK__trusted_key_get_random, align 4
  %exit = getelementptr inbounds %struct.trusted_key_ops, ptr %4, i32 0, i32 5
  %13 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exit, align 4
  store volatile ptr %14, ptr @__SCK__trusted_key_exit, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %4, align 4
  store i8 %16, ptr @migratable, align 1
  %call20 = tail call i32 %6() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end.for.end.thread_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.042, %land.lhs.true.for.inc_crit_edge ], [ %call20, %if.end.for.inc_crit_edge ]
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %ret.1)
  %cmp24 = icmp eq i32 %ret.1, -19
  %spec.select = select i1 %cmp24, i32 0, i32 %ret.1
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end.for.end.thread_crit_edge
  %17 = phi i32 [ %spec.select, %for.end ], [ 0, %if.end.for.end.thread_crit_edge ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @datablob_parse(ptr noundef %datablob, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %args = alloca [3 x %struct.substring_t], align 4
  %keylen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #8
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %keylen) #8
  %1 = ptrtoint ptr %keylen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %keylen, align 4, !annotation !82
  %call = tail call ptr @strsep(ptr noundef %datablob, ptr noundef nonnull @.str.10) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @match_token(ptr noundef nonnull %call, ptr noundef nonnull @key_tokens, ptr noundef nonnull %args) #8
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call1, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb28
    i32 0, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %call2 = call ptr @strsep(ptr noundef %datablob, ptr noundef nonnull @.str.10) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %sw.bb.cleanup_crit_edge, label %if.end5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %call.i = call i32 @_kstrtol(ptr noundef nonnull %call2, i32 noundef 10, ptr noundef nonnull %keylen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %3 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %keylen, align 4
  %5 = add i32 %4, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -97, i32 %5)
  %6 = icmp ult i32 %5, -97
  br i1 %6, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %key_len = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %key_len, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %call13 = call ptr @strsep(ptr noundef %datablob, ptr noundef nonnull @.str.10) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %sw.bb12.cleanup_crit_edge, label %if.end16

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %sw.bb12
  %call17 = call i32 @strlen(ptr noundef nonnull %call13) #14
  %div48 = lshr i32 %call17, 1
  %blob_len = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 2
  %8 = ptrtoint ptr %blob_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div48, ptr %blob_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %call17)
  %cmp19 = icmp ugt i32 %call17, 1025
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %blob = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 6
  %call24 = call i32 @hex2bin(ptr noundef %blob, ptr noundef nonnull %call13, i32 noundef %div48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end21.cleanup_crit_edge, label %if.end21.sw.epilog_crit_edge

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %if.end21.sw.epilog_crit_edge, %if.end11, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.sw.epilog_crit_edge ], [ 3, %sw.bb28 ], [ 1, %if.end11 ], [ 2, %if.end21.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %keylen) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_payload_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trusted_rcu_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_sensitive(ptr noundef %rcu) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !63, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__param_source, !1, !"__param_source", i1 false, i1 false}
!1 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_sourcetype243, !1, !"__UNIQUE_ID_sourcetype243", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_source244, !4, !"__UNIQUE_ID_source244", i1 false, i1 false}
!4 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 27, i32 1}
!5 = !{ptr @__SCK__trusted_key_init, !6, !"__SCK__trusted_key_init", i1 false, i1 false}
!6 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 38, i32 1}
!7 = !{ptr @__SCK__trusted_key_seal, !8, !"__SCK__trusted_key_seal", i1 false, i1 false}
!8 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 39, i32 1}
!9 = !{ptr @__SCK__trusted_key_unseal, !10, !"__SCK__trusted_key_unseal", i1 false, i1 false}
!10 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 40, i32 1}
!11 = !{ptr @__SCK__trusted_key_get_random, !12, !"__SCK__trusted_key_get_random", i1 false, i1 false}
!12 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 42, i32 1}
!13 = !{ptr @__SCK__trusted_key_exit, !14, !"__SCK__trusted_key_exit", i1 false, i1 false}
!14 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 44, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 306, i32 10}
!17 = !{ptr @key_type_trusted, !18, !"key_type_trusted", i1 false, i1 false}
!18 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 305, i32 17}
!19 = !{ptr @__ksymtab_key_type_trusted, !20, !"__ksymtab_key_type_trusted", i1 false, i1 false}
!20 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 313, i32 1}
!21 = !{ptr @__initcall__kmod_trusted__251_357_init_trusted7, !22, !"__initcall__kmod_trusted__251_357_init_trusted7", i1 false, i1 false}
!22 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 357, i32 1}
!23 = !{ptr @__exitcall_cleanup_trusted, !24, !"__exitcall_cleanup_trusted", i1 false, i1 false}
!24 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 358, i32 1}
!25 = !{ptr @__UNIQUE_ID_file252, !26, !"__UNIQUE_ID_file252", i1 false, i1 false}
!26 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 360, i32 1}
!27 = !{ptr @__UNIQUE_ID_license253, !26, !"__UNIQUE_ID_license253", i1 false, i1 false}
!28 = !{ptr @trusted_key_source, !29, !"trusted_key_source", i1 false, i1 false}
!29 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 25, i32 14}
!30 = !{ptr @__param_str_source, !1, !"__param_str_source", i1 false, i1 false}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 176, i32 4}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @trusted_instantiate._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @trusted_instantiate._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 186, i32 4}
!39 = !{ptr @trusted_instantiate._entry.4, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @trusted_instantiate._entry_ptr.6, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 193, i32 4}
!43 = !{ptr @trusted_instantiate._entry.7, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @trusted_instantiate._entry_ptr.9, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @migratable, !46, !"migratable", i1 false, i1 false}
!46 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 45, i32 22}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 74, i32 23}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 53, i32 12}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 54, i32 13}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 55, i32 15}
!55 = !{ptr @key_tokens, !56, !"key_tokens", i1 false, i1 false}
!56 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 52, i32 28}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 262, i32 3}
!59 = !{ptr @trusted_update._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @trusted_update._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 285, i32 6}
!63 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 31, i32 4}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 34, i32 4}
!68 = !{ptr @trusted_key_sources, !69, !"trusted_key_sources", i1 false, i1 false}
!69 = !{!"../security/keys/trusted-keys/trusted_core.c", i32 29, i32 40}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2154739820}
!80 = !{i64 2149415864}
!81 = !{i64 2154752109}
!82 = !{!"auto-init"}
