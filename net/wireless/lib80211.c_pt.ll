; ModuleID = '/llk/IR_all_yes/net/wireless/lib80211.c_pt.bc'
source_filename = "../net/wireless/lib80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lib80211_crypt_info_init\22, \22a\22\09"
module asm "\09.weak\09__crc_lib80211_crypt_info_init\09\09\09\09"
module asm "\09.long\09__crc_lib80211_crypt_info_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lib80211_crypt_info_init:\09\09\09\09\09"
module asm "\09.asciz \09\22lib80211_crypt_info_init\22\09\09\09\09\09"
module asm "__kstrtabns_lib80211_crypt_info_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lib80211_crypt_info_free\22, \22a\22\09"
module asm "\09.weak\09__crc_lib80211_crypt_info_free\09\09\09\09"
module asm "\09.long\09__crc_lib80211_crypt_info_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lib80211_crypt_info_free:\09\09\09\09\09"
module asm "\09.asciz \09\22lib80211_crypt_info_free\22\09\09\09\09\09"
module asm "__kstrtabns_lib80211_crypt_info_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lib80211_crypt_delayed_deinit\22, \22a\22\09"
module asm "\09.weak\09__crc_lib80211_crypt_delayed_deinit\09\09\09\09"
module asm "\09.long\09__crc_lib80211_crypt_delayed_deinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lib80211_crypt_delayed_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22lib80211_crypt_delayed_deinit\22\09\09\09\09\09"
module asm "__kstrtabns_lib80211_crypt_delayed_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lib80211_register_crypto_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_lib80211_register_crypto_ops\09\09\09\09"
module asm "\09.long\09__crc_lib80211_register_crypto_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lib80211_register_crypto_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22lib80211_register_crypto_ops\22\09\09\09\09\09"
module asm "__kstrtabns_lib80211_register_crypto_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lib80211_unregister_crypto_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_lib80211_unregister_crypto_ops\09\09\09\09"
module asm "\09.long\09__crc_lib80211_unregister_crypto_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lib80211_unregister_crypto_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22lib80211_unregister_crypto_ops\22\09\09\09\09\09"
module asm "__kstrtabns_lib80211_unregister_crypto_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lib80211_get_crypto_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_lib80211_get_crypto_ops\09\09\09\09"
module asm "\09.long\09__crc_lib80211_get_crypto_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lib80211_get_crypto_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22lib80211_get_crypto_ops\22\09\09\09\09\09"
module asm "__kstrtabns_lib80211_get_crypto_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lib80211_crypto_alg = type { %struct.list_head, ptr }

@__UNIQUE_ID_description339 = internal constant [60 x i8] c"lib80211.description=common routines for IEEE802.11 drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_author340 = internal constant [58 x i8] c"lib80211.author=John W. Linville <linville@tuxdriver.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [36 x i8] c"lib80211.file=net/wireless/lib80211\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [21 x i8] c"lib80211.license=GPL\00", section ".modinfo", align 1
@lib80211_crypt_info_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&info->crypt_deinit_timer)\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_lib80211_crypt_info_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_lib80211_crypt_info_init = external dso_local constant [0 x i8], align 1
@__ksymtab_lib80211_crypt_info_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lib80211_crypt_info_init to i32), ptr @__kstrtab_lib80211_crypt_info_init, ptr @__kstrtabns_lib80211_crypt_info_init }, section "___ksymtab+lib80211_crypt_info_init", align 4
@__kstrtab_lib80211_crypt_info_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_lib80211_crypt_info_free = external dso_local constant [0 x i8], align 1
@__ksymtab_lib80211_crypt_info_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lib80211_crypt_info_free to i32), ptr @__kstrtab_lib80211_crypt_info_free, ptr @__kstrtabns_lib80211_crypt_info_free }, section "___ksymtab+lib80211_crypt_info_free", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_lib80211_crypt_delayed_deinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_lib80211_crypt_delayed_deinit = external dso_local constant [0 x i8], align 1
@__ksymtab_lib80211_crypt_delayed_deinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lib80211_crypt_delayed_deinit to i32), ptr @__kstrtab_lib80211_crypt_delayed_deinit, ptr @__kstrtabns_lib80211_crypt_delayed_deinit }, section "___ksymtab+lib80211_crypt_delayed_deinit", align 4
@lib80211_crypto_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@lib80211_crypto_algs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @lib80211_crypto_algs, ptr @lib80211_crypto_algs }, [24 x i8] zeroinitializer }, align 32
@lib80211_register_crypto_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017lib80211_crypt: registered algorithm '%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lib80211_register_crypto_ops\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/wireless/lib80211.c\00", [40 x i8] zeroinitializer }, align 32
@lib80211_register_crypto_ops._entry_ptr = internal global ptr @lib80211_register_crypto_ops._entry, section ".printk_index", align 4
@__kstrtab_lib80211_register_crypto_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_lib80211_register_crypto_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_lib80211_register_crypto_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lib80211_register_crypto_ops to i32), ptr @__kstrtab_lib80211_register_crypto_ops, ptr @__kstrtabns_lib80211_register_crypto_ops }, section "___ksymtab+lib80211_register_crypto_ops", align 4
@lib80211_unregister_crypto_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017lib80211_crypt: unregistered algorithm '%s'\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lib80211_unregister_crypto_ops\00", [33 x i8] zeroinitializer }, align 32
@lib80211_unregister_crypto_ops._entry_ptr = internal global ptr @lib80211_unregister_crypto_ops._entry, section ".printk_index", align 4
@__kstrtab_lib80211_unregister_crypto_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_lib80211_unregister_crypto_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_lib80211_unregister_crypto_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lib80211_unregister_crypto_ops to i32), ptr @__kstrtab_lib80211_unregister_crypto_ops, ptr @__kstrtabns_lib80211_unregister_crypto_ops }, section "___ksymtab+lib80211_unregister_crypto_ops", align 4
@__kstrtab_lib80211_get_crypto_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_lib80211_get_crypto_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_lib80211_get_crypto_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lib80211_get_crypto_ops to i32), ptr @__kstrtab_lib80211_get_crypto_ops, ptr @__kstrtabns_lib80211_get_crypto_ops }, section "___ksymtab+lib80211_get_crypto_ops", align 4
@lib80211_crypt_null = internal global { %struct.lib80211_crypto_ops, [52 x i8] } { %struct.lib80211_crypto_ops { ptr @.str.9, %struct.list_head zeroinitializer, ptr @lib80211_crypt_null_init, ptr @lib80211_crypt_null_deinit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_lib80211__343_256_lib80211_init6 = internal global ptr @lib80211_init, section ".initcall6.init", align 4
@__exitcall_lib80211_exit = internal global ptr @lib80211_exit, section ".exitcall.exit", align 4
@lib80211_crypt_deinit_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: entries remaining in delayed crypt deletion list\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lib80211_crypt_deinit_handler\00", [34 x i8] zeroinitializer }, align 32
@lib80211_crypt_deinit_handler._entry_ptr = internal global ptr @lib80211_crypt_deinit_handler._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lib80211_crypto_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@lib80211_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016lib80211: common routines for IEEE802.11 drivers\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lib80211_init\00", [18 x i8] zeroinitializer }, align 32
@lib80211_init._entry_ptr = internal global ptr @lib80211_init._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 57, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"lib80211_crypto_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"lib80211_crypto_algs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 40, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 179, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 200, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"lib80211_crypt_null\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 237, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 128, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 41, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 238, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [27 x i8] c"../net/wireless/lib80211.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 246, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_lib80211_exit, ptr @__initcall__kmod_lib80211__343_256_lib80211_init6, ptr @__ksymtab_lib80211_crypt_delayed_deinit, ptr @__ksymtab_lib80211_crypt_info_free, ptr @__ksymtab_lib80211_crypt_info_init, ptr @__ksymtab_lib80211_get_crypto_ops, ptr @__ksymtab_lib80211_register_crypto_ops, ptr @__ksymtab_lib80211_unregister_crypto_ops, ptr @lib80211_crypt_deinit_handler._entry, ptr @lib80211_crypt_deinit_handler._entry_ptr, ptr @lib80211_exit, ptr @lib80211_init._entry, ptr @lib80211_init._entry_ptr, ptr @lib80211_register_crypto_ops._entry, ptr @lib80211_register_crypto_ops._entry_ptr, ptr @lib80211_unregister_crypto_ops._entry, ptr @lib80211_unregister_crypto_ops._entry_ptr, ptr @lib80211_crypt_info_init.__key, ptr @.str, ptr @lib80211_crypto_lock, ptr @lib80211_crypto_algs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lib80211_crypt_null, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_crypt_info_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_crypto_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_crypto_algs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_register_crypto_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_unregister_crypto_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_crypt_null to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_crypt_deinit_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lib80211_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lib80211_crypt_info_init(ptr noundef %info, ptr noundef %name, ptr noundef %lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %info, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 80)
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %info, align 4
  %lock2 = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %lock, ptr %lock2, align 4
  %crypt_deinit_list = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %crypt_deinit_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %crypt_deinit_list, ptr %crypt_deinit_list, align 4
  %prev.i = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %crypt_deinit_list, ptr %prev.i, align 4
  %crypt_deinit_timer = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %crypt_deinit_timer, ptr noundef nonnull @lib80211_crypt_deinit_handler, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @lib80211_crypt_info_init.__key) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_crypt_deinit_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -36
  tail call fastcc void @lib80211_crypt_deinit_entries(ptr noundef %add.ptr, i32 noundef 0)
  %lock = getelementptr i8, ptr %t, i32 -32
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %crypt_deinit_list = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %crypt_deinit_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %crypt_deinit_list, align 4
  %cmp.i.not = icmp eq ptr %3, %crypt_deinit_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %crypt_quiesced = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %crypt_quiesced to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crypt_quiesced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %do.end10, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end10:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %7) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 100
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #7
  br label %if.end

if.end:                                           ; preds = %do.end10, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lib80211_crypt_info_free(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %crypt_quiesced.i = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %crypt_quiesced.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %crypt_quiesced.i, align 4
  %3 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call2.i) #7
  %crypt_deinit_timer = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 5
  %call = tail call i32 @del_timer_sync(ptr noundef %crypt_deinit_timer) #7
  tail call fastcc void @lib80211_crypt_deinit_entries(ptr noundef %info, i32 noundef 1)
  %arrayidx = getelementptr %struct.lib80211_crypt_info, ptr %info, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %deinit = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %deinit, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  tail call void %10(ptr noundef %12) #7
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %16) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %6) #7
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %arrayidx.1 = getelementptr %struct.lib80211_crypt_info, ptr %info, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %19, null
  br i1 %tobool.not.1, label %if.end8.if.end8.1_crit_edge, label %if.then.1

if.end8.if.end8.1_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.1

if.then.1:                                        ; preds = %if.end8
  %ops.1 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.1, align 4
  %tobool2.not.1 = icmp eq ptr %21, null
  br i1 %tobool2.not.1, label %if.then.1.if.end.1_crit_edge, label %if.then3.1

if.then.1.if.end.1_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1

if.then3.1:                                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  %deinit.1 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %deinit.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %deinit.1, align 4
  %priv.1 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %priv.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.1, align 4
  tail call void %23(ptr noundef %25) #7
  %26 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.1, align 4
  %owner.1 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %owner.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %owner.1, align 4
  tail call void @module_put(ptr noundef %29) #7
  br label %if.end.1

if.end.1:                                         ; preds = %if.then3.1, %if.then.1.if.end.1_crit_edge
  tail call void @kfree(ptr noundef nonnull %19) #7
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.1, align 4
  br label %if.end8.1

if.end8.1:                                        ; preds = %if.end.1, %if.end8.if.end8.1_crit_edge
  %arrayidx.2 = getelementptr %struct.lib80211_crypt_info, ptr %info, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %32, null
  br i1 %tobool.not.2, label %if.end8.1.if.end8.2_crit_edge, label %if.then.2

if.end8.1.if.end8.2_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.2

if.then.2:                                        ; preds = %if.end8.1
  %ops.2 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ops.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.2, align 4
  %tobool2.not.2 = icmp eq ptr %34, null
  br i1 %tobool2.not.2, label %if.then.2.if.end.2_crit_edge, label %if.then3.2

if.then.2.if.end.2_crit_edge:                     ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.2

if.then3.2:                                       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  %deinit.2 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %deinit.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %deinit.2, align 4
  %priv.2 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %priv.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.2, align 4
  tail call void %36(ptr noundef %38) #7
  %39 = ptrtoint ptr %ops.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.2, align 4
  %owner.2 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %owner.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %owner.2, align 4
  tail call void @module_put(ptr noundef %42) #7
  br label %if.end.2

if.end.2:                                         ; preds = %if.then3.2, %if.then.2.if.end.2_crit_edge
  tail call void @kfree(ptr noundef nonnull %32) #7
  %43 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx.2, align 4
  br label %if.end8.2

if.end8.2:                                        ; preds = %if.end.2, %if.end8.1.if.end8.2_crit_edge
  %arrayidx.3 = getelementptr %struct.lib80211_crypt_info, ptr %info, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %45, null
  br i1 %tobool.not.3, label %if.end8.2.if.end8.3_crit_edge, label %if.then.3

if.end8.2.if.end8.3_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.3

if.then.3:                                        ; preds = %if.end8.2
  %ops.3 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %ops.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.3, align 4
  %tobool2.not.3 = icmp eq ptr %47, null
  br i1 %tobool2.not.3, label %if.then.3.if.end.3_crit_edge, label %if.then3.3

if.then.3.if.end.3_crit_edge:                     ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.3

if.then3.3:                                       ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  %deinit.3 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %deinit.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %deinit.3, align 4
  %priv.3 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %45, i32 0, i32 2
  %50 = ptrtoint ptr %priv.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv.3, align 4
  tail call void %49(ptr noundef %51) #7
  %52 = ptrtoint ptr %ops.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.3, align 4
  %owner.3 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %owner.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %owner.3, align 4
  tail call void @module_put(ptr noundef %55) #7
  br label %if.end.3

if.end.3:                                         ; preds = %if.then3.3, %if.then.3.if.end.3_crit_edge
  tail call void @kfree(ptr noundef nonnull %45) #7
  %56 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx.3, align 4
  br label %if.end8.3

if.end8.3:                                        ; preds = %if.end.3, %if.end8.2.if.end8.3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lib80211_crypt_deinit_entries(ptr noundef readonly %info, i32 noundef %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %crypt_deinit_list = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %crypt_deinit_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypt_deinit_list, align 4
  %cmp14.not45 = icmp eq ptr %3, %crypt_deinit_list
  br i1 %cmp14.not45, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool.not = icmp eq i32 %force, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.046 = phi ptr [ %3, %for.body.lr.ph ], [ %next.048, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %entry1.046 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.048 = load ptr, ptr %entry1.046, align 4
  %refcnt = getelementptr inbounds %struct.lib80211_crypt_data, ptr %entry1.046, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #7
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp17.not = icmp ne i32 %6, 0
  %or.cond = and i1 %tobool.not, %cmp17.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i.i43 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.046) #7
  br i1 %call.i.i43, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.046, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %entry1.046 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1.046, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %entry1.046 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.046, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.046, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %entry1.046, i32 0, i32 1
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %list_del.exit.if.end24_crit_edge, label %if.then21

list_del.exit.if.end24_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %deinit = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %deinit, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %entry1.046, i32 0, i32 2
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  tail call void %18(ptr noundef %20) #7
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %24) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %list_del.exit.if.end24_crit_edge
  tail call void @kfree(ptr noundef %entry1.046) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %for.body.for.inc_crit_edge
  %cmp14.not = icmp eq ptr %next.048, %crypt_deinit_list
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %25 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lib80211_crypt_delayed_deinit(ptr noundef %info, ptr nocapture noundef %crypt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypt, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %crypt, align 4
  %lock = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %crypt_quiesced = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %crypt_quiesced to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crypt_quiesced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then7, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %crypt_deinit_list = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 4
  %7 = ptrtoint ptr %crypt_deinit_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crypt_deinit_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %crypt_deinit_list, ptr noundef %8) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then7.list_add.exit_crit_edge

if.then7.list_add.exit_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %crypt_deinit_list, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %crypt_deinit_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %1, ptr %crypt_deinit_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then7.list_add.exit_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.not, label %if.then10, label %list_add.exit.if.end14_crit_edge

list_add.exit.if.end14_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  %crypt_deinit_timer = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 100
  %expires = getelementptr inbounds %struct.lib80211_crypt_info, ptr %info, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %crypt_deinit_timer) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %list_add.exit.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lib80211_register_crypto_ops(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops1 = getelementptr inbounds %struct.lib80211_crypto_alg, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ops, ptr %ops1, align 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @lib80211_crypto_lock) #7
  %2 = load ptr, ptr @lib80211_crypto_algs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @lib80211_crypto_algs, ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lib80211_crypto_algs, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @lib80211_crypto_algs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lib80211_crypto_lock, i32 noundef %call5) #7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lib80211_unregister_crypto_ops(ptr noundef readonly %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @lib80211_crypto_lock) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %alg.0.in = phi ptr [ @lib80211_crypto_algs, %entry ], [ %alg.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %alg.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %alg.0 = load ptr, ptr %alg.0.in, align 4
  %cmp6.not = icmp eq ptr %alg.0, @lib80211_crypto_algs
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ops8 = getelementptr inbounds %struct.lib80211_crypto_alg, ptr %alg.0, i32 0, i32 1
  %1 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops8, align 4
  %cmp9 = icmp eq ptr %2, %ops
  br i1 %cmp9, label %do.end17, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lib80211_crypto_lock, i32 noundef %call2) #7
  br label %cleanup

do.end17:                                         ; preds = %for.body
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %4) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %alg.0) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end17.list_del.exit_crit_edge

do.end17.list_del.exit_crit_edge:                 ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %alg.0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %alg.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alg.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end17.list_del.exit_crit_edge
  %11 = ptrtoint ptr %alg.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %alg.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %alg.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lib80211_crypto_lock, i32 noundef %call2) #7
  tail call void @kfree(ptr noundef %alg.0) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.end
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -22, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lib80211_get_crypto_ops(ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @lib80211_crypto_lock) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %alg.0.in = phi ptr [ @lib80211_crypto_algs, %entry ], [ %alg.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %alg.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %alg.0 = load ptr, ptr %alg.0.in, align 4
  %cmp6.not = icmp eq ptr %alg.0, @lib80211_crypto_algs
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ops = getelementptr inbounds %struct.lib80211_crypto_alg, ptr %alg.0, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call9 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %name) #12
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %found, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lib80211_crypto_lock, i32 noundef %call2) #7
  br label %cleanup

found:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ops.le = getelementptr inbounds %struct.lib80211_crypto_alg, ptr %alg.0, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lib80211_crypto_lock, i32 noundef %call2) #7
  %5 = ptrtoint ptr %ops.le to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.le, align 4
  br label %cleanup

cleanup:                                          ; preds = %found, %for.end
  %retval.0 = phi ptr [ %6, %found ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lib80211_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @lib80211_unregister_crypto_ops(ptr noundef nonnull @lib80211_crypt_null)
  %0 = load volatile ptr, ptr @lib80211_crypto_algs, align 4
  %cmp.i.not = icmp eq ptr %0, @lib80211_crypto_algs
  br i1 %cmp.i.not, label %do.end8, label %do.body5, !prof !65

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/lib80211.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 253, 0\0A.popsection", ""() #7, !srcloc !66
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lib80211_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  %call1 = tail call i32 @lib80211_register_crypto_ops(ptr noundef nonnull @lib80211_crypt_null)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @lib80211_crypt_null_init(i32 noundef %keyidx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 1 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lib80211_crypt_null_deinit(ptr nocapture noundef %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !49, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__UNIQUE_ID_description339, !1, !"__UNIQUE_ID_description339", i1 false, i1 false}
!1 = !{!"../net/wireless/lib80211.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_author340, !3, !"__UNIQUE_ID_author340", i1 false, i1 false}
!3 = !{!"../net/wireless/lib80211.c", i32 32, i32 1}
!4 = !{ptr @__UNIQUE_ID_file341, !5, !"__UNIQUE_ID_file341", i1 false, i1 false}
!5 = !{!"../net/wireless/lib80211.c", i32 33, i32 1}
!6 = !{ptr @__UNIQUE_ID_license342, !5, !"__UNIQUE_ID_license342", i1 false, i1 false}
!7 = !{ptr @lib80211_crypt_info_init.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/wireless/lib80211.c", i32 57, i32 2}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_lib80211_crypt_info_init, !11, !"__ksymtab_lib80211_crypt_info_init", i1 false, i1 false}
!11 = !{!"../net/wireless/lib80211.c", i32 62, i32 1}
!12 = !{ptr @__ksymtab_lib80211_crypt_info_free, !13, !"__ksymtab_lib80211_crypt_info_free", i1 false, i1 false}
!13 = !{!"../net/wireless/lib80211.c", i32 84, i32 1}
!14 = !{ptr @__ksymtab_lib80211_crypt_delayed_deinit, !15, !"__ksymtab_lib80211_crypt_delayed_deinit", i1 false, i1 false}
!15 = !{!"../net/wireless/lib80211.c", i32 162, i32 1}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/wireless/lib80211.c", i32 179, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lib80211_register_crypto_ops._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @lib80211_register_crypto_ops._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_lib80211_register_crypto_ops, !23, !"__ksymtab_lib80211_register_crypto_ops", i1 false, i1 false}
!23 = !{!"../net/wireless/lib80211.c", i32 184, i32 1}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/wireless/lib80211.c", i32 200, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lib80211_unregister_crypto_ops._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @lib80211_unregister_crypto_ops._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_lib80211_unregister_crypto_ops, !30, !"__ksymtab_lib80211_unregister_crypto_ops", i1 false, i1 false}
!30 = !{!"../net/wireless/lib80211.c", i32 207, i32 1}
!31 = !{ptr @__ksymtab_lib80211_get_crypto_ops, !32, !"__ksymtab_lib80211_get_crypto_ops", i1 false, i1 false}
!32 = !{!"../net/wireless/lib80211.c", i32 226, i32 1}
!33 = !{ptr @__initcall__kmod_lib80211__343_256_lib80211_init6, !34, !"__initcall__kmod_lib80211__343_256_lib80211_init6", i1 false, i1 false}
!34 = !{!"../net/wireless/lib80211.c", i32 256, i32 1}
!35 = !{ptr @__exitcall_lib80211_exit, !36, !"__exitcall_lib80211_exit", i1 false, i1 false}
!36 = !{!"../net/wireless/lib80211.c", i32 257, i32 1}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/wireless/lib80211.c", i32 128, i32 3}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @lib80211_crypt_deinit_handler._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @lib80211_crypt_deinit_handler._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/wireless/lib80211.c", i32 41, i32 8}
!44 = !{ptr @lib80211_crypto_lock, !43, !"lib80211_crypto_lock", i1 false, i1 false}
!45 = !{ptr @lib80211_crypto_algs, !46, !"lib80211_crypto_algs", i1 false, i1 false}
!46 = !{!"../net/wireless/lib80211.c", i32 40, i32 8}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/wireless/lib80211.c", i32 238, i32 10}
!49 = !{ptr @lib80211_crypt_null, !50, !"lib80211_crypt_null", i1 false, i1 false}
!50 = !{!"../net/wireless/lib80211.c", i32 237, i32 35}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/wireless/lib80211.c", i32 246, i32 2}
!53 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lib80211_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lib80211_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2156158963, i64 2156159451, i64 2156159000, i64 2156159056, i64 2156159090, i64 2156159114, i64 2156159155, i64 2156159176, i64 2156159204, i64 2156159238}
