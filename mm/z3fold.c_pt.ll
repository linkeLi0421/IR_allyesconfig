; ModuleID = '/llk/IR_all_yes/mm/z3fold.c_pt.bc'
source_filename = "../mm/z3fold.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.zpool_driver = type { ptr, ptr, %struct.atomic_t, %struct.list_head, ptr, ptr, i8, ptr, ptr, ptr, i8, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.z3fold_ops = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%union.anon.71 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.z3fold_pool = type { ptr, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head, %struct.atomic64_t, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.z3fold_header = type { %struct.list_head, %struct.spinlock, %struct.kref, %struct.work_struct, ptr, ptr, i16, i16, i16, i16, i16, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.z3fold_buddy_slots = type { [4 x i32], i32, %struct.rwlock_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_alias264 = internal constant [26 x i8] c"z3fold.alias=zpool-z3fold\00", section ".modinfo", align 1
@z3fold_zpool_driver = internal global { %struct.zpool_driver, [36 x i8] } { %struct.zpool_driver { ptr @.str, ptr null, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, ptr @z3fold_zpool_create, ptr @z3fold_zpool_destroy, i8 0, ptr @z3fold_zpool_malloc, ptr @z3fold_zpool_free, ptr @z3fold_zpool_shrink, i8 1, ptr @z3fold_zpool_map, ptr @z3fold_zpool_unmap, ptr @z3fold_zpool_total_size }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_z3fold__266_1816_init_z3fold6 = internal global ptr @init_z3fold, section ".initcall6.init", align 4
@__exitcall_exit_z3fold = internal global ptr @exit_z3fold, section ".exitcall.exit", align 4
@__UNIQUE_ID_file267 = internal constant [22 x i8] c"z3fold.file=mm/z3fold\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [19 x i8] c"z3fold.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author269 = internal constant [49 x i8] c"z3fold.author=Vitaly Wool <vitalywool@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description270 = internal constant [57 x i8] c"z3fold.description=3-Fold Allocator for Compressed Pages\00", section ".modinfo", align 1
@z3fold_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"z3fold\00", [25 x i8] zeroinitializer }, align 32
@z3fold_zpool_ops = internal constant { %struct.z3fold_ops, [28 x i8] } { %struct.z3fold_ops { ptr @z3fold_zpool_evict }, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"z3fold_handle\00", [18 x i8] zeroinitializer }, align 32
@z3fold_create_pool.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pool->lock\00", [20 x i8] zeroinitializer }, align 32
@z3fold_create_pool.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pool->stale_lock\00", [46 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@z3fold_create_pool.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&pool->work)\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@z3fold_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @z3fold_page_migrate, ptr @z3fold_page_isolate, ptr @z3fold_page_putback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(!PageMovable(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(!PageIsolated(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"VM_BUG_ON_PAGE(!arch_test_bit(PAGE_CLAIMED, &page->private))\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VM_BUG_ON_PAGE(!PageLocked(newpage))\00", [59 x i8] zeroinitializer }, align 32
@z3fold_page_migrate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&new_zhdr->page_lock\00", [43 x i8] zeroinitializer }, align 32
@z3fold_page_migrate.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&new_zhdr->work)\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm/z3fold.c\00", [20 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@alloc_slots.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&slots->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PageIsolated(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@z3fold_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.17, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013z3fold: No free chunks in unbuddied\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"z3fold_alloc\00", [19 x i8] zeroinitializer }, align 32
@z3fold_alloc._entry_ptr = internal global ptr @z3fold_alloc._entry, section ".printk_index", align 4
@init_z3fold_page.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&zhdr->page_lock\00", [47 x i8] zeroinitializer }, align 32
@init_z3fold_page.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&zhdr->work)\00", [33 x i8] zeroinitializer }, align 32
@z3fold_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.17, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013z3fold: %s: unknown bud %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"z3fold_free\00", [20 x i8] zeroinitializer }, align 32
@z3fold_free._entry_ptr = internal global ptr @z3fold_free._entry, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@z3fold_reclaim_page.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&slots.lock\00", [20 x i8] zeroinitializer }, align 32
@z3fold_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.17, i32 1514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013z3fold: unknown buddy id %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"z3fold_map\00", [21 x i8] zeroinitializer }, align 32
@z3fold_map._entry_ptr = internal global ptr @z3fold_map._entry, section ".printk_index", align 4
@z3fold_fs = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 0, ptr @z3fold_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"z3fold_zpool_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1776, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"z3fold_mnt\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 347, i32 25 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1777, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"z3fold_zpool_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1708, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 982, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 987, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 988, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1003, i32 21 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1011, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"z3fold_aops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1690, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1608, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1609, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1610, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1611, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1632, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1633, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 921, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 414, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 809, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 224, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1160, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 717, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1568, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 788, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 260, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1102, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 405, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 411, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1239, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 108, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1322, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1514, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [10 x i8] c"z3fold_fs\00", align 1
@___asan_gen_.180 = private constant [15 x i8] c"../mm/z3fold.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 341, i32 32 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_alias264, ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__exitcall_exit_z3fold, ptr @__initcall__kmod_z3fold__266_1816_init_z3fold6, ptr @exit_z3fold, ptr @z3fold_alloc._entry, ptr @z3fold_alloc._entry_ptr, ptr @z3fold_free._entry, ptr @z3fold_free._entry_ptr, ptr @z3fold_map._entry, ptr @z3fold_map._entry_ptr, ptr @z3fold_zpool_driver, ptr @z3fold_mnt, ptr @.str, ptr @z3fold_zpool_ops, ptr @.str.1, ptr @z3fold_create_pool.__key, ptr @.str.2, ptr @z3fold_create_pool.__key.3, ptr @.str.4, ptr @.str.5, ptr @z3fold_create_pool.__key.6, ptr @.str.7, ptr @z3fold_aops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @z3fold_page_migrate.__key, ptr @.str.12, ptr @z3fold_page_migrate.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @alloc_slots.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @init_z3fold_page.__key, ptr @.str.28, ptr @init_z3fold_page.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @z3fold_reclaim_page.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @z3fold_fs], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_zpool_driver to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_zpool_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_create_pool.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_create_pool.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_create_pool.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_page_migrate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_page_migrate.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_slots.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_z3fold_page.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_z3fold_page.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_reclaim_page.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z3fold_fs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_z3fold() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @z3fold_mnt, align 4
  tail call void @kern_unmount(ptr noundef %0) #12
  %call = tail call i32 @zpool_unregister_driver(ptr noundef nonnull @z3fold_zpool_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zpool_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_z3fold() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kern_mount(ptr noundef nonnull @z3fold_fs) #12
  store ptr %call.i, ptr @z3fold_mnt, align 4
  %cmp.i.i.not = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call.i to i32
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @zpool_register_driver(ptr noundef nonnull @z3fold_zpool_driver) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @z3fold_zpool_create(ptr noundef %name, i32 noundef %gfp, ptr noundef %zpool_ops, ptr noundef %zpool) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %zpool_ops, null
  %cond = select i1 %tobool.not, ptr null, ptr @z3fold_zpool_ops
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %entry.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !112

entry.kzalloc.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %entry.kzalloc.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %entry.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i.i = or i32 %gfp, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i, i32 8
  %0 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i.i, i32 noundef 192) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.if.end_crit_edge, label %if.end.i

kzalloc.exit.i.if.end_crit_edge:                  ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %kzalloc.exit.i
  %call1.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef 64, i32 noundef 0, ptr noundef null) #12
  %c_handle.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %c_handle.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i, ptr %c_handle.i, align 8
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i.out_c.i_crit_edge, label %do.body.i

if.end.i.out_c.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_c.i

do.body.i:                                        ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @z3fold_create_pool.__key, i16 noundef signext 3) #12
  %stale_lock.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %stale_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @z3fold_create_pool.__key.3, i16 noundef signext 3) #12
  %call11.i = tail call noalias ptr @__alloc_percpu(i32 noundef 496, i32 noundef 4) #16
  %unbuddied.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %unbuddied.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11.i, ptr %unbuddied.i, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %do.body.i.out_pool.i_crit_edge, label %for.cond.preheader.i

do.body.i.out_pool.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_pool.i

for.cond.preheader.i:                             ; preds = %do.body.i
  %call16100.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16100.i, i32 %4)
  %cmp101.i = icmp ult i32 %call16100.i, %4
  br i1 %cmp101.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end27.i_crit_edge

for.cond.preheader.i.for.end27.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end27.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.body25.i
  %call16.i = tail call i32 @cpumask_next(i32 noundef %call16102.i, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call16.i, %5
  br i1 %cmp.i, label %for.cond.loopexit.i.for.body.i_crit_edge, label %for.cond.loopexit.i.for.end27.i_crit_edge

for.cond.loopexit.i.for.end27.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end27.i

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call16102.i = phi i32 [ %call16.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %call16100.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %unbuddied.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unbuddied.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call16102.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, %8
  %11 = inttoptr i32 %add.i to ptr
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.body.i
  %i.099.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.body25.i.for.body25.i_crit_edge ]
  %arrayidx26.i = getelementptr %struct.list_head, ptr %11, i32 %i.099.i
  %12 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx26.i, ptr %arrayidx26.i, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %11, i32 %i.099.i, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx26.i, ptr %prev.i.i, align 4
  %inc.i = add nuw nsw i32 %i.099.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 62
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25.i

for.end27.i:                                      ; preds = %for.cond.loopexit.i.for.end27.i_crit_edge, %for.cond.preheader.i.for.end27.i_crit_edge
  %lru.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %lru.i, ptr %lru.i, align 8
  %prev.i94.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev.i94.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lru.i, ptr %prev.i94.i, align 4
  %stale.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %stale.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %stale.i, ptr %stale.i, align 8
  %prev.i95.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i95.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %stale.i, ptr %prev.i95.i, align 4
  %pages_nr.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %pages_nr.i, i64 noundef 0) #12
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %name, ptr %call7.i.i.i, align 8
  %call30.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 917514, i32 noundef 1, ptr noundef %name) #12
  %compact_wq.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %compact_wq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call30.i, ptr %compact_wq.i, align 8
  %tobool32.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool32.not.i, label %for.end27.i.out_unbuddied.i_crit_edge, label %if.end34.i

for.end27.i.out_unbuddied.i_crit_edge:            ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unbuddied.i

if.end34.i:                                       ; preds = %for.end27.i
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i.i, align 8
  %call36.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 917514, i32 noundef 1, ptr noundef %21) #12
  %release_wq.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %release_wq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call36.i, ptr %release_wq.i, align 4
  %tobool38.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool38.not.i, label %if.end34.i.out_wq.i_crit_edge, label %if.end40.i

if.end34.i.out_wq.i_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_wq.i

if.end40.i:                                       ; preds = %if.end34.i
  %23 = load ptr, ptr @z3fold_mnt, align 4
  %mnt_sb.i.i = getelementptr inbounds %struct.vfsmount, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %mnt_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mnt_sb.i.i, align 4
  %call.i.i = tail call ptr @alloc_anon_inode(ptr noundef %25) #12
  %inode.i.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %inode.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %out_rwq.i, label %if.then

out_rwq.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %inode.i.i, align 4
  %28 = ptrtoint ptr %release_wq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %release_wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %29) #12
  br label %out_wq.i

out_wq.i:                                         ; preds = %out_rwq.i, %if.end34.i.out_wq.i_crit_edge
  %30 = ptrtoint ptr %compact_wq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %compact_wq.i, align 8
  tail call void @destroy_workqueue(ptr noundef %31) #12
  br label %out_unbuddied.i

out_unbuddied.i:                                  ; preds = %out_wq.i, %for.end27.i.out_unbuddied.i_crit_edge
  %32 = ptrtoint ptr %unbuddied.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %unbuddied.i, align 4
  tail call void @free_percpu(ptr noundef %33) #12
  br label %out_pool.i

out_pool.i:                                       ; preds = %out_unbuddied.i, %do.body.i.out_pool.i_crit_edge
  %34 = ptrtoint ptr %c_handle.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %c_handle.i, align 8
  tail call void @kmem_cache_destroy(ptr noundef %35) #12
  br label %out_c.i

out_c.i:                                          ; preds = %out_pool.i, %if.end.i.out_c.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end

if.then:                                          ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_mapping.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.address_space, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %private_data.i.i, align 4
  %39 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %inode.i.i, align 4
  %i_mapping6.i.i = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %i_mapping6.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_mapping6.i.i, align 8
  %a_ops.i.i = getelementptr inbounds %struct.address_space, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %a_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @z3fold_aops, ptr %a_ops.i.i, align 4
  %work.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #12
  %44 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @z3fold_create_pool.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry49.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %45 = ptrtoint ptr %entry49.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry49.i, ptr %entry49.i, align 4
  %prev.i96.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 13, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i96.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry49.i, ptr %prev.i96.i, align 8
  %func.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 13, i32 2
  %47 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @free_pages_work, ptr %func.i, align 4
  %ops53.i = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %ops53.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cond, ptr %ops53.i, align 4
  %zpool2 = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 9
  %49 = ptrtoint ptr %zpool2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %zpool, ptr %zpool2, align 8
  %zpool_ops3 = getelementptr inbounds %struct.z3fold_pool, ptr %call7.i.i.i, i32 0, i32 10
  %50 = ptrtoint ptr %zpool_ops3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %zpool_ops, ptr %zpool_ops3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %out_c.i, %kzalloc.exit.i.if.end_crit_edge
  %retval.0.i10 = phi ptr [ %call7.i.i.i, %if.then ], [ null, %kzalloc.exit.i.if.end_crit_edge ], [ null, %out_c.i ]
  ret ptr %retval.0.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z3fold_zpool_destroy(ptr noundef %pool) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c_handle.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 7
  %0 = ptrtoint ptr %c_handle.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_handle.i, align 8
  tail call void @kmem_cache_destroy(ptr noundef %1) #12
  %compact_wq.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 11
  %2 = ptrtoint ptr %compact_wq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compact_wq.i, align 8
  tail call void @destroy_workqueue(ptr noundef %3) #12
  %release_wq.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 12
  %4 = ptrtoint ptr %release_wq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release_wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #12
  %inode.i.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 14
  %6 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.z3fold_destroy_pool.exit_crit_edge, label %if.then.i.i

entry.z3fold_destroy_pool.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_destroy_pool.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iput(ptr noundef nonnull %7) #12
  br label %z3fold_destroy_pool.exit

z3fold_destroy_pool.exit:                         ; preds = %if.then.i.i, %entry.z3fold_destroy_pool.exit_crit_edge
  %unbuddied.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 3
  %8 = ptrtoint ptr %unbuddied.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unbuddied.i, align 4
  tail call void @free_percpu(ptr noundef %9) #12
  tail call void @kfree(ptr noundef %pool) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z3fold_zpool_malloc(ptr noundef %pool, i32 noundef %size, i32 noundef %gfp, ptr nocapture noundef writeonly %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i.i = add i32 %size, 63
  %shr.i.i = lshr i32 %sub.i.i, 6
  %and.i.i = and i32 %gfp, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 0
  br i1 %tobool.not.i, label %entry.z3fold_alloc.exit_crit_edge, label %if.end.i

entry.z3fold_alloc.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_alloc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp.i = icmp ugt i32 %size, 4096
  br i1 %cmp.i, label %if.end.i.z3fold_alloc.exit_crit_edge, label %if.end3.i

if.end.i.z3fold_alloc.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_alloc.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3904, i32 %size)
  %cmp4.i = icmp ugt i32 %size, 3904
  br i1 %cmp4.i, label %if.end3.i.if.end43.i_crit_edge, label %retry.preheader.i

if.end3.i.if.end43.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

retry.preheader.i:                                ; preds = %if.end3.i
  %call7252.i = tail call fastcc ptr @__z3fold_alloc(ptr noundef %pool, i32 noundef %size, i1 noundef zeroext %tobool.i.i) #12
  %tobool8.not253.i = icmp eq ptr %call7252.i, null
  br i1 %tobool8.not253.i, label %retry.preheader.i.if.end43.i_crit_edge, label %if.then9.lr.ph.i

retry.preheader.i.if.end43.i_crit_edge:           ; preds = %retry.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then9.lr.ph.i:                                 ; preds = %retry.preheader.i
  %pages_nr.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 6
  br label %if.then9.i

if.then9.i:                                       ; preds = %do.end.i.if.then9.i_crit_edge, %if.then9.lr.ph.i
  %call7254.i = phi ptr [ %call7252.i, %if.then9.lr.ph.i ], [ %call7.i, %do.end.i.if.then9.i_crit_edge ]
  %middle_chunks.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 8
  %0 = ptrtoint ptr %middle_chunks.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %middle_chunks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i.i = icmp eq i16 %1, 0
  %first_chunks8.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 7
  %2 = ptrtoint ptr %first_chunks8.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %first_chunks8.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool9.not.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i, label %if.else7.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then9.i
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i, label %if.then.i.i.if.end18.sink.split.i.i_crit_edge

if.then.i.i.if.end18.sink.split.i.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %start_middle.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 10
  %4 = ptrtoint ptr %start_middle.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %start_middle.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %sub.i190.i = add nsw i32 %conv.i.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i190.i, i32 %shr.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i190.i, %shr.i.i
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end18.sink.split.i.i_crit_edge, label %land.lhs.true.i.i.found.thread235.i_crit_edge

land.lhs.true.i.i.found.thread235.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found.thread235.i

land.lhs.true.i.i.if.end18.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split.i.i

if.else7.i.i:                                     ; preds = %if.then9.i
  %middle_chunks.i.i.le = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 8
  br i1 %tobool9.not.i.i, label %if.else7.i.i.found.thread235.i_crit_edge, label %if.end18.sink.split.i.thread.i

if.else7.i.i.found.thread235.i_crit_edge:         ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found.thread235.i

if.end18.sink.split.i.i:                          ; preds = %land.lhs.true.i.i.if.end18.sink.split.i.i_crit_edge, %if.then.i.i.if.end18.sink.split.i.i_crit_edge
  %last_chunks.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 9
  %6 = ptrtoint ptr %last_chunks.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %last_chunks.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool4.not.i.i, label %found.thread240.i.loopexit, label %if.then12.critedge.i

if.end18.sink.split.i.thread.i:                   ; preds = %if.else7.i.i
  %last_chunks.i261.i = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 9
  %8 = ptrtoint ptr %last_chunks.i261.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %last_chunks.i261.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool4.not.i262.i = icmp eq i16 %9, 0
  br i1 %tobool4.not.i262.i, label %if.end18.sink.split.i.thread.i.found.thread240.i_crit_edge, label %found.i

if.end18.sink.split.i.thread.i.found.thread240.i_crit_edge: ; preds = %if.end18.sink.split.i.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found.thread240.i

found.thread240.i.loopexit:                       ; preds = %if.end18.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %last_chunks.i.i.le = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 9
  br label %found.thread240.i

found.thread240.i:                                ; preds = %found.thread240.i.loopexit, %if.end18.sink.split.i.thread.i.found.thread240.i_crit_edge
  %last_chunks.i264.i = phi ptr [ %last_chunks.i261.i, %if.end18.sink.split.i.thread.i.found.thread240.i_crit_edge ], [ %last_chunks.i.i.le, %found.thread240.i.loopexit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %call7254.i to i32
  %sub242.i = add i32 %11, 1073741824
  %shr243.i = lshr i32 %sub242.i, 12
  %add.ptr244.i = getelementptr %struct.page, ptr %10, i32 %shr243.i
  %conv99.i = trunc i32 %shr.i.i to i16
  %12 = ptrtoint ptr %last_chunks.i264.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv99.i, ptr %last_chunks.i264.i, align 2
  br label %if.end107.i

if.then12.critedge.i:                             ; preds = %if.end18.sink.split.i.i
  %refcount.i = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i191.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then12.critedge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.else16.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !112

if.end5.i.i.i.i.i.if.else16.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else16.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %if.else16.i

if.then.i191.i:                                   ; preds = %if.then12.critedge.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %page_lock.i.i.i = getelementptr %struct.z3fold_header, ptr %call7254.i, i32 0, i32 1
  %call.i.i.i209.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i209.i)
  %tobool.not.i210.i = icmp eq i32 %call.i.i.i209.i, 0
  br i1 %tobool.not.i210.i, label %if.then.i191.i.if.then15.i_crit_edge, label %do.end.i.i, !prof !112

if.then.i191.i.if.then15.i_crit_edge:             ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

do.end.i.i:                                       ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 537, i32 noundef 9, ptr noundef null) #12
  br label %if.then15.i

if.then15.i:                                      ; preds = %do.end.i.i, %if.then.i191.i.if.then15.i_crit_edge
  tail call fastcc void @__release_z3fold_page(ptr noundef nonnull %call7254.i, i1 noundef zeroext true) #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr.i) #12
  br label %do.end.i

if.else16.i:                                      ; preds = %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.else16.i_crit_edge
  %page_lock.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i.i) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.else16.i, %if.then15.i
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1103, i32 noundef 9, ptr noundef null) #12
  %call7.i = tail call fastcc ptr @__z3fold_alloc(ptr noundef %pool, i32 noundef %size, i1 noundef zeroext %tobool.i.i) #12
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %do.end.i.if.end43.i_crit_edge, label %do.end.i.if.then9.i_crit_edge

do.end.i.if.then9.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

do.end.i.if.end43.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end.i.if.end43.i_crit_edge, %retry.preheader.i.if.end43.i_crit_edge, %if.end3.i.if.end43.i_crit_edge
  br i1 %tobool.i.i, label %if.then45.i, label %if.end43.i.if.end70.i_crit_edge

if.end43.i.if.end70.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.then45.i:                                      ; preds = %if.end43.i
  %stale_lock.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %stale_lock.i) #12
  %stale.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 5
  %14 = ptrtoint ptr %stale.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %stale.i, align 4
  %cmp51.not.i = icmp eq ptr %15, %stale.i
  %tobool54.not247.i = icmp eq ptr %15, null
  %tobool54.not.i = or i1 %cmp51.not.i, %tobool54.not247.i
  br i1 %tobool54.not.i, label %if.else63.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.then45.i
  %call.i.i192.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %15) #12
  br i1 %call.i.i192.i, label %if.end.i.i.i, label %if.then55.i.if.end66.i_crit_edge

if.then55.i.if.end66.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.end.i.i.i:                                     ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %if.end66.i

if.else63.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %stale_lock.i) #12
  br label %if.end70.i

if.end66.i:                                       ; preds = %if.end.i.i.i, %if.then55.i.if.end66.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %stale_lock.i) #12
  %work.i = getelementptr inbounds %struct.z3fold_header, ptr %15, i32 0, i32 3
  %call57.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %15 to i32
  %sub58.i = add i32 %25, 1073741824
  %shr59.i = lshr i32 %sub58.i, 12
  %add.ptr62.i = getelementptr %struct.page, ptr %24, i32 %shr59.i
  %tobool67.not.i = icmp eq ptr %add.ptr62.i, null
  br i1 %tobool67.not.i, label %if.end66.i.if.end70.i_crit_edge, label %if.end66.i.if.end73.i_crit_edge

if.end66.i.if.end73.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

if.end66.i.if.end70.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end66.i.if.end70.i_crit_edge, %if.else63.i, %if.end43.i.if.end70.i_crit_edge
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool71.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool71.not.i, label %if.end70.i.z3fold_alloc.exit_crit_edge, label %if.end70.i.if.end73.i_crit_edge

if.end70.i.if.end73.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

if.end70.i.z3fold_alloc.exit_crit_edge:           ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_alloc.exit

if.end73.i:                                       ; preds = %if.end70.i.if.end73.i_crit_edge, %if.end66.i.if.end73.i_crit_edge
  %page.1221.i = phi ptr [ %call38.i.i.i.i, %if.end70.i.if.end73.i_crit_edge ], [ %add.ptr62.i, %if.end66.i.if.end73.i_crit_edge ]
  %call.i.i = tail call ptr @page_address(ptr noundef nonnull %page.1221.i) #12
  %26 = getelementptr inbounds %struct.page, ptr %page.1221.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %26, align 4
  %prev.i.i193.i = getelementptr inbounds %struct.page, ptr %page.1221.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i193.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %prev.i.i193.i, align 4
  %private.i.i = getelementptr inbounds %struct.page, ptr %page.1221.i, i32 0, i32 1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %private.i.i) #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %private.i.i) #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %private.i.i) #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %private.i.i) #12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private.i.i) #12
  br i1 %cmp4.i, label %if.end73.i.init_z3fold_page.exit.i_crit_edge, label %if.end.i.i

if.end73.i.init_z3fold_page.exit.i_crit_edge:     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_z3fold_page.exit.i

if.end.i.i:                                       ; preds = %if.end73.i
  %c_handle.i.i.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 7
  %29 = ptrtoint ptr %c_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %c_handle.i.i.i, align 8
  %and.i.i.i = and i32 %gfp, -267
  %or.i.i.i.i = or i32 %and.i.i.i, 256
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %30, i32 noundef %or.i.i.i.i) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.then77.i_crit_edge, label %if.end8.i.i

if.end.i.i.if.then77.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.i.i.i.i) #12
  %31 = ptrtoint ptr %pool to i32
  %pool1.i.i.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %call.i.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %pool1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pool1.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %call.i.i.i.i, i32 0, i32 2
  tail call void @__rwlock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @alloc_slots.__key) #12
  %33 = call ptr @memset(ptr %call.i.i, i32 0, i32 120)
  %page_lock.i194.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %page_lock.i194.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_z3fold_page.__key, i16 noundef signext 3) #12
  %refcount.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  %34 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1, ptr %refcount.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %cpu.i.i, align 4
  %slots10.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %slots10.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i.i.i, ptr %slots10.i.i, align 4
  %pool11.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %pool11.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pool, ptr %pool11.i.i, align 4
  %38 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call.i.i, ptr %call.i.i, align 4
  %prev.i42.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i42.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %prev.i42.i.i, align 4
  %work.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work.i.i, i32 noundef 0) #12
  %40 = ptrtoint ptr %work.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_z3fold_page.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry16.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %entry16.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry16.i.i, ptr %entry16.i.i, align 4
  %prev.i43.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 3, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry16.i.i, ptr %prev.i43.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @compact_page_work, ptr %func.i.i, align 4
  br label %init_z3fold_page.exit.i

init_z3fold_page.exit.i:                          ; preds = %if.end8.i.i, %if.end73.i.init_z3fold_page.exit.i_crit_edge
  %tobool76.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool76.not.i, label %init_z3fold_page.exit.i.if.then77.i_crit_edge, label %if.end78.i

init_z3fold_page.exit.i.if.then77.i_crit_edge:    ; preds = %init_z3fold_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i

if.then77.i:                                      ; preds = %init_z3fold_page.exit.i.if.then77.i_crit_edge, %if.end.i.i.if.then77.i_crit_edge
  tail call void @__free_pages(ptr noundef nonnull %page.1221.i, i32 noundef 0) #12
  br label %z3fold_alloc.exit

if.end78.i:                                       ; preds = %init_z3fold_page.exit.i
  %pages_nr79.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 6
  %call.i.i189.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr79.i, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %pages_nr79.i) #12
  br i1 %cmp4.i, label %if.then81.i, label %if.end82.i

if.then81.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %private.i.i) #12
  br label %headless.i

if.end82.i:                                       ; preds = %if.end78.i
  br i1 %tobool.i.i, label %if.then84.i, label %if.else85.i

if.then84.i:                                      ; preds = %if.end82.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 788) #12
  %44 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %26, align 4
  %and.i.i9 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.not.i.i10, label %if.end.i.i13, label %if.then.i.i12, !prof !112

if.then.i.i12:                                    ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i11 = add i32 %45, -1
  br label %_compound_head.exit.i17

if.end.i.i13:                                     ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %page.1221.i to i32
  br label %_compound_head.exit.i17

_compound_head.exit.i17:                          ; preds = %if.end.i.i13, %if.then.i.i12
  %retval.0.i.i14 = phi i32 [ %sub.i.i11, %if.then.i.i12 ], [ %46, %if.end.i.i13 ]
  %47 = inttoptr i32 %retval.0.i.i14 to ptr
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i.i.i15 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i15)
  %tobool.not.i.i.i16 = icmp eq i32 %and.i.i.i.i15, 0
  br i1 %tobool.not.i.i.i16, label %folio_flags.exit.i.i22, label %if.then.i.i.i18, !prof !112

if.then.i.i.i18:                                  ; preds = %_compound_head.exit.i17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %47, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !116
  unreachable

folio_flags.exit.i.i22:                           ; preds = %_compound_head.exit.i17
  %call.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %47, i32 noundef 4) #12
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %47, align 4
  %and.i.i4.i.i20 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i20)
  %tobool.not.i.i.i.i21 = icmp eq i32 %and.i.i4.i.i20, 0
  br i1 %tobool.not.i.i.i.i21, label %folio_trylock.exit.i, label %folio_flags.exit.i.i22.if.then.i_crit_edge

folio_flags.exit.i.i22.if.then.i_crit_edge:       ; preds = %folio_flags.exit.i.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i22
  tail call void @llvm.prefetch.p0(ptr %47, i32 1, i32 3, i32 1) #12
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #12, !srcloc !117
  %asmresult.i.i.i.i.i.i.i23 = extractvalue { i32, i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  %and1.i.i.i.i24 = and i32 %asmresult.i.i.i.i.i.i.i23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i24)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i24, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.found.thread.sink.split.i_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i.found.thread.sink.split.i_crit_edge: ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found.thread.sink.split.i

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i22.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %47) #12
  br label %found.thread.sink.split.i

if.else85.i:                                      ; preds = %if.end82.i
  %54 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %26, align 4
  %and.i.i1 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.not.i.i2, label %if.end.i.i5, label %if.then.i.i4, !prof !112

if.then.i.i4:                                     ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i3 = add i32 %55, -1
  br label %_compound_head.exit.i

if.end.i.i5:                                      ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %page.1221.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i5, %if.then.i.i4
  %retval.0.i.i = phi i32 [ %sub.i.i3, %if.then.i.i4 ], [ %56, %if.end.i.i5 ]
  %57 = inttoptr i32 %retval.0.i.i to ptr
  %58 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  %and.i.i.i.i6 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i6)
  %tobool.not.i.i.i7 = icmp eq i32 %and.i.i.i.i6, 0
  br i1 %tobool.not.i.i.i7, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !112

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %57, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !116
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %57, i32 noundef 4) #12
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %57, align 4
  %and.i.i4.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.found.thread.i_crit_edge

folio_flags.exit.i.i.found.thread.i_crit_edge:    ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %found.thread.i

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %57, i32 1, i32 3, i32 1) #12
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #12, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool87.not.i.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool87.not.i.not, label %trylock_page.exit.found.thread.sink.split.i_crit_edge, label %trylock_page.exit.found.thread.i_crit_edge

trylock_page.exit.found.thread.i_crit_edge:       ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %found.thread.i

trylock_page.exit.found.thread.sink.split.i_crit_edge: ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %found.thread.sink.split.i

found.thread.sink.split.i:                        ; preds = %trylock_page.exit.found.thread.sink.split.i_crit_edge, %if.then.i, %folio_trylock.exit.i.found.thread.sink.split.i_crit_edge
  %inode.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 14
  %64 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %inode.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_mapping.i, align 8
  tail call void @__SetPageMovable(ptr noundef nonnull %page.1221.i, ptr noundef %67) #12
  tail call void @unlock_page(ptr noundef nonnull %page.1221.i) #12
  br label %found.thread.i

found.thread.i:                                   ; preds = %found.thread.sink.split.i, %trylock_page.exit.found.thread.i_crit_edge, %folio_flags.exit.i.i.found.thread.i_crit_edge
  %page_lock.i196.i = getelementptr inbounds %struct.z3fold_header, ptr %call.i.i, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %page_lock.i196.i) #12
  br label %if.then94.i

found.thread235.i:                                ; preds = %if.else7.i.i.found.thread235.i_crit_edge, %land.lhs.true.i.i.found.thread235.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %68 = load ptr, ptr @mem_map, align 4
  %69 = ptrtoint ptr %call7254.i to i32
  %sub237.i = add i32 %69, 1073741824
  %shr238.i = lshr i32 %sub237.i, 12
  %add.ptr239.i = getelementptr %struct.page, ptr %68, i32 %shr238.i
  br label %if.then94.i

found.i:                                          ; preds = %if.end18.sink.split.i.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %70 = load ptr, ptr @mem_map, align 4
  %71 = ptrtoint ptr %call7254.i to i32
  %sub.i = add i32 %71, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %70, i32 %shr.i
  %conv101.i = trunc i32 %shr.i.i to i16
  %72 = ptrtoint ptr %middle_chunks.i.i.le to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv101.i, ptr %middle_chunks.i.i.le, align 4
  %add104.i = add i16 %3, 2
  %start_middle.i = getelementptr inbounds %struct.z3fold_header, ptr %call7254.i, i32 0, i32 10
  %73 = ptrtoint ptr %start_middle.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %add104.i, ptr %start_middle.i, align 4
  br label %if.end107.i

if.then94.i:                                      ; preds = %found.thread235.i, %found.thread.i
  %zhdr.0232.i = phi ptr [ %call.i.i, %found.thread.i ], [ %call7254.i, %found.thread235.i ]
  %page.2231.i = phi ptr [ %page.1221.i, %found.thread.i ], [ %add.ptr239.i, %found.thread235.i ]
  %conv.i = trunc i32 %shr.i.i to i16
  %first_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0232.i, i32 0, i32 7
  %74 = ptrtoint ptr %first_chunks.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i, ptr %first_chunks.i, align 2
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then94.i, %found.i, %found.thread240.i
  %zhdr.0233.i = phi ptr [ %call7254.i, %found.thread240.i ], [ %call7254.i, %found.i ], [ %zhdr.0232.i, %if.then94.i ]
  %page.2230.i = phi ptr [ %add.ptr244.i, %found.thread240.i ], [ %add.ptr.i, %found.i ], [ %page.2231.i, %if.then94.i ]
  %bud.1228.i = phi i32 [ 3, %found.thread240.i ], [ 2, %found.i ], [ 1, %if.then94.i ]
  tail call fastcc void @add_to_unbuddied(ptr noundef %pool, ptr noundef nonnull %zhdr.0233.i) #12
  br label %headless.i

headless.i:                                       ; preds = %if.end107.i, %if.then81.i
  %bud.2.i = phi i32 [ 0, %if.then81.i ], [ %bud.1228.i, %if.end107.i ]
  %page.3.i = phi ptr [ %page.1221.i, %if.then81.i ], [ %page.2230.i, %if.end107.i ]
  %zhdr.1.i = phi ptr [ %call.i.i, %if.then81.i ], [ %zhdr.0233.i, %if.end107.i ]
  %lock.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %75 = getelementptr inbounds %struct.page, ptr %page.3.i, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %75, align 4
  %cmp.i.not.i = icmp eq ptr %77, %75
  br i1 %cmp.i.not.i, label %headless.i.if.end112.i_crit_edge, label %if.then110.i

headless.i.if.end112.i_crit_edge:                 ; preds = %headless.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.i

if.then110.i:                                     ; preds = %headless.i
  %call.i.i198.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %75) #12
  br i1 %call.i.i198.i, label %if.end.i.i201.i, label %if.then110.i.list_del.exit203.i_crit_edge

if.then110.i.list_del.exit203.i_crit_edge:        ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit203.i

if.end.i.i201.i:                                  ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i199.i = getelementptr inbounds %struct.page, ptr %page.3.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i199.i, align 4
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %75, align 4
  %prev1.i.i.i200.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i200.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i200.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit203.i

list_del.exit203.i:                               ; preds = %if.end.i.i201.i, %if.then110.i.list_del.exit203.i_crit_edge
  %84 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %75, align 4
  %prev.i202.i = getelementptr inbounds %struct.page, ptr %page.3.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i202.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i202.i, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %list_del.exit203.i, %headless.i.if.end112.i_crit_edge
  %lru114.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 4
  %86 = ptrtoint ptr %lru114.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lru114.i, align 4
  %call.i.i204.i = tail call zeroext i1 @__list_add_valid(ptr noundef %75, ptr noundef %lru114.i, ptr noundef %87) #12
  br i1 %call.i.i204.i, label %if.end.i.i205.i, label %if.end112.i.list_add.exit.i_crit_edge

if.end112.i.list_add.exit.i_crit_edge:            ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i205.i:                                  ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %75, ptr %prev1.i.i.i, align 4
  %89 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %87, ptr %75, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.page, ptr %page.3.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %90 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %lru114.i, ptr %prev3.i.i.i, align 4
  %91 = ptrtoint ptr %lru114.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %75, ptr %lru114.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i205.i, %if.end112.i.list_add.exit.i_crit_edge
  %slots.i.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.1.i, i32 0, i32 4
  %92 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %slots.i.i, align 4
  %94 = ptrtoint ptr %zhdr.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bud.2.i)
  %cmp.i.i.i = icmp eq i32 %bud.2.i, 0
  br i1 %cmp.i.i.i, label %encode_handle.exit.thread.i, label %if.end.i.i206.i

encode_handle.exit.thread.i:                      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i.i = or i32 %94, 1
  %95 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or.i.i.i, ptr %handle, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %z3fold_alloc.exit

if.end.i.i206.i:                                  ; preds = %list_add.exit.i
  %first_num.i.i.i.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.1.i, i32 0, i32 11
  %96 = ptrtoint ptr %first_num.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i.i.i.i = load i8, ptr %first_num.i.i.i.i, align 2
  %bf.lshr.i.i.i.i = lshr i8 %bf.load.i.i.i.i, 6
  %conv.i.i.i.i = zext i8 %bf.lshr.i.i.i.i to i32
  %add.i.i.i.i = add nuw nsw i32 %bud.2.i, %conv.i.i.i.i
  %and.i.i.i.i = and i32 %add.i.i.i.i, 3
  %add.i.i.i = add i32 %and.i.i.i.i, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bud.2.i)
  %cmp1.i.i.i = icmp eq i32 %bud.2.i, 3
  br i1 %cmp1.i.i.i, label %if.then2.i.i.i, label %if.end.i.i206.i.if.then119.i_crit_edge

if.end.i.i206.i.if.then119.i_crit_edge:           ; preds = %if.end.i.i206.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then119.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i206.i
  call void @__sanitizer_cov_trace_pc() #14
  %last_chunks.i.i.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.1.i, i32 0, i32 9
  %97 = ptrtoint ptr %last_chunks.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %last_chunks.i.i.i, align 2
  %conv.i.i.i = zext i16 %98 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 2
  %or3.i.i.i = or i32 %shl.i.i.i, %add.i.i.i
  br label %if.then119.i

if.then119.i:                                     ; preds = %if.then2.i.i.i, %if.end.i.i206.i.if.then119.i_crit_edge
  %h.0.i.i.i = phi i32 [ %or3.i.i.i, %if.then2.i.i.i ], [ %add.i.i.i, %if.end.i.i206.i.if.then119.i_crit_edge ]
  %lock.i.i207.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %93, i32 0, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock.i.i207.i) #12
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr %93, i32 0, i32 %and.i.i.i.i
  %99 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %h.0.i.i.i, ptr %arrayidx.i.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock.i.i207.i) #12
  %100 = ptrtoint ptr %arrayidx.i.i.i to i32
  %101 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %handle, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %page_lock.i208.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.1.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i208.i) #12
  br label %z3fold_alloc.exit

z3fold_alloc.exit:                                ; preds = %if.then119.i, %encode_handle.exit.thread.i, %if.then77.i, %if.end70.i.z3fold_alloc.exit_crit_edge, %if.end.i.z3fold_alloc.exit_crit_edge, %entry.z3fold_alloc.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then77.i ], [ -22, %entry.z3fold_alloc.exit_crit_edge ], [ -28, %if.end.i.z3fold_alloc.exit_crit_edge ], [ -12, %if.end70.i.z3fold_alloc.exit_crit_edge ], [ 0, %if.then119.i ], [ 0, %encode_handle.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z3fold_zpool_free(ptr noundef %pool, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %handle, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  %and.i.i.i = and i32 %handle, -64
  %0 = inttoptr i32 %and.i.i.i to ptr
  %lock.i.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %0, i32 0, i32 2
  tail call void @_raw_read_lock(ptr noundef %lock.i.i) #12
  %1 = inttoptr i32 %handle to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and127.i.i = and i32 %3, -4096
  %4 = inttoptr i32 %and127.i.i to ptr
  %page_lock.i28.i.i = getelementptr inbounds %struct.z3fold_header, ptr %4, i32 0, i32 1
  %call.i.i29.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i28.i.i) #12
  tail call void @_raw_read_unlock(ptr noundef %lock.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i.i)
  %tobool4.not30.i.i = icmp eq i32 %call.i.i29.i.i, 0
  br i1 %tobool4.not30.i.i, label %if.then.i.i.cleanup.i.i_crit_edge, label %if.then.i.i.get_z3fold_header.exit.i_crit_edge

if.then.i.i.get_z3fold_header.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_z3fold_header.exit.i

if.then.i.i.cleanup.i.i_crit_edge:                ; preds = %if.then.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then.i.i.cleanup.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !120
  tail call void @_raw_read_lock(ptr noundef %lock.i.i) #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %and1.i110.i = and i32 %6, -4096
  %7 = inttoptr i32 %and1.i110.i to ptr
  %page_lock.i.i.i = getelementptr inbounds %struct.z3fold_header, ptr %7, i32 0, i32 1
  %call.i.i.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i.i.i) #12
  tail call void @_raw_read_unlock(ptr noundef %lock.i.i) #12
  %tobool4.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool4.not.i.i, label %cleanup.i.i.cleanup.i.i_crit_edge, label %get_z3fold_header.exit.i.loopexit

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and15.i.i = and i32 %handle, -4096
  %.pre.i = inttoptr i32 %and15.i.i to ptr
  br label %get_z3fold_header.exit.i

get_z3fold_header.exit.i.loopexit:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = inttoptr i32 %and1.i110.i to ptr
  br label %get_z3fold_header.exit.i

get_z3fold_header.exit.i:                         ; preds = %get_z3fold_header.exit.i.loopexit, %if.else.i.i, %if.then.i.i.get_z3fold_header.exit.i_crit_edge
  %zhdr.0.i.pre-phi.i = phi ptr [ %4, %if.then.i.i.get_z3fold_header.exit.i_crit_edge ], [ %.pre.i, %if.else.i.i ], [ %8, %get_z3fold_header.exit.i.loopexit ]
  %zhdr.0.in.i.i = phi i32 [ %and127.i.i, %if.then.i.i.get_z3fold_header.exit.i_crit_edge ], [ %and15.i.i, %if.else.i.i ], [ %and1.i110.i, %get_z3fold_header.exit.i.loopexit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %zhdr.0.in.i.i, 1073741824
  %shr.i = lshr exact i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %10 = getelementptr %struct.page, ptr %9, i32 %shr.i, i32 1
  %private.i = getelementptr inbounds %struct.anon.3, ptr %10, i32 0, i32 3
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %private.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %private.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %get_z3fold_header.exit.i
  br i1 %tobool.not.i, label %if.then7.i, label %if.then.i.z3fold_free.exit_crit_edge

if.then.i.z3fold_free.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_free.exit

if.then7.i:                                       ; preds = %if.then.i
  %lock.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %call.i.i111.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #12
  br i1 %call.i.i111.i, label %if.end.i.i.i, label %if.then7.i.list_del.exit.i_crit_edge

if.then7.i.list_del.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then7.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %private.i.i = getelementptr %struct.page, ptr %21, i32 %shr.i, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %private.i.i, align 4
  %and1.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i112.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i112.i, label %if.then.i114.i, label %list_del.exit.i.put_z3fold_header.exit.i_crit_edge

list_del.exit.i.put_z3fold_header.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_z3fold_header.exit.i

if.then.i114.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %page_lock.i.i113.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i.i113.i) #12
  br label %put_z3fold_header.exit.i

put_z3fold_header.exit.i:                         ; preds = %if.then.i114.i, %list_del.exit.i.put_z3fold_header.exit.i_crit_edge
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i.i.i = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %free_z3fold_page.exit.i, !prof !121

if.then.i.i.i:                                    ; preds = %put_z3fold_header.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !122
  unreachable

free_z3fold_page.exit.i:                          ; preds = %put_z3fold_header.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %add.ptr.i) #12
  tail call void @__free_pages(ptr noundef %add.ptr.i, i32 noundef 0) #12
  %pages_nr.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr.i) #12
  br label %z3fold_free.exit

if.end9.i:                                        ; preds = %get_z3fold_header.exit.i
  %and.i.i115.i = and i32 %handle, -64
  %26 = inttoptr i32 %and.i.i115.i to ptr
  %lock.i116.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %26, i32 0, i32 2
  tail call void @_raw_read_lock(ptr noundef %lock.i116.i) #12
  br i1 %tobool.not.i.i, label %if.end9.i.handle_to_buddy.exit.i_crit_edge, label %do.end.i.i, !prof !112

if.end9.i.handle_to_buddy.exit.i_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_to_buddy.exit.i

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 492, i32 noundef 9, ptr noundef null) #12
  br label %handle_to_buddy.exit.i

handle_to_buddy.exit.i:                           ; preds = %do.end.i.i, %if.end9.i.handle_to_buddy.exit.i_crit_edge
  %27 = inttoptr i32 %handle to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  tail call void @_raw_read_unlock(ptr noundef %lock.i116.i) #12
  %and21.i.i = and i32 %29, -4096
  %30 = inttoptr i32 %and21.i.i to ptr
  %first_num.i.i = getelementptr inbounds %struct.z3fold_header, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %first_num.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %first_num.i.i, align 2
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 6
  %conv.i.i = zext i8 %bf.lshr.i.i to i32
  %sub.i119.i = sub i32 %29, %conv.i.i
  %and22.i.i = and i32 %sub.i119.i, 3
  %32 = zext i32 %and22.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and22.i.i, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb11.i
    i32 3, label %sw.bb12.i
  ]

sw.bb.i:                                          ; preds = %handle_to_buddy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %first_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 7
  %33 = ptrtoint ptr %first_chunks.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %first_chunks.i, align 2
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %handle_to_buddy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %middle_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 8
  %34 = ptrtoint ptr %middle_chunks.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %middle_chunks.i, align 16
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %handle_to_buddy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %last_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 9
  %35 = ptrtoint ptr %last_chunks.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %last_chunks.i, align 2
  br label %sw.epilog.i

do.end.i:                                         ; preds = %handle_to_buddy.exit.i
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %and22.i.i) #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1240, i32 noundef 9, ptr noundef null) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %private.i122.i = getelementptr %struct.page, ptr %36, i32 %shr.i, i32 1, i32 0, i32 3
  %37 = ptrtoint ptr %private.i122.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %private.i122.i, align 4
  %and1.i.i123.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i123.i)
  %tobool.not.i124.i = icmp eq i32 %and1.i.i123.i, 0
  br i1 %tobool.not.i124.i, label %if.then.i126.i, label %do.end.i.z3fold_free.exit_crit_edge

do.end.i.z3fold_free.exit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_free.exit

if.then.i126.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %page_lock.i.i125.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i.i125.i) #12
  br label %z3fold_free.exit

sw.epilog.i:                                      ; preds = %sw.bb12.i, %sw.bb11.i, %sw.bb.i
  %39 = or i32 %call2.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %.not.i = icmp eq i32 %39, 0
  br i1 %.not.i, label %if.end.i.i, label %sw.epilog.i.if.end37.i_crit_edge

sw.epilog.i.if.end37.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  %40 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i, label %do.end.i130.i, label %if.end24.i.i, !prof !121

do.end.i130.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 303, i32 noundef 9, ptr noundef null) #12
  br label %if.end37.i

if.end24.i.i:                                     ; preds = %if.end.i.i
  tail call void @_raw_write_lock(ptr noundef %lock.i116.i) #12
  %42 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %27, align 4
  %pool.i.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %26, i32 0, i32 1
  %43 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %pool.i.i, align 16
  %and1.i.i133.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i133.i)
  %tobool26.not.i.i = icmp eq i32 %and1.i.i133.i, 0
  br i1 %tobool26.not.i.i, label %if.end29.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_write_unlock(ptr noundef %lock.i116.i) #12
  br label %if.end37.i

if.end29.i.i:                                     ; preds = %if.end24.i.i
  %slots30.i.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 4
  %45 = ptrtoint ptr %slots30.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %slots30.i.i, align 4
  %cmp31.not.i.i = icmp eq ptr %46, %26
  br i1 %cmp31.not.i.i, label %if.end29.i.i.if.end35.i.i_crit_edge, label %if.then32.i.i

if.end29.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i

if.then32.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %foreign_handles.i.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 11
  %47 = ptrtoint ptr %foreign_handles.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i134.i = load i8, ptr %foreign_handles.i.i, align 2
  %48 = add i8 %bf.load.i134.i, 12
  %bf.shl.i.i = and i8 %48, 12
  %bf.clear34.i.i = and i8 %bf.load.i134.i, -13
  %bf.set.i.i = or i8 %bf.shl.i.i, %bf.clear34.i.i
  store i8 %bf.set.i.i, ptr %foreign_handles.i.i, align 2
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then32.i.i, %if.end29.i.i.if.end35.i.i_crit_edge
  %49 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %26, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool37.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool37.not.i.i, label %for.cond.i.i, label %if.end35.i.i.if.end50.critedge.i.i_crit_edge

if.end35.i.i.if.end50.critedge.i.i_crit_edge:     ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.critedge.i.i

for.cond.i.i:                                     ; preds = %if.end35.i.i
  %arrayidx.1.i.i = getelementptr [4 x i32], ptr %26, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool37.not.1.i.i = icmp eq i32 %52, 0
  br i1 %tobool37.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.if.end50.critedge.i.i_crit_edge

for.cond.i.i.if.end50.critedge.i.i_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.critedge.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr [4 x i32], ptr %26, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool37.not.2.i.i = icmp eq i32 %54, 0
  br i1 %tobool37.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.if.end50.critedge.i.i_crit_edge

for.cond.1.i.i.if.end50.critedge.i.i_crit_edge:   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.critedge.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr [4 x i32], ptr %26, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool37.not.3.i.i = icmp eq i32 %56, 0
  br i1 %tobool37.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.if.end50.critedge.i.i_crit_edge

for.cond.2.i.i.if.end50.critedge.i.i_crit_edge:   ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.critedge.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  tail call void @_raw_write_unlock(ptr noundef %lock.i116.i) #12
  %57 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pool.i.i, align 16
  %and.i70.i.i = and i32 %58, -4
  %59 = inttoptr i32 %and.i70.i.i to ptr
  %60 = ptrtoint ptr %slots30.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %slots30.i.i, align 4
  %cmp46.i.i = icmp eq ptr %61, %26
  br i1 %cmp46.i.i, label %if.then47.i.i, label %for.cond.3.i.i.if.end49.i.i_crit_edge

for.cond.3.i.i.if.end49.i.i_crit_edge:            ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i.i

if.then47.i.i:                                    ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %slots30.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %slots30.i.i, align 4
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then47.i.i, %for.cond.3.i.i.if.end49.i.i_crit_edge
  %c_handle.i.i = getelementptr inbounds %struct.z3fold_pool, ptr %59, i32 0, i32 7
  %63 = ptrtoint ptr %c_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %c_handle.i.i, align 8
  tail call void @kmem_cache_free(ptr noundef %64, ptr noundef %26) #12
  br label %if.end37.i

if.end50.critedge.i.i:                            ; preds = %for.cond.2.i.i.if.end50.critedge.i.i_crit_edge, %for.cond.1.i.i.if.end50.critedge.i.i_crit_edge, %for.cond.i.i.if.end50.critedge.i.i_crit_edge, %if.end35.i.i.if.end50.critedge.i.i_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %lock.i116.i) #12
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end50.critedge.i.i, %if.end49.i.i, %if.then27.i.i, %do.end.i130.i, %sw.epilog.i.if.end37.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i136.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end42.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !112

if.end5.i.i.i.i.i.if.end42.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %if.end42.i

if.then.i136.i:                                   ; preds = %if.end37.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %pool.i.i.i = getelementptr %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 5
  %66 = ptrtoint ptr %pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pool.i.i.i, align 8
  %lock.i159.i = getelementptr inbounds %struct.z3fold_pool, ptr %67, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i159.i) #12
  %call.i.i.i160.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %zhdr.0.i.pre-phi.i) #12
  br i1 %call.i.i.i160.i, label %if.end.i.i.i.i, label %if.then.i136.i.list_del_init.exit.i.i_crit_edge

if.then.i136.i.list_del_init.exit.i.i_crit_edge:  ; preds = %if.then.i136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i136.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i.i, align 4
  %70 = ptrtoint ptr %zhdr.0.i.pre-phi.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %zhdr.0.i.pre-phi.i, align 4096
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i136.i.list_del_init.exit.i.i_crit_edge
  %74 = ptrtoint ptr %zhdr.0.i.pre-phi.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %zhdr.0.i.pre-phi.i, ptr %zhdr.0.i.pre-phi.i, align 4096
  %prev.i3.i.i.i = getelementptr %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %zhdr.0.i.pre-phi.i, ptr %prev.i3.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i159.i) #12
  %page_lock.i.i161.i = getelementptr %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  %call.i.i28.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i.i161.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28.i.i)
  %tobool.not.i162.i = icmp eq i32 %call.i.i28.i.i, 0
  br i1 %tobool.not.i162.i, label %list_del_init.exit.i.i.if.then40.i_crit_edge, label %do.end.i163.i, !prof !112

list_del_init.exit.i.i.if.then40.i_crit_edge:     ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40.i

do.end.i163.i:                                    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 551, i32 noundef 9, ptr noundef null) #12
  br label %if.then40.i

if.then40.i:                                      ; preds = %do.end.i163.i, %list_del_init.exit.i.i.if.then40.i_crit_edge
  tail call fastcc void @__release_z3fold_page(ptr noundef %zhdr.0.i.pre-phi.i, i1 noundef zeroext true) #12
  %pages_nr41.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 6
  %call.i.i109.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr41.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr41.i) #12
  br label %z3fold_free.exit

if.end42.i:                                       ; preds = %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end42.i_crit_edge
  br i1 %tobool.not.i, label %if.end45.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %page_lock.i.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i.i) #12
  br label %z3fold_free.exit

if.end45.i:                                       ; preds = %if.end42.i
  %call47.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %private.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end51.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %76 = load ptr, ptr @mem_map, align 4
  %private.i139.i = getelementptr %struct.page, ptr %76, i32 %shr.i, i32 1, i32 0, i32 3
  %77 = ptrtoint ptr %private.i139.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %private.i139.i, align 4
  %and1.i.i140.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i140.i)
  %tobool.not.i141.i = icmp eq i32 %and1.i.i140.i, 0
  br i1 %tobool.not.i141.i, label %if.then.i143.i, label %if.then49.i.put_z3fold_header.exit145.i_crit_edge

if.then49.i.put_z3fold_header.exit145.i_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_z3fold_header.exit145.i

if.then.i143.i:                                   ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  %page_lock.i.i142.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i.i142.i) #12
  br label %put_z3fold_header.exit145.i

put_z3fold_header.exit145.i:                      ; preds = %if.then.i143.i, %if.then49.i.put_z3fold_header.exit145.i_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private.i) #12
  br label %z3fold_free.exit

if.end51.i:                                       ; preds = %if.end45.i
  %cpu.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 6
  %79 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %cpu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp.i = icmp slt i16 %80, 0
  br i1 %cmp.i, label %if.end51.i.if.then56.i_crit_edge, label %lor.lhs.false.i

if.end51.i.if.then56.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56.i

lor.lhs.false.i:                                  ; preds = %if.end51.i
  %conv167.i = zext i16 %80 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %81 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %conv167.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %81, %conv167.i
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false.i.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

lor.lhs.false.i.cpu_online.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %lor.lhs.false.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !112

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %lor.lhs.false.i.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %conv167.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %82 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i10 = and i32 %conv167.i, 31
  %84 = shl nuw i32 1, %and.i.i.i10
  %85 = and i32 %83, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.i.not = icmp eq i32 %85, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.then56.i_crit_edge, label %if.end62.i

cpu_online.exit.if.then56.i_crit_edge:            ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56.i

if.then56.i:                                      ; preds = %cpu_online.exit.if.then56.i_crit_edge, %if.end51.i.if.then56.i_crit_edge
  %lock57.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock57.i) #12
  %call.i.i146.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %zhdr.0.i.pre-phi.i) #12
  br i1 %call.i.i146.i, label %if.end.i.i149.i, label %if.then56.i.list_del_init.exit.i_crit_edge

if.then56.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i149.i:                                  ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i147.i = getelementptr inbounds %struct.list_head, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i147.i, align 4
  %88 = ptrtoint ptr %zhdr.0.i.pre-phi.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %zhdr.0.i.pre-phi.i, align 4096
  %prev1.i.i.i148.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i148.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i148.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i149.i, %if.then56.i.list_del_init.exit.i_crit_edge
  %92 = ptrtoint ptr %zhdr.0.i.pre-phi.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %zhdr.0.i.pre-phi.i, ptr %zhdr.0.i.pre-phi.i, align 4096
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %zhdr.0.i.pre-phi.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock57.i) #12
  %94 = ptrtoint ptr %cpu.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -1, ptr %cpu.i, align 4
  %call.i.i.i.i.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !123
  %asmresult.i.i.i.i.i.i2 = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i2)
  %tobool1.not.i.i.i.i3 = icmp eq i32 %asmresult.i.i.i.i.i.i2, 0
  br i1 %tobool1.not.i.i.i.i3, label %list_del_init.exit.i.if.end15.sink.split.i.i.i.i8_crit_edge, label %if.else.i.i.i.i6, !prof !121

list_del_init.exit.i.if.end15.sink.split.i.i.i.i8_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i8

if.else.i.i.i.i6:                                 ; preds = %list_del_init.exit.i
  %add.i.i.i.i4 = add i32 %asmresult.i.i.i.i.i.i2, 1
  %96 = or i32 %add.i.i.i.i4, %asmresult.i.i.i.i.i.i2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %.not.i.i.i.i5 = icmp sgt i32 %96, -1
  br i1 %.not.i.i.i.i5, label %if.else.i.i.i.i6.kref_get.exit9_crit_edge, label %if.else.i.i.i.i6.if.end15.sink.split.i.i.i.i8_crit_edge, !prof !112

if.else.i.i.i.i6.if.end15.sink.split.i.i.i.i8_crit_edge: ; preds = %if.else.i.i.i.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i8

if.else.i.i.i.i6.kref_get.exit9_crit_edge:        ; preds = %if.else.i.i.i.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit9

if.end15.sink.split.i.i.i.i8:                     ; preds = %if.else.i.i.i.i6.if.end15.sink.split.i.i.i.i8_crit_edge, %list_del_init.exit.i.if.end15.sink.split.i.i.i.i8_crit_edge
  %.sink.i.i.i.i7 = phi i32 [ 2, %list_del_init.exit.i.if.end15.sink.split.i.i.i.i8_crit_edge ], [ 1, %if.else.i.i.i.i6.if.end15.sink.split.i.i.i.i8_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i7) #12
  br label %kref_get.exit9

kref_get.exit9:                                   ; preds = %if.end15.sink.split.i.i.i.i8, %if.else.i.i.i.i6.kref_get.exit9_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private.i) #12
  tail call fastcc void @do_compact_page(ptr noundef %zhdr.0.i.pre-phi.i, i1 noundef zeroext true) #12
  br label %z3fold_free.exit

if.end62.i:                                       ; preds = %cpu_online.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %97 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !123
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end62.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !121

if.end62.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end62.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %98 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %.not.i.i.i.i = icmp sgt i32 %98, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !112

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end62.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end62.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private.i) #12
  %99 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %cpu.i, align 4
  %conv66.i = sext i16 %100 to i32
  %compact_wq.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 11
  %101 = ptrtoint ptr %compact_wq.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %compact_wq.i, align 8
  %work.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 3
  %call67.i = tail call zeroext i1 @queue_work_on(i32 noundef %conv66.i, ptr noundef %102, ptr noundef %work.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %103 = load ptr, ptr @mem_map, align 4
  %private.i152.i = getelementptr %struct.page, ptr %103, i32 %shr.i, i32 1, i32 0, i32 3
  %104 = ptrtoint ptr %private.i152.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %private.i152.i, align 4
  %and1.i.i153.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i153.i)
  %tobool.not.i154.i = icmp eq i32 %and1.i.i153.i, 0
  br i1 %tobool.not.i154.i, label %if.then.i156.i, label %kref_get.exit.z3fold_free.exit_crit_edge

kref_get.exit.z3fold_free.exit_crit_edge:         ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_free.exit

if.then.i156.i:                                   ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %page_lock.i.i155.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i.i155.i) #12
  br label %z3fold_free.exit

z3fold_free.exit:                                 ; preds = %if.then.i156.i, %kref_get.exit.z3fold_free.exit_crit_edge, %kref_get.exit9, %put_z3fold_header.exit145.i, %if.then44.i, %if.then40.i, %if.then.i126.i, %do.end.i.z3fold_free.exit_crit_edge, %free_z3fold_page.exit.i, %if.then.i.z3fold_free.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z3fold_zpool_shrink(ptr noundef %pool, i32 noundef %pages, ptr noundef writeonly %reclaimed) #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %slots.i = alloca %struct.z3fold_buddy_slots, align 64
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages)
  %cmp38.not = icmp eq i32 %pages, 0
  br i1 %cmp38.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lock.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %slots.i, i32 0, i32 2
  %0 = ptrtoint ptr %pool to i32
  %or.i = or i32 %0, 1
  %pool1.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %slots.i, i32 0, i32 1
  %lock2.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 8
  %lru.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 4, i32 1
  %pages_nr51.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 6
  %c_handle.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %total.039 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %slots.i) #12
  %1 = call ptr @memset(ptr %slots.i, i32 255, i32 64)
  call void @__rwlock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @z3fold_reclaim_page.__key) #12
  %2 = ptrtoint ptr %pool1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %pool1.i, align 16
  call void @_raw_spin_lock(ptr noundef %lock2.i) #12
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %while.body.z3fold_reclaim_page.exit.thread_crit_edge, label %lor.lhs.false.i

while.body.z3fold_reclaim_page.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_reclaim_page.exit.thread

lor.lhs.false.i:                                  ; preds = %while.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.z3fold_reclaim_page.exit.thread_crit_edge, label %lor.lhs.false.i.for.body.i_crit_edge

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

lor.lhs.false.i.z3fold_reclaim_page.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_reclaim_page.exit.thread

for.body.i:                                       ; preds = %if.end134.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %i.0126.i = phi i32 [ %inc.i, %if.end134.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %page.0125.i = phi ptr [ %page.2.i, %if.end134.i.for.body.i_crit_edge ], [ null, %lor.lhs.false.i.for.body.i_crit_edge ]
  %zhdr.0124.i = phi ptr [ %zhdr.3.i, %if.end134.i.for.body.i_crit_edge ], [ null, %lor.lhs.false.i.for.body.i_crit_edge ]
  %ret.0123.i = phi i32 [ %ret.3.i, %if.end134.i.for.body.i_crit_edge ], [ -1, %lor.lhs.false.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %lru.i
  br i1 %cmp.i.not.i, label %for.body.i.z3fold_reclaim_page.exit.thread_crit_edge, label %if.end11.i

for.body.i.z3fold_reclaim_page.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_reclaim_page.exit.thread

if.end11.i:                                       ; preds = %for.body.i
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pos.0117.i = load ptr, ptr %prev.i, align 4
  %cmp.i6.not118.i = icmp eq ptr %pos.0117.i, %lru.i
  br i1 %cmp.i6.not118.i, label %if.end11.i.for.end.i_crit_edge, label %if.end11.i.for.body17.i_crit_edge

if.end11.i.for.body17.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body17.i

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body17.i:                                     ; preds = %for.inc.i.for.body17.i_crit_edge, %if.end11.i.for.body17.i_crit_edge
  %pos.0119.i = phi ptr [ %pos.0.i, %for.inc.i.for.body17.i_crit_edge ], [ %pos.0117.i, %if.end11.i.for.body17.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.0119.i, i32 -4
  %call18.i = call ptr @page_address(ptr noundef %add.ptr.i) #12
  %private.i = getelementptr inbounds %struct.anon.3, ptr %pos.0119.i, i32 0, i32 3
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %private.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool20.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool20.not.i, label %if.end27.i, label %if.then21.i

if.then21.i:                                      ; preds = %for.body17.i
  %call23.i = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %private.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then21.i.for.end.i_crit_edge, label %if.then21.i.for.inc.i_crit_edge

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then21.i.for.end.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end27.i:                                       ; preds = %for.body17.i
  %refcount.i = getelementptr inbounds %struct.z3fold_header, ptr %call18.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end27.i
  %14 = phi i32 [ %13, %if.end27.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %14, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %17, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #12, !srcloc !124
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %17
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !112

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %20, 1
  %21 = or i32 %add5.i.i.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !112

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #12
  %22 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %23 = phi i32 [ %20, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.z3fold_reclaim_page.exit.thread_crit_edge, label %if.end31.i

kref_get_unless_zero.exit.i.z3fold_reclaim_page.exit.thread_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_reclaim_page.exit.thread

if.end31.i:                                       ; preds = %kref_get_unless_zero.exit.i
  %page_lock.i.i = getelementptr %struct.z3fold_header, ptr %call18.i, i32 0, i32 1
  %call.i.i9.i = call i32 @_raw_spin_trylock(ptr noundef %page_lock.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9.i)
  %tobool33.not.i = icmp eq i32 %call.i.i9.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end40.i

if.then34.i:                                      ; preds = %if.end31.i
  %call.i.i.i.i.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i11.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i11.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i11.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then38.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i11.i)
  %.not.i.i.i.i12.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i11.i, 0
  br i1 %.not.i.i.i.i12.i, label %if.end5.i.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i13.i, !prof !112

if.end5.i.i.i.i.i.for.inc.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then10.i.i.i.i13.i:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %for.inc.i

if.then38.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  call fastcc void @__release_z3fold_page(ptr noundef %call18.i, i1 noundef zeroext false) #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr51.i, i32 noundef 8) #12
  call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr51.i) #12
  br label %for.inc.i

if.end40.i:                                       ; preds = %if.end31.i
  %foreign_handles.i = getelementptr inbounds %struct.z3fold_header, ptr %call18.i, i32 0, i32 11
  %25 = ptrtoint ptr %foreign_handles.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %foreign_handles.i, align 2
  %26 = and i8 %bf.load.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool41.not.i = icmp eq i8 %26, 0
  br i1 %tobool41.not.i, label %lor.lhs.false42.i, label %if.end40.i.if.then46.i_crit_edge

if.end40.i.if.then46.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46.i

lor.lhs.false42.i:                                ; preds = %if.end40.i
  %call44.i = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %private.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end53.i, label %lor.lhs.false42.i.if.then46.i_crit_edge

lor.lhs.false42.i.if.then46.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46.i

if.then46.i:                                      ; preds = %lor.lhs.false42.i.if.then46.i_crit_edge, %if.end40.i.if.then46.i_crit_edge
  %call.i.i.i.i.i.i14.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i15.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i15.i)
  %cmp.i.i.i.i16.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i15.i, 1
  br i1 %cmp.i.i.i.i16.i, label %if.then.i20.i, label %if.end5.i.i.i.i18.i

if.end5.i.i.i.i18.i:                              ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i15.i)
  %.not.i.i.i.i17.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i15.i, 0
  br i1 %.not.i.i.i.i17.i, label %if.end5.i.i.i.i18.i.if.else.i_crit_edge, label %if.then10.i.i.i.i19.i, !prof !112

if.end5.i.i.i.i18.i.if.else.i_crit_edge:          ; preds = %if.end5.i.i.i.i18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then10.i.i.i.i19.i:                            ; preds = %if.end5.i.i.i.i18.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %if.else.i

if.then.i20.i:                                    ; preds = %if.then46.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %call.i.i.i.i = call i32 @_raw_spin_trylock(ptr noundef %page_lock.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i20.i.if.then50.i_crit_edge, label %do.end.i.i, !prof !112

if.then.i20.i.if.then50.i_crit_edge:              ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50.i

do.end.i.i:                                       ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 537, i32 noundef 9, ptr noundef null) #12
  br label %if.then50.i

if.then50.i:                                      ; preds = %do.end.i.i, %if.then.i20.i.if.then50.i_crit_edge
  call fastcc void @__release_z3fold_page(ptr noundef %call18.i, i1 noundef zeroext true) #12
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr51.i, i32 noundef 8) #12
  call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr51.i) #12
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then10.i.i.i.i19.i, %if.end5.i.i.i.i18.i.if.else.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %page_lock.i.i) #12
  br label %for.inc.i

if.end53.i:                                       ; preds = %lor.lhs.false42.i
  %call.i.i24.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %call18.i) #12
  br i1 %call.i.i24.i, label %if.end.i.i.i, label %if.end53.i.list_del_init.exit.i_crit_edge

if.end53.i.list_del_init.exit.i_crit_edge:        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call18.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %call18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call18.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end53.i.list_del_init.exit.i_crit_edge
  %34 = ptrtoint ptr %call18.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call18.i, ptr %call18.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %call18.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call18.i, ptr %prev.i3.i.i, align 4
  %cpu.i = getelementptr inbounds %struct.z3fold_header, ptr %call18.i, i32 0, i32 6
  %36 = ptrtoint ptr %cpu.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %cpu.i, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %if.else.i, %if.then50.i, %if.then38.i, %if.then10.i.i.i.i13.i, %if.end5.i.i.i.i.i.for.inc.i_crit_edge, %if.then21.i.for.inc.i_crit_edge
  %zhdr.2.i = phi ptr [ %call18.i, %if.then21.i.for.inc.i_crit_edge ], [ null, %if.then38.i ], [ null, %if.else.i ], [ null, %if.then50.i ], [ null, %if.end5.i.i.i.i.i.for.inc.i_crit_edge ], [ null, %if.then10.i.i.i.i13.i ]
  %prev54.i = getelementptr inbounds %struct.list_head, ptr %pos.0119.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev54.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %pos.0.i = load ptr, ptr %prev54.i, align 4
  %cmp.i6.not.i = icmp eq ptr %pos.0.i, %lru.i
  br i1 %cmp.i6.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body17.i_crit_edge

for.inc.i.for.body17.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %list_del_init.exit.i, %if.then21.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %zhdr.3.i = phi ptr [ %call18.i, %list_del_init.exit.i ], [ %zhdr.0124.i, %if.end11.i.for.end.i_crit_edge ], [ %call18.i, %if.then21.i.for.end.i_crit_edge ], [ %zhdr.2.i, %for.inc.i.for.end.i_crit_edge ]
  %page.2.i = phi ptr [ %add.ptr.i, %list_del_init.exit.i ], [ %page.0125.i, %if.end11.i.for.end.i_crit_edge ], [ %add.ptr.i, %if.then21.i.for.end.i_crit_edge ], [ %add.ptr.i, %for.inc.i.for.end.i_crit_edge ]
  %tobool55.not.i = icmp eq ptr %zhdr.3.i, null
  br i1 %tobool55.not.i, label %for.end.i.z3fold_reclaim_page.exit.thread_crit_edge, label %if.end57.i

for.end.i.z3fold_reclaim_page.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_reclaim_page.exit.thread

if.end57.i:                                       ; preds = %for.end.i
  %38 = getelementptr inbounds %struct.page, ptr %page.2.i, i32 0, i32 1
  %call.i.i25.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #12
  br i1 %call.i.i25.i, label %if.end.i.i28.i, label %if.end57.i.list_del_init.exit30.i_crit_edge

if.end57.i.list_del_init.exit30.i_crit_edge:      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit30.i

if.end.i.i28.i:                                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i26.i = getelementptr inbounds %struct.page, ptr %page.2.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i26.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %prev1.i.i.i27.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i27.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del_init.exit30.i

list_del_init.exit30.i:                           ; preds = %if.end.i.i28.i, %if.end57.i.list_del_init.exit30.i_crit_edge
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %38, ptr %38, align 4
  %prev.i3.i29.i = getelementptr inbounds %struct.page, ptr %page.2.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i3.i29.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %38, ptr %prev.i3.i29.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock2.i) #12
  %private60.i = getelementptr inbounds %struct.page, ptr %page.2.i, i32 0, i32 1, i32 0, i32 3
  %47 = ptrtoint ptr %private60.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %private60.i, align 4
  %and1.i2.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i2.i)
  %tobool62.not.i = icmp eq i32 %and1.i2.i, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %if.end87.thread.i

if.then63.i:                                      ; preds = %list_del_init.exit30.i
  %49 = call ptr @memset(ptr %slots.i, i32 0, i32 16)
  %first_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 7
  %50 = ptrtoint ptr %first_chunks.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %first_chunks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool64.not.i = icmp eq i16 %51, 0
  br i1 %tobool64.not.i, label %if.then63.i.if.end67.i_crit_edge, label %if.then65.i

if.then63.i.if.end67.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.then65.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %zhdr.3.i to i32
  %first_num.i.i.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 11
  %53 = ptrtoint ptr %first_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i.i.i = load i8, ptr %first_num.i.i.i, align 2
  %bf.lshr.i.i.i = lshr i8 %bf.load.i.i.i, 6
  %narrow.i = add nuw nsw i8 %bf.lshr.i.i.i, 1
  %54 = and i8 %narrow.i, 3
  %and.i.i.i = zext i8 %54 to i32
  %add.i.i = add i32 %and.i.i.i, %52
  call void @_raw_write_lock(ptr noundef %lock.i) #12
  %arrayidx.i.i = getelementptr [4 x i32], ptr %slots.i, i32 0, i32 %and.i.i.i
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i.i, ptr %arrayidx.i.i, align 4
  call void @_raw_write_unlock(ptr noundef %lock.i) #12
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then65.i, %if.then63.i.if.end67.i_crit_edge
  %first_handle.0.i = phi i32 [ %56, %if.then65.i ], [ 0, %if.then63.i.if.end67.i_crit_edge ]
  %middle_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 8
  %57 = ptrtoint ptr %middle_chunks.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %middle_chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool68.not.i = icmp eq i16 %58, 0
  br i1 %tobool68.not.i, label %if.end67.i.if.end71.i_crit_edge, label %if.then69.i

if.end67.i.if.end71.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then69.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %zhdr.3.i to i32
  %first_num.i.i32.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 11
  %60 = ptrtoint ptr %first_num.i.i32.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i.i33.i = load i8, ptr %first_num.i.i32.i, align 2
  %bf.lshr.i.i34.i = lshr i8 %bf.load.i.i33.i, 6
  %narrow109.i = add nuw nsw i8 %bf.lshr.i.i34.i, 2
  %61 = and i8 %narrow109.i, 3
  %and.i.i37.i = zext i8 %61 to i32
  %add.i38.i = add i32 %and.i.i37.i, %59
  call void @_raw_write_lock(ptr noundef %lock.i) #12
  %arrayidx.i40.i = getelementptr [4 x i32], ptr %slots.i, i32 0, i32 %and.i.i37.i
  %62 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i38.i, ptr %arrayidx.i40.i, align 4
  call void @_raw_write_unlock(ptr noundef %lock.i) #12
  %63 = ptrtoint ptr %arrayidx.i40.i to i32
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then69.i, %if.end67.i.if.end71.i_crit_edge
  %middle_handle.0.i = phi i32 [ %63, %if.then69.i ], [ 0, %if.end67.i.if.end71.i_crit_edge ]
  %last_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 9
  %64 = ptrtoint ptr %last_chunks.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %last_chunks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool72.not.i = icmp eq i16 %65, 0
  br i1 %tobool72.not.i, label %if.end71.i.if.end78.i_crit_edge, label %if.then73.i

if.end71.i.if.end78.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i

if.then73.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %zhdr.3.i to i32
  %first_num.i.i42.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 11
  %67 = ptrtoint ptr %first_num.i.i42.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.i.i43.i = load i8, ptr %first_num.i.i42.i, align 2
  %bf.lshr.i.i44.i = lshr i8 %bf.load.i.i43.i, 6
  %narrow110.i = add nuw nsw i8 %bf.lshr.i.i44.i, 3
  %68 = and i8 %narrow110.i, 3
  %and.i.i47.i = zext i8 %68 to i32
  %add.i48.i = add i32 %and.i.i47.i, %66
  %conv.i49.i = zext i16 %65 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i49.i, 2
  %or3.i.i = or i32 %add.i48.i, %shl.i.i
  call void @_raw_write_lock(ptr noundef %lock.i) #12
  %arrayidx.i51.i = getelementptr [4 x i32], ptr %slots.i, i32 0, i32 %and.i.i47.i
  %69 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or3.i.i, ptr %arrayidx.i51.i, align 4
  call void @_raw_write_unlock(ptr noundef %lock.i) #12
  %70 = ptrtoint ptr %arrayidx.i51.i to i32
  br label %if.end78.i

if.end87.thread.i:                                ; preds = %list_del_init.exit30.i
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %zhdr.3.i to i32
  %or.i.i.i = or i32 %71, 1
  br label %if.then89.i

if.end78.i:                                       ; preds = %if.then73.i, %if.end71.i.if.end78.i_crit_edge
  %last_handle.0.i = phi i32 [ %70, %if.then73.i ], [ 0, %if.end71.i.if.end78.i_crit_edge ]
  %page_lock.i53.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %page_lock.i53.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %middle_handle.0.i)
  %tobool79.not.i = icmp eq i32 %middle_handle.0.i, 0
  br i1 %tobool79.not.i, label %if.end78.i.if.end87.i_crit_edge, label %if.then80.i

if.end78.i.if.end87.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i

if.then80.i:                                      ; preds = %if.end78.i
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call83.i = call i32 %75(ptr noundef %pool, i32 noundef %middle_handle.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.then80.i.if.end87.i_crit_edge, label %if.then80.i.next.i_crit_edge

if.then80.i.next.i_crit_edge:                     ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next.i

if.then80.i.if.end87.i_crit_edge:                 ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then80.i.if.end87.i_crit_edge, %if.end78.i.if.end87.i_crit_edge
  %ret.1.i = phi i32 [ 0, %if.then80.i.if.end87.i_crit_edge ], [ %ret.0123.i, %if.end78.i.if.end87.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_handle.0.i)
  %tobool88.not.i = icmp eq i32 %first_handle.0.i, 0
  br i1 %tobool88.not.i, label %if.end87.i.if.end96.i_crit_edge, label %if.end87.i.if.then89.i_crit_edge

if.end87.i.if.then89.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89.i

if.end87.i.if.end96.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.i

if.then89.i:                                      ; preds = %if.end87.i.if.then89.i_crit_edge, %if.end87.thread.i
  %first_handle.195104.i = phi i32 [ %or.i.i.i, %if.end87.thread.i ], [ %first_handle.0.i, %if.end87.i.if.then89.i_crit_edge ]
  %last_handle.196102.i = phi i32 [ 0, %if.end87.thread.i ], [ %last_handle.0.i, %if.end87.i.if.then89.i_crit_edge ]
  %76 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %call92.i = call i32 %79(ptr noundef %pool, i32 noundef %first_handle.195104.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %tobool93.not.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.not.i, label %if.then89.i.if.end96.i_crit_edge, label %if.then89.i.next.i_crit_edge

if.then89.i.next.i_crit_edge:                     ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next.i

if.then89.i.if.end96.i_crit_edge:                 ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then89.i.if.end96.i_crit_edge, %if.end87.i.if.end96.i_crit_edge
  %last_handle.196103.i = phi i32 [ %last_handle.196102.i, %if.then89.i.if.end96.i_crit_edge ], [ %last_handle.0.i, %if.end87.i.if.end96.i_crit_edge ]
  %ret.2.i = phi i32 [ 0, %if.then89.i.if.end96.i_crit_edge ], [ %ret.1.i, %if.end87.i.if.end96.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_handle.196103.i)
  %tobool97.not.i = icmp eq i32 %last_handle.196103.i, 0
  br i1 %tobool97.not.i, label %if.end96.i.next.i_crit_edge, label %if.then98.i

if.end96.i.next.i_crit_edge:                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next.i

if.then98.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %call101.i = call i32 %83(ptr noundef %pool, i32 noundef %last_handle.196103.i) #12
  br label %next.i

next.i:                                           ; preds = %if.then98.i, %if.end96.i.next.i_crit_edge, %if.then89.i.next.i_crit_edge, %if.then80.i.next.i_crit_edge
  %ret.3.i = phi i32 [ %call83.i, %if.then80.i.next.i_crit_edge ], [ %call92.i, %if.then89.i.next.i_crit_edge ], [ %call101.i, %if.then98.i ], [ %ret.2.i, %if.end96.i.next.i_crit_edge ]
  %84 = ptrtoint ptr %private60.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %private60.i, align 4
  %and1.i3.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i3.i)
  %tobool108.not.i = icmp eq i32 %and1.i3.i, 0
  br i1 %tobool108.not.i, label %if.else120.i, label %if.then109.i

if.then109.i:                                     ; preds = %next.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %cmp110.i = icmp eq i32 %ret.3.i, 0
  br i1 %cmp110.i, label %if.then112.i, label %if.end114.i

if.then112.i:                                     ; preds = %if.then109.i
  %86 = ptrtoint ptr %page.2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %page.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp.i.not.i.i.i = icmp eq i32 %87, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %free_z3fold_page.exit.i, !prof !121

if.then.i.i.i:                                    ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page.2.i, ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !122
  unreachable

free_z3fold_page.exit.i:                          ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 13, ptr noundef %page.2.i) #12
  call void @__free_pages(ptr noundef %page.2.i, i32 noundef 0) #12
  br label %if.end

if.end114.i:                                      ; preds = %if.then109.i
  call void @_raw_spin_lock(ptr noundef %lock2.i) #12
  %88 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lru.i, align 4
  %call.i.i54.i = call zeroext i1 @__list_add_valid(ptr noundef %38, ptr noundef %lru.i, ptr noundef %89) #12
  br i1 %call.i.i54.i, label %if.end.i.i55.i, label %if.end114.i.if.end134.i_crit_edge

if.end114.i.if.end134.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134.i

if.end.i.i55.i:                                   ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %89, ptr %38, align 4
  %92 = ptrtoint ptr %prev.i3.i29.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %lru.i, ptr %prev.i3.i29.i, align 4
  %93 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %38, ptr %lru.i, align 4
  br label %if.end134.i

if.else120.i:                                     ; preds = %next.i
  %slots122.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 4
  %94 = ptrtoint ptr %slots122.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %slots122.i, align 4
  %page_lock.i56.i = getelementptr %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %page_lock.i56.i) #12
  %refcount123.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.3.i, i32 0, i32 2
  %call.i.i.i.i.i.i57.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount123.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  call void @llvm.prefetch.p0(ptr %refcount123.i, i32 1, i32 3, i32 1) #12
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount123.i, ptr %refcount123.i, i32 1, ptr elementtype(i32) %refcount123.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i58.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i58.i)
  %cmp.i.i.i.i59.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i58.i, 1
  br i1 %cmp.i.i.i.i59.i, label %if.then.i63.i, label %if.end5.i.i.i.i61.i

if.end5.i.i.i.i61.i:                              ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i58.i)
  %.not.i.i.i.i60.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i58.i, 0
  br i1 %.not.i.i.i.i60.i, label %if.end5.i.i.i.i61.i.if.end128.i_crit_edge, label %if.then10.i.i.i.i62.i, !prof !112

if.end5.i.i.i.i61.i.if.end128.i_crit_edge:        ; preds = %if.end5.i.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128.i

if.then10.i.i.i.i62.i:                            ; preds = %if.end5.i.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount123.i, i32 noundef 3) #12
  br label %if.end128.i

if.then.i63.i:                                    ; preds = %if.else120.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %call.i.i.i74.i = call i32 @_raw_spin_trylock(ptr noundef %page_lock.i56.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call.i.i.i74.i, 0
  br i1 %tobool.not.i75.i, label %if.then.i63.i.if.then126.i_crit_edge, label %do.end.i76.i, !prof !112

if.then.i63.i.if.then126.i_crit_edge:             ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then126.i

do.end.i76.i:                                     ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 537, i32 noundef 9, ptr noundef null) #12
  br label %if.then126.i

if.then126.i:                                     ; preds = %do.end.i76.i, %if.then.i63.i.if.then126.i_crit_edge
  call fastcc void @__release_z3fold_page(ptr noundef nonnull %zhdr.3.i, i1 noundef zeroext true) #12
  %97 = ptrtoint ptr %c_handle.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %c_handle.i, align 8
  call void @kmem_cache_free(ptr noundef %98, ptr noundef %95) #12
  br label %if.end

if.end128.i:                                      ; preds = %if.then10.i.i.i.i62.i, %if.end5.i.i.i.i61.i.if.end128.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock2.i) #12
  %99 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lru.i, align 4
  %call.i.i66.i = call zeroext i1 @__list_add_valid(ptr noundef %38, ptr noundef %lru.i, ptr noundef %100) #12
  br i1 %call.i.i66.i, label %if.end.i.i69.i, label %if.end128.i.list_add.exit70.i_crit_edge

if.end128.i.list_add.exit70.i_crit_edge:          ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit70.i

if.end.i.i69.i:                                   ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i67.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %38, ptr %prev1.i.i67.i, align 4
  %102 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %100, ptr %38, align 4
  %103 = ptrtoint ptr %prev.i3.i29.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %lru.i, ptr %prev.i3.i29.i, align 4
  %104 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %38, ptr %lru.i, align 4
  br label %list_add.exit70.i

list_add.exit70.i:                                ; preds = %if.end.i.i69.i, %if.end128.i.list_add.exit70.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock2.i) #12
  br label %if.end134.i

if.end134.i:                                      ; preds = %list_add.exit70.i, %if.end.i.i55.i, %if.end114.i.if.end134.i_crit_edge
  %page_lock.i56.sink.i = phi ptr [ %page_lock.i56.i, %list_add.exit70.i ], [ %lock2.i, %if.end114.i.if.end134.i_crit_edge ], [ %lock2.i, %if.end.i.i55.i ]
  call void @_raw_spin_unlock(ptr noundef %page_lock.i56.sink.i) #12
  call void @_clear_bit(i32 noundef 4, ptr noundef %private60.i) #12
  call void @_raw_spin_lock(ptr noundef %lock2.i) #12
  %inc.i = add nuw nsw i32 %i.0126.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %if.end134.i.z3fold_reclaim_page.exit.thread_crit_edge, label %if.end134.i.for.body.i_crit_edge

if.end134.i.for.body.i_crit_edge:                 ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end134.i.z3fold_reclaim_page.exit.thread_crit_edge: ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_reclaim_page.exit.thread

z3fold_reclaim_page.exit.thread:                  ; preds = %if.end134.i.z3fold_reclaim_page.exit.thread_crit_edge, %for.end.i.z3fold_reclaim_page.exit.thread_crit_edge, %kref_get_unless_zero.exit.i.z3fold_reclaim_page.exit.thread_crit_edge, %for.body.i.z3fold_reclaim_page.exit.thread_crit_edge, %lor.lhs.false.i.z3fold_reclaim_page.exit.thread_crit_edge, %while.body.z3fold_reclaim_page.exit.thread_crit_edge
  %retval.3.i.ph = phi i32 [ -11, %kref_get_unless_zero.exit.i.z3fold_reclaim_page.exit.thread_crit_edge ], [ -22, %for.body.i.z3fold_reclaim_page.exit.thread_crit_edge ], [ -11, %if.end134.i.z3fold_reclaim_page.exit.thread_crit_edge ], [ -11, %for.end.i.z3fold_reclaim_page.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.z3fold_reclaim_page.exit.thread_crit_edge ], [ -22, %while.body.z3fold_reclaim_page.exit.thread_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock2.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %slots.i) #12
  br label %while.end

if.end:                                           ; preds = %if.then126.i, %free_z3fold_page.exit.i
  %call.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr51.i, i32 noundef 8) #12
  call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr51.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %slots.i) #12
  %inc = add nuw i32 %total.039, 1
  %exitcond.not = icmp eq i32 %inc, %pages
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %z3fold_reclaim_page.exit.thread, %entry.while.end_crit_edge
  %total.030 = phi i32 [ %total.039, %z3fold_reclaim_page.exit.thread ], [ 0, %entry.while.end_crit_edge ], [ %pages, %if.end.while.end_crit_edge ]
  %ret.1 = phi i32 [ %retval.3.i.ph, %z3fold_reclaim_page.exit.thread ], [ -22, %entry.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %tobool.not = icmp eq ptr %reclaimed, null
  br i1 %tobool.not, label %while.end.if.end3_crit_edge, label %if.then2

while.end.if.end3_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %reclaimed to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %total.030, ptr %reclaimed, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %while.end.if.end3_crit_edge
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @z3fold_zpool_map(ptr nocapture noundef readnone %pool, i32 noundef %handle, i32 noundef %mm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %handle, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  %and.i.i.i = and i32 %handle, -64
  %0 = inttoptr i32 %and.i.i.i to ptr
  %lock.i.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %0, i32 0, i32 2
  tail call void @_raw_read_lock(ptr noundef %lock.i.i) #12
  %1 = inttoptr i32 %handle to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and127.i.i = and i32 %3, -4096
  %4 = inttoptr i32 %and127.i.i to ptr
  %page_lock.i28.i.i = getelementptr inbounds %struct.z3fold_header, ptr %4, i32 0, i32 1
  %call.i.i29.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i28.i.i) #12
  tail call void @_raw_read_unlock(ptr noundef %lock.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i.i)
  %tobool4.not30.i.i = icmp eq i32 %call.i.i29.i.i, 0
  br i1 %tobool4.not30.i.i, label %if.then.i.i.cleanup.i.i_crit_edge, label %if.then.i.i.get_z3fold_header.exit.i_crit_edge

if.then.i.i.get_z3fold_header.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_z3fold_header.exit.i

if.then.i.i.cleanup.i.i_crit_edge:                ; preds = %if.then.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then.i.i.cleanup.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !120
  tail call void @_raw_read_lock(ptr noundef %lock.i.i) #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %and1.i1.i = and i32 %6, -4096
  %7 = inttoptr i32 %and1.i1.i to ptr
  %page_lock.i.i.i = getelementptr inbounds %struct.z3fold_header, ptr %7, i32 0, i32 1
  %call.i.i.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i.i.i) #12
  tail call void @_raw_read_unlock(ptr noundef %lock.i.i) #12
  %tobool4.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool4.not.i.i, label %cleanup.i.i.cleanup.i.i_crit_edge, label %get_z3fold_header.exit.i.loopexit

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and15.i.i = and i32 %handle, -4096
  %.pre.i = inttoptr i32 %and15.i.i to ptr
  br label %get_z3fold_header.exit.i

get_z3fold_header.exit.i.loopexit:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = inttoptr i32 %and1.i1.i to ptr
  br label %get_z3fold_header.exit.i

get_z3fold_header.exit.i:                         ; preds = %get_z3fold_header.exit.i.loopexit, %if.else.i.i, %if.then.i.i.get_z3fold_header.exit.i_crit_edge
  %zhdr.0.i.pre-phi.i = phi ptr [ %4, %if.then.i.i.get_z3fold_header.exit.i_crit_edge ], [ %.pre.i, %if.else.i.i ], [ %8, %get_z3fold_header.exit.i.loopexit ]
  %zhdr.0.in.i.i = phi i32 [ %and127.i.i, %if.then.i.i.get_z3fold_header.exit.i_crit_edge ], [ %and15.i.i, %if.else.i.i ], [ %and1.i1.i, %get_z3fold_header.exit.i.loopexit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %zhdr.0.in.i.i, 1073741824
  %shr.i = lshr exact i32 %sub.i, 12
  %private.i = getelementptr %struct.page, ptr %9, i32 %shr.i, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %private.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %get_z3fold_header.exit.i.out.i_crit_edge

get_z3fold_header.exit.i.out.i_crit_edge:         ; preds = %get_z3fold_header.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end.i:                                         ; preds = %get_z3fold_header.exit.i
  %and.i.i2.i = and i32 %handle, -64
  %12 = inttoptr i32 %and.i.i2.i to ptr
  %lock.i3.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %12, i32 0, i32 2
  tail call void @_raw_read_lock(ptr noundef %lock.i3.i) #12
  br i1 %tobool.not.i.i, label %if.end.i.handle_to_buddy.exit.i_crit_edge, label %do.end.i.i, !prof !112

if.end.i.handle_to_buddy.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_to_buddy.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 492, i32 noundef 9, ptr noundef null) #12
  br label %handle_to_buddy.exit.i

handle_to_buddy.exit.i:                           ; preds = %do.end.i.i, %if.end.i.handle_to_buddy.exit.i_crit_edge
  %13 = inttoptr i32 %handle to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  tail call void @_raw_read_unlock(ptr noundef %lock.i3.i) #12
  %and21.i.i = and i32 %15, -4096
  %16 = inttoptr i32 %and21.i.i to ptr
  %first_num.i.i = getelementptr inbounds %struct.z3fold_header, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %first_num.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %first_num.i.i, align 2
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 6
  %conv.i.i = zext i8 %bf.lshr.i.i to i32
  %sub.i.i = sub i32 %15, %conv.i.i
  %and22.i.i = and i32 %sub.i.i, 3
  %18 = zext i32 %and22.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and22.i.i, label %sw.epilog.thread.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %handle_to_buddy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr4.i = getelementptr i8, ptr %zhdr.0.i.pre-phi.i, i32 128
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %handle_to_buddy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %start_middle.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 10
  %19 = ptrtoint ptr %start_middle.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %start_middle.i, align 4
  %conv.i = zext i16 %20 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 6
  %add.ptr6.i = getelementptr i8, ptr %zhdr.0.i.pre-phi.i, i32 %shl.i
  tail call void @_set_bit(i32 noundef 1, ptr noundef %private.i) #12
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %handle_to_buddy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_read_lock(ptr noundef %lock.i3.i) #12
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %13, align 4
  tail call void @_raw_read_unlock(ptr noundef %lock.i3.i) #12
  %23 = lshr i32 %22, 2
  %conv.i8.i = and i32 %23, 1023
  %shl11.neg.i = mul nsw i32 %conv.i8.i, -64
  %sub12.i = add nsw i32 %shl11.neg.i, 4096
  %add.ptr13.i = getelementptr i8, ptr %zhdr.0.i.pre-phi.i, i32 %sub12.i
  br label %sw.epilog.i

sw.epilog.thread.i:                               ; preds = %handle_to_buddy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %and22.i.i) #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1515, i32 noundef 9, ptr noundef null) #12
  br label %out.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb5.i, %sw.bb.i
  %addr.0.i = phi ptr [ %add.ptr13.i, %sw.bb8.i ], [ %add.ptr6.i, %sw.bb5.i ], [ %add.ptr4.i, %sw.bb.i ]
  %tobool36.not.i = icmp eq ptr %addr.0.i, null
  br i1 %tobool36.not.i, label %sw.epilog.i.out.i_crit_edge, label %if.then37.i

sw.epilog.i.out.i_crit_edge:                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then37.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %mapped_count.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 11
  %24 = ptrtoint ptr %mapped_count.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %mapped_count.i, align 2
  %25 = add i8 %bf.load.i, 16
  %bf.shl.i = and i8 %25, 48
  %bf.clear39.i = and i8 %bf.load.i, -49
  %bf.set.i = or i8 %bf.shl.i, %bf.clear39.i
  store i8 %bf.set.i, ptr %mapped_count.i, align 2
  br label %out.i

out.i:                                            ; preds = %if.then37.i, %sw.epilog.i.out.i_crit_edge, %sw.epilog.thread.i, %get_z3fold_header.exit.i.out.i_crit_edge
  %addr.1.i = phi ptr [ %zhdr.0.i.pre-phi.i, %get_z3fold_header.exit.i.out.i_crit_edge ], [ %addr.0.i, %if.then37.i ], [ null, %sw.epilog.i.out.i_crit_edge ], [ null, %sw.epilog.thread.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %private.i.i = getelementptr %struct.page, ptr %26, i32 %shr.i, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %private.i.i, align 4
  %and1.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i10.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i10.i, label %if.then.i12.i, label %out.i.z3fold_map.exit_crit_edge

out.i.z3fold_map.exit_crit_edge:                  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_map.exit

if.then.i12.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %page_lock.i.i11.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i.i11.i) #12
  br label %z3fold_map.exit

z3fold_map.exit:                                  ; preds = %if.then.i12.i, %out.i.z3fold_map.exit_crit_edge
  ret ptr %addr.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z3fold_zpool_unmap(ptr nocapture noundef readnone %pool, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %handle, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  %and.i.i.i = and i32 %handle, -64
  %0 = inttoptr i32 %and.i.i.i to ptr
  %lock.i.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %0, i32 0, i32 2
  tail call void @_raw_read_lock(ptr noundef %lock.i.i) #12
  %1 = inttoptr i32 %handle to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and127.i.i = and i32 %3, -4096
  %4 = inttoptr i32 %and127.i.i to ptr
  %page_lock.i28.i.i = getelementptr inbounds %struct.z3fold_header, ptr %4, i32 0, i32 1
  %call.i.i29.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i28.i.i) #12
  tail call void @_raw_read_unlock(ptr noundef %lock.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i.i)
  %tobool4.not30.i.i = icmp eq i32 %call.i.i29.i.i, 0
  br i1 %tobool4.not30.i.i, label %if.then.i.i.cleanup.i.i_crit_edge, label %if.then.i.i.get_z3fold_header.exit.i_crit_edge

if.then.i.i.get_z3fold_header.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_z3fold_header.exit.i

if.then.i.i.cleanup.i.i_crit_edge:                ; preds = %if.then.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then.i.i.cleanup.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !120
  tail call void @_raw_read_lock(ptr noundef %lock.i.i) #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %and1.i1.i = and i32 %6, -4096
  %7 = inttoptr i32 %and1.i1.i to ptr
  %page_lock.i.i.i = getelementptr inbounds %struct.z3fold_header, ptr %7, i32 0, i32 1
  %call.i.i.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i.i.i) #12
  tail call void @_raw_read_unlock(ptr noundef %lock.i.i) #12
  %tobool4.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool4.not.i.i, label %cleanup.i.i.cleanup.i.i_crit_edge, label %get_z3fold_header.exit.i.loopexit

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and15.i.i = and i32 %handle, -4096
  %.pre.i = inttoptr i32 %and15.i.i to ptr
  br label %get_z3fold_header.exit.i

get_z3fold_header.exit.i.loopexit:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = inttoptr i32 %and1.i1.i to ptr
  br label %get_z3fold_header.exit.i

get_z3fold_header.exit.i:                         ; preds = %get_z3fold_header.exit.i.loopexit, %if.else.i.i, %if.then.i.i.get_z3fold_header.exit.i_crit_edge
  %zhdr.0.i.pre-phi.i = phi ptr [ %4, %if.then.i.i.get_z3fold_header.exit.i_crit_edge ], [ %.pre.i, %if.else.i.i ], [ %8, %get_z3fold_header.exit.i.loopexit ]
  %zhdr.0.in.i.i = phi i32 [ %and127.i.i, %if.then.i.i.get_z3fold_header.exit.i_crit_edge ], [ %and15.i.i, %if.else.i.i ], [ %and1.i1.i, %get_z3fold_header.exit.i.loopexit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %zhdr.0.in.i.i, 1073741824
  %shr.i = lshr exact i32 %sub.i, 12
  %private.i = getelementptr %struct.page, ptr %9, i32 %shr.i, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %private.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %get_z3fold_header.exit.i.z3fold_unmap.exit_crit_edge

get_z3fold_header.exit.i.z3fold_unmap.exit_crit_edge: ; preds = %get_z3fold_header.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_unmap.exit

if.end.i:                                         ; preds = %get_z3fold_header.exit.i
  %and.i.i2.i = and i32 %handle, -64
  %12 = inttoptr i32 %and.i.i2.i to ptr
  %lock.i3.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %12, i32 0, i32 2
  tail call void @_raw_read_lock(ptr noundef %lock.i3.i) #12
  br i1 %tobool.not.i.i, label %if.end.i.handle_to_buddy.exit.i_crit_edge, label %do.end.i.i, !prof !112

if.end.i.handle_to_buddy.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_to_buddy.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 492, i32 noundef 9, ptr noundef null) #12
  br label %handle_to_buddy.exit.i

handle_to_buddy.exit.i:                           ; preds = %do.end.i.i, %if.end.i.handle_to_buddy.exit.i_crit_edge
  %13 = inttoptr i32 %handle to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  tail call void @_raw_read_unlock(ptr noundef %lock.i3.i) #12
  %and21.i.i = and i32 %15, -4096
  %16 = inttoptr i32 %and21.i.i to ptr
  %first_num.i.i = getelementptr inbounds %struct.z3fold_header, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %first_num.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %first_num.i.i, align 2
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 6
  %conv.i.i = zext i8 %bf.lshr.i.i to i32
  %sub.i.i = sub i32 %15, %conv.i.i
  %and22.i.i = and i32 %sub.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and22.i.i)
  %cmp.i = icmp eq i32 %and22.i.i, 2
  br i1 %cmp.i, label %if.then4.i, label %handle_to_buddy.exit.i.if.end6.i_crit_edge

handle_to_buddy.exit.i.if.end6.i_crit_edge:       ; preds = %handle_to_buddy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then4.i:                                       ; preds = %handle_to_buddy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %private.i) #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %handle_to_buddy.exit.i.if.end6.i_crit_edge
  %mapped_count.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 11
  %18 = ptrtoint ptr %mapped_count.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %mapped_count.i, align 2
  %19 = add i8 %bf.load.i, 48
  %bf.shl.i = and i8 %19, 48
  %bf.clear8.i = and i8 %bf.load.i, -49
  %bf.set.i = or i8 %bf.shl.i, %bf.clear8.i
  store i8 %bf.set.i, ptr %mapped_count.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %private.i.i = getelementptr %struct.page, ptr %20, i32 %shr.i, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %private.i.i, align 4
  %and1.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i7.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i7.i, label %if.then.i9.i, label %if.end6.i.z3fold_unmap.exit_crit_edge

if.end6.i.z3fold_unmap.exit_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_unmap.exit

if.then.i9.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %page_lock.i.i8.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.0.i.pre-phi.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i.i8.i) #12
  br label %z3fold_unmap.exit

z3fold_unmap.exit:                                ; preds = %if.then.i9.i, %if.end6.i.z3fold_unmap.exit_crit_edge, %get_z3fold_header.exit.i.z3fold_unmap.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @z3fold_zpool_total_size(ptr noundef %pool) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pages_nr.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pages_nr.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %pages_nr.i) #12
  %mul = shl i64 %call.i.i, 12
  ret i64 %mul
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_pages_work(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stale_lock = getelementptr i8, ptr %w, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %stale_lock) #12
  %stale = getelementptr i8, ptr %w, i32 -40
  %0 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %stale, align 4
  %cmp.i.not52 = icmp eq ptr %1, %stale
  br i1 %cmp.i.not52, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %31, %cleanup.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %4 = ptrtoint ptr %2 to i32
  %sub = add i32 %4, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr6 = getelementptr %struct.page, ptr %3, i32 %shr
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %private = getelementptr %struct.page, ptr %3, i32 %shr, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %private, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %do.end, label %if.end33, !prof !121

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 566, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end33:                                         ; preds = %list_del.exit
  tail call void @_raw_spin_unlock(ptr noundef %stale_lock) #12
  %work = getelementptr inbounds %struct.z3fold_header, ptr %2, i32 0, i32 3
  %call35 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 788) #12
  %16 = getelementptr %struct.page, ptr %3, i32 %shr, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !112

if.then.i.i.i:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %18, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %add.ptr6 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %19, %if.end.i.i.i ]
  %20 = inttoptr i32 %retval.0.i.i.i to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i, !prof !112

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !116
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #12
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %20, align 4
  %and.i.i4.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i.i.if.then.i5.i_crit_edge

folio_flags.exit.i.i.i.if.then.i5.i_crit_edge:    ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i5.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i.i
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #12
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #12, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge, label %folio_trylock.exit.i.i.if.then.i5.i_crit_edge

folio_trylock.exit.i.i.if.then.i5.i_crit_edge:    ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i5.i

folio_trylock.exit.i.i.lock_page.exit.i_crit_edge: ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_page.exit.i

if.then.i5.i:                                     ; preds = %folio_trylock.exit.i.i.if.then.i5.i_crit_edge, %folio_flags.exit.i.i.i.if.then.i5.i_crit_edge
  tail call void @__folio_lock(ptr noundef %20) #12
  br label %lock_page.exit.i

lock_page.exit.i:                                 ; preds = %if.then.i5.i, %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge
  tail call void @__ClearPageMovable(ptr noundef %add.ptr6) #12
  tail call void @unlock_page(ptr noundef %add.ptr6) #12
  %28 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %add.ptr6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i.i = icmp eq i32 %29, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %free_z3fold_page.exit, !prof !121

if.then.i.i:                                      ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %add.ptr6, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !122
  unreachable

free_z3fold_page.exit:                            ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %add.ptr6) #12
  tail call void @__free_pages(ptr noundef %add.ptr6, i32 noundef 0) #12
  tail call void @__might_resched(ptr noundef nonnull @.str.17, i32 noundef 571, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  tail call void @_raw_spin_lock(ptr noundef %stale_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %free_z3fold_page.exit, %do.end
  %30 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %stale, align 4
  %cmp.i.not = icmp eq ptr %31, %stale
  br i1 %cmp.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stale_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z3fold_page_migrate(ptr nocapture noundef readnone %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @PageMovable(ptr noundef %page) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.body10, !prof !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/z3fold.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1608, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.body10:                                        ; preds = %entry
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageIsolated.exit, !prof !121

if.then.i:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !126
  unreachable

PageIsolated.exit:                                ; preds = %do.body10
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %if.then21, label %do.body31, !prof !121

if.then21:                                        ; preds = %PageIsolated.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/z3fold.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1609, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

do.body31:                                        ; preds = %PageIsolated.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %private, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool33.not = icmp eq i32 %7, 0
  br i1 %tobool33.not, label %if.then42, label %do.body52, !prof !121

if.then42:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/z3fold.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1610, 0\0A.popsection", ""() #12, !srcloc !128
  unreachable

do.body52:                                        ; preds = %do.body31
  %8 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !112

if.then.i.i:                                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i190 = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %8, align 4
  %and.i16.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i190, label %if.then.i191, label %do.end10.i, !prof !121

if.then.i191:                                     ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !112

if.then.i19.i:                                    ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i = add i32 %16, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %17, %if.end.i20.i ]
  %18 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.16) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !112

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i = add i32 %16, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %newpage to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %19, %if.end.i27.i ]
  %20 = inttoptr i32 %retval.0.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and1.i.i192 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i192)
  %tobool54.not = icmp eq i32 %and1.i.i192, 0
  br i1 %tobool54.not, label %if.then63, label %do.end72, !prof !121

if.then63:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newpage, ptr noundef nonnull @.str.11) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/z3fold.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1611, 0\0A.popsection", ""() #12, !srcloc !130
  unreachable

do.end72:                                         ; preds = %PageLocked.exit
  %call73 = tail call ptr @page_address(ptr noundef %page) #12
  %pool.i = getelementptr inbounds %struct.z3fold_header, ptr %call73, i32 0, i32 5
  %23 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pool.i, align 4
  %page_lock.i = getelementptr inbounds %struct.z3fold_header, ptr %call73, i32 0, i32 1
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool76.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool76.not, label %do.end72.cleanup_crit_edge, label %if.end78

do.end72.cleanup_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end78:                                         ; preds = %do.end72
  %mapped_count = getelementptr inbounds %struct.z3fold_header, ptr %call73, i32 0, i32 11
  %25 = ptrtoint ptr %mapped_count to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %mapped_count, align 2
  %26 = and i8 %bf.load, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %if.end89, label %if.then87

if.then87:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i) #12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private) #12
  br label %cleanup

if.end89:                                         ; preds = %if.end78
  %work = getelementptr inbounds %struct.z3fold_header, ptr %call73, i32 0, i32 3
  %28 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %work, align 4
  %and1.i193 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i193)
  %tobool91.not = icmp eq i32 %and1.i193, 0
  br i1 %tobool91.not, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i) #12
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %call94 = tail call ptr @page_address(ptr noundef %newpage) #12
  %30 = call ptr @memcpy(ptr %call94, ptr %call73, i32 4096)
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %private, align 4
  %private96 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %private96 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %private96, align 4
  store i32 0, ptr %private, align 4
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i) #12
  %page_lock = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %page_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @z3fold_page_migrate.__key, i16 noundef signext 3) #12
  %work103 = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work103, i32 noundef 0) #12
  %34 = ptrtoint ptr %work103 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %work103, align 4
  %lockdep_map = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @z3fold_page_migrate.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry108 = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %entry108 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry108, ptr %entry108, align 4
  %prev.i = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 3, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry108, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @compact_page_work, ptr %func, align 4
  %38 = ptrtoint ptr %call94 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call94, ptr %call94, align 4
  %prev.i199 = getelementptr inbounds %struct.list_head, ptr %call94, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i199 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call94, ptr %prev.i199, align 4
  %call112 = tail call ptr @page_mapping(ptr noundef %page) #12
  tail call void @__ClearPageMovable(ptr noundef %page) #12
  %40 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.not.i194 = icmp eq i32 %41, -1
  br i1 %cmp.i.not.i194, label %if.then.i195, label %ClearPagePrivate.exit, !prof !121

if.then.i195:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !122
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.end93
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #12
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %8, align 4
  %and.i.i200 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i200)
  %tobool.not.i.i201 = icmp eq i32 %and.i.i200, 0
  br i1 %tobool.not.i.i201, label %if.end.i.i204, label %if.then.i.i203, !prof !112

if.then.i.i203:                                   ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i202 = add i32 %43, -1
  br label %_compound_head.exit.i206

if.end.i.i204:                                    ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit.i206

_compound_head.exit.i206:                         ; preds = %if.end.i.i204, %if.then.i.i203
  %retval.0.i.i205 = phi i32 [ %sub.i.i202, %if.then.i.i203 ], [ %44, %if.end.i.i204 ]
  %45 = inttoptr i32 %retval.0.i.i205 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %46 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %47, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !121

if.then.i1.i:                                     ; preds = %_compound_head.exit.i206
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.19) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !131
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i206
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@z3fold_page_migrate, %if.then.i.i.i.i)) #12
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !133

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %45, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  tail call void @_raw_spin_lock(ptr noundef %page_lock) #12
  %first_chunks = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 7
  %49 = ptrtoint ptr %first_chunks to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %first_chunks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool113.not = icmp eq i16 %50, 0
  br i1 %tobool113.not, label %get_page.exit.if.end116_crit_edge, label %if.then114

get_page.exit.if.end116_crit_edge:                ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then114:                                       ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %slots.i = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 4
  %51 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %slots.i, align 4
  %53 = ptrtoint ptr %call94 to i32
  %first_num.i.i.i = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 11
  %54 = ptrtoint ptr %first_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i.i.i = load i8, ptr %first_num.i.i.i, align 2
  %bf.lshr.i.i.i = lshr i8 %bf.load.i.i.i, 6
  %narrow = add nuw nsw i8 %bf.lshr.i.i.i, 1
  %55 = and i8 %narrow, 3
  %and.i.i.i = zext i8 %55 to i32
  %add.i.i208 = add i32 %and.i.i.i, %53
  %lock.i.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %52, i32 0, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock.i.i) #12
  %arrayidx.i.i = getelementptr [4 x i32], ptr %52, i32 0, i32 %and.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i.i208, ptr %arrayidx.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock.i.i) #12
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %get_page.exit.if.end116_crit_edge
  %last_chunks = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 9
  %57 = ptrtoint ptr %last_chunks to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %last_chunks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool117.not = icmp eq i16 %58, 0
  br i1 %tobool117.not, label %if.end116.if.end120_crit_edge, label %if.then118

if.end116.if.end120_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  %slots.i211 = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 4
  %59 = ptrtoint ptr %slots.i211 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %slots.i211, align 4
  %61 = ptrtoint ptr %call94 to i32
  %first_num.i.i.i212 = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 11
  %62 = ptrtoint ptr %first_num.i.i.i212 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i.i.i213 = load i8, ptr %first_num.i.i.i212, align 2
  %bf.lshr.i.i.i214 = lshr i8 %bf.load.i.i.i213, 6
  %narrow246 = add nuw nsw i8 %bf.lshr.i.i.i214, 3
  %63 = and i8 %narrow246, 3
  %and.i.i.i217 = zext i8 %63 to i32
  %add.i.i218 = add i32 %and.i.i.i217, %61
  %conv.i.i = zext i16 %58 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 2
  %or3.i.i = or i32 %add.i.i218, %shl.i.i
  %lock.i.i220 = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %60, i32 0, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock.i.i220) #12
  %arrayidx.i.i221 = getelementptr [4 x i32], ptr %60, i32 0, i32 %and.i.i.i217
  %64 = ptrtoint ptr %arrayidx.i.i221 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or3.i.i, ptr %arrayidx.i.i221, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock.i.i220) #12
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end116.if.end120_crit_edge
  %middle_chunks = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 8
  %65 = ptrtoint ptr %middle_chunks to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %middle_chunks, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool121.not = icmp eq i16 %66, 0
  br i1 %tobool121.not, label %if.end120.if.end124_crit_edge, label %if.then122

if.end120.if.end124_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then122:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %slots.i223 = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 4
  %67 = ptrtoint ptr %slots.i223 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %slots.i223, align 4
  %69 = ptrtoint ptr %call94 to i32
  %first_num.i.i.i224 = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 11
  %70 = ptrtoint ptr %first_num.i.i.i224 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i.i.i225 = load i8, ptr %first_num.i.i.i224, align 2
  %bf.lshr.i.i.i226 = lshr i8 %bf.load.i.i.i225, 6
  %narrow247 = add nuw nsw i8 %bf.lshr.i.i.i226, 2
  %71 = and i8 %narrow247, 3
  %and.i.i.i229 = zext i8 %71 to i32
  %add.i.i230 = add i32 %and.i.i.i229, %69
  %lock.i.i232 = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %68, i32 0, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock.i.i232) #12
  %arrayidx.i.i233 = getelementptr [4 x i32], ptr %68, i32 0, i32 %and.i.i.i229
  %72 = ptrtoint ptr %arrayidx.i.i233 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add.i.i230, ptr %arrayidx.i.i233, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock.i.i232) #12
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end120.if.end124_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %private96) #12
  %73 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu, align 4
  %conv127 = trunc i32 %76 to i16
  %cpu128 = getelementptr inbounds %struct.z3fold_header, ptr %call94, i32 0, i32 6
  %77 = ptrtoint ptr %cpu128 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv127, ptr %cpu128, align 4
  %lock = getelementptr inbounds %struct.z3fold_pool, ptr %24, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %lru129 = getelementptr inbounds %struct.z3fold_pool, ptr %24, i32 0, i32 4
  %78 = ptrtoint ptr %lru129 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lru129, align 4
  %call.i.i235 = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %lru129, ptr noundef %79) #12
  br i1 %call.i.i235, label %if.end.i.i236, label %if.end124.list_add.exit_crit_edge

if.end124.list_add.exit_crit_edge:                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i236:                                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %8, ptr %prev1.i.i, align 4
  %81 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %8, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1, i32 0, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %lru129, ptr %prev3.i.i, align 4
  %83 = ptrtoint ptr %lru129 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %8, ptr %lru129, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i236, %if.end124.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @__SetPageMovable(ptr noundef %newpage, ptr noundef %call112) #12
  tail call void @_raw_spin_unlock(ptr noundef %page_lock) #12
  %84 = ptrtoint ptr %cpu128 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %cpu128, align 4
  %conv132 = sext i16 %85 to i32
  %compact_wq = getelementptr inbounds %struct.z3fold_pool, ptr %24, i32 0, i32 11
  %86 = ptrtoint ptr %compact_wq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %compact_wq, align 8
  %call134 = tail call zeroext i1 @queue_work_on(i32 noundef %conv132, ptr noundef %87, ptr noundef %work103) #12
  %88 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %88, i32 noundef 4) #12
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 -1, ptr %88, align 4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private) #12
  %90 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %and.i.i238 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i238)
  %tobool.not.i.i239 = icmp eq i32 %and.i.i238, 0
  br i1 %tobool.not.i.i239, label %if.end.i.i242, label %if.then.i.i241, !prof !112

if.then.i.i241:                                   ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i240 = add i32 %92, -1
  br label %_compound_head.exit.i244

if.end.i.i242:                                    ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i244

_compound_head.exit.i244:                         ; preds = %if.end.i.i242, %if.then.i.i241
  %retval.0.i.i243 = phi i32 [ %sub.i.i240, %if.then.i.i241 ], [ %93, %if.end.i.i242 ]
  %94 = inttoptr i32 %retval.0.i.i243 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %94, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %95 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i.i.i.i = icmp eq i32 %96, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i245, label %do.end5.i.i.i.i, !prof !121

if.then.i.i.i.i245:                               ; preds = %_compound_head.exit.i244
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %94, ptr noundef nonnull @.str.20) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i244
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !136
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %97, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@z3fold_page_migrate, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !133

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %94, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %94) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.then92, %if.then87, %do.end72.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then87 ], [ -11, %if.then92 ], [ -11, %do.end72.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @z3fold_page_isolate(ptr noundef %page, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @PageMovable(ptr noundef %page) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.body10, !prof !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/z3fold.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1567, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.body10:                                        ; preds = %entry
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageIsolated.exit, !prof !121

if.then.i:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !126
  unreachable

PageIsolated.exit:                                ; preds = %do.body10
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %do.end28, label %if.then19, !prof !112

if.then19:                                        ; preds = %PageIsolated.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/z3fold.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1568, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end28:                                         ; preds = %PageIsolated.exit
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %private, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool30.not = icmp eq i32 %and1.i, 0
  br i1 %tobool30.not, label %if.end32, label %do.end28.cleanup_crit_edge

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %do.end28
  %call33 = tail call ptr @page_address(ptr noundef %page) #12
  %page_lock.i = getelementptr inbounds %struct.z3fold_header, ptr %call33, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %page_lock.i) #12
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %private, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool36.not = icmp eq i32 %10, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %if.end32.cleanup.sink.split_crit_edge

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end32
  %11 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %private, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool39.not = icmp eq i32 %13, 0
  br i1 %tobool39.not, label %if.end41, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end41:                                         ; preds = %lor.lhs.false
  %mapped_count = getelementptr inbounds %struct.z3fold_header, ptr %call33, i32 0, i32 11
  %14 = ptrtoint ptr %mapped_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %mapped_count, align 2
  %15 = and i8 %bf.load, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %if.end52, label %if.end41.cleanup.sink.split_crit_edge

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end52:                                         ; preds = %if.end41
  %call54 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %private) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.cleanup.sink.split_crit_edge

if.end52.cleanup.sink.split_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end57:                                         ; preds = %if.end52
  %pool.i = getelementptr inbounds %struct.z3fold_header, ptr %call33, i32 0, i32 5
  %17 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pool.i, align 4
  %lock = getelementptr inbounds %struct.z3fold_pool, ptr %18, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %19 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %call33, align 4
  %cmp.i.not = icmp eq ptr %20, %call33
  br i1 %cmp.i.not, label %if.end57.if.end63_crit_edge, label %if.then61

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then61:                                        ; preds = %if.end57
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call33) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then61.list_del_init.exit_crit_edge

if.then61.list_del_init.exit_crit_edge:           ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call33, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then61.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %call33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call33, ptr %call33, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %call33, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call33, ptr %prev.i3.i, align 4
  br label %if.end63

if.end63:                                         ; preds = %list_del_init.exit, %if.end57.if.end63_crit_edge
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %5, align 4
  %cmp.i93.not = icmp eq ptr %30, %5
  br i1 %cmp.i93.not, label %if.end63.if.end68_crit_edge, label %if.then66

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then66:                                        ; preds = %if.end63
  %call.i.i95 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #12
  br i1 %call.i.i95, label %if.end.i.i98, label %if.then66.list_del_init.exit100_crit_edge

if.then66.list_del_init.exit100_crit_edge:        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit100

if.end.i.i98:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i96 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i96, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %prev1.i.i.i97 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i97, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit100

list_del_init.exit100:                            ; preds = %if.end.i.i98, %if.then66.list_del_init.exit100_crit_edge
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i99 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i99 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %5, ptr %prev.i3.i99, align 4
  br label %if.end68

if.end68:                                         ; preds = %list_del_init.exit100, %if.end63.if.end68_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %refcount = getelementptr inbounds %struct.z3fold_header, ptr %call33, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !123
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end68.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !121

if.end68.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end68
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %40 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup.sink.split_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !112

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup.sink.split_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end68.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end68.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup.sink.split_crit_edge, %if.end52.cleanup.sink.split_crit_edge, %if.end41.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end32.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i1 [ true, %if.else.i.i.i.i.cleanup.sink.split_crit_edge ], [ true, %if.end15.sink.split.i.i.i.i ], [ false, %if.end52.cleanup.sink.split_crit_edge ], [ false, %if.end41.cleanup.sink.split_crit_edge ], [ false, %if.end32.cleanup.sink.split_crit_edge ], [ false, %lor.lhs.false.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end28.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end28.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z3fold_page_putback(ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_address(ptr noundef %page) #12
  %pool.i = getelementptr inbounds %struct.z3fold_header, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool.i, align 4
  %page_lock.i = getelementptr %struct.z3fold_header, ptr %call, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %page_lock.i) #12
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %call, align 4
  %cmp.i.not = icmp eq ptr %3, %call
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call) #12
  br i1 %call.i.i23, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call, ptr %call, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %12 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %12, align 4
  %prev.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.z3fold_header, ptr %call, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.if.end7_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %if.end7

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %call.i.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then6_crit_edge, label %do.end.i, !prof !112

if.then.i.if.then6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 537, i32 noundef 9, ptr noundef null) #12
  br label %if.then6

if.then6:                                         ; preds = %do.end.i, %if.then.i.if.then6_crit_edge
  tail call fastcc void @__release_z3fold_page(ptr noundef %call, i1 noundef zeroext true) #12
  %pages_nr = getelementptr inbounds %struct.z3fold_pool, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr) #12
  br label %cleanup

if.end7:                                          ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end7_crit_edge
  %lock = getelementptr inbounds %struct.z3fold_pool, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %lru9 = getelementptr inbounds %struct.z3fold_pool, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %lru9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lru9, align 4
  %call.i.i24 = tail call zeroext i1 @__list_add_valid(ptr noundef %12, ptr noundef %lru9, ptr noundef %17) #12
  br i1 %call.i.i24, label %if.end.i.i25, label %if.end7.list_add.exit_crit_edge

if.end7.list_add.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i25:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %12, align 4
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lru9, ptr %prev.i, align 4
  %21 = ptrtoint ptr %lru9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %12, ptr %lru9, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i25, %if.end7.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private) #12
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PageMovable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @compact_page_work(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -56
  tail call fastcc void @do_compact_page(ptr noundef %add.ptr, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ClearPageMovable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__SetPageMovable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_compact_page(ptr noundef %zhdr, i1 noundef zeroext %locked) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pool.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 5
  %0 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %zhdr to i32
  %sub = add i32 %3, 1073741824
  %shr = lshr i32 %sub, 12
  %page_lock.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 1
  br i1 %locked, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i.i126 = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %tobool3.not = icmp eq i32 %call.i.i126, 0
  br i1 %tobool3.not, label %if.then.if.end24_crit_edge, label %do.end, !prof !112

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 809, i32 noundef 9, ptr noundef null) #12
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %page_lock.i) #12
  br label %if.end24

if.end24:                                         ; preds = %if.else, %do.end, %if.then.if.end24_crit_edge
  %private = getelementptr %struct.page, ptr %2, i32 %shr, i32 1, i32 0, i32 3
  %call26 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %private) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end45, label %if.end61, !prof !121

do.end45:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 812, i32 noundef 9, ptr noundef null) #12
  %page_lock.i128 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i128) #12
  br label %cleanup

if.end61:                                         ; preds = %if.end24
  %lock = getelementptr inbounds %struct.z3fold_pool, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %call.i.i129 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %zhdr) #12
  br i1 %call.i.i129, label %if.end.i.i, label %if.end61.list_del_init.exit_crit_edge

if.end61.list_del_init.exit_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %zhdr, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %zhdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zhdr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end61.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %zhdr to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %zhdr, ptr %zhdr, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %zhdr, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %zhdr, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %refcount = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end66_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.if.end66_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %if.end66

if.then.i:                                        ; preds = %list_del_init.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %page_lock.i.i = getelementptr %struct.z3fold_header, ptr %zhdr, i32 0, i32 1
  %call.i.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i139 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i139, label %if.then.i.if.then65_crit_edge, label %do.end.i, !prof !112

if.then.i.if.then65_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 537, i32 noundef 9, ptr noundef null) #12
  br label %if.then65

if.then65:                                        ; preds = %do.end.i, %if.then.i.if.then65_crit_edge
  tail call fastcc void @__release_z3fold_page(ptr noundef %zhdr, i1 noundef zeroext true) #12
  %pages_nr = getelementptr inbounds %struct.z3fold_pool, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr) #12
  br label %cleanup

if.end66:                                         ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end66_crit_edge
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %private, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool69.not = icmp eq i32 %15, 0
  br i1 %tobool69.not, label %lor.lhs.false, label %if.end66.if.then73_crit_edge

if.end66.if.then73_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then73

lor.lhs.false:                                    ; preds = %if.end66
  %call71 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %private) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %lor.lhs.false.if.then73_crit_edge

lor.lhs.false.if.then73_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then73

if.then73:                                        ; preds = %lor.lhs.false.if.then73_crit_edge, %if.end66.if.then73_crit_edge
  %page_lock.i130 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i130) #12
  br label %cleanup

if.end74:                                         ; preds = %lor.lhs.false
  %foreign_handles = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 11
  %16 = ptrtoint ptr %foreign_handles to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %foreign_handles, align 2
  %17 = and i8 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool75.not = icmp eq i8 %17, 0
  br i1 %tobool75.not, label %land.lhs.true, label %if.end74.if.end95_crit_edge

if.end74.if.end95_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end74
  %first_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 7
  %18 = ptrtoint ptr %first_chunks.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %first_chunks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i, label %land.lhs.true.lor.rhs.i_crit_edge, label %land.lhs.true.i

land.lhs.true.lor.rhs.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %middle_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 8
  %20 = ptrtoint ptr %middle_chunks.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %middle_chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool2.not.i = icmp eq i16 %21, 0
  br i1 %tobool2.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end95_crit_edge

land.lhs.true.i.if.end95_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %last_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 9
  %22 = ptrtoint ptr %last_chunks.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %last_chunks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool8.not.i = icmp eq i16 %23, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.lor.rhs.i_crit_edge, label %land.lhs.true6.i.if.end95_crit_edge

land.lhs.true6.i.if.end95_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true6.i.lor.rhs.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true6.i.lor.rhs.i_crit_edge, %land.lhs.true.lor.rhs.i_crit_edge
  %middle_chunks9.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 8
  %24 = ptrtoint ptr %middle_chunks9.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %middle_chunks9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool11.not.i = icmp eq i16 %25, 0
  br i1 %tobool11.not.i, label %land.lhs.true77, label %buddy_single.exit

buddy_single.exit:                                ; preds = %lor.rhs.i
  %last_chunks12.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 9
  %26 = ptrtoint ptr %last_chunks12.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %last_chunks12.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool14.i = icmp eq i16 %27, 0
  %28 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp = icmp eq i8 %28, 0
  %or.cond = select i1 %tobool14.i, i1 %cmp, i1 false
  br i1 %or.cond, label %buddy_single.exit.land.lhs.true83_crit_edge, label %buddy_single.exit.if.end95_crit_edge

buddy_single.exit.if.end95_crit_edge:             ; preds = %buddy_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

buddy_single.exit.land.lhs.true83_crit_edge:      ; preds = %buddy_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true83

land.lhs.true77:                                  ; preds = %lor.rhs.i
  %.old = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.old)
  %cmp.old = icmp eq i8 %.old, 0
  br i1 %cmp.old, label %land.lhs.true77.land.lhs.true83_crit_edge, label %land.lhs.true77.if.end95_crit_edge

land.lhs.true77.if.end95_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true77.land.lhs.true83_crit_edge:        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true83

land.lhs.true83:                                  ; preds = %land.lhs.true77.land.lhs.true83_crit_edge, %buddy_single.exit.land.lhs.true83_crit_edge
  %call84 = tail call fastcc ptr @compact_single_buddy(ptr noundef %zhdr)
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %land.lhs.true83.if.end95_crit_edge, label %if.then86

land.lhs.true83.if.end95_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then86:                                        ; preds = %land.lhs.true83
  %call88 = tail call fastcc i32 @kref_put(ptr noundef %refcount, ptr noundef nonnull @release_z3fold_page_locked)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else92, label %if.then90

if.then90:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  %pages_nr91 = getelementptr inbounds %struct.z3fold_pool, ptr %1, i32 0, i32 6
  %call.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr91, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr91) #12
  br label %cleanup

if.else92:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private) #12
  %page_lock.i131 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i131) #12
  br label %cleanup

if.end95:                                         ; preds = %land.lhs.true83.if.end95_crit_edge, %land.lhs.true77.if.end95_crit_edge, %buddy_single.exit.if.end95_crit_edge, %land.lhs.true6.i.if.end95_crit_edge, %land.lhs.true.i.if.end95_crit_edge, %if.end74.if.end95_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %private.i = getelementptr %struct.page, ptr %29, i32 %shr, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %private.i, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i133 = icmp eq i32 %32, 0
  br i1 %tobool.not.i133, label %if.end.i, label %if.end95.z3fold_compact_page.exit_crit_edge

if.end95.z3fold_compact_page.exit_crit_edge:      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_compact_page.exit

if.end.i:                                         ; preds = %if.end95
  %add.ptr.i = getelementptr %struct.page, ptr %29, i32 %shr
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.not.i.i = icmp eq i32 %34, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PageIsolated.exit.i, !prof !121

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !126
  unreachable

PageIsolated.exit.i:                              ; preds = %if.end.i
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %add.ptr.i, align 4
  %37 = and i32 %36, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool3.not.i = icmp eq i32 %37, 0
  br i1 %tobool3.not.i, label %if.end7.i, label %PageIsolated.exit.i.z3fold_compact_page.exit_crit_edge, !prof !112

PageIsolated.exit.i.z3fold_compact_page.exit_crit_edge: ; preds = %PageIsolated.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_compact_page.exit

if.end7.i:                                        ; preds = %PageIsolated.exit.i
  %middle_chunks.i134 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 8
  %38 = ptrtoint ptr %middle_chunks.i134 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %middle_chunks.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp.i = icmp eq i16 %39, 0
  br i1 %cmp.i, label %if.end7.i.z3fold_compact_page.exit_crit_edge, label %if.end10.i

if.end7.i.z3fold_compact_page.exit_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_compact_page.exit

if.end10.i:                                       ; preds = %if.end7.i
  %first_chunks.i135 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 7
  %40 = ptrtoint ptr %first_chunks.i135 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %first_chunks.i135, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp12.i = icmp eq i16 %41, 0
  %last_chunks.i136 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 9
  %42 = ptrtoint ptr %last_chunks.i136 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %last_chunks.i136, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp15.i = icmp eq i16 %43, 0
  br i1 %cmp12.i, label %land.lhs.true.i137, label %land.lhs.true28.i

land.lhs.true.i137:                               ; preds = %if.end10.i
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true62.i

if.then17.i:                                      ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %zhdr, i32 128
  %start_middle.i.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 10
  %44 = ptrtoint ptr %start_middle.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %start_middle.i.i, align 4
  %conv1.i.i = zext i16 %45 to i32
  %shl2.i.i = shl nuw nsw i32 %conv1.i.i, 6
  %add.ptr3.i.i = getelementptr i8, ptr %zhdr, i32 %shl2.i.i
  %conv4.i.i = zext i16 %39 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 6
  %46 = call ptr @memmove(ptr %add.ptr.i.i, ptr %add.ptr3.i.i, i32 %shl5.i.i)
  %47 = ptrtoint ptr %first_chunks.i135 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %39, ptr %first_chunks.i135, align 2
  %48 = ptrtoint ptr %middle_chunks.i134 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %middle_chunks.i134, align 4
  store i16 0, ptr %start_middle.i.i, align 4
  %49 = ptrtoint ptr %foreign_handles to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i = load i8, ptr %foreign_handles, align 2
  %50 = add i8 %bf.load.i, 64
  store i8 %50, ptr %foreign_handles, align 2
  br label %z3fold_compact_page.exit

land.lhs.true28.i:                                ; preds = %if.end10.i
  br i1 %cmp15.i, label %land.lhs.true33.i, label %land.lhs.true28.i.z3fold_compact_page.exit_crit_edge

land.lhs.true28.i.z3fold_compact_page.exit_crit_edge: ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_compact_page.exit

land.lhs.true33.i:                                ; preds = %land.lhs.true28.i
  %conv25.i = zext i16 %41 to i32
  %start_middle34.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 10
  %51 = ptrtoint ptr %start_middle34.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %start_middle34.i, align 4
  %conv35.i = zext i16 %52 to i32
  %add38.i = add nuw nsw i32 %conv25.i, 2
  %sub39.i = sub nsw i32 %conv35.i, %add38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub39.i)
  %cmp40.i = icmp ugt i32 %sub39.i, 2
  br i1 %cmp40.i, label %if.then42.i, label %land.lhs.true33.i.z3fold_compact_page.exit_crit_edge

land.lhs.true33.i.z3fold_compact_page.exit_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_compact_page.exit

if.then42.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = shl nuw nsw i32 %add38.i, 6
  %shl.i.i = and i32 %conv.i.i, 4194240
  %add.ptr.i1.i = getelementptr i8, ptr %zhdr, i32 %shl.i.i
  %shl2.i4.i = shl nuw nsw i32 %conv35.i, 6
  %add.ptr3.i5.i = getelementptr i8, ptr %zhdr, i32 %shl2.i4.i
  %conv4.i7.i = zext i16 %39 to i32
  %shl5.i8.i = shl nuw nsw i32 %conv4.i7.i, 6
  %53 = call ptr @memmove(ptr %add.ptr.i1.i, ptr %add.ptr3.i5.i, i32 %shl5.i8.i)
  %54 = ptrtoint ptr %first_chunks.i135 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %first_chunks.i135, align 2
  %add50.i = add i16 %55, 2
  %56 = ptrtoint ptr %start_middle34.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %add50.i, ptr %start_middle34.i, align 4
  br label %z3fold_compact_page.exit

land.lhs.true62.i:                                ; preds = %land.lhs.true.i137
  %conv5421.i = zext i16 %43 to i32
  %start_middle65.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 10
  %57 = ptrtoint ptr %start_middle65.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %start_middle65.i, align 4
  %conv66.i = zext i16 %58 to i32
  %conv69.i = zext i16 %39 to i32
  %add67.i = add nsw i32 %conv69.i, -65
  %add70.i = add nsw i32 %add67.i, %conv5421.i
  %notsub.i = add nsw i32 %add70.i, %conv66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %notsub.i)
  %cmp72.i = icmp ult i32 %notsub.i, -3
  br i1 %cmp72.i, label %if.then74.i, label %land.lhs.true62.i.z3fold_compact_page.exit_crit_edge

land.lhs.true62.i.z3fold_compact_page.exit_crit_edge: ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %z3fold_compact_page.exit

if.then74.i:                                      ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = add i16 %39, %43
  %sub80.i = sub i16 64, %59
  %conv.i9.i = zext i16 %sub80.i to i32
  %shl.i10.i = shl nuw nsw i32 %conv.i9.i, 6
  %add.ptr.i11.i = getelementptr i8, ptr %zhdr, i32 %shl.i10.i
  %shl2.i14.i = shl nuw nsw i32 %conv66.i, 6
  %add.ptr3.i15.i = getelementptr i8, ptr %zhdr, i32 %shl2.i14.i
  %shl5.i18.i = shl nuw nsw i32 %conv69.i, 6
  %60 = call ptr @memmove(ptr %add.ptr.i11.i, ptr %add.ptr3.i15.i, i32 %shl5.i18.i)
  %61 = ptrtoint ptr %start_middle65.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %sub80.i, ptr %start_middle65.i, align 4
  br label %z3fold_compact_page.exit

z3fold_compact_page.exit:                         ; preds = %if.then74.i, %land.lhs.true62.i.z3fold_compact_page.exit_crit_edge, %if.then42.i, %land.lhs.true33.i.z3fold_compact_page.exit_crit_edge, %land.lhs.true28.i.z3fold_compact_page.exit_crit_edge, %if.then17.i, %if.end7.i.z3fold_compact_page.exit_crit_edge, %PageIsolated.exit.i.z3fold_compact_page.exit_crit_edge, %if.end95.z3fold_compact_page.exit_crit_edge
  tail call fastcc void @add_to_unbuddied(ptr noundef %1, ptr noundef %zhdr)
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private) #12
  %page_lock.i138 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i138) #12
  br label %cleanup

cleanup:                                          ; preds = %z3fold_compact_page.exit, %if.else92, %if.then90, %if.then73, %if.then65, %do.end45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kref_put(ptr noundef %kref, ptr nocapture noundef readonly %release) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !112

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  tail call void %release(ptr noundef %kref) #12, !callees !140
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end5.i.i.i.return_crit_edge ], [ 0, %if.then10.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_z3fold_page_locked(ptr noundef %ref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %page_lock.i = getelementptr i8, ptr %ref, i32 -44
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !112

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 537, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %ref, i32 -52
  tail call fastcc void @__release_z3fold_page(ptr noundef %add.ptr, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @compact_single_buddy(ptr noundef %zhdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pool.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 5
  %0 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool.i, align 4
  %first_num.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 11
  %2 = ptrtoint ptr %first_num.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %first_num.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %conv.i = zext i8 %bf.lshr.i to i32
  %add.i211 = add nuw nsw i32 %conv.i, 2
  %and.i212 = and i32 %add.i211, 3
  %add.i217 = add nuw nsw i32 %conv.i, 3
  %and.i218 = and i32 %add.i217, 3
  %first_chunks = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 7
  %3 = ptrtoint ptr %first_chunks to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %first_chunks, align 2
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %add.i = add nuw nsw i32 %conv.i, 1
  %and.i = and i32 %add.i, 3
  %slots = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 4
  %5 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slots, align 4
  %arrayidx = getelementptr [4 x i32], ptr %6, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %zhdr, i32 128
  %shl = shl nuw nsw i32 %conv, 6
  br label %if.then52

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %middle_chunks = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 8
  %9 = ptrtoint ptr %middle_chunks to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %middle_chunks, align 4
  %conv11 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool12.not = icmp eq i16 %10, 0
  br i1 %tobool12.not, label %if.else.if.else29_crit_edge, label %land.lhs.true13

if.else.if.else29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else29

land.lhs.true13:                                  ; preds = %if.else
  %slots14 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 4
  %11 = ptrtoint ptr %slots14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slots14, align 4
  %arrayidx16 = getelementptr [4 x i32], ptr %12, i32 0, i32 %and.i212
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool17.not = icmp eq i32 %14, 0
  br i1 %tobool17.not, label %land.lhs.true13.if.else29_crit_edge, label %if.then18

land.lhs.true13.if.else29_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else29

if.then18:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  %start_middle = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 10
  %15 = ptrtoint ptr %start_middle to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %start_middle, align 4
  %conv19 = zext i16 %16 to i32
  %shl20 = shl nuw nsw i32 %conv19, 6
  %add.ptr21 = getelementptr i8, ptr %zhdr, i32 %shl20
  %shl24 = shl nuw nsw i32 %conv11, 6
  br label %if.then52

if.else29:                                        ; preds = %land.lhs.true13.if.else29_crit_edge, %if.else.if.else29_crit_edge
  %last_chunks = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 9
  %17 = ptrtoint ptr %last_chunks to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %last_chunks, align 2
  %conv30 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool31.not = icmp eq i16 %18, 0
  br i1 %tobool31.not, label %if.else29.cleanup131_crit_edge, label %land.lhs.true32

if.else29.cleanup131_crit_edge:                   ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup131

land.lhs.true32:                                  ; preds = %if.else29
  %slots33 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 4
  %19 = ptrtoint ptr %slots33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slots33, align 4
  %arrayidx35 = getelementptr [4 x i32], ptr %20, i32 0, i32 %and.i218
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not = icmp eq i32 %22, 0
  br i1 %tobool36.not, label %land.lhs.true32.cleanup131_crit_edge, label %if.then37

land.lhs.true32.cleanup131_crit_edge:             ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup131

if.then37:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  %shl40 = shl nuw nsw i32 %conv30, 6
  %sub = sub nsw i32 4096, %shl40
  %add.ptr41 = getelementptr i8, ptr %zhdr, i32 %sub
  br label %if.then52

if.then52:                                        ; preds = %if.then37, %if.then18, %if.then
  %p.0 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr21, %if.then18 ], [ %add.ptr41, %if.then37 ]
  %old_handle.0.in = phi ptr [ %arrayidx, %if.then ], [ %arrayidx16, %if.then18 ], [ %arrayidx35, %if.then37 ]
  %sz.0 = phi i32 [ %shl, %if.then ], [ %shl24, %if.then18 ], [ %shl40, %if.then37 ]
  %moved_chunks.0 = phi ptr [ %first_chunks, %if.then ], [ %middle_chunks, %if.then18 ], [ %last_chunks, %if.then37 ]
  %shr.i = lshr exact i32 %sz.0, 6
  %conv54 = trunc i32 %shr.i to i16
  %call55 = tail call fastcc ptr @__z3fold_alloc(ptr noundef %1, i32 noundef %sz.0, i1 noundef zeroext false)
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.then52.cleanup131_crit_edge, label %if.end58

if.then52.cleanup131_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup131

if.end58:                                         ; preds = %if.then52
  %cmp59 = icmp eq ptr %call55, %zhdr
  br i1 %cmp59, label %do.end, label %if.end84, !prof !121

do.end:                                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 700, i32 noundef 9, ptr noundef null) #12
  br label %if.then124

if.end84:                                         ; preds = %if.end58
  %sext = shl nuw i32 %sz.0, 10
  %conv85 = ashr exact i32 %sext, 16
  %middle_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 8
  %23 = ptrtoint ptr %middle_chunks.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %middle_chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i = icmp eq i16 %24, 0
  %first_chunks8.i = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 7
  %25 = ptrtoint ptr %first_chunks8.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %first_chunks8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool9.not.i = icmp eq i16 %26, 0
  br i1 %tobool.not.i, label %if.else7.i, label %if.then.i

if.then.i:                                        ; preds = %if.end84
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %if.then.i.if.end18.sink.split.i_crit_edge

if.then.i.if.end18.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %start_middle.i = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 10
  %27 = ptrtoint ptr %start_middle.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %start_middle.i, align 4
  %conv.i219 = zext i16 %28 to i32
  %sub.i220 = add nsw i32 %conv.i219, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i220, i32 %conv85)
  %cmp.not.i = icmp ult i32 %sub.i220, %conv85
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end18.sink.split.i_crit_edge, label %land.lhs.true.i.sw.bb_crit_edge

land.lhs.true.i.sw.bb_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

land.lhs.true.i.if.end18.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split.i

if.else7.i:                                       ; preds = %if.end84
  br i1 %tobool9.not.i, label %if.else7.i.sw.bb_crit_edge, label %if.end18.sink.split.i.thread

if.else7.i.sw.bb_crit_edge:                       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end18.sink.split.i:                            ; preds = %land.lhs.true.i.if.end18.sink.split.i_crit_edge, %if.then.i.if.end18.sink.split.i_crit_edge
  %last_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 9
  %29 = ptrtoint ptr %last_chunks.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %last_chunks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool4.not.i = icmp eq i16 %30, 0
  br i1 %tobool4.not.i, label %if.end18.sink.split.i.sw.bb99_crit_edge, label %if.end18.sink.split.i.if.then124_crit_edge

if.end18.sink.split.i.if.then124_crit_edge:       ; preds = %if.end18.sink.split.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then124

if.end18.sink.split.i.sw.bb99_crit_edge:          ; preds = %if.end18.sink.split.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb99

if.end18.sink.split.i.thread:                     ; preds = %if.else7.i
  %last_chunks.i246 = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 9
  %31 = ptrtoint ptr %last_chunks.i246 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %last_chunks.i246, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool4.not.i247 = icmp eq i16 %32, 0
  br i1 %tobool4.not.i247, label %if.end18.sink.split.i.thread.sw.bb99_crit_edge, label %sw.bb89

if.end18.sink.split.i.thread.sw.bb99_crit_edge:   ; preds = %if.end18.sink.split.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb99

sw.bb:                                            ; preds = %if.else7.i.sw.bb_crit_edge, %land.lhs.true.i.sw.bb_crit_edge
  %33 = ptrtoint ptr %first_chunks8.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv54, ptr %first_chunks8.i, align 2
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end18.sink.split.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %middle_chunks.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv54, ptr %middle_chunks.i, align 4
  %add = add i16 %26, 2
  %start_middle94 = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 10
  %35 = ptrtoint ptr %start_middle94 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %add, ptr %start_middle94, align 4
  %conv96 = zext i16 %add to i32
  %shl97 = shl nuw nsw i32 %conv96, 6
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end18.sink.split.i.thread.sw.bb99_crit_edge, %if.end18.sink.split.i.sw.bb99_crit_edge
  %last_chunks.i248 = phi ptr [ %last_chunks.i246, %if.end18.sink.split.i.thread.sw.bb99_crit_edge ], [ %last_chunks.i, %if.end18.sink.split.i.sw.bb99_crit_edge ]
  %36 = ptrtoint ptr %last_chunks.i248 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv54, ptr %last_chunks.i248, align 2
  %shl103 = and i32 %sz.0, 4194240
  %sub104 = sub nsw i32 4096, %shl103
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb99, %sw.bb89, %sw.bb
  %sub104.sink = phi i32 [ %sub104, %sw.bb99 ], [ %shl97, %sw.bb89 ], [ 128, %sw.bb ]
  %cmp111 = phi i1 [ true, %sw.bb99 ], [ false, %sw.bb89 ], [ false, %sw.bb ]
  %bud.0.i236 = phi i32 [ 3, %sw.bb99 ], [ 2, %sw.bb89 ], [ 1, %sw.bb ]
  %add.ptr105 = getelementptr i8, ptr %call55, i32 %sub104.sink
  %foreign_handles = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 11
  %37 = ptrtoint ptr %foreign_handles to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %foreign_handles, align 2
  %38 = add i8 %bf.load, 4
  %bf.shl = and i8 %38, 12
  %bf.clear107 = and i8 %bf.load, -13
  %bf.set = or i8 %bf.shl, %bf.clear107
  store i8 %bf.set, ptr %foreign_handles, align 2
  %39 = call ptr @memcpy(ptr %add.ptr105, ptr %p.0, i32 %sz.0)
  %slots108 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 4
  %40 = ptrtoint ptr %slots108 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slots108, align 4
  %lock = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %41, i32 0, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock) #12
  %42 = ptrtoint ptr %call55 to i32
  %43 = ptrtoint ptr %foreign_handles to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i222 = load i8, ptr %foreign_handles, align 2
  %bf.lshr.i223 = lshr i8 %bf.load.i222, 6
  %conv.i224 = zext i8 %bf.lshr.i223 to i32
  %add.i225 = add nuw nsw i32 %bud.0.i236, %conv.i224
  %and.i226 = and i32 %add.i225, 3
  %add110 = add i32 %and.i226, %42
  %44 = ptrtoint ptr %old_handle.0.in to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add110, ptr %old_handle.0.in, align 4
  br i1 %cmp111, label %if.then113, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then113:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %last_chunks114 = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 9
  %45 = ptrtoint ptr %last_chunks114 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %last_chunks114, align 2
  %conv115 = zext i16 %46 to i32
  %shl116 = shl nuw nsw i32 %conv115, 2
  %or = or i32 %shl116, %add110
  %47 = ptrtoint ptr %old_handle.0.in to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %old_handle.0.in, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %sw.epilog.cleanup_crit_edge
  %48 = ptrtoint ptr %slots108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %slots108, align 4
  %lock119 = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %49, i32 0, i32 2
  tail call void @_raw_write_unlock(ptr noundef %lock119) #12
  tail call fastcc void @add_to_unbuddied(ptr noundef %1, ptr noundef nonnull %call55)
  %page_lock.i = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i) #12
  %50 = ptrtoint ptr %moved_chunks.0 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %moved_chunks.0, align 2
  br label %cleanup131

if.then124:                                       ; preds = %if.end18.sink.split.i.if.then124_crit_edge, %do.end
  %refcount = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i227, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.else128_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.if.else128_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else128

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %if.else128

if.then.i227:                                     ; preds = %if.then124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %page_lock.i.i = getelementptr %struct.z3fold_header, ptr %call55, i32 0, i32 1
  %call.i.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i229 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i229, label %if.then.i227.if.then127_crit_edge, label %do.end.i, !prof !112

if.then.i227.if.then127_crit_edge:                ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127

do.end.i:                                         ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 537, i32 noundef 9, ptr noundef null) #12
  br label %if.then127

if.then127:                                       ; preds = %do.end.i, %if.then.i227.if.then127_crit_edge
  tail call fastcc void @__release_z3fold_page(ptr noundef nonnull %call55, i1 noundef zeroext true) #12
  %pages_nr = getelementptr inbounds %struct.z3fold_pool, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_nr, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %pages_nr) #12
  br label %cleanup131

if.else128:                                       ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.else128_crit_edge
  tail call fastcc void @add_to_unbuddied(ptr noundef %1, ptr noundef nonnull %call55)
  %page_lock.i228 = getelementptr inbounds %struct.z3fold_header, ptr %call55, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i228) #12
  br label %cleanup131

cleanup131:                                       ; preds = %if.else128, %if.then127, %cleanup, %if.then52.cleanup131_crit_edge, %land.lhs.true32.cleanup131_crit_edge, %if.else29.cleanup131_crit_edge
  %retval.1 = phi ptr [ null, %if.then127 ], [ null, %if.else128 ], [ %call55, %cleanup ], [ null, %land.lhs.true32.cleanup131_crit_edge ], [ null, %if.else29.cleanup131_crit_edge ], [ null, %if.then52.cleanup131_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_to_unbuddied(ptr noundef %pool, ptr noundef %zhdr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %first_chunks = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 7
  %0 = ptrtoint ptr %first_chunks to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %first_chunks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %last_chunks = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 9
  %2 = ptrtoint ptr %last_chunks to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %last_chunks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3 = icmp eq i16 %3, 0
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %middle_chunks = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 8
  %4 = ptrtoint ptr %middle_chunks to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %middle_chunks, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp7 = icmp eq i16 %5, 0
  br i1 %cmp7, label %lor.lhs.false5.if.then_crit_edge, label %lor.lhs.false5.if.end_crit_edge

lor.lhs.false5.if.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge
  %middle_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 8
  %6 = ptrtoint ptr %middle_chunks.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %middle_chunks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not.i = icmp eq i16 %7, 0
  br i1 %cmp.not.i, label %if.then.if.else.i_crit_edge, label %if.then.cond.end.i_crit_edge

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.thread:                                   ; preds = %entry
  %middle_chunks.i25 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 8
  %8 = ptrtoint ptr %middle_chunks.i25 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %middle_chunks.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i26 = icmp eq i16 %9, 0
  br i1 %cmp.not.i26, label %if.then.thread.if.else.i_crit_edge, label %cond.false.i

if.then.thread.if.else.i_crit_edge:               ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

cond.false.i:                                     ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #14
  %start_middle.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 10
  %10 = ptrtoint ptr %start_middle.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %start_middle.i, align 4
  %conv3.i = zext i16 %11 to i32
  %sub.i = add nsw i32 %conv3.i, -2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.cond.end.i_crit_edge
  %12 = phi i16 [ %9, %cond.false.i ], [ %7, %if.then.cond.end.i_crit_edge ]
  %cond.i = phi i32 [ %sub.i, %cond.false.i ], [ 0, %if.then.cond.end.i_crit_edge ]
  %last_chunks.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 9
  %13 = ptrtoint ptr %last_chunks.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %last_chunks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool5.not.i = icmp eq i16 %14, 0
  br i1 %tobool5.not.i, label %cond.false7.i, label %cond.end.i.cond.end13.i_crit_edge

cond.end.i.cond.end13.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end13.i

cond.false7.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %start_middle8.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 10
  %15 = ptrtoint ptr %start_middle8.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %start_middle8.i, align 4
  %conv9.i = zext i16 %16 to i32
  %conv11.i = zext i16 %12 to i32
  %17 = add nuw nsw i32 %conv11.i, %conv9.i
  %sub12.i = sub nsw i32 64, %17
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %cond.false7.i, %cond.end.i.cond.end13.i_crit_edge
  %cond14.i = phi i32 [ %sub12.i, %cond.false7.i ], [ 0, %cond.end.i.cond.end13.i_crit_edge ]
  %18 = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 %cond14.i) #12
  br label %num_free_chunks.exit

if.else.i:                                        ; preds = %if.then.thread.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %conv22.i = zext i16 %1 to i32
  %last_chunks24.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 9
  %19 = ptrtoint ptr %last_chunks24.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %last_chunks24.i, align 2
  %conv25.i = zext i16 %20 to i32
  %21 = add nuw nsw i32 %conv22.i, %conv25.i
  %sub26.i = sub nsw i32 62, %21
  br label %num_free_chunks.exit

num_free_chunks.exit:                             ; preds = %if.else.i, %cond.end13.i
  %nfree.0.i = phi i32 [ %18, %cond.end13.i ], [ %sub26.i, %if.else.i ]
  tail call void @migrate_disable() #12
  %unbuddied9 = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 3
  %22 = ptrtoint ptr %unbuddied9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unbuddied9, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %add = add i32 %30, %24
  %31 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %arrayidx12 = getelementptr %struct.list_head, ptr %31, i32 %nfree.0.i
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx12, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %zhdr, ptr noundef %arrayidx12, ptr noundef %33) #12
  br i1 %call.i.i, label %if.end.i.i, label %num_free_chunks.exit.list_add.exit_crit_edge

num_free_chunks.exit.list_add.exit_crit_edge:     ; preds = %num_free_chunks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %num_free_chunks.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %zhdr, ptr %prev1.i.i, align 4
  %35 = ptrtoint ptr %zhdr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %zhdr, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %zhdr, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx12, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %zhdr, ptr %arrayidx12, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %num_free_chunks.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %conv16 = trunc i32 %39 to i16
  %cpu17 = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 6
  %40 = ptrtoint ptr %cpu17 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv16, ptr %cpu17, align 4
  tail call void @migrate_enable() #12
  br label %if.end

if.end:                                           ; preds = %list_add.exit, %lor.lhs.false5.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__release_z3fold_page(ptr noundef %zhdr, i1 noundef zeroext %locked) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %zhdr to i32
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  %pool.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 5
  %2 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool.i, align 4
  %4 = ptrtoint ptr %zhdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %zhdr, align 4
  %cmp.i.not = icmp eq ptr %5, %zhdr
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !112

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 509, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = getelementptr %struct.page, ptr %0, i32 %shr, i32 1
  %private = getelementptr inbounds %struct.anon.3, ptr %6, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 3, ptr noundef %private) #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %private) #12
  %lock = getelementptr inbounds %struct.z3fold_pool, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 4
  %cmp.i50.not = icmp eq ptr %8, %6
  br i1 %cmp.i50.not, label %if.end.if.end28_crit_edge, label %if.then26

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then26.list_del_init.exit_crit_edge

if.then26.list_del_init.exit_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then26.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %6, ptr %prev.i3.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %list_del_init.exit, %if.end.if.end28_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br i1 %locked, label %if.then31, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %page_lock.i = getelementptr inbounds %struct.z3fold_header, ptr %zhdr, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  %stale_lock = getelementptr inbounds %struct.z3fold_pool, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %stale_lock) #12
  %stale = getelementptr inbounds %struct.z3fold_pool, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stale, align 4
  %call.i.i52 = tail call zeroext i1 @__list_add_valid(ptr noundef %zhdr, ptr noundef %stale, ptr noundef %18) #12
  br i1 %call.i.i52, label %if.end.i.i53, label %if.end32.list_add.exit_crit_edge

if.end32.list_add.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i53:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %zhdr, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %zhdr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %zhdr, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %zhdr, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %stale, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %stale to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %zhdr, ptr %stale, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i53, %if.end32.list_add.exit_crit_edge
  %release_wq = getelementptr inbounds %struct.z3fold_pool, ptr %3, i32 0, i32 12
  %23 = ptrtoint ptr %release_wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %release_wq, align 4
  %work = getelementptr inbounds %struct.z3fold_pool, ptr %3, i32 0, i32 13
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work) #12
  tail call void @_raw_spin_unlock(ptr noundef %stale_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__z3fold_alloc(ptr noundef %pool, i32 noundef %size, i1 noundef zeroext %can_sleep) unnamed_addr #7 align 64 {
entry:
  %l = alloca ptr, align 4
  %l63 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %size, 63
  %shr.i198 = lshr i32 %sub.i, 6
  tail call void @migrate_disable() #12
  %unbuddied1 = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3968, i32 %sub.i)
  %cmp242 = icmp ult i32 %sub.i, 3968
  br i1 %cmp242, label %for.body.lr.ph.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph.lr.ph:                             ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i246 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i246 to ptr
  %cpu247 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu247 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu247, align 4
  %arrayidx248 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx248, align 4
  %6 = ptrtoint ptr %unbuddied1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unbuddied1, align 4
  %8 = ptrtoint ptr %7 to i32
  %add249 = add i32 %5, %8
  %lock = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %shr.i198, i32 61)
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %cleanup, %for.body.lr.ph.lr.ph
  %.in = phi i32 [ %add249, %for.body.lr.ph.lr.ph ], [ %add, %cleanup ]
  %9 = inttoptr i32 %.in to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0243 = phi i32 [ %shr.i198, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l)
  %arrayidx4 = getelementptr %struct.list_head, ptr %9, i32 %i.0243
  %10 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx4, ptr %l, align 4
  %l.0.l.0.l.0. = load volatile ptr, ptr %l, align 4
  %11 = ptrtoint ptr %l.0.l.0.l.0. to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %l.0.l.0.l.0., align 4
  %cmp14.not = icmp eq ptr %12, %l.0.l.0.l.0.
  %tobool.not239 = icmp eq ptr %12, null
  %tobool.not = or i1 %cmp14.not, %tobool.not239
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %13 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx4, ptr %l, align 4
  %l.0.l.0.l.0.150 = load volatile ptr, ptr %l, align 4
  %14 = ptrtoint ptr %l.0.l.0.l.0.150 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %l.0.l.0.l.0.150, align 4
  %cmp25.not = icmp eq ptr %12, %15
  br i1 %cmp25.not, label %lor.lhs.false, label %if.end.if.then30_crit_edge, !prof !112

if.end.if.then30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end
  %page_lock.i = getelementptr inbounds %struct.z3fold_header, ptr %12, i32 0, i32 1
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool29.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.then30_crit_edge, label %if.end37

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end.if.then30_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @migrate_enable() #12
  br i1 %can_sleep, label %if.then30.cleanup.sink.split_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30.cleanup.sink.split_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end37:                                         ; preds = %lor.lhs.false
  %call.i.i199 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %12) #12
  br i1 %call.i.i199, label %if.end.i.i, label %if.end37.list_del_init.exit_crit_edge

if.end37.list_del_init.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %12, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end37.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %12, ptr %12, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %12, ptr %prev.i3.i, align 4
  %cpu38 = getelementptr inbounds %struct.z3fold_header, ptr %12, i32 0, i32 6
  %24 = ptrtoint ptr %cpu38 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %cpu38, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %12 to i32
  %sub = add i32 %26, 1073741824
  %shr = lshr i32 %sub, 12
  %private = getelementptr %struct.page, ptr %25, i32 %shr, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %private, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool44.not = icmp eq i32 %29, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %list_del_init.exit.if.then49_crit_edge

list_del_init.exit.if.then49_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49

lor.lhs.false45:                                  ; preds = %list_del_init.exit
  %30 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %private, align 4
  %32 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool48.not = icmp eq i32 %32, 0
  br i1 %tobool48.not, label %if.end55, label %lor.lhs.false45.if.then49_crit_edge

lor.lhs.false45.if.then49_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false45.if.then49_crit_edge, %list_del_init.exit.if.then49_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i) #12
  tail call void @migrate_enable() #12
  br i1 %can_sleep, label %if.then49.cleanup.sink.split_crit_edge, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49.cleanup.sink.split_crit_edge:           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end55:                                         ; preds = %lor.lhs.false45
  %refcount = getelementptr inbounds %struct.z3fold_header, ptr %12, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !123
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end55.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !121

if.end55.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end55
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.end.thread_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !112

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.end.thread_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end55.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end55.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #12
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.end.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l)
  tail call void @migrate_enable() #12
  br label %land.lhs.true

cleanup.sink.split:                               ; preds = %if.then49.cleanup.sink.split_crit_edge, %if.then30.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 888, %if.then30.cleanup.sink.split_crit_edge ], [ 902, %if.then49.cleanup.sink.split_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.17, i32 noundef %.sink, i32 noundef 0) #12
  %call.i201 = tail call i32 @__cond_resched() #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then49.cleanup_crit_edge, %if.then30.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l)
  tail call void @migrate_disable() #12
  %35 = ptrtoint ptr %unbuddied1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unbuddied1, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !102) #12
  %and.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %add = add i32 %43, %37
  br label %for.body.lr.ph

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l)
  %inc = add nuw nsw i32 %i.0243, 1
  %exitcond.not = icmp eq i32 %i.0243, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @migrate_enable() #12
  %call60250 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call60250, i32 %44)
  %cmp61251 = icmp ult i32 %call60250, %44
  br i1 %cmp61251, label %for.body62.lr.ph, label %for.end.if.end137_crit_edge

for.end.if.end137_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

for.body62.lr.ph:                                 ; preds = %for.end
  %lock74 = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 1
  br label %for.body62

for.body62:                                       ; preds = %cleanup126.for.body62_crit_edge, %for.body62.lr.ph
  %call60252 = phi i32 [ %call60250, %for.body62.lr.ph ], [ %call60, %cleanup126.for.body62_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l63)
  %45 = ptrtoint ptr %unbuddied1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %unbuddied1, align 4
  %47 = ptrtoint ptr %46 to i32
  %arrayidx72 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call60252
  %48 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx72, align 4
  %add73 = add i32 %49, %47
  %50 = inttoptr i32 %add73 to ptr
  tail call void @_raw_spin_lock(ptr noundef %lock74) #12
  %arrayidx75 = getelementptr %struct.list_head, ptr %50, i32 %shr.i198
  %51 = ptrtoint ptr %l63 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx75, ptr %l63, align 4
  %l63.0.l63.0.l63.0. = load volatile ptr, ptr %l63, align 4
  %52 = ptrtoint ptr %l63.0.l63.0.l63.0. to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %l63.0.l63.0.l63.0., align 4
  %cmp88.not = icmp eq ptr %53, %l63.0.l63.0.l63.0.
  %tobool96.not238 = icmp eq ptr %53, null
  %tobool96.not = or i1 %cmp88.not, %tobool96.not238
  br i1 %tobool96.not, label %for.body62.if.then100_crit_edge, label %lor.lhs.false97

for.body62.if.then100_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then100

lor.lhs.false97:                                  ; preds = %for.body62
  %page_lock.i202 = getelementptr inbounds %struct.z3fold_header, ptr %53, i32 0, i32 1
  %call.i.i203 = tail call i32 @_raw_spin_trylock(ptr noundef %page_lock.i202) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i203)
  %tobool99.not = icmp eq i32 %call.i.i203, 0
  br i1 %tobool99.not, label %lor.lhs.false97.if.then100_crit_edge, label %if.end102

lor.lhs.false97.if.then100_crit_edge:             ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then100

if.then100:                                       ; preds = %lor.lhs.false97.if.then100_crit_edge, %for.body62.if.then100_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock74) #12
  br label %cleanup126

if.end102:                                        ; preds = %lor.lhs.false97
  %call.i.i204 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %53) #12
  br i1 %call.i.i204, label %if.end.i.i207, label %if.end102.list_del_init.exit209_crit_edge

if.end102.list_del_init.exit209_crit_edge:        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit209

if.end.i.i207:                                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i205 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i205 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i205, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %prev1.i.i.i206 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i206 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i206, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit209

list_del_init.exit209:                            ; preds = %if.end.i.i207, %if.end102.list_del_init.exit209_crit_edge
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %53, ptr %53, align 4
  %prev.i3.i208 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i3.i208 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %53, ptr %prev.i3.i208, align 4
  %cpu104 = getelementptr inbounds %struct.z3fold_header, ptr %53, i32 0, i32 6
  %62 = ptrtoint ptr %cpu104 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %cpu104, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock74) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %53 to i32
  %sub106 = add i32 %64, 1073741824
  %shr107 = lshr i32 %sub106, 12
  %private111 = getelementptr %struct.page, ptr %63, i32 %shr107, i32 1, i32 0, i32 3
  %65 = ptrtoint ptr %private111 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %private111, align 4
  %67 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool113.not = icmp eq i32 %67, 0
  br i1 %tobool113.not, label %lor.lhs.false114, label %list_del_init.exit209.if.then118_crit_edge

list_del_init.exit209.if.then118_crit_edge:       ; preds = %list_del_init.exit209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118

lor.lhs.false114:                                 ; preds = %list_del_init.exit209
  %68 = ptrtoint ptr %private111 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %private111, align 4
  %70 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool117.not = icmp eq i32 %70, 0
  br i1 %tobool117.not, label %if.end124, label %lor.lhs.false114.if.then118_crit_edge

lor.lhs.false114.if.then118_crit_edge:            ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118

if.then118:                                       ; preds = %lor.lhs.false114.if.then118_crit_edge, %list_del_init.exit209.if.then118_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %page_lock.i202) #12
  br i1 %can_sleep, label %if.then120, label %if.then118.cleanup126_crit_edge

if.then118.cleanup126_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup126

if.then120:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__might_resched(ptr noundef nonnull @.str.17, i32 noundef 946, i32 noundef 0) #12
  %call.i211 = tail call i32 @__cond_resched() #12
  br label %cleanup126

if.end124:                                        ; preds = %lor.lhs.false114
  %refcount125 = getelementptr inbounds %struct.z3fold_header, ptr %53, i32 0, i32 2
  %call.i.i.i.i.i.i212 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount125, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount125, i32 1, i32 3, i32 1) #12
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount125, ptr %refcount125, i32 1, ptr elementtype(i32) %refcount125) #12, !srcloc !123
  %asmresult.i.i.i.i.i.i213 = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i213)
  %tobool1.not.i.i.i.i214 = icmp eq i32 %asmresult.i.i.i.i.i.i213, 0
  br i1 %tobool1.not.i.i.i.i214, label %if.end124.if.end15.sink.split.i.i.i.i219_crit_edge, label %if.else.i.i.i.i217, !prof !121

if.end124.if.end15.sink.split.i.i.i.i219_crit_edge: ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i219

if.else.i.i.i.i217:                               ; preds = %if.end124
  %add.i.i.i.i215 = add i32 %asmresult.i.i.i.i.i.i213, 1
  %72 = or i32 %add.i.i.i.i215, %asmresult.i.i.i.i.i.i213
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %.not.i.i.i.i216 = icmp sgt i32 %72, -1
  br i1 %.not.i.i.i.i216, label %if.else.i.i.i.i217.cleanup126.thread_crit_edge, label %if.else.i.i.i.i217.if.end15.sink.split.i.i.i.i219_crit_edge, !prof !112

if.else.i.i.i.i217.if.end15.sink.split.i.i.i.i219_crit_edge: ; preds = %if.else.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i219

if.else.i.i.i.i217.cleanup126.thread_crit_edge:   ; preds = %if.else.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup126.thread

if.end15.sink.split.i.i.i.i219:                   ; preds = %if.else.i.i.i.i217.if.end15.sink.split.i.i.i.i219_crit_edge, %if.end124.if.end15.sink.split.i.i.i.i219_crit_edge
  %.sink.i.i.i.i218 = phi i32 [ 2, %if.end124.if.end15.sink.split.i.i.i.i219_crit_edge ], [ 1, %if.else.i.i.i.i217.if.end15.sink.split.i.i.i.i219_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount125, i32 noundef %.sink.i.i.i.i218) #12
  br label %cleanup126.thread

cleanup126.thread:                                ; preds = %if.end15.sink.split.i.i.i.i219, %if.else.i.i.i.i217.cleanup126.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l63)
  br label %land.lhs.true

cleanup126:                                       ; preds = %if.then120, %if.then118.cleanup126_crit_edge, %if.then100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l63)
  %call60 = tail call i32 @cpumask_next(i32 noundef %call60252, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %cmp61 = icmp ult i32 %call60, %73
  br i1 %cmp61, label %cleanup126.for.body62_crit_edge, label %cleanup126.if.end137_crit_edge

cleanup126.if.end137_crit_edge:                   ; preds = %cleanup126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

cleanup126.for.body62_crit_edge:                  ; preds = %cleanup126
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body62

land.lhs.true:                                    ; preds = %cleanup126.thread, %for.end.thread
  %zhdr.7.ph = phi ptr [ %53, %cleanup126.thread ], [ %12, %for.end.thread ]
  %slots = getelementptr inbounds %struct.z3fold_header, ptr %zhdr.7.ph, i32 0, i32 4
  %74 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %slots, align 4
  %tobool131.not = icmp eq ptr %75, null
  br i1 %tobool131.not, label %if.then132, label %land.lhs.true.if.end137_crit_edge

land.lhs.true.if.end137_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

if.then132:                                       ; preds = %land.lhs.true
  %c_handle.i = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 7
  %76 = ptrtoint ptr %c_handle.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %c_handle.i, align 8
  %or.i.i = select i1 %can_sleep, i32 3328, i32 2848
  %call.i.i221 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %77, i32 noundef %or.i.i) #12
  %tobool.not.i = icmp eq ptr %call.i.i221, null
  br i1 %tobool.not.i, label %if.then132.alloc_slots.exit_crit_edge, label %if.then.i

if.then132.alloc_slots.exit_crit_edge:            ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #14
  br label %alloc_slots.exit

if.then.i:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.i.i221) #12
  %78 = ptrtoint ptr %pool to i32
  %pool1.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %call.i.i221, i32 0, i32 1
  %79 = ptrtoint ptr %pool1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %pool1.i, align 8
  %lock.i = getelementptr inbounds %struct.z3fold_buddy_slots, ptr %call.i.i221, i32 0, i32 2
  tail call void @__rwlock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @alloc_slots.__key) #12
  br label %alloc_slots.exit

alloc_slots.exit:                                 ; preds = %if.then.i, %if.then132.alloc_slots.exit_crit_edge
  %80 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i.i221, ptr %slots, align 4
  br label %if.end137

if.end137:                                        ; preds = %alloc_slots.exit, %land.lhs.true.if.end137_crit_edge, %cleanup126.if.end137_crit_edge, %for.end.if.end137_crit_edge
  %zhdr.7237 = phi ptr [ %zhdr.7.ph, %alloc_slots.exit ], [ %zhdr.7.ph, %land.lhs.true.if.end137_crit_edge ], [ null, %for.end.if.end137_crit_edge ], [ null, %cleanup126.if.end137_crit_edge ]
  ret ptr %zhdr.7237
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_not_leak(ptr noundef) local_unnamed_addr #1 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z3fold_zpool_evict(ptr nocapture noundef readonly %pool, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %zpool = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 9
  %0 = ptrtoint ptr %zpool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zpool, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true:                                    ; preds = %entry
  %zpool_ops = getelementptr inbounds %struct.z3fold_pool, ptr %pool, i32 0, i32 10
  %2 = ptrtoint ptr %zpool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zpool_ops, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true2

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true2.return_crit_edge, label %if.then

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %handle) #12
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true2.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -2, %land.lhs.true2.return_crit_edge ], [ -2, %land.lhs.true.return_crit_edge ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zpool_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z3fold_init_fs_context(ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @init_pseudo(ptr noundef %fc, i32 noundef 51) #12
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !47, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !94, !95, !97, !98, !99, !100}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__UNIQUE_ID_alias264, !1, !"__UNIQUE_ID_alias264", i1 false, i1 false}
!1 = !{!"../mm/z3fold.c", i32 1790, i32 1}
!2 = !{ptr @__initcall__kmod_z3fold__266_1816_init_z3fold6, !3, !"__initcall__kmod_z3fold__266_1816_init_z3fold6", i1 false, i1 false}
!3 = !{!"../mm/z3fold.c", i32 1816, i32 1}
!4 = !{ptr @__exitcall_exit_z3fold, !5, !"__exitcall_exit_z3fold", i1 false, i1 false}
!5 = !{!"../mm/z3fold.c", i32 1817, i32 1}
!6 = !{ptr @__UNIQUE_ID_file267, !7, !"__UNIQUE_ID_file267", i1 false, i1 false}
!7 = !{!"../mm/z3fold.c", i32 1819, i32 1}
!8 = !{ptr @__UNIQUE_ID_license268, !7, !"__UNIQUE_ID_license268", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author269, !10, !"__UNIQUE_ID_author269", i1 false, i1 false}
!10 = !{!"../mm/z3fold.c", i32 1820, i32 1}
!11 = !{ptr @__UNIQUE_ID_description270, !12, !"__UNIQUE_ID_description270", i1 false, i1 false}
!12 = !{!"../mm/z3fold.c", i32 1821, i32 1}
!13 = !{ptr @z3fold_mnt, !14, !"z3fold_mnt", i1 false, i1 false}
!14 = !{!"../mm/z3fold.c", i32 347, i32 25}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../mm/z3fold.c", i32 1777, i32 11}
!17 = !{ptr @z3fold_zpool_driver, !18, !"z3fold_zpool_driver", i1 false, i1 false}
!18 = !{!"../mm/z3fold.c", i32 1776, i32 28}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../mm/z3fold.c", i32 982, i32 37}
!21 = !{ptr @z3fold_create_pool.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../mm/z3fold.c", i32 987, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @z3fold_create_pool.__key.3, !25, !"__key", i1 false, i1 false}
!25 = !{!"../mm/z3fold.c", i32 988, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../mm/z3fold.c", i32 1003, i32 21}
!29 = !{ptr @z3fold_create_pool.__key.6, !30, !"__key", i1 false, i1 false}
!30 = !{!"../mm/z3fold.c", i32 1011, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @z3fold_aops, !33, !"z3fold_aops", i1 false, i1 false}
!33 = !{!"../mm/z3fold.c", i32 1690, i32 46}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../mm/z3fold.c", i32 1608, i32 2}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../mm/z3fold.c", i32 1609, i32 2}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../mm/z3fold.c", i32 1610, i32 2}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/z3fold.c", i32 1611, i32 2}
!42 = !{ptr @z3fold_page_migrate.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../mm/z3fold.c", i32 1632, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @z3fold_page_migrate.__key.13, !46, !"__key", i1 false, i1 false}
!46 = !{!"../mm/z3fold.c", i32 1633, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/page-flags.h", i32 921, i32 1}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../mm/z3fold.c", i32 809, i32 3}
!54 = !{ptr @alloc_slots.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../mm/z3fold.c", i32 224, i32 3}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/mm.h", i32 717, i32 2}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../mm/z3fold.c", i32 1568, i32 2}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!69 = !{ptr @z3fold_zpool_ops, !70, !"z3fold_zpool_ops", i1 false, i1 false}
!70 = !{!"../mm/z3fold.c", i32 1708, i32 32}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../mm/z3fold.c", i32 1102, i32 5}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @z3fold_alloc._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @z3fold_alloc._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!78 = !{ptr @init_z3fold_page.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../mm/z3fold.c", i32 405, i32 2}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @init_z3fold_page.__key.29, !82, !"__key", i1 false, i1 false}
!82 = !{!"../mm/z3fold.c", i32 411, i32 2}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../mm/z3fold.c", i32 1239, i32 3}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @z3fold_free._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @z3fold_free._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @z3fold_reclaim_page.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../mm/z3fold.c", i32 1322, i32 2}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../mm/z3fold.c", i32 1514, i32 3}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @z3fold_map._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @z3fold_map._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @z3fold_fs, !101, !"z3fold_fs", i1 false, i1 false}
!101 = !{!"../mm/z3fold.c", i32 341, i32 32}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2148254049}
!114 = !{i64 2148168513, i64 2148168545, i64 2148168574, i64 2148168608, i64 2148168639, i64 2148168662}
!115 = !{i64 2149600885}
!116 = !{i64 2150801537, i64 2150802028, i64 2150801574, i64 2150801630, i64 2150801664, i64 2150801688, i64 2150801729, i64 2150801750, i64 2150801778, i64 2150801812}
!117 = !{i64 2148173376, i64 2148173408, i64 2148173437, i64 2148173471, i64 2148173502, i64 2148173525}
!118 = !{i64 2148262457}
!119 = !{i64 2154690444}
!120 = !{i64 2154690286}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2151270073, i64 2151270246, i64 2151270261, i64 2151270313, i64 2151270372, i64 2151270396, i64 2151270437, i64 2151270458, i64 2151270486, i64 2151270518}
!123 = !{i64 2148166048, i64 2148166080, i64 2148166109, i64 2148166143, i64 2148166174, i64 2148166197}
!124 = !{i64 539352, i64 539376, i64 539397, i64 539414, i64 539431}
!125 = !{i64 2154783549, i64 2154784026, i64 2154783586, i64 2154783642, i64 2154783676, i64 2154783700, i64 2154783741, i64 2154783762, i64 2154783790, i64 2154783824}
!126 = !{i64 2151617479, i64 2151617970, i64 2151617516, i64 2151617572, i64 2151617606, i64 2151617630, i64 2151617671, i64 2151617692, i64 2151617720, i64 2151617754}
!127 = !{i64 2154785307, i64 2154785784, i64 2154785344, i64 2154785400, i64 2154785434, i64 2154785458, i64 2154785499, i64 2154785520, i64 2154785548, i64 2154785582}
!128 = !{i64 2154787212, i64 2154787689, i64 2154787249, i64 2154787305, i64 2154787339, i64 2154787363, i64 2154787404, i64 2154787425, i64 2154787453, i64 2154787487}
!129 = !{i64 2150808970, i64 2150809461, i64 2150809007, i64 2150809063, i64 2150809097, i64 2150809121, i64 2150809162, i64 2150809183, i64 2150809211, i64 2150809245}
!130 = !{i64 2154788978, i64 2154789455, i64 2154789015, i64 2154789071, i64 2154789105, i64 2154789129, i64 2154789170, i64 2154789191, i64 2154789219, i64 2154789253}
!131 = !{i64 2153181491, i64 2153181975, i64 2153181528, i64 2153181584, i64 2153181618, i64 2153181642, i64 2153181683, i64 2153181704, i64 2153181732, i64 2153181766}
!132 = !{i64 2148164518, i64 2148164544, i64 2148164573, i64 2148164607, i64 2148164638, i64 2148164661}
!133 = !{i64 2148695984, i64 2148695989, i64 2148696002, i64 2148696046, i64 2148696080, i64 2148696101}
!134 = !{i64 2153157518, i64 2153158001, i64 2153157555, i64 2153157611, i64 2153157645, i64 2153157669, i64 2153157710, i64 2153157731, i64 2153157759, i64 2153157793}
!135 = !{i64 2148252970}
!136 = !{i64 2148167703, i64 2148167735, i64 2148167764, i64 2148167798, i64 2148167829, i64 2148167852}
!137 = !{i64 2148253199}
!138 = !{i64 2154779860, i64 2154780337, i64 2154779897, i64 2154779953, i64 2154779987, i64 2154780011, i64 2154780052, i64 2154780073, i64 2154780101, i64 2154780135}
!139 = !{i64 2154781613, i64 2154782090, i64 2154781650, i64 2154781706, i64 2154781740, i64 2154781764, i64 2154781805, i64 2154781826, i64 2154781854, i64 2154781888}
!140 = distinct !{null, ptr @release_z3fold_page_locked, null}
