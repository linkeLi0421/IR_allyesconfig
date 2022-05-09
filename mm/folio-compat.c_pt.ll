; ModuleID = '/llk/IR_all_yes/mm/folio-compat.c_pt.bc'
source_filename = "../mm/folio-compat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+page_mapping\22, \22a\22\09"
module asm "\09.weak\09__crc_page_mapping\09\09\09\09"
module asm "\09.long\09__crc_page_mapping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22page_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_page_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unlock_page\22, \22a\22\09"
module asm "\09.weak\09__crc_unlock_page\09\09\09\09"
module asm "\09.long\09__crc_unlock_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_page:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_page\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+end_page_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc_end_page_writeback\09\09\09\09"
module asm "\09.long\09__crc_end_page_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_end_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22end_page_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_end_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wait_on_page_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_on_page_writeback\09\09\09\09"
module asm "\09.long\09__crc_wait_on_page_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_on_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_on_page_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_wait_on_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wait_for_stable_page\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_stable_page\09\09\09\09"
module asm "\09.long\09__crc_wait_for_stable_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_stable_page:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_stable_page\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_stable_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+page_mapped\22, \22a\22\09"
module asm "\09.weak\09__crc_page_mapped\09\09\09\09"
module asm "\09.long\09__crc_page_mapped\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_mapped:\09\09\09\09\09"
module asm "\09.asciz \09\22page_mapped\22\09\09\09\09\09"
module asm "__kstrtabns_page_mapped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mark_page_accessed\22, \22a\22\09"
module asm "\09.weak\09__crc_mark_page_accessed\09\09\09\09"
module asm "\09.long\09__crc_mark_page_accessed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mark_page_accessed:\09\09\09\09\09"
module asm "\09.asciz \09\22mark_page_accessed\22\09\09\09\09\09"
module asm "__kstrtabns_mark_page_accessed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+migrate_page_move_mapping\22, \22a\22\09"
module asm "\09.weak\09__crc_migrate_page_move_mapping\09\09\09\09"
module asm "\09.long\09__crc_migrate_page_move_mapping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_page_move_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_page_move_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_page_move_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+migrate_page_states\22, \22a\22\09"
module asm "\09.weak\09__crc_migrate_page_states\09\09\09\09"
module asm "\09.long\09__crc_migrate_page_states\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_page_states:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_page_states\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_page_states:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+migrate_page_copy\22, \22a\22\09"
module asm "\09.weak\09__crc_migrate_page_copy\09\09\09\09"
module asm "\09.long\09__crc_migrate_page_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_page_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_page_copy\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_page_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_page_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc_set_page_writeback\09\09\09\09"
module asm "\09.long\09__crc_set_page_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22set_page_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_set_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_page_dirty\22, \22a\22\09"
module asm "\09.weak\09__crc_set_page_dirty\09\09\09\09"
module asm "\09.long\09__crc_set_page_dirty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_page_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22set_page_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_set_page_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__set_page_dirty_nobuffers\22, \22a\22\09"
module asm "\09.weak\09__crc___set_page_dirty_nobuffers\09\09\09\09"
module asm "\09.long\09__crc___set_page_dirty_nobuffers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___set_page_dirty_nobuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22__set_page_dirty_nobuffers\22\09\09\09\09\09"
module asm "__kstrtabns___set_page_dirty_nobuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+clear_page_dirty_for_io\22, \22a\22\09"
module asm "\09.weak\09__crc_clear_page_dirty_for_io\09\09\09\09"
module asm "\09.long\09__crc_clear_page_dirty_for_io\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_page_dirty_for_io:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_page_dirty_for_io\22\09\09\09\09\09"
module asm "__kstrtabns_clear_page_dirty_for_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+redirty_page_for_writepage\22, \22a\22\09"
module asm "\09.weak\09__crc_redirty_page_for_writepage\09\09\09\09"
module asm "\09.long\09__crc_redirty_page_for_writepage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_redirty_page_for_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22redirty_page_for_writepage\22\09\09\09\09\09"
module asm "__kstrtabns_redirty_page_for_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lru_cache_add\22, \22a\22\09"
module asm "\09.weak\09__crc_lru_cache_add\09\09\09\09"
module asm "\09.long\09__crc_lru_cache_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lru_cache_add:\09\09\09\09\09"
module asm "\09.asciz \09\22lru_cache_add\22\09\09\09\09\09"
module asm "__kstrtabns_lru_cache_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+add_to_page_cache_lru\22, \22a\22\09"
module asm "\09.weak\09__crc_add_to_page_cache_lru\09\09\09\09"
module asm "\09.long\09__crc_add_to_page_cache_lru\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_to_page_cache_lru:\09\09\09\09\09"
module asm "\09.asciz \09\22add_to_page_cache_lru\22\09\09\09\09\09"
module asm "__kstrtabns_add_to_page_cache_lru:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pagecache_get_page\22, \22a\22\09"
module asm "\09.weak\09__crc_pagecache_get_page\09\09\09\09"
module asm "\09.long\09__crc_pagecache_get_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pagecache_get_page:\09\09\09\09\09"
module asm "\09.asciz \09\22pagecache_get_page\22\09\09\09\09\09"
module asm "__kstrtabns_pagecache_get_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+grab_cache_page_write_begin\22, \22a\22\09"
module asm "\09.weak\09__crc_grab_cache_page_write_begin\09\09\09\09"
module asm "\09.long\09__crc_grab_cache_page_write_begin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_grab_cache_page_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22grab_cache_page_write_begin\22\09\09\09\09\09"
module asm "__kstrtabns_grab_cache_page_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+try_to_release_page\22, \22a\22\09"
module asm "\09.weak\09__crc_try_to_release_page\09\09\09\09"
module asm "\09.long\09__crc_try_to_release_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_to_release_page:\09\09\09\09\09"
module asm "\09.asciz \09\22try_to_release_page\22\09\09\09\09\09"
module asm "__kstrtabns_try_to_release_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.77, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.77 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@__kstrtab_page_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_page_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_mapping to i32), ptr @__kstrtab_page_mapping, ptr @__kstrtabns_page_mapping }, section "___ksymtab+page_mapping", align 4
@__kstrtab_unlock_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_page = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_page to i32), ptr @__kstrtab_unlock_page, ptr @__kstrtabns_unlock_page }, section "___ksymtab+unlock_page", align 4
@__kstrtab_end_page_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_end_page_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_end_page_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @end_page_writeback to i32), ptr @__kstrtab_end_page_writeback, ptr @__kstrtabns_end_page_writeback }, section "___ksymtab+end_page_writeback", align 4
@__kstrtab_wait_on_page_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_on_page_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_on_page_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_on_page_writeback to i32), ptr @__kstrtab_wait_on_page_writeback, ptr @__kstrtabns_wait_on_page_writeback }, section "___ksymtab_gpl+wait_on_page_writeback", align 4
@__kstrtab_wait_for_stable_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_stable_page = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_stable_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_stable_page to i32), ptr @__kstrtab_wait_for_stable_page, ptr @__kstrtabns_wait_for_stable_page }, section "___ksymtab_gpl+wait_for_stable_page", align 4
@__kstrtab_page_mapped = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_mapped = external dso_local constant [0 x i8], align 1
@__ksymtab_page_mapped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_mapped to i32), ptr @__kstrtab_page_mapped, ptr @__kstrtabns_page_mapped }, section "___ksymtab+page_mapped", align 4
@__kstrtab_mark_page_accessed = external dso_local constant [0 x i8], align 1
@__kstrtabns_mark_page_accessed = external dso_local constant [0 x i8], align 1
@__ksymtab_mark_page_accessed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mark_page_accessed to i32), ptr @__kstrtab_mark_page_accessed, ptr @__kstrtabns_mark_page_accessed }, section "___ksymtab+mark_page_accessed", align 4
@__kstrtab_migrate_page_move_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_page_move_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_page_move_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_page_move_mapping to i32), ptr @__kstrtab_migrate_page_move_mapping, ptr @__kstrtabns_migrate_page_move_mapping }, section "___ksymtab+migrate_page_move_mapping", align 4
@__kstrtab_migrate_page_states = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_page_states = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_page_states = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_page_states to i32), ptr @__kstrtab_migrate_page_states, ptr @__kstrtabns_migrate_page_states }, section "___ksymtab+migrate_page_states", align 4
@__kstrtab_migrate_page_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_page_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_page_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_page_copy to i32), ptr @__kstrtab_migrate_page_copy, ptr @__kstrtabns_migrate_page_copy }, section "___ksymtab+migrate_page_copy", align 4
@__kstrtab_set_page_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_page_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_set_page_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_page_writeback to i32), ptr @__kstrtab_set_page_writeback, ptr @__kstrtabns_set_page_writeback }, section "___ksymtab+set_page_writeback", align 4
@__kstrtab_set_page_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_page_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_set_page_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_page_dirty to i32), ptr @__kstrtab_set_page_dirty, ptr @__kstrtabns_set_page_dirty }, section "___ksymtab+set_page_dirty", align 4
@__kstrtab___set_page_dirty_nobuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns___set_page_dirty_nobuffers = external dso_local constant [0 x i8], align 1
@__ksymtab___set_page_dirty_nobuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__set_page_dirty_nobuffers to i32), ptr @__kstrtab___set_page_dirty_nobuffers, ptr @__kstrtabns___set_page_dirty_nobuffers }, section "___ksymtab+__set_page_dirty_nobuffers", align 4
@__kstrtab_clear_page_dirty_for_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_page_dirty_for_io = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_page_dirty_for_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_page_dirty_for_io to i32), ptr @__kstrtab_clear_page_dirty_for_io, ptr @__kstrtabns_clear_page_dirty_for_io }, section "___ksymtab+clear_page_dirty_for_io", align 4
@__kstrtab_redirty_page_for_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_redirty_page_for_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab_redirty_page_for_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @redirty_page_for_writepage to i32), ptr @__kstrtab_redirty_page_for_writepage, ptr @__kstrtabns_redirty_page_for_writepage }, section "___ksymtab+redirty_page_for_writepage", align 4
@__kstrtab_lru_cache_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_lru_cache_add = external dso_local constant [0 x i8], align 1
@__ksymtab_lru_cache_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lru_cache_add to i32), ptr @__kstrtab_lru_cache_add, ptr @__kstrtabns_lru_cache_add }, section "___ksymtab+lru_cache_add", align 4
@__kstrtab_add_to_page_cache_lru = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_to_page_cache_lru = external dso_local constant [0 x i8], align 1
@__ksymtab_add_to_page_cache_lru = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_to_page_cache_lru to i32), ptr @__kstrtab_add_to_page_cache_lru, ptr @__kstrtabns_add_to_page_cache_lru }, section "___ksymtab+add_to_page_cache_lru", align 4
@__kstrtab_pagecache_get_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_pagecache_get_page = external dso_local constant [0 x i8], align 1
@__ksymtab_pagecache_get_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pagecache_get_page to i32), ptr @__kstrtab_pagecache_get_page, ptr @__kstrtabns_pagecache_get_page }, section "___ksymtab+pagecache_get_page", align 4
@__kstrtab_grab_cache_page_write_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_grab_cache_page_write_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_grab_cache_page_write_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @grab_cache_page_write_begin to i32), ptr @__kstrtab_grab_cache_page_write_begin, ptr @__kstrtabns_grab_cache_page_write_begin }, section "___ksymtab+grab_cache_page_write_begin", align 4
@__kstrtab_try_to_release_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_to_release_page = external dso_local constant [0 x i8], align 1
@__ksymtab_try_to_release_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_to_release_page to i32), ptr @__kstrtab_try_to_release_page, ptr @__kstrtabns_try_to_release_page }, section "___ksymtab+try_to_release_page", align 4
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [21 x i8] c"../mm/folio-compat.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 698, i32 1 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab___set_page_dirty_nobuffers, ptr @__ksymtab_add_to_page_cache_lru, ptr @__ksymtab_clear_page_dirty_for_io, ptr @__ksymtab_end_page_writeback, ptr @__ksymtab_grab_cache_page_write_begin, ptr @__ksymtab_lru_cache_add, ptr @__ksymtab_mark_page_accessed, ptr @__ksymtab_migrate_page_copy, ptr @__ksymtab_migrate_page_move_mapping, ptr @__ksymtab_migrate_page_states, ptr @__ksymtab_page_mapped, ptr @__ksymtab_page_mapping, ptr @__ksymtab_pagecache_get_page, ptr @__ksymtab_redirty_page_for_writepage, ptr @__ksymtab_set_page_dirty, ptr @__ksymtab_set_page_writeback, ptr @__ksymtab_try_to_release_page, ptr @__ksymtab_unlock_page, ptr @__ksymtab_wait_for_stable_page, ptr @__ksymtab_wait_on_page_writeback, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @page_mapping(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call ptr @folio_mapping(ptr noundef %4) #3
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unlock_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void @folio_unlock(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @end_page_writeback(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void @folio_end_writeback(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_end_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_on_page_writeback(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void @folio_wait_writeback(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_for_stable_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void @folio_wait_stable(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_stable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @page_mapped(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call zeroext i1 @folio_mapped(ptr noundef %4) #3
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mapped(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mark_page_accessed(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void @folio_mark_accessed(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_mark_accessed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @migrate_page_move_mapping(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %extra_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i3 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i4 = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i4, label %if.end.i7, label %if.then.i6, !prof !51

if.then.i6:                                       ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i5 = add i32 %6, -1
  br label %_compound_head.exit9

if.end.i7:                                        ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit9

_compound_head.exit9:                             ; preds = %if.end.i7, %if.then.i6
  %retval.0.i8 = phi i32 [ %sub.i5, %if.then.i6 ], [ %7, %if.end.i7 ]
  %8 = inttoptr i32 %retval.0.i to ptr
  %9 = inttoptr i32 %retval.0.i8 to ptr
  %call2 = tail call i32 @folio_migrate_mapping(ptr noundef %mapping, ptr noundef %8, ptr noundef %9, i32 noundef %extra_count) #3
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_migrate_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @migrate_page_states(ptr noundef %newpage, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i2 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %if.end.i6, label %if.then.i5, !prof !51

if.then.i5:                                       ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i4 = add i32 %6, -1
  br label %_compound_head.exit8

if.end.i6:                                        ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit8

_compound_head.exit8:                             ; preds = %if.end.i6, %if.then.i5
  %retval.0.i7 = phi i32 [ %sub.i4, %if.then.i5 ], [ %7, %if.end.i6 ]
  %8 = inttoptr i32 %retval.0.i to ptr
  %9 = inttoptr i32 %retval.0.i7 to ptr
  tail call void @folio_migrate_flags(ptr noundef %8, ptr noundef %9) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_migrate_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @migrate_page_copy(ptr noundef %newpage, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i2 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %if.end.i6, label %if.then.i5, !prof !51

if.then.i5:                                       ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i4 = add i32 %6, -1
  br label %_compound_head.exit8

if.end.i6:                                        ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit8

_compound_head.exit8:                             ; preds = %if.end.i6, %if.then.i5
  %retval.0.i7 = phi i32 [ %sub.i4, %if.then.i5 ], [ %7, %if.end.i6 ]
  %8 = inttoptr i32 %retval.0.i to ptr
  %9 = inttoptr i32 %retval.0.i7 to ptr
  tail call void @folio_migrate_copy(ptr noundef %8, ptr noundef %9) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_migrate_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @set_page_writeback(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call zeroext i1 @__folio_start_writeback(ptr noundef %4, i1 noundef zeroext false) #3
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_start_writeback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @set_page_dirty(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call zeroext i1 @folio_mark_dirty(ptr noundef %4) #3
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__set_page_dirty_nobuffers(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !51

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i.i = add i32 %2, -1
  br label %page_mapping.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %page_mapping.exit

page_mapping.exit:                                ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %call1.i = tail call ptr @folio_mapping(ptr noundef %4) #3
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %page_mapping.exit
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %6, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %page_mapping.exit
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %7, %if.end.i ]
  %8 = inttoptr i32 %retval.0.i to ptr
  %call2 = tail call zeroext i1 @filemap_dirty_folio(ptr noundef %call1.i, ptr noundef %8) #3
  %conv = zext i1 %call2 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_dirty_folio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %4) #3
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_clear_dirty_for_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call zeroext i1 @folio_redirty_for_writepage(ptr noundef %wbc, ptr noundef %4) #3
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_redirty_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lru_cache_add(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void @folio_add_lru(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_add_lru(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_to_page_cache_lru(ptr noundef %page, ptr noundef %mapping, i32 noundef %index, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call i32 @filemap_add_folio(ptr noundef %mapping, ptr noundef %4, i32 noundef %index, i32 noundef %gfp) #3
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_add_folio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef %fgp_flags, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__filemap_get_folio(ptr noundef %mapping, i32 noundef %index, i32 noundef %fgp_flags, i32 noundef %gfp) #3
  %and = and i32 %fgp_flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %tobool1.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  %0 = ptrtoint ptr %call to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %or.cond11 = select i1 %or.cond, i1 true, i1 %tobool.i
  br i1 %or.cond11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i.not.i.i.i.i = icmp eq i32 %2, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !52

if.then.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #3, !srcloc !53
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.end
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %call, align 4
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_file_page.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_file_page.exit_crit_edge: ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %folio_file_page.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %call, i32 1, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %compound_nr.i.i.i, align 4
  %phi.bo.i = add i32 %7, -1
  br label %folio_file_page.exit

folio_file_page.exit:                             ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_file_page.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %phi.bo.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_file_page.exit_crit_edge ]
  %and.i10 = and i32 %retval.0.i.i.i, %index
  %add.ptr.i = getelementptr %struct.page, ptr %call, i32 %and.i10
  br label %cleanup

cleanup:                                          ; preds = %folio_file_page.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.i, %folio_file_page.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %index, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 526, i32 542
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %0 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gfp_mask.i, align 4
  %call1 = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef %spec.select, i32 noundef %1)
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delete_from_page_cache(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void @filemap_remove_folio(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @filemap_remove_folio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @try_to_release_page(ptr noundef %page, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !51

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %call1 = tail call zeroext i1 @filemap_release_folio(ptr noundef %4, i32 noundef %gfp) #3
  %conv = zext i1 %call1 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_release_folio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__ksymtab_page_mapping, !1, !"__ksymtab_page_mapping", i1 false, i1 false}
!1 = !{!"../mm/folio-compat.c", i32 15, i32 1}
!2 = !{ptr @__ksymtab_unlock_page, !3, !"__ksymtab_unlock_page", i1 false, i1 false}
!3 = !{!"../mm/folio-compat.c", i32 21, i32 1}
!4 = !{ptr @__ksymtab_end_page_writeback, !5, !"__ksymtab_end_page_writeback", i1 false, i1 false}
!5 = !{!"../mm/folio-compat.c", i32 27, i32 1}
!6 = !{ptr @__ksymtab_wait_on_page_writeback, !7, !"__ksymtab_wait_on_page_writeback", i1 false, i1 false}
!7 = !{!"../mm/folio-compat.c", i32 33, i32 1}
!8 = !{ptr @__ksymtab_wait_for_stable_page, !9, !"__ksymtab_wait_for_stable_page", i1 false, i1 false}
!9 = !{!"../mm/folio-compat.c", i32 39, i32 1}
!10 = !{ptr @__ksymtab_page_mapped, !11, !"__ksymtab_page_mapped", i1 false, i1 false}
!11 = !{!"../mm/folio-compat.c", i32 45, i32 1}
!12 = !{ptr @__ksymtab_mark_page_accessed, !13, !"__ksymtab_mark_page_accessed", i1 false, i1 false}
!13 = !{!"../mm/folio-compat.c", i32 51, i32 1}
!14 = !{ptr @__ksymtab_migrate_page_move_mapping, !15, !"__ksymtab_migrate_page_move_mapping", i1 false, i1 false}
!15 = !{!"../mm/folio-compat.c", i32 60, i32 1}
!16 = !{ptr @__ksymtab_migrate_page_states, !17, !"__ksymtab_migrate_page_states", i1 false, i1 false}
!17 = !{!"../mm/folio-compat.c", i32 66, i32 1}
!18 = !{ptr @__ksymtab_migrate_page_copy, !19, !"__ksymtab_migrate_page_copy", i1 false, i1 false}
!19 = !{!"../mm/folio-compat.c", i32 72, i32 1}
!20 = !{ptr @__ksymtab_set_page_writeback, !21, !"__ksymtab_set_page_writeback", i1 false, i1 false}
!21 = !{!"../mm/folio-compat.c", i32 79, i32 1}
!22 = !{ptr @__ksymtab_set_page_dirty, !23, !"__ksymtab_set_page_dirty", i1 false, i1 false}
!23 = !{!"../mm/folio-compat.c", i32 85, i32 1}
!24 = !{ptr @__ksymtab___set_page_dirty_nobuffers, !25, !"__ksymtab___set_page_dirty_nobuffers", i1 false, i1 false}
!25 = !{!"../mm/folio-compat.c", i32 91, i32 1}
!26 = !{ptr @__ksymtab_clear_page_dirty_for_io, !27, !"__ksymtab_clear_page_dirty_for_io", i1 false, i1 false}
!27 = !{!"../mm/folio-compat.c", i32 97, i32 1}
!28 = !{ptr @__ksymtab_redirty_page_for_writepage, !29, !"__ksymtab_redirty_page_for_writepage", i1 false, i1 false}
!29 = !{!"../mm/folio-compat.c", i32 104, i32 1}
!30 = !{ptr @__ksymtab_lru_cache_add, !31, !"__ksymtab_lru_cache_add", i1 false, i1 false}
!31 = !{!"../mm/folio-compat.c", i32 110, i32 1}
!32 = !{ptr @__ksymtab_add_to_page_cache_lru, !33, !"__ksymtab_add_to_page_cache_lru", i1 false, i1 false}
!33 = !{!"../mm/folio-compat.c", i32 117, i32 1}
!34 = !{ptr @__ksymtab_pagecache_get_page, !35, !"__ksymtab_pagecache_get_page", i1 false, i1 false}
!35 = !{!"../mm/folio-compat.c", i32 130, i32 1}
!36 = !{ptr @__ksymtab_grab_cache_page_write_begin, !37, !"__ksymtab_grab_cache_page_write_begin", i1 false, i1 false}
!37 = !{!"../mm/folio-compat.c", i32 142, i32 1}
!38 = !{ptr @__ksymtab_try_to_release_page, !39, !"__ksymtab_try_to_release_page", i1 false, i1 false}
!39 = !{!"../mm/folio-compat.c", i32 153, i32 1}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2150994469, i64 2150994960, i64 2150994506, i64 2150994562, i64 2150994596, i64 2150994620, i64 2150994661, i64 2150994682, i64 2150994710, i64 2150994744}
