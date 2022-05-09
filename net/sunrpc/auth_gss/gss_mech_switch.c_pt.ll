; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_mech_switch.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_mech_switch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gss_mech_register\22, \22a\22\09"
module asm "\09.weak\09__crc_gss_mech_register\09\09\09\09"
module asm "\09.long\09__crc_gss_mech_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_mech_register:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_mech_register\22\09\09\09\09\09"
module asm "__kstrtabns_gss_mech_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gss_mech_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_gss_mech_unregister\09\09\09\09"
module asm "\09.long\09__crc_gss_mech_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_mech_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_mech_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_gss_mech_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gss_mech_get\22, \22a\22\09"
module asm "\09.weak\09__crc_gss_mech_get\09\09\09\09"
module asm "\09.long\09__crc_gss_mech_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_mech_get:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_mech_get\22\09\09\09\09\09"
module asm "__kstrtabns_gss_mech_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gss_pseudoflavor_to_service\22, \22a\22\09"
module asm "\09.weak\09__crc_gss_pseudoflavor_to_service\09\09\09\09"
module asm "\09.long\09__crc_gss_pseudoflavor_to_service\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_pseudoflavor_to_service:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_pseudoflavor_to_service\22\09\09\09\09\09"
module asm "__kstrtabns_gss_pseudoflavor_to_service:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gss_mech_put\22, \22a\22\09"
module asm "\09.weak\09__crc_gss_mech_put\09\09\09\09"
module asm "\09.long\09__crc_gss_mech_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_mech_put:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_mech_put\22\09\09\09\09\09"
module asm "__kstrtabns_gss_mech_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.125 }
%struct.atomic_t = type { i32 }
%union.anon.125 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.gss_api_mech = type { %struct.list_head, ptr, %struct.rpcsec_gss_oid, ptr, ptr, i32, ptr, ptr }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.pf_desc = type { i32, i32, i32, ptr, ptr, ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rpcsec_gss_info = type { %struct.rpcsec_gss_oid, i32, i32 }
%struct.gss_api_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gss_ctx = type { ptr, ptr, i32, i32 }

@registered_mechs_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@registered_mechs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @registered_mechs, ptr @registered_mechs }, [24 x i8] zeroinitializer }, align 32
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@gss_mech_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RPC:       registered gss mechanism %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gss_mech_register\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/sunrpc/auth_gss/gss_mech_switch.c\00", [58 x i8] zeroinitializer }, align 32
@gss_mech_register._entry_ptr = internal global ptr @gss_mech_register._entry, section ".printk_index", align 4
@__kstrtab_gss_mech_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_mech_register = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_mech_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_mech_register to i32), ptr @__kstrtab_gss_mech_register, ptr @__kstrtabns_gss_mech_register }, section "___ksymtab_gpl+gss_mech_register", align 4
@gss_mech_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RPC:       unregistered gss mechanism %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gss_mech_unregister\00", [44 x i8] zeroinitializer }, align 32
@gss_mech_unregister._entry_ptr = internal global ptr @gss_mech_unregister._entry, section ".printk_index", align 4
@__kstrtab_gss_mech_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_mech_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_mech_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_mech_unregister to i32), ptr @__kstrtab_gss_mech_unregister, ptr @__kstrtabns_gss_mech_unregister }, section "___ksymtab_gpl+gss_mech_unregister", align 4
@__kstrtab_gss_mech_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_mech_get = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_mech_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_mech_get to i32), ptr @__kstrtab_gss_mech_get, ptr @__kstrtabns_gss_mech_get }, section "___ksymtab+gss_mech_get", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rpc-auth-gss-%s\00", [16 x i8] zeroinitializer }, align 32
@gss_mech_get_by_OID.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rpc-auth-gss-%u\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_gss_pseudoflavor_to_service = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_pseudoflavor_to_service = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_pseudoflavor_to_service = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_pseudoflavor_to_service to i32), ptr @__kstrtab_gss_pseudoflavor_to_service, ptr @__kstrtabns_gss_pseudoflavor_to_service }, section "___ksymtab+gss_pseudoflavor_to_service", align 4
@__kstrtab_gss_mech_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_mech_put = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_mech_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_mech_put to i32), ptr @__kstrtab_gss_mech_put, ptr @__kstrtabns_gss_mech_put }, section "___ksymtab+gss_mech_put", align 4
@gss_delete_sec_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RPC:       gss_delete_sec_context deleting %p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gss_delete_sec_context\00", [41 x i8] zeroinitializer }, align 32
@gss_delete_sec_context._entry_ptr = internal global ptr @gss_delete_sec_context._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gss/\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"registered_mechs_lock\00", [42 x i8] zeroinitializer }, align 32
@_gss_mech_get_by_name.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_rpcgss_oid_to_mech = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/rpcgss.h\00", [34 x i8] zeroinitializer }, align 32
@trace_rpcgss_oid_to_mech.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@_gss_mech_get_by_pseudoflavor.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"registered_mechs_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"registered_mechs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 29, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 104, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 119, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 155, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 171, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 222, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 435, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 50, i32 24 }
@___asan_gen_.67 = private constant [41 x i8] c"../net/sunrpc/auth_gss/gss_mech_switch.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 30, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 695, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 723, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [33 x i8] c"../include/trace/events/rpcgss.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 646, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 108, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_gss_mech_get, ptr @__ksymtab_gss_mech_put, ptr @__ksymtab_gss_mech_register, ptr @__ksymtab_gss_mech_unregister, ptr @__ksymtab_gss_pseudoflavor_to_service, ptr @gss_delete_sec_context._entry, ptr @gss_delete_sec_context._entry_ptr, ptr @gss_mech_register._entry, ptr @gss_mech_register._entry_ptr, ptr @gss_mech_unregister._entry, ptr @gss_mech_unregister._entry_ptr, ptr @registered_mechs_lock, ptr @registered_mechs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registered_mechs_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registered_mechs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_mech_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_mech_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_delete_sec_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_mech_register(ptr noundef %gm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gm_pf_num.i = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 5
  %0 = ptrtoint ptr %gm_pf_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gm_pf_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40.i = icmp sgt i32 %1, 0
  br i1 %cmp40.i, label %for.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %gm_pfs.i = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end8.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %gm_pfs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_pfs.i, align 4
  %name.i = getelementptr %struct.pf_desc, ptr %3, i32 %i.041.i, i32 3
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  %call.i.i = tail call i32 @strlen(ptr noundef %5) #15
  %add2.i.i = add i32 %call.i.i, 5
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i.i, i32 noundef 3264) #16
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %make_auth_domain_name.exit.thread.i, label %if.end.i

make_auth_domain_name.exit.thread.i:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %auth_domain_name27.i = getelementptr %struct.pf_desc, ptr %3, i32 %i.041.i, i32 4
  %6 = ptrtoint ptr %auth_domain_name27.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %auth_domain_name27.i, align 4
  br label %out.i

if.end.i:                                         ; preds = %for.body.i
  %7 = call ptr @memcpy(ptr %call9.i.i.i, ptr @.str.10, i32 5)
  %call5.i.i = tail call ptr @strcat(ptr noundef nonnull %call9.i.i.i, ptr noundef %5) #12
  %auth_domain_name.i = getelementptr %struct.pf_desc, ptr %3, i32 %i.041.i, i32 4
  %8 = ptrtoint ptr %auth_domain_name.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i.i, ptr %auth_domain_name.i, align 4
  %arrayidx.i = getelementptr %struct.pf_desc, ptr %3, i32 %i.041.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %call4.i = tail call ptr @svcauth_gss_register_pseudoflavor(i32 noundef %10, ptr noundef nonnull %call9.i.i.i) #12
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call4.i to i32
  br label %out.i

if.end8.i:                                        ; preds = %if.end.i
  %domain.i = getelementptr %struct.pf_desc, ptr %3, i32 %i.041.i, i32 5
  %12 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4.i, ptr %domain.i, align 4
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %13 = ptrtoint ptr %gm_pf_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gm_pf_num.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %14
  br i1 %cmp.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.if.end_crit_edge

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

out.i:                                            ; preds = %if.then6.i, %make_auth_domain_name.exit.thread.i
  %status.0.i = phi i32 [ %11, %if.then6.i ], [ -12, %make_auth_domain_name.exit.thread.i ]
  %15 = ptrtoint ptr %gm_pf_num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gm_pf_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.i.i = icmp sgt i32 %16, 0
  br i1 %cmp9.i.i, label %out.i.for.body.i.i_crit_edge, label %out.i.cleanup_crit_edge

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out.i.for.body.i.i_crit_edge:                     ; preds = %out.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %out.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %out.i.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %gm_pfs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gm_pfs.i, align 4
  %domain.i.i = getelementptr %struct.pf_desc, ptr %18, i32 %i.010.i.i, i32 5
  %19 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %domain.i.i, align 4
  %tobool.not.i23.i = icmp eq ptr %20, null
  br i1 %tobool.not.i23.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i24.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i24.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @auth_domain_put(ptr noundef nonnull %20) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i24.i, %for.body.i.i.if.end.i.i_crit_edge
  %auth_domain_name.i.i = getelementptr %struct.pf_desc, ptr %18, i32 %i.010.i.i, i32 4
  %21 = ptrtoint ptr %auth_domain_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %auth_domain_name.i.i, align 4
  tail call void @kfree(ptr noundef %22) #12
  %23 = ptrtoint ptr %auth_domain_name.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %auth_domain_name.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %24 = ptrtoint ptr %gm_pf_num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gm_pf_num.i, align 4
  %cmp.i25.i = icmp slt i32 %inc.i.i, %25
  br i1 %cmp.i25.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end:                                           ; preds = %if.end8.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @registered_mechs_lock) #12
  %26 = load ptr, ptr @registered_mechs, align 4
  %call.i.i13 = tail call zeroext i1 @__list_add_valid(ptr noundef %gm, ptr noundef nonnull @registered_mechs, ptr noundef %26) #12
  br i1 %call.i.i13, label %if.end.i.i14, label %if.end.list_add_rcu.exit_crit_edge

if.end.list_add_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_rcu.exit

if.end.i.i14:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %gm to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %gm, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %gm, i32 0, i32 1
  %28 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @registered_mechs, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !71
  store volatile ptr %gm, ptr @registered_mechs, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %gm, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i14, %if.end.list_add_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @registered_mechs_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %30 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %list_add_rcu.exit.cleanup_crit_edge, label %do.end, !prof !72

list_add_rcu.exit.cleanup_crit_edge:              ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %gm_name = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 3
  %31 = ptrtoint ptr %gm_name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gm_name, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %32) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %list_add_rcu.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %out.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %list_add_rcu.exit.cleanup_crit_edge ], [ %status.0.i, %out.i.cleanup_crit_edge ], [ %status.0.i, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gss_mech_unregister(ptr noundef %gm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @registered_mechs_lock) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %gm) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %gm, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %gm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %gm, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @registered_mechs_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %7 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %list_del_rcu.exit.do.end4_crit_edge, label %do.end, !prof !72

list_del_rcu.exit.do.end4_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %gm_name = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 3
  %8 = ptrtoint ptr %gm_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gm_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %9) #17
  br label %do.end4

do.end4:                                          ; preds = %do.end, %list_del_rcu.exit.do.end4_crit_edge
  %gm_pf_num.i = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 5
  %10 = ptrtoint ptr %gm_pf_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gm_pf_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.i = icmp sgt i32 %11, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %do.end4.gss_mech_free.exit_crit_edge

do.end4.gss_mech_free.exit_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %gss_mech_free.exit

for.body.lr.ph.i:                                 ; preds = %do.end4
  %gm_pfs.i = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %gm_pfs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gm_pfs.i, align 4
  %domain.i = getelementptr %struct.pf_desc, ptr %13, i32 %i.010.i, i32 5
  %14 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @auth_domain_put(ptr noundef nonnull %15) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %auth_domain_name.i = getelementptr %struct.pf_desc, ptr %13, i32 %i.010.i, i32 4
  %16 = ptrtoint ptr %auth_domain_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %auth_domain_name.i, align 4
  tail call void @kfree(ptr noundef %17) #12
  %18 = ptrtoint ptr %auth_domain_name.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %auth_domain_name.i, align 4
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %19 = ptrtoint ptr %gm_pf_num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gm_pf_num.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %20
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.gss_mech_free.exit_crit_edge

if.end.i.gss_mech_free.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gss_mech_free.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

gss_mech_free.exit:                               ; preds = %if.end.i.gss_mech_free.exit_crit_edge, %do.end4.gss_mech_free.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gss_mech_get(ptr noundef readonly returned %gm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gm_owner = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 1
  %0 = ptrtoint ptr %gm_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gm_owner, align 4
  tail call void @__module_get(ptr noundef %1) #12
  ret ptr %gm
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gss_mech_get_by_name(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_gss_mech_get_by_name(ptr noundef %name)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5, ptr noundef %name) #12
  %call2 = tail call fastcc ptr @_gss_mech_get_by_name(ptr noundef %name)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gm.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret ptr %gm.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_gss_mech_get_by_name(ptr nocapture noundef readonly %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @_gss_mech_get_by_name.__warned, align 1
  br i1 %.b28, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @_gss_mech_get_by_name.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 137, ptr noundef nonnull @.str.6) #12
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %pos.0.in = phi ptr [ %pos.0, %for.body.for.cond_crit_edge ], [ @registered_mechs, %for.cond.preheader ]
  %4 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.0 = load volatile ptr, ptr %pos.0.in, align 4
  %cmp.not = icmp eq ptr %pos.0, @registered_mechs
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %gm_name = getelementptr inbounds %struct.gss_api_mech, ptr %pos.0, i32 0, i32 3
  %5 = ptrtoint ptr %gm_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gm_name, align 4
  %call9 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %6) #18
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %gm_owner = getelementptr inbounds %struct.gss_api_mech, ptr %pos.0, i32 0, i32 1
  %7 = ptrtoint ptr %gm_owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gm_owner, align 4
  %call12 = tail call zeroext i1 @try_module_get(ptr noundef %8) #12
  %spec.select = select i1 %call12, ptr %pos.0, ptr null
  br label %for.end

for.end:                                          ; preds = %if.then11, %for.cond.for.end_crit_edge
  %gm.0 = phi ptr [ %spec.select, %if.then11 ], [ null, %for.cond.for.end_crit_edge ]
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i.i.i36 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %gm.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gss_mech_get_by_OID(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %data = getelementptr inbounds %struct.rpcsec_gss_oid, ptr %obj, i32 0, i32 1
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %1 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %obj, align 4
  %call = call i32 @sprint_oid(ptr noundef %data, i32 noundef %2, ptr noundef nonnull %buf, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5, ptr noundef nonnull %buf) #12
  %3 = call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call4 = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b58 = load i1, ptr @gss_mech_get_by_OID.__warned, align 1
  br i1 %.b58, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gss_mech_get_by_OID.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 171, ptr noundef nonnull @.str.6) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %pos.069 = load volatile ptr, ptr @registered_mechs, align 4
  %cmp15.not70 = icmp eq ptr %pos.069, @registered_mechs
  br i1 %cmp15.not70, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %7 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %obj, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.071 = phi ptr [ %pos.069, %for.body.lr.ph ], [ %pos.0, %for.inc.for.body_crit_edge ]
  %gm_oid = getelementptr inbounds %struct.gss_api_mech, ptr %pos.071, i32 0, i32 2
  %9 = ptrtoint ptr %gm_oid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gm_oid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp18 = icmp eq i32 %8, %10
  br i1 %cmp18, label %if.then19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then19:                                        ; preds = %for.body
  %data23 = getelementptr inbounds %struct.gss_api_mech, ptr %pos.071, i32 0, i32 2, i32 1
  %bcmp = call i32 @bcmp(ptr %data, ptr %data23, i32 %8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp27 = icmp eq i32 %bcmp, 0
  br i1 %cmp27, label %if.then28, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then28:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %gm_owner = getelementptr inbounds %struct.gss_api_mech, ptr %pos.071, i32 0, i32 1
  %11 = ptrtoint ptr %gm_owner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gm_owner, align 4
  %call29 = call zeroext i1 @try_module_get(ptr noundef %12) #12
  %spec.select = select i1 %call29, ptr %pos.071, ptr null
  br label %for.end

for.inc:                                          ; preds = %if.then19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %pos.071 to i32
  call void @__asan_load4_noabort(i32 %13)
  %pos.0 = load volatile ptr, ptr %pos.071, align 4
  %cmp15.not = icmp eq ptr %pos.0, @registered_mechs
  br i1 %cmp15.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then28, %do.end.for.end_crit_edge
  %gm.0 = phi ptr [ %spec.select, %if.then28 ], [ null, %do.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i59 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i59, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i62

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i62:                                ; preds = %for.end
  %call1.i60 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %14 = call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i.i.i66 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i67, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool42.not = icmp eq ptr %gm.0, null
  br i1 %tobool42.not, label %if.then43, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_rpcgss_oid_to_mech(ptr noundef nonnull %buf)
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %rcu_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.then43 ], [ %gm.0, %rcu_read_unlock.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_oid(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_oid_to_mech(ptr noundef %oid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_oid_to_mech, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_oid_to_mech, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !76
  %call42 = tail call i32 @__traceiter_rpcgss_oid_to_mech(ptr noundef null, ptr noundef %oid) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !77
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_oid_to_mech, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_oid_to_mech, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_oid_to_mech.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_rpcgss_oid_to_mech.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 662, ptr noundef nonnull @.str.16) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !79
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gss_mech_get_by_pseudoflavor(i32 noundef %pseudoflavor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_gss_mech_get_by_pseudoflavor(i32 noundef %pseudoflavor)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7, i32 noundef %pseudoflavor) #12
  %call2 = tail call fastcc ptr @_gss_mech_get_by_pseudoflavor(i32 noundef %pseudoflavor)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gm.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret ptr %gm.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_gss_mech_get_by_pseudoflavor(i32 noundef %pseudoflavor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @_gss_mech_get_by_pseudoflavor.__warned, align 1
  br i1 %.b28, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @_gss_mech_get_by_pseudoflavor.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 203, ptr noundef nonnull @.str.6) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %pos.041 = load volatile ptr, ptr @registered_mechs, align 4
  %cmp.not42 = icmp eq ptr %pos.041, @registered_mechs
  br i1 %cmp.not42, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %mech_supports_pseudoflavor.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %pos.043 = phi ptr [ %pos.0, %mech_supports_pseudoflavor.exit.for.body_crit_edge ], [ %pos.041, %do.end.for.body_crit_edge ]
  %gm_pf_num.i = getelementptr inbounds %struct.gss_api_mech, ptr %pos.043, i32 0, i32 5
  %4 = ptrtoint ptr %gm_pf_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gm_pf_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.i = icmp sgt i32 %5, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %for.body.mech_supports_pseudoflavor.exit_crit_edge

for.body.mech_supports_pseudoflavor.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %mech_supports_pseudoflavor.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %gm_pfs.i = getelementptr inbounds %struct.gss_api_mech, ptr %pos.043, i32 0, i32 6
  %6 = ptrtoint ptr %gm_pfs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gm_pfs.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.mech_supports_pseudoflavor.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.mech_supports_pseudoflavor.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mech_supports_pseudoflavor.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pf_desc, ptr %7, i32 %i.07.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %pseudoflavor)
  %cmp2.i = icmp eq i32 %9, %pseudoflavor
  br i1 %cmp2.i, label %if.end12, label %for.cond.i

mech_supports_pseudoflavor.exit:                  ; preds = %for.cond.i.mech_supports_pseudoflavor.exit_crit_edge, %for.body.mech_supports_pseudoflavor.exit_crit_edge
  %10 = ptrtoint ptr %pos.043 to i32
  call void @__asan_load4_noabort(i32 %10)
  %pos.0 = load volatile ptr, ptr %pos.043, align 4
  %cmp.not = icmp eq ptr %pos.0, @registered_mechs
  br i1 %cmp.not, label %mech_supports_pseudoflavor.exit.for.end_crit_edge, label %mech_supports_pseudoflavor.exit.for.body_crit_edge

mech_supports_pseudoflavor.exit.for.body_crit_edge: ; preds = %mech_supports_pseudoflavor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

mech_supports_pseudoflavor.exit.for.end_crit_edge: ; preds = %mech_supports_pseudoflavor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end12:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %gm_owner = getelementptr inbounds %struct.gss_api_mech, ptr %pos.043, i32 0, i32 1
  %11 = ptrtoint ptr %gm_owner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gm_owner, align 4
  %call13 = tail call zeroext i1 @try_module_get(ptr noundef %12) #12
  %spec.select = select i1 %call13, ptr %pos.043, ptr null
  br label %for.end

for.end:                                          ; preds = %if.end12, %mech_supports_pseudoflavor.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %gm.0 = phi ptr [ %spec.select, %if.end12 ], [ null, %do.end.for.end_crit_edge ], [ null, %mech_supports_pseudoflavor.exit.for.end_crit_edge ]
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #12
  %and.i.i.i.i.i36 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %gm.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_svc_to_pseudoflavor(ptr nocapture noundef readonly %gm, i32 noundef %qop, i32 noundef %service) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gm_pf_num = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 5
  %0 = ptrtoint ptr %gm_pf_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gm_pf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16 = icmp sgt i32 %1, 0
  br i1 %cmp16, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %gm_pfs = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 6
  %2 = ptrtoint ptr %gm_pfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_pfs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %qop1 = getelementptr %struct.pf_desc, ptr %3, i32 %i.017, i32 1
  %4 = ptrtoint ptr %qop1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qop1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %qop)
  %cmp2 = icmp eq i32 %5, %qop
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %service5 = getelementptr %struct.pf_desc, ptr %3, i32 %i.017, i32 2
  %6 = ptrtoint ptr %service5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %service5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %service)
  %cmp6 = icmp eq i32 %7, %service
  br i1 %cmp6, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.le = getelementptr %struct.pf_desc, ptr %3, i32 %i.017
  %8 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.le, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then ], [ 8, %entry.cleanup_crit_edge ], [ 8, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_mech_info2flavor(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gss_mech_get_by_OID(ptr noundef %info)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %qop = getelementptr inbounds %struct.rpcsec_gss_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %qop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qop, align 4
  %service = getelementptr inbounds %struct.rpcsec_gss_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %service, align 4
  %gm_pf_num.i = getelementptr inbounds %struct.gss_api_mech, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %gm_pf_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gm_pf_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.i = icmp sgt i32 %5, 0
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %if.end.gss_mech_put.exit_crit_edge

if.end.gss_mech_put.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %gss_mech_put.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %gm_pfs.i = getelementptr inbounds %struct.gss_api_mech, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %gm_pfs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gm_pfs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %qop1.i = getelementptr %struct.pf_desc, ptr %7, i32 %i.017.i, i32 1
  %8 = ptrtoint ptr %qop1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qop1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp2.i = icmp eq i32 %9, %1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %service5.i = getelementptr %struct.pf_desc, ptr %7, i32 %i.017.i, i32 2
  %10 = ptrtoint ptr %service5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %service5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp6.i = icmp eq i32 %11, %3
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.le.i = getelementptr %struct.pf_desc, ptr %7, i32 %i.017.i
  %12 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.le.i, align 4
  br label %gss_mech_put.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.gss_mech_put.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.gss_mech_put.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gss_mech_put.exit

gss_mech_put.exit:                                ; preds = %for.inc.i.gss_mech_put.exit_crit_edge, %if.then.i, %if.end.gss_mech_put.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ 8, %if.end.gss_mech_put.exit_crit_edge ], [ 8, %for.inc.i.gss_mech_put.exit_crit_edge ]
  %gm_owner.i = getelementptr inbounds %struct.gss_api_mech, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %gm_owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gm_owner.i, align 4
  tail call void @module_put(ptr noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %gss_mech_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %gss_mech_put.exit ], [ 8, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gss_mech_put(ptr noundef readonly %gm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gm, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gm_owner = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 1
  %0 = ptrtoint ptr %gm_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gm_owner, align 4
  tail call void @module_put(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_mech_flavor2info(i32 noundef %pseudoflavor, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_gss_mech_get_by_pseudoflavor(i32 noundef %pseudoflavor) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %gss_mech_get_by_pseudoflavor.exit, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

gss_mech_get_by_pseudoflavor.exit:                ; preds = %entry
  %call1.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7, i32 noundef %pseudoflavor) #12
  %call2.i = tail call fastcc ptr @_gss_mech_get_by_pseudoflavor(i32 noundef %pseudoflavor) #12
  %cmp = icmp eq ptr %call2.i, null
  br i1 %cmp, label %gss_mech_get_by_pseudoflavor.exit.cleanup_crit_edge, label %gss_mech_get_by_pseudoflavor.exit.for.cond.preheader_crit_edge

gss_mech_get_by_pseudoflavor.exit.for.cond.preheader_crit_edge: ; preds = %gss_mech_get_by_pseudoflavor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

gss_mech_get_by_pseudoflavor.exit.cleanup_crit_edge: ; preds = %gss_mech_get_by_pseudoflavor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %gss_mech_get_by_pseudoflavor.exit.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %gm.0.i49 = phi ptr [ %call2.i, %gss_mech_get_by_pseudoflavor.exit.for.cond.preheader_crit_edge ], [ %call.i, %entry.for.cond.preheader_crit_edge ]
  %gm_pf_num = getelementptr inbounds %struct.gss_api_mech, ptr %gm.0.i49, i32 0, i32 5
  %0 = ptrtoint ptr %gm_pf_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gm_pf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp144 = icmp sgt i32 %1, 0
  br i1 %cmp144, label %for.body.lr.ph, label %for.cond.preheader.cleanup.sink.split_crit_edge

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gm_pfs = getelementptr inbounds %struct.gss_api_mech, ptr %gm.0.i49, i32 0, i32 6
  %2 = ptrtoint ptr %gm_pfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_pfs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pf_desc, ptr %3, i32 %i.045
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pseudoflavor)
  %cmp3 = icmp eq i32 %5, %pseudoflavor
  br i1 %cmp3, label %gss_mech_put.exit, label %for.inc

gss_mech_put.exit:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.rpcsec_gss_oid, ptr %info, i32 0, i32 1
  %gm_oid = getelementptr inbounds %struct.gss_api_mech, ptr %gm.0.i49, i32 0, i32 2
  %data5 = getelementptr inbounds %struct.gss_api_mech, ptr %gm.0.i49, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %gm_oid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gm_oid, align 4
  %8 = call ptr @memcpy(ptr %data, ptr %data5, i32 %7)
  %9 = load i32, ptr %gm_oid, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %info, align 4
  %11 = ptrtoint ptr %gm_pfs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gm_pfs, align 4
  %qop = getelementptr %struct.pf_desc, ptr %12, i32 %i.045, i32 1
  %13 = ptrtoint ptr %qop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qop, align 4
  %qop14 = getelementptr inbounds %struct.rpcsec_gss_info, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %qop14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %qop14, align 4
  %16 = load ptr, ptr %gm_pfs, align 4
  %service = getelementptr %struct.pf_desc, ptr %16, i32 %i.045, i32 2
  %17 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %service, align 4
  %service17 = getelementptr inbounds %struct.rpcsec_gss_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %service17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %service17, align 4
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %gss_mech_put.exit, %for.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %gss_mech_put.exit ], [ -2, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ -2, %for.inc.cleanup.sink.split_crit_edge ]
  %gm_owner.i40 = getelementptr inbounds %struct.gss_api_mech, ptr %gm.0.i49, i32 0, i32 1
  %20 = ptrtoint ptr %gm_owner.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gm_owner.i40, align 4
  tail call void @module_put(ptr noundef %21) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %gss_mech_get_by_pseudoflavor.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %gss_mech_get_by_pseudoflavor.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_pseudoflavor_to_service(ptr nocapture noundef readonly %gm, i32 noundef %pseudoflavor) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gm_pf_num = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 5
  %0 = ptrtoint ptr %gm_pf_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gm_pf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %gm_pfs = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 6
  %2 = ptrtoint ptr %gm_pfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_pfs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pf_desc, ptr %3, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pseudoflavor)
  %cmp2 = icmp eq i32 %5, %pseudoflavor
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %service = getelementptr %struct.pf_desc, ptr %3, i32 %i.012, i32 2
  %6 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %service, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gss_pseudoflavor_to_datatouch(ptr nocapture noundef readonly %gm, i32 noundef %pseudoflavor) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gm_pf_num = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 5
  %0 = ptrtoint ptr %gm_pf_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gm_pf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %gm_pfs = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 6
  %2 = ptrtoint ptr %gm_pfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_pfs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pf_desc, ptr %3, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pseudoflavor)
  %cmp2 = icmp eq i32 %5, %pseudoflavor
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %datatouch = getelementptr %struct.pf_desc, ptr %3, i32 %i.012, i32 6
  %6 = ptrtoint ptr %datatouch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %datatouch, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.then ], [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gss_service_to_auth_domain_name(ptr nocapture noundef readonly %gm, i32 noundef %service) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gm_pf_num = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 5
  %0 = ptrtoint ptr %gm_pf_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gm_pf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %gm_pfs = getelementptr inbounds %struct.gss_api_mech, ptr %gm, i32 0, i32 6
  %2 = ptrtoint ptr %gm_pfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_pfs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %service1 = getelementptr %struct.pf_desc, ptr %3, i32 %i.012, i32 2
  %4 = ptrtoint ptr %service1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %service)
  %cmp2 = icmp eq i32 %5, %service
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %auth_domain_name = getelementptr %struct.pf_desc, ptr %3, i32 %i.012, i32 4
  %6 = ptrtoint ptr %auth_domain_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth_domain_name, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_import_sec_context(ptr noundef %input_token, i32 noundef %bufsize, ptr noundef %mech, ptr nocapture noundef %ctx_id, ptr noundef %endtime, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !72

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_mask, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 16) #19
  %2 = ptrtoint ptr %ctx_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %ctx_id, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.return_crit_edge, label %if.end

kzalloc.exit.return_crit_edge:                    ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %gm_owner.i = getelementptr inbounds %struct.gss_api_mech, ptr %mech, i32 0, i32 1
  %3 = ptrtoint ptr %gm_owner.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gm_owner.i, align 4
  tail call void @__module_get(ptr noundef %4) #12
  %5 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx_id, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mech, ptr %6, align 4
  %gm_ops = getelementptr inbounds %struct.gss_api_mech, ptr %mech, i32 0, i32 4
  %8 = ptrtoint ptr %gm_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gm_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = load ptr, ptr %ctx_id, align 4
  %call2 = tail call i32 %11(ptr noundef %input_token, i32 noundef %bufsize, ptr noundef %12, ptr noundef %endtime, i32 noundef %gfp_mask) #12
  br label %return

return:                                           ; preds = %if.end, %kzalloc.exit.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %kzalloc.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_get_mic(ptr noundef %context_handle, ptr noundef %message, ptr noundef %mic_token) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context_handle, align 4
  %gm_ops = getelementptr inbounds %struct.gss_api_mech, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_ops, align 4
  %gss_get_mic = getelementptr inbounds %struct.gss_api_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gss_get_mic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gss_get_mic, align 4
  %call = tail call i32 %5(ptr noundef %context_handle, ptr noundef %message, ptr noundef %mic_token) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_verify_mic(ptr noundef %context_handle, ptr noundef %message, ptr noundef %mic_token) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context_handle, align 4
  %gm_ops = getelementptr inbounds %struct.gss_api_mech, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_ops, align 4
  %gss_verify_mic = getelementptr inbounds %struct.gss_api_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %gss_verify_mic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gss_verify_mic, align 4
  %call = tail call i32 %5(ptr noundef %context_handle, ptr noundef %message, ptr noundef %mic_token) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_wrap(ptr noundef %ctx_id, i32 noundef %offset, ptr noundef %buf, ptr noundef %inpages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_id, align 4
  %gm_ops = getelementptr inbounds %struct.gss_api_mech, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_ops, align 4
  %gss_wrap = getelementptr inbounds %struct.gss_api_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %gss_wrap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gss_wrap, align 4
  %call = tail call i32 %5(ptr noundef %ctx_id, i32 noundef %offset, ptr noundef %buf, ptr noundef %inpages) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_unwrap(ptr noundef %ctx_id, i32 noundef %offset, i32 noundef %len, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_id, align 4
  %gm_ops = getelementptr inbounds %struct.gss_api_mech, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gm_ops, align 4
  %gss_unwrap = getelementptr inbounds %struct.gss_api_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gss_unwrap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gss_unwrap, align 4
  %call = tail call i32 %5(ptr noundef %ctx_id, i32 noundef %offset, i32 noundef %len, ptr noundef %buf) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_delete_sec_context(ptr nocapture noundef %context_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !72

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %context_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context_handle, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %2) #17
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = ptrtoint ptr %context_handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context_handle, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %do.end4.return_crit_edge, label %if.end7

do.end4.return_crit_edge:                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end7:                                          ; preds = %do.end4
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %internal_ctx_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %internal_ctx_id, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %gm_ops = getelementptr inbounds %struct.gss_api_mech, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %gm_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gm_ops, align 4
  %gss_delete_sec_context = getelementptr inbounds %struct.gss_api_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %gss_delete_sec_context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gss_delete_sec_context, align 4
  tail call void %12(ptr noundef nonnull %6) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %13 = ptrtoint ptr %context_handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context_handle, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end11.gss_mech_put.exit_crit_edge, label %if.then.i

if.end11.gss_mech_put.exit_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %gss_mech_put.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %gm_owner.i = getelementptr inbounds %struct.gss_api_mech, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %gm_owner.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gm_owner.i, align 4
  tail call void @module_put(ptr noundef %18) #12
  br label %gss_mech_put.exit

gss_mech_put.exit:                                ; preds = %if.then.i, %if.end11.gss_mech_put.exit_crit_edge
  %19 = ptrtoint ptr %context_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context_handle, align 4
  tail call void @kfree(ptr noundef %20) #12
  %21 = ptrtoint ptr %context_handle to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %context_handle, align 4
  br label %return

return:                                           ; preds = %gss_mech_put.exit, %do.end4.return_crit_edge
  %retval.0 = phi i32 [ 0, %gss_mech_put.exit ], [ 524288, %do.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svcauth_gss_register_pseudoflavor(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @auth_domain_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_oid_to_mech(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !40, !42, !44, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 104, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gss_mech_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gss_mech_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_gss_mech_register, !7, !"__ksymtab_gss_mech_register", i1 false, i1 false}
!7 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 107, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 119, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @gss_mech_unregister._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @gss_mech_unregister._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_gss_mech_unregister, !14, !"__ksymtab_gss_mech_unregister", i1 false, i1 false}
!14 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 122, i32 1}
!15 = !{ptr @__ksymtab_gss_mech_get, !16, !"__ksymtab_gss_mech_get", i1 false, i1 false}
!16 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 129, i32 1}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 155, i32 3}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 171, i32 2}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 222, i32 3}
!24 = !{ptr @__ksymtab_gss_pseudoflavor_to_service, !25, !"__ksymtab_gss_pseudoflavor_to_service", i1 false, i1 false}
!25 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 316, i32 1}
!26 = !{ptr @__ksymtab_gss_mech_put, !27, !"__ksymtab_gss_mech_put", i1 false, i1 false}
!27 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 348, i32 1}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 435, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gss_delete_sec_context._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @gss_delete_sec_context._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 50, i32 24}
!35 = distinct !{null, !36, !"prefix", i1 false, i1 false}
!36 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 50, i32 15}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 30, i32 8}
!39 = !{ptr @registered_mechs_lock, !38, !"registered_mechs_lock", i1 false, i1 false}
!40 = !{ptr @registered_mechs, !41, !"registered_mechs", i1 false, i1 false}
!41 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 29, i32 8}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 137, i32 2}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/rpcgss.h", i32 646, i32 1}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/sunrpc/auth_gss/gss_mech_switch.c", i32 203, i32 2}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2151428435}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2149925923}
!74 = !{i64 2149926189}
!75 = !{i64 2148209778, i64 2148209783, i64 2148209796, i64 2148209840, i64 2148209874, i64 2148209895}
!76 = !{i64 2157858616}
!77 = !{i64 2157858821}
!78 = !{i64 2149934482}
!79 = !{i64 2149935518}
!80 = !{i8 0, i8 2}
