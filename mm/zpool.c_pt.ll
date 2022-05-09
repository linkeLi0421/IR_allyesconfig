; ModuleID = '/llk/IR_all_yes/mm/zpool.c_pt.bc'
source_filename = "../mm/zpool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+zpool_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_zpool_register_driver\09\09\09\09"
module asm "\09.long\09__crc_zpool_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zpool_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22zpool_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_zpool_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zpool_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_zpool_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_zpool_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zpool_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22zpool_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_zpool_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zpool_has_pool\22, \22a\22\09"
module asm "\09.weak\09__crc_zpool_has_pool\09\09\09\09"
module asm "\09.long\09__crc_zpool_has_pool\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zpool_has_pool:\09\09\09\09\09"
module asm "\09.asciz \09\22zpool_has_pool\22\09\09\09\09\09"
module asm "__kstrtabns_zpool_has_pool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zpool_driver = type { ptr, ptr, %struct.atomic_t, %struct.list_head, ptr, ptr, i8, ptr, ptr, ptr, i8, ptr, ptr, ptr }
%struct.zpool = type { ptr, ptr, ptr, i8, i8 }

@drivers_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@drivers_head = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @drivers_head, ptr @drivers_head }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_zpool_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_zpool_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_zpool_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zpool_register_driver to i32), ptr @__kstrtab_zpool_register_driver, ptr @__kstrtabns_zpool_register_driver }, section "___ksymtab+zpool_register_driver", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mm/zpool.c\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_zpool_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_zpool_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_zpool_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zpool_unregister_driver to i32), ptr @__kstrtab_zpool_unregister_driver, ptr @__kstrtabns_zpool_unregister_driver }, section "___ksymtab+zpool_unregister_driver", align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zpool-%s\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_zpool_has_pool = external dso_local constant [0 x i8], align 1
@__kstrtabns_zpool_has_pool = external dso_local constant [0 x i8], align 1
@__ksymtab_zpool_has_pool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zpool_has_pool to i32), ptr @__kstrtab_zpool_has_pool, ptr @__kstrtabns_zpool_has_pool }, section "___ksymtab+zpool_has_pool", align 4
@zpool_create_pool.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"zpool\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zpool_create_pool\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"creating pool type %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"zpool: creating pool type %s\0A\00", [34 x i8] zeroinitializer }, align 32
@zpool_create_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013zpool: no driver for type %s\0A\00", [32 x i8] zeroinitializer }, align 32
@zpool_create_pool._entry_ptr = internal global ptr @zpool_create_pool._entry, section ".printk_index", align 4
@zpool_create_pool._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013zpool: couldn't create zpool - out of memory\0A\00", [48 x i8] zeroinitializer }, align 32
@zpool_create_pool._entry_ptr.9 = internal global ptr @zpool_create_pool._entry.7, section ".printk_index", align 4
@zpool_create_pool._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013zpool: couldn't create %s pool\0A\00", [62 x i8] zeroinitializer }, align 32
@zpool_create_pool._entry_ptr.12 = internal global ptr @zpool_create_pool._entry.10, section ".printk_index", align 4
@zpool_create_pool.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.13, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"created pool type %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"zpool: created pool type %s\0A\00", [35 x i8] zeroinitializer }, align 32
@zpool_destroy_pool.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zpool_destroy_pool\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"destroying pool type %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"zpool: destroying pool type %s\0A\00", [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file229 = internal constant [20 x i8] c"zpool.file=mm/zpool\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [18 x i8] c"zpool.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [47 x i8] c"zpool.author=Dan Streetman <ddstreet@ieee.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [59 x i8] c"zpool.description=Common API for compressed memory storage\00", section ".modinfo", align 1
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drivers_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"drivers_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"drivers_head\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 29, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 61, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 122, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 157, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 167, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 173, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 185, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 191, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 209, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [14 x i8] c"../mm/zpool.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 30, i32 8 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__ksymtab_zpool_has_pool, ptr @__ksymtab_zpool_register_driver, ptr @__ksymtab_zpool_unregister_driver, ptr @zpool_create_pool._entry, ptr @zpool_create_pool._entry.10, ptr @zpool_create_pool._entry.7, ptr @zpool_create_pool._entry_ptr, ptr @zpool_create_pool._entry_ptr.12, ptr @zpool_create_pool._entry_ptr.9, ptr @drivers_lock, ptr @drivers_head, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpool_create_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpool_create_pool._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpool_create_pool._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zpool_register_driver(ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @drivers_lock) #8
  %refcount = getelementptr inbounds %struct.zpool_driver, ptr %driver, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %refcount, align 4
  %list = getelementptr inbounds %struct.zpool_driver, ptr %driver, i32 0, i32 3
  %1 = load ptr, ptr @drivers_head, align 4
  %call.i.i2 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @drivers_head, ptr noundef %1) #8
  br i1 %call.i.i2, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.zpool_driver, ptr %driver, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @drivers_head, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @drivers_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zpool_unregister_driver(ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @drivers_lock) #8
  %refcount1 = getelementptr inbounds %struct.zpool_driver, ptr %driver, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount1, i32 noundef 4) #8
  %0 = ptrtoint ptr %refcount1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.end.thread, label %if.end, !prof !58

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #8
  br label %if.else

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not = icmp eq i32 %1, 0
  br i1 %cmp20.not, label %if.end.if.else_crit_edge, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %if.end.if.else_crit_edge, %if.end.thread
  %list = getelementptr inbounds %struct.zpool_driver, ptr %driver, i32 0, i32 3
  %call.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i26, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.zpool_driver, ptr %driver, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.zpool_driver, ptr %driver, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %list_del.exit, %if.end.if.end22_crit_edge
  %ret.0 = phi i32 [ 0, %list_del.exit ], [ -16, %if.end.if.end22_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @zpool_has_pool(ptr noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @drivers_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @drivers_head, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @drivers_head
  br i1 %cmp.not.i, label %for.cond.i.zpool_get_driver.exit.thread_crit_edge, label %for.body.i

for.cond.i.zpool_get_driver.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zpool_get_driver.exit.thread

for.body.i:                                       ; preds = %for.cond.i
  %driver.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %driver.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %type) #11
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %owner.i = getelementptr i8, ptr %.pn.i, i32 -8
  %3 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner.i, align 4
  %call2.i = tail call zeroext i1 @try_module_get(ptr noundef %4) #8
  br i1 %call2.i, label %zpool_get_driver.exit, label %if.then.i.zpool_get_driver.exit.thread_crit_edge

if.then.i.zpool_get_driver.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zpool_get_driver.exit.thread

zpool_get_driver.exit.thread:                     ; preds = %if.then.i.zpool_get_driver.exit.thread_crit_edge, %for.cond.i.zpool_get_driver.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  br label %if.then

zpool_get_driver.exit:                            ; preds = %if.then.i
  %driver.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %refcount.i = getelementptr i8, ptr %.pn.i, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !59
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  %tobool.not = icmp eq ptr %driver.0.i.le, null
  br i1 %tobool.not, label %zpool_get_driver.exit.if.then_crit_edge, label %zpool_get_driver.exit.if.end5_crit_edge

zpool_get_driver.exit.if.end5_crit_edge:          ; preds = %zpool_get_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

zpool_get_driver.exit.if.then_crit_edge:          ; preds = %zpool_get_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %zpool_get_driver.exit.if.then_crit_edge, %zpool_get_driver.exit.thread
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %type) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @drivers_lock) #8
  br label %for.cond.i13

for.cond.i13:                                     ; preds = %for.body.i17.for.cond.i13_crit_edge, %if.then
  %.pn.in.i10 = phi ptr [ @drivers_head, %if.then ], [ %.pn.i11, %for.body.i17.for.cond.i13_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i11 = load ptr, ptr %.pn.in.i10, align 4
  %cmp.not.i12 = icmp eq ptr %.pn.i11, @drivers_head
  br i1 %cmp.not.i12, label %for.cond.i13.if.end.thread37_crit_edge, label %for.body.i17

for.cond.i13.if.end.thread37_crit_edge:           ; preds = %for.cond.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread37

for.body.i17:                                     ; preds = %for.cond.i13
  %driver.0.i14 = getelementptr i8, ptr %.pn.i11, i32 -12
  %7 = ptrtoint ptr %driver.0.i14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.0.i14, align 4
  %call.i15 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %type) #11
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.then.i20, label %for.body.i17.for.cond.i13_crit_edge

for.body.i17.for.cond.i13_crit_edge:              ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i13

if.then.i20:                                      ; preds = %for.body.i17
  %owner.i18 = getelementptr i8, ptr %.pn.i11, i32 -8
  %9 = ptrtoint ptr %owner.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i18, align 4
  %call2.i19 = tail call zeroext i1 @try_module_get(ptr noundef %10) #8
  br i1 %call2.i19, label %if.end, label %if.then.i20.if.end.thread37_crit_edge

if.then.i20.if.end.thread37_crit_edge:            ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread37

if.end.thread37:                                  ; preds = %if.then.i20.if.end.thread37_crit_edge, %for.cond.i13.if.end.thread37_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  br label %cleanup

if.end:                                           ; preds = %if.then.i20
  %driver.0.i14.le = getelementptr i8, ptr %.pn.i11, i32 -12
  %refcount.i22 = getelementptr i8, ptr %.pn.i11, i32 -4
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i22, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i22, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i22, ptr %refcount.i22, i32 1, ptr elementtype(i32) %refcount.i22) #8, !srcloc !59
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  %tobool3.not = icmp eq ptr %driver.0.i14.le, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %zpool_get_driver.exit.if.end5_crit_edge
  %driver.034 = phi ptr [ %driver.0.i14.le, %if.end.if.end5_crit_edge ], [ %driver.0.i.le, %zpool_get_driver.exit.if.end5_crit_edge ]
  %refcount.i27 = getelementptr inbounds %struct.zpool_driver, ptr %driver.034, i32 0, i32 2
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i27, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i27, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i27, ptr %refcount.i27, i32 1, ptr elementtype(i32) %refcount.i27) #8, !srcloc !60
  %owner.i29 = getelementptr inbounds %struct.zpool_driver, ptr %driver.034, i32 0, i32 1
  %13 = ptrtoint ptr %owner.i29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %owner.i29, align 4
  tail call void @module_put(ptr noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.end.thread37
  %tobool3.not36 = phi i1 [ false, %if.end.cleanup_crit_edge ], [ true, %if.end5 ], [ false, %if.end.thread37 ]
  ret i1 %tobool3.not36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zpool_create_pool(ptr noundef %type, ptr noundef %name, i32 noundef %gfp, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpool_create_pool.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpool_create_pool, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zpool_create_pool.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.5, ptr noundef %type) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @drivers_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %.pn.in.i = phi ptr [ @drivers_head, %do.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @drivers_head
  br i1 %cmp.not.i, label %for.cond.i.zpool_get_driver.exit.thread_crit_edge, label %for.body.i

for.cond.i.zpool_get_driver.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zpool_get_driver.exit.thread

for.body.i:                                       ; preds = %for.cond.i
  %driver.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %1 = ptrtoint ptr %driver.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %type) #11
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %owner.i = getelementptr i8, ptr %.pn.i, i32 -8
  %3 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner.i, align 4
  %call2.i = tail call zeroext i1 @try_module_get(ptr noundef %4) #8
  br i1 %call2.i, label %zpool_get_driver.exit, label %if.then.i.zpool_get_driver.exit.thread_crit_edge

if.then.i.zpool_get_driver.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zpool_get_driver.exit.thread

zpool_get_driver.exit.thread:                     ; preds = %if.then.i.zpool_get_driver.exit.thread_crit_edge, %for.cond.i.zpool_get_driver.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  br label %if.then5

zpool_get_driver.exit:                            ; preds = %if.then.i
  %driver.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %refcount.i = getelementptr i8, ptr %.pn.i, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !59
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  %tobool4.not = icmp eq ptr %driver.0.i.le, null
  br i1 %tobool4.not, label %zpool_get_driver.exit.if.then5_crit_edge, label %zpool_get_driver.exit.if.end16_crit_edge

zpool_get_driver.exit.if.end16_crit_edge:         ; preds = %zpool_get_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

zpool_get_driver.exit.if.then5_crit_edge:         ; preds = %zpool_get_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %zpool_get_driver.exit.if.then5_crit_edge, %zpool_get_driver.exit.thread
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %type) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @drivers_lock) #8
  br label %for.cond.i94

for.cond.i94:                                     ; preds = %for.body.i98.for.cond.i94_crit_edge, %if.then5
  %.pn.in.i91 = phi ptr [ @drivers_head, %if.then5 ], [ %.pn.i92, %for.body.i98.for.cond.i94_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i91 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i92 = load ptr, ptr %.pn.in.i91, align 4
  %cmp.not.i93 = icmp eq ptr %.pn.i92, @drivers_head
  br i1 %cmp.not.i93, label %for.cond.i94.if.end8.thread120_crit_edge, label %for.body.i98

for.cond.i94.if.end8.thread120_crit_edge:         ; preds = %for.cond.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.thread120

for.body.i98:                                     ; preds = %for.cond.i94
  %driver.0.i95 = getelementptr i8, ptr %.pn.i92, i32 -12
  %7 = ptrtoint ptr %driver.0.i95 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.0.i95, align 4
  %call.i96 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %type) #11
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.then.i101, label %for.body.i98.for.cond.i94_crit_edge

for.body.i98.for.cond.i94_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i94

if.then.i101:                                     ; preds = %for.body.i98
  %owner.i99 = getelementptr i8, ptr %.pn.i92, i32 -8
  %9 = ptrtoint ptr %owner.i99 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i99, align 4
  %call2.i100 = tail call zeroext i1 @try_module_get(ptr noundef %10) #8
  br i1 %call2.i100, label %if.end8, label %if.then.i101.if.end8.thread120_crit_edge

if.then.i101.if.end8.thread120_crit_edge:         ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.thread120

if.end8.thread120:                                ; preds = %if.then.i101.if.end8.thread120_crit_edge, %for.cond.i94.if.end8.thread120_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  br label %do.end13

if.end8:                                          ; preds = %if.then.i101
  %driver.0.i95.le = getelementptr i8, ptr %.pn.i92, i32 -12
  %refcount.i103 = getelementptr i8, ptr %.pn.i92, i32 -4
  %call.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i103, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i103, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i103, ptr %refcount.i103, i32 1, ptr elementtype(i32) %refcount.i103) #8, !srcloc !59
  tail call void @_raw_spin_unlock(ptr noundef nonnull @drivers_lock) #8
  %tobool9.not = icmp eq ptr %driver.0.i95.le, null
  br i1 %tobool9.not, label %if.end8.do.end13_crit_edge, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end8.do.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end13:                                         ; preds = %if.end8.do.end13_crit_edge, %if.end8.thread120
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %type) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end8.if.end16_crit_edge, %zpool_get_driver.exit.if.end16_crit_edge
  %driver.0119 = phi ptr [ %driver.0.i95.le, %if.end8.if.end16_crit_edge ], [ %driver.0.i.le, %zpool_get_driver.exit.if.end16_crit_edge ]
  %and.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %if.end16.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !62

if.end16.kmalloc.exit_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %if.end16
  %and2.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and6.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %if.end16.kmalloc.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end16.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i, i32 7
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %gfp, i32 noundef 16) #13
  %tobool18.not = icmp eq ptr %call7.i, null
  br i1 %tobool18.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  %refcount.i108 = getelementptr inbounds %struct.zpool_driver, ptr %driver.0119, i32 0, i32 2
  %call.i.i.i109 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i108, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i108, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i108, ptr %refcount.i108, i32 1, ptr elementtype(i32) %refcount.i108) #8, !srcloc !60
  %owner.i110 = getelementptr inbounds %struct.zpool_driver, ptr %driver.0119, i32 0, i32 1
  %15 = ptrtoint ptr %owner.i110 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %owner.i110, align 4
  tail call void @module_put(ptr noundef %16) #8
  br label %cleanup

if.end25:                                         ; preds = %kmalloc.exit
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %driver.0119, ptr %call7.i, align 8
  %create = getelementptr inbounds %struct.zpool_driver, ptr %driver.0119, i32 0, i32 4
  %18 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %create, align 4
  %call27 = tail call ptr %19(ptr noundef %name, i32 noundef %gfp, ptr noundef %ops, ptr noundef nonnull %call7.i) #8
  %pool = getelementptr inbounds %struct.zpool, ptr %call7.i, i32 0, i32 1
  %20 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call27, ptr %pool, align 4
  %ops28 = getelementptr inbounds %struct.zpool, ptr %call7.i, i32 0, i32 2
  %21 = ptrtoint ptr %ops28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ops, ptr %ops28, align 8
  %shrink = getelementptr inbounds %struct.zpool_driver, ptr %driver.0119, i32 0, i32 9
  %22 = ptrtoint ptr %shrink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shrink, align 4
  %tobool29.not = icmp eq ptr %23, null
  %tobool30.not = icmp eq ptr %ops, null
  %or.cond = or i1 %tobool30.not, %tobool29.not
  br i1 %or.cond, label %if.end25.land.end_crit_edge, label %land.rhs

if.end25.land.end_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %tobool31 = icmp ne ptr %25, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end25.land.end_crit_edge
  %26 = phi i1 [ false, %if.end25.land.end_crit_edge ], [ %tobool31, %land.rhs ]
  %evictable = getelementptr inbounds %struct.zpool, ptr %call7.i, i32 0, i32 3
  %frombool32 = zext i1 %26 to i8
  %27 = ptrtoint ptr %evictable to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool32, ptr %evictable, align 4
  %sleep_mapped = getelementptr inbounds %struct.zpool_driver, ptr %driver.0119, i32 0, i32 10
  %28 = ptrtoint ptr %sleep_mapped to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sleep_mapped, align 4, !range !63
  %can_sleep_mapped = getelementptr inbounds %struct.zpool, ptr %call7.i, i32 0, i32 4
  %30 = ptrtoint ptr %can_sleep_mapped to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %can_sleep_mapped, align 1
  %tobool36.not = icmp eq ptr %call27, null
  br i1 %tobool36.not, label %do.end40, label %do.body44

do.end40:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %type) #12
  %refcount.i111 = getelementptr inbounds %struct.zpool_driver, ptr %driver.0119, i32 0, i32 2
  %call.i.i.i112 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i111, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i111, i32 1, i32 3, i32 1) #8
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i111, ptr %refcount.i111, i32 1, ptr elementtype(i32) %refcount.i111) #8, !srcloc !60
  %owner.i113 = getelementptr inbounds %struct.zpool_driver, ptr %driver.0119, i32 0, i32 1
  %32 = ptrtoint ptr %owner.i113 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %owner.i113, align 4
  tail call void @module_put(ptr noundef %33) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

do.body44:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpool_create_pool.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpool_create_pool, %if.then56)) #8
          to label %cleanup [label %if.then56], !srcloc !61

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zpool_create_pool.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.14, ptr noundef %type) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.body44, %do.end40, %do.end22, %do.end13
  %retval.0 = phi ptr [ null, %do.end40 ], [ null, %do.end22 ], [ null, %do.end13 ], [ %call7.i, %if.then56 ], [ %call7.i, %do.body44 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zpool_destroy_pool(ptr noundef %zpool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpool_destroy_pool.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpool_destroy_pool, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zpool_destroy_pool.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.17, ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zpool, align 4
  %destroy = getelementptr inbounds %struct.zpool_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy, align 4
  %pool = getelementptr inbounds %struct.zpool, ptr %zpool, i32 0, i32 1
  %8 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pool, align 4
  tail call void %7(ptr noundef %9) #8
  %10 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zpool, align 4
  %refcount.i = getelementptr inbounds %struct.zpool_driver, ptr %11, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !60
  %owner.i = getelementptr inbounds %struct.zpool_driver, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %14) #8
  tail call void @kfree(ptr noundef %zpool) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @zpool_get_type(ptr nocapture noundef readonly %zpool) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @zpool_malloc_support_movable(ptr nocapture noundef readonly %zpool) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %malloc_support_movable = getelementptr inbounds %struct.zpool_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %malloc_support_movable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %malloc_support_movable, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zpool_malloc(ptr nocapture noundef readonly %zpool, i32 noundef %size, i32 noundef %gfp, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %malloc = getelementptr inbounds %struct.zpool_driver, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %malloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %malloc, align 4
  %pool = getelementptr inbounds %struct.zpool, ptr %zpool, i32 0, i32 1
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %size, i32 noundef %gfp, ptr noundef %handle) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zpool_free(ptr nocapture noundef readonly %zpool, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %free = getelementptr inbounds %struct.zpool_driver, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free, align 4
  %pool = getelementptr inbounds %struct.zpool, ptr %zpool, i32 0, i32 1
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  tail call void %3(ptr noundef %5, i32 noundef %handle) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zpool_shrink(ptr nocapture noundef readonly %zpool, i32 noundef %pages, ptr noundef %reclaimed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %shrink = getelementptr inbounds %struct.zpool_driver, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %shrink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shrink, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pool = getelementptr inbounds %struct.zpool, ptr %zpool, i32 0, i32 1
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %pages, ptr noundef %reclaimed) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -22, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zpool_map_handle(ptr nocapture noundef readonly %zpool, i32 noundef %handle, i32 noundef %mapmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %map = getelementptr inbounds %struct.zpool_driver, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %pool = getelementptr inbounds %struct.zpool, ptr %zpool, i32 0, i32 1
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %call = tail call ptr %3(ptr noundef %5, i32 noundef %handle, i32 noundef %mapmode) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zpool_unmap_handle(ptr nocapture noundef readonly %zpool, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %unmap = getelementptr inbounds %struct.zpool_driver, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmap, align 4
  %pool = getelementptr inbounds %struct.zpool, ptr %zpool, i32 0, i32 1
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  tail call void %3(ptr noundef %5, i32 noundef %handle) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @zpool_get_total_size(ptr nocapture noundef readonly %zpool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 4
  %total_size = getelementptr inbounds %struct.zpool_driver, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %total_size, align 4
  %pool = getelementptr inbounds %struct.zpool, ptr %zpool, i32 0, i32 1
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %call = tail call i64 %3(ptr noundef %5) #8
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @zpool_evictable(ptr nocapture noundef readonly %zpool) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %evictable = getelementptr inbounds %struct.zpool, ptr %zpool, i32 0, i32 3
  %0 = ptrtoint ptr %evictable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %evictable, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @zpool_can_sleep_mapped(ptr nocapture noundef readonly %zpool) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %can_sleep_mapped = getelementptr inbounds %struct.zpool, ptr %zpool, i32 0, i32 4
  %0 = ptrtoint ptr %can_sleep_mapped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %can_sleep_mapped, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !44, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_zpool_register_driver, !1, !"__ksymtab_zpool_register_driver", i1 false, i1 false}
!1 = !{!"../mm/zpool.c", i32 43, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/zpool.c", i32 61, i32 2}
!4 = !{ptr @__ksymtab_zpool_unregister_driver, !5, !"__ksymtab_zpool_unregister_driver", i1 false, i1 false}
!5 = !{!"../mm/zpool.c", i32 70, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/zpool.c", i32 122, i32 3}
!8 = !{ptr @__ksymtab_zpool_has_pool, !9, !"__ksymtab_zpool_has_pool", i1 false, i1 false}
!9 = !{!"../mm/zpool.c", i32 132, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/zpool.c", i32 157, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @zpool_create_pool.__UNIQUE_ID_ddebug226, !11, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/zpool.c", i32 167, i32 3}
!18 = !{ptr @zpool_create_pool._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @zpool_create_pool._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/zpool.c", i32 173, i32 3}
!22 = !{ptr @zpool_create_pool._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @zpool_create_pool._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/zpool.c", i32 185, i32 3}
!26 = !{ptr @zpool_create_pool._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @zpool_create_pool._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../mm/zpool.c", i32 191, i32 2}
!30 = !{ptr @zpool_create_pool.__UNIQUE_ID_ddebug227, !29, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!31 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../mm/zpool.c", i32 209, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @zpool_destroy_pool.__UNIQUE_ID_ddebug228, !33, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!36 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_file229, !38, !"__UNIQUE_ID_file229", i1 false, i1 false}
!38 = !{!"../mm/zpool.c", i32 397, i32 1}
!39 = !{ptr @__UNIQUE_ID_license230, !38, !"__UNIQUE_ID_license230", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_author231, !41, !"__UNIQUE_ID_author231", i1 false, i1 false}
!41 = !{!"../mm/zpool.c", i32 398, i32 1}
!42 = !{ptr @__UNIQUE_ID_description232, !43, !"__UNIQUE_ID_description232", i1 false, i1 false}
!43 = !{!"../mm/zpool.c", i32 399, i32 1}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../mm/zpool.c", i32 30, i32 8}
!46 = !{ptr @drivers_lock, !45, !"drivers_lock", i1 false, i1 false}
!47 = !{ptr @drivers_head, !48, !"drivers_head", i1 false, i1 false}
!48 = !{!"../mm/zpool.c", i32 29, i32 8}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2148674762, i64 2148674788, i64 2148674817, i64 2148674851, i64 2148674882, i64 2148674905}
!60 = !{i64 2148677227, i64 2148677253, i64 2148677282, i64 2148677316, i64 2148677347, i64 2148677370}
!61 = !{i64 2148384278, i64 2148384283, i64 2148384296, i64 2148384340, i64 2148384374, i64 2148384395}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i8 0, i8 2}
