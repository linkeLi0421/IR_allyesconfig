; ModuleID = '/llk/IR_all_yes/fs/iomap/buffered-io.c_pt.bc'
source_filename = "../fs/iomap/buffered-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iomap_readpage\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_readpage\09\09\09\09"
module asm "\09.long\09__crc_iomap_readpage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_readpage\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_readahead\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_readahead\09\09\09\09"
module asm "\09.long\09__crc_iomap_readahead\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_readahead\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_is_partially_uptodate\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_is_partially_uptodate\09\09\09\09"
module asm "\09.long\09__crc_iomap_is_partially_uptodate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_is_partially_uptodate:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_is_partially_uptodate\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_is_partially_uptodate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_releasepage\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_releasepage\09\09\09\09"
module asm "\09.long\09__crc_iomap_releasepage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_releasepage:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_releasepage\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_releasepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_invalidate_folio\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_invalidate_folio\09\09\09\09"
module asm "\09.long\09__crc_iomap_invalidate_folio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_invalidate_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_invalidate_folio\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_invalidate_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_invalidatepage\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_invalidatepage\09\09\09\09"
module asm "\09.long\09__crc_iomap_invalidatepage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_invalidatepage:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_invalidatepage\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_invalidatepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_migrate_page\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_migrate_page\09\09\09\09"
module asm "\09.long\09__crc_iomap_migrate_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_migrate_page\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_file_buffered_write\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_file_buffered_write\09\09\09\09"
module asm "\09.long\09__crc_iomap_file_buffered_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_file_buffered_write:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_file_buffered_write\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_file_buffered_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_file_unshare\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_file_unshare\09\09\09\09"
module asm "\09.long\09__crc_iomap_file_unshare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_file_unshare:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_file_unshare\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_file_unshare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_zero_range\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_zero_range\09\09\09\09"
module asm "\09.long\09__crc_iomap_zero_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_zero_range:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_zero_range\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_zero_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_truncate_page\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_truncate_page\09\09\09\09"
module asm "\09.long\09__crc_iomap_truncate_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_truncate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_truncate_page\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_truncate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_page_mkwrite\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_page_mkwrite\09\09\09\09"
module asm "\09.long\09__crc_iomap_page_mkwrite\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_page_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_page_mkwrite\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_page_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_finish_ioends\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_finish_ioends\09\09\09\09"
module asm "\09.long\09__crc_iomap_finish_ioends\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_finish_ioends:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_finish_ioends\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_finish_ioends:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_ioend_try_merge\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_ioend_try_merge\09\09\09\09"
module asm "\09.long\09__crc_iomap_ioend_try_merge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_ioend_try_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_ioend_try_merge\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_ioend_try_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_sort_ioends\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_sort_ioends\09\09\09\09"
module asm "\09.long\09__crc_iomap_sort_ioends\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_sort_ioends:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_sort_ioends\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_sort_ioends:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_writepage\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_writepage\09\09\09\09"
module asm "\09.long\09__crc_iomap_writepage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_writepage\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iomap_writepages\22, \22a\22\09"
module asm "\09.weak\09__crc_iomap_writepages\09\09\09\09"
module asm "\09.long\09__crc_iomap_writepages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_writepages\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.iomap_readpage_ctx = type { ptr, i8, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.anon.81 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon.69 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.30, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.30 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%union.anon.79 = type { ptr }
%struct.iomap_page = type { %struct.atomic_t, %struct.atomic_t, %struct.spinlock, [0 x i32] }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.51, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vm_fault = type { %struct.anon.53, i32, ptr, ptr, %union.anon.54, ptr, ptr, ptr, ptr, ptr }
%struct.anon.53 = type { ptr, i32, i32, i32 }
%union.anon.54 = type { i32 }
%struct.folio_iter = type { ptr, i32, i32, i32, i32 }
%struct.iomap_ioend = type { %struct.list_head, i16, i16, i32, ptr, i32, i64, i64, ptr, %struct.bio }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.iomap_writepage_ctx = type { %struct.iomap, ptr, ptr }
%struct.iomap_writeback_ops = type { ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.66 = type { %struct.work_struct }
%struct.iomap_page_ops = type { ptr, ptr }

@iomap_readpage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/iomap/buffered-io.c\00", [41 x i8] zeroinitializer }, align 32
@iomap_readpage.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_iomap_readpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_readpage = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_readpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_readpage to i32), ptr @__kstrtab_iomap_readpage, ptr @__kstrtabns_iomap_readpage }, section "___ksymtab_gpl+iomap_readpage", align 4
@__kstrtab_iomap_readahead = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_readahead = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_readahead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_readahead to i32), ptr @__kstrtab_iomap_readahead, ptr @__kstrtabns_iomap_readahead }, section "___ksymtab_gpl+iomap_readahead", align 4
@__kstrtab_iomap_is_partially_uptodate = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_is_partially_uptodate = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_is_partially_uptodate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_is_partially_uptodate to i32), ptr @__kstrtab_iomap_is_partially_uptodate, ptr @__kstrtabns_iomap_is_partially_uptodate }, section "___ksymtab_gpl+iomap_is_partially_uptodate", align 4
@__kstrtab_iomap_releasepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_releasepage = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_releasepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_releasepage to i32), ptr @__kstrtab_iomap_releasepage, ptr @__kstrtabns_iomap_releasepage }, section "___ksymtab_gpl+iomap_releasepage", align 4
@iomap_invalidate_folio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_invalidate_folio.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_iomap_invalidate_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_invalidate_folio = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_invalidate_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_invalidate_folio to i32), ptr @__kstrtab_iomap_invalidate_folio, ptr @__kstrtabns_iomap_invalidate_folio }, section "___ksymtab_gpl+iomap_invalidate_folio", align 4
@__kstrtab_iomap_invalidatepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_invalidatepage = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_invalidatepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_invalidatepage to i32), ptr @__kstrtab_iomap_invalidatepage, ptr @__kstrtabns_iomap_invalidatepage }, section "___ksymtab_gpl+iomap_invalidatepage", align 4
@__kstrtab_iomap_migrate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_migrate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_migrate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_migrate_page to i32), ptr @__kstrtab_iomap_migrate_page, ptr @__kstrtabns_iomap_migrate_page }, section "___ksymtab_gpl+iomap_migrate_page", align 4
@__kstrtab_iomap_file_buffered_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_file_buffered_write = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_file_buffered_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_file_buffered_write to i32), ptr @__kstrtab_iomap_file_buffered_write, ptr @__kstrtabns_iomap_file_buffered_write }, section "___ksymtab_gpl+iomap_file_buffered_write", align 4
@__kstrtab_iomap_file_unshare = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_file_unshare = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_file_unshare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_file_unshare to i32), ptr @__kstrtab_iomap_file_unshare, ptr @__kstrtabns_iomap_file_unshare }, section "___ksymtab_gpl+iomap_file_unshare", align 4
@__kstrtab_iomap_zero_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_zero_range = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_zero_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_zero_range to i32), ptr @__kstrtab_iomap_zero_range, ptr @__kstrtabns_iomap_zero_range }, section "___ksymtab_gpl+iomap_zero_range", align 4
@__kstrtab_iomap_truncate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_truncate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_truncate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_truncate_page to i32), ptr @__kstrtab_iomap_truncate_page, ptr @__kstrtabns_iomap_truncate_page }, section "___ksymtab_gpl+iomap_truncate_page", align 4
@__kstrtab_iomap_page_mkwrite = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_page_mkwrite = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_page_mkwrite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_page_mkwrite to i32), ptr @__kstrtab_iomap_page_mkwrite, ptr @__kstrtabns_iomap_page_mkwrite }, section "___ksymtab_gpl+iomap_page_mkwrite", align 4
@__kstrtab_iomap_finish_ioends = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_finish_ioends = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_finish_ioends = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_finish_ioends to i32), ptr @__kstrtab_iomap_finish_ioends, ptr @__kstrtabns_iomap_finish_ioends }, section "___ksymtab_gpl+iomap_finish_ioends", align 4
@__kstrtab_iomap_ioend_try_merge = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_ioend_try_merge = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_ioend_try_merge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_ioend_try_merge to i32), ptr @__kstrtab_iomap_ioend_try_merge, ptr @__kstrtabns_iomap_ioend_try_merge }, section "___ksymtab_gpl+iomap_ioend_try_merge", align 4
@__kstrtab_iomap_sort_ioends = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_sort_ioends = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_sort_ioends = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_sort_ioends to i32), ptr @__kstrtab_iomap_sort_ioends, ptr @__kstrtabns_iomap_sort_ioends }, section "___ksymtab_gpl+iomap_sort_ioends", align 4
@__kstrtab_iomap_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_writepage to i32), ptr @__kstrtab_iomap_writepage, ptr @__kstrtabns_iomap_writepage }, section "___ksymtab_gpl+iomap_writepage", align 4
@__kstrtab_iomap_writepages = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_writepages = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_writepages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_writepages to i32), ptr @__kstrtab_iomap_writepages, ptr @__kstrtabns_iomap_writepages }, section "___ksymtab_gpl+iomap_writepages", align 4
@__initcall__kmod_iomap__341_1576_iomap_init5 = internal global ptr @iomap_init, section ".initcall5.init", align 4
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_iomap_readpage = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/iomap/trace.h\00", [47 x i8] zeroinitializer }, align 32
@trace_iomap_readpage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@iomap_read_inline_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_read_inline_data.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_read_inline_data.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@iomap_page_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&iop->uptodate_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@bio_first_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/bio.h\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_iomap_readahead = external dso_local global %struct.tracepoint, align 4
@trace_iomap_readahead.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(folio))\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__tracepoint_iomap_releasepage = external dso_local global %struct.tracepoint, align 4
@trace_iomap_releasepage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iomap_page_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_page_release.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_page_release.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_iomap_invalidatepage = external dso_local global %struct.tracepoint, align 4
@trace_iomap_invalidatepage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@iomap_write_begin_inline.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__iomap_write_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_write_end_inline.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@iomap_unshare_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_zero_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@iomap_folio_mkwrite_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_finish_ioend._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.iomap_finish_ioend = private unnamed_addr constant [19 x i8] c"iomap_finish_ioend\00", align 1
@iomap_finish_ioend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.iomap_finish_ioend, ptr @.str, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s: writeback error on inode %lu, offset %lld, sector %llu\00", [35 x i8] zeroinitializer }, align 32
@iomap_finish_ioend._entry_ptr = internal global ptr @iomap_finish_ioend._entry, section ".printk_index", align 4
@iomap_finish_folio_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_finish_folio_write.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_do_writepage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_iomap_writepage = external dso_local global %struct.tracepoint, align 4
@trace_iomap_writepage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iomap_writepage_map.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.23 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.24 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.25 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.26 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_writepage_map.__already_done.27 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iomap_ioend_bioset = internal global { %struct.bio_set, [132 x i8] } zeroinitializer, align 32
@switch.table.iomap_page_mkwrite = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 256, i32 2, i32 1, i32 256], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 346, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 698, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"../fs/iomap/trace.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 50, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 108, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 57, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 260, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"../include/linux/bio.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 248, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1096, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 717, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1160, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 271, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 777, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1078, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"iomap_ioend_bioset\00", align 1
@___asan_gen_.85 = private constant [26 x i8] c"../fs/iomap/buffered-io.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 44, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant [32 x i8] c"switch.table.iomap_page_mkwrite\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__initcall__kmod_iomap__341_1576_iomap_init5, ptr @__ksymtab_iomap_file_buffered_write, ptr @__ksymtab_iomap_file_unshare, ptr @__ksymtab_iomap_finish_ioends, ptr @__ksymtab_iomap_invalidate_folio, ptr @__ksymtab_iomap_invalidatepage, ptr @__ksymtab_iomap_ioend_try_merge, ptr @__ksymtab_iomap_is_partially_uptodate, ptr @__ksymtab_iomap_migrate_page, ptr @__ksymtab_iomap_page_mkwrite, ptr @__ksymtab_iomap_readahead, ptr @__ksymtab_iomap_readpage, ptr @__ksymtab_iomap_releasepage, ptr @__ksymtab_iomap_sort_ioends, ptr @__ksymtab_iomap_truncate_page, ptr @__ksymtab_iomap_writepage, ptr @__ksymtab_iomap_writepages, ptr @__ksymtab_iomap_zero_range, ptr @iomap_finish_ioend._entry, ptr @iomap_finish_ioend._entry_ptr, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @iomap_page_create.__key, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @iomap_finish_ioend._rs, ptr @.str.20, ptr @.str.21, ptr @iomap_ioend_bioset, ptr @switch.table.iomap_page_mkwrite], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iomap_page_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iomap_finish_ioend._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iomap_finish_ioend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iomap_ioend_bioset to i32), i32 604, i32 736, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iomap_page_mkwrite to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_readpage(ptr noundef %page, ptr noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.iomap_iter, align 8
  %ctx = alloca %struct.iomap_readpage_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #12
  %5 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %mapping = getelementptr inbounds %struct.anon.81, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapping, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %iter, align 8
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %index.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %12 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl.i.i, ptr %pos, align 8
  %len = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i.i.i.i = icmp eq i32 %15, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !150

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i:                              ; preds = %_compound_head.exit
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %4, align 4
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.69, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %21 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %conv = zext i32 %shl.i to i64
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %len, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx) #12
  %23 = getelementptr inbounds i8, ptr %ctx, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %4, ptr %ctx, align 4
  %cur_folio_in_bio = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %ctx, i32 0, i32 1
  %26 = ptrtoint ptr %cur_folio_in_bio to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %cur_folio_in_bio, align 4
  %bio = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %ctx, i32 0, i32 2
  %27 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %bio, align 4
  %rac = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %ctx, i32 0, i32 3
  %28 = ptrtoint ptr %rac to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rac, align 4
  tail call fastcc void @trace_iomap_readpage(ptr noundef %9)
  %call4122 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4122)
  %cmp123 = icmp sgt i32 %call4122, 0
  br i1 %cmp123, label %while.body.lr.ph, label %folio_size.exit.while.end_crit_edge

folio_size.exit.while.end_crit_edge:              ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %folio_size.exit
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call6 = call fastcc i64 @iomap_readpage_iter(ptr noundef nonnull %iter, ptr noundef nonnull %ctx, i64 noundef 0)
  %29 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call6, ptr %processed, align 8
  %call4 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  %cmp = icmp sgt i32 %call4, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %folio_size.exit.while.end_crit_edge
  %call4.lcssa = phi i32 [ %call4122, %folio_size.exit.while.end_crit_edge ], [ %call4, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.lcssa)
  %cmp7 = icmp slt i32 %call4.lcssa, 0
  br i1 %cmp7, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.end
  %30 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_set_error.exit, label %if.then.i.i, !prof !149

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_set_error.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 8, ptr noundef %4) #12
  br label %if.end

if.end:                                           ; preds = %folio_set_error.exit, %while.end.if.end_crit_edge
  %33 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bio, align 4
  %tobool.not = icmp eq ptr %34, null
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @submit_bio(ptr noundef nonnull %34) #12
  %35 = ptrtoint ptr %cur_folio_in_bio to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cur_folio_in_bio, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool13.not = icmp eq i8 %36, 0
  br i1 %tobool13.not, label %land.rhs, label %if.then10.if.end109_crit_edge

if.then10.if.end109_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

land.rhs:                                         ; preds = %if.then10
  %.b121 = load i1, ptr @iomap_readpage.__already_done, align 1
  br i1 %.b121, label %land.rhs.if.end109_crit_edge, label %if.then23, !prof !149

land.rhs.if.end109_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_readpage.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #12
  br label %if.end109

if.else:                                          ; preds = %if.end
  %37 = ptrtoint ptr %cur_folio_in_bio to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cur_folio_in_bio, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool55.not = icmp eq i8 %38, 0
  br i1 %tobool55.not, label %if.else.if.end101_crit_edge, label %land.rhs63

if.else.if.end101_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

land.rhs63:                                       ; preds = %if.else
  %.b119120 = load i1, ptr @iomap_readpage.__already_done.1, align 1
  br i1 %.b119120, label %land.rhs63.if.end101_crit_edge, label %if.then74, !prof !149

land.rhs63.if.end101_crit_edge:                   ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then74:                                        ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_readpage.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 348, i32 noundef 9, ptr noundef null) #12
  br label %if.end101

if.end101:                                        ; preds = %if.then74, %land.rhs63.if.end101_crit_edge, %if.else.if.end101_crit_edge
  call void @folio_unlock(ptr noundef %4) #12
  br label %if.end109

if.end109:                                        ; preds = %if.end101, %if.then23, %land.rhs.if.end109_crit_edge, %if.then10.if.end109_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iomap_readpage(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readpage, i32 0, i32 1), ptr blockaddress(@trace_iomap_readpage, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !149

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !155
  %call42 = tail call i32 @__traceiter_iomap_readpage(ptr noundef null, ptr noundef %inode, i32 noundef 1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !156
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !149

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readpage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readpage, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_iomap_readpage.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iomap_readpage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 50, ptr noundef nonnull @.str.5) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @iomap_readpage_iter(ptr nocapture noundef readonly %iter, ptr nocapture noundef %ctx, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %pos = alloca i64, align 8
  %poff = alloca i32, align 4
  %plen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap1 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %pos2 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %0 = ptrtoint ptr %pos2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos2, align 8
  %add = add i64 %1, %offset
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %add, ptr %pos, align 8
  %offset.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %offset.i, align 8
  %length.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %length.i, align 8
  %add.i = add i64 %6, %4
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not.i = icmp eq i16 %8, 0
  br i1 %cmp.not.i, label %entry.iomap_length.exit_crit_edge, label %if.then.i

entry.iomap_length.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_length.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %offset4.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset4.i, align 8
  %length6.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %length6.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %length6.i, align 8
  %add7.i = add i64 %12, %10
  %13 = tail call i64 @llvm.umin.i64(i64 %add.i, i64 %add7.i) #12
  br label %iomap_length.exit

iomap_length.exit:                                ; preds = %if.then.i, %entry.iomap_length.exit_crit_edge
  %end.0.i = phi i64 [ %13, %if.then.i ], [ %add.i, %entry.iomap_length.exit_crit_edge ]
  %len.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %len.i, align 8
  %sub.i = sub i64 %end.0.i, %1
  %16 = tail call i64 @llvm.umin.i64(i64 %15, i64 %sub.i) #12
  %sub = sub i64 %16, %offset
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poff) #12
  %19 = ptrtoint ptr %poff to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %poff, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plen) #12
  %20 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %plen, align 4, !annotation !159
  %type = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %22)
  %cmp = icmp eq i16 %22, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %iomap_length.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call fastcc i32 @iomap_read_inline_data(ptr noundef %iter, ptr noundef %18)
  %conv5 = sext i32 %call4 to i64
  br label %cleanup

if.end:                                           ; preds = %iomap_length.exit
  %23 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iter, align 8
  %call6 = tail call fastcc ptr @iomap_page_create(ptr noundef %24, ptr noundef %18)
  %25 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iter, align 8
  call fastcc void @iomap_adjust_read_range(ptr noundef %26, ptr noundef %18, ptr noundef nonnull %pos, i64 noundef %sub, ptr noundef nonnull %poff, ptr noundef nonnull %plen)
  %27 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %plen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp8 = icmp eq i32 %28, 0
  br i1 %cmp8, label %if.end.done_crit_edge, label %if.end11

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end11:                                         ; preds = %if.end
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pos, align 8
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.not.i.i = icmp eq i16 %32, 0
  %srcmap.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6
  %retval.0.i.i = select i1 %cmp.not.i.i, ptr %iomap1, ptr %srcmap.i.i
  %type.i122 = getelementptr inbounds %struct.iomap, ptr %retval.0.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %type.i122 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %type.i122, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %34)
  %cmp.not.i123 = icmp eq i16 %34, 2
  br i1 %cmp.not.i123, label %lor.lhs.false.i, label %if.end11.if.then13_crit_edge

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

lor.lhs.false.i:                                  ; preds = %if.end11
  %flags.i = getelementptr inbounds %struct.iomap, ptr %retval.0.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags.i, align 2
  %37 = and i16 %36, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i, label %iomap_block_needs_zeroing.exit, label %lor.lhs.false.i.if.then13_crit_edge

lor.lhs.false.i.if.then13_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

iomap_block_needs_zeroing.exit:                   ; preds = %lor.lhs.false.i
  %38 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iter, align 8
  %call3.i = tail call fastcc i64 @i_size_read(ptr noundef %39) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %30)
  %cmp4.i.not = icmp sgt i64 %call3.i, %30
  br i1 %cmp4.i.not, label %if.end14, label %iomap_block_needs_zeroing.exit.if.then13_crit_edge

iomap_block_needs_zeroing.exit.if.then13_crit_edge: ; preds = %iomap_block_needs_zeroing.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then13:                                        ; preds = %iomap_block_needs_zeroing.exit.if.then13_crit_edge, %lor.lhs.false.i.if.then13_crit_edge, %if.end11.if.then13_crit_edge
  %40 = ptrtoint ptr %poff to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %poff, align 4
  %add.i124 = add i32 %41, %28
  tail call void @zero_user_segments(ptr noundef %18, i32 noundef %41, i32 noundef %add.i124, i32 noundef 0, i32 noundef 0) #12
  tail call fastcc void @iomap_set_range_uptodate(ptr noundef %18, ptr noundef %call6, i32 noundef %41, i32 noundef %28)
  br label %done

if.end14:                                         ; preds = %iomap_block_needs_zeroing.exit
  %cur_folio_in_bio = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %ctx, i32 0, i32 1
  %42 = ptrtoint ptr %cur_folio_in_bio to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %cur_folio_in_bio, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end14.if.end16_crit_edge, label %if.then15

if.end14.if.end16_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call6, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %call6, i32 1, i32 3, i32 1) #12
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call6, ptr nonnull %call6, i32 %28, ptr nonnull elementtype(i32) %call6) #12, !srcloc !160
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end14.if.end16_crit_edge
  %44 = ptrtoint ptr %iomap1 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %iomap1, align 8
  %add.i125 = add i64 %45, %30
  %46 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %offset.i, align 8
  %sub.i127 = sub i64 %add.i125, %47
  %shr.i = lshr i64 %sub.i127, 9
  %bio = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %ctx, i32 0, i32 2
  %48 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bio, align 4
  %tobool18.not = icmp eq ptr %49, null
  br i1 %tobool18.not, label %if.end16.if.then29_crit_edge, label %lor.lhs.false

if.end16.if.then29_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end16
  %bi_iter = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %49, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %53, 9
  %conv22 = zext i32 %shr to i64
  %add23 = add i64 %51, %conv22
  call void @__sanitizer_cov_trace_cmp8(i64 %add23, i64 %shr.i)
  %cmp24.not = icmp eq i64 %add23, %shr.i
  br i1 %cmp24.not, label %lor.lhs.false26, label %lor.lhs.false.if.then29_crit_edge

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %54 = ptrtoint ptr %poff to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %poff, align 4
  %call28 = tail call zeroext i1 @bio_add_folio(ptr noundef nonnull %49, ptr noundef %18, i32 noundef %28, i32 noundef %55) #12
  br i1 %call28, label %lor.lhs.false26.done_crit_edge, label %lor.lhs.false26.if.then29_crit_edge

lor.lhs.false26.if.then29_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

lor.lhs.false26.done_crit_edge:                   ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then29:                                        ; preds = %lor.lhs.false26.if.then29_crit_edge, %lor.lhs.false.if.then29_crit_edge, %if.end16.if.then29_crit_edge
  %mapping = getelementptr inbounds %struct.anon.81, ptr %18, i32 0, i32 2
  %56 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mapping, align 4
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gfp_mask.i.i, align 4
  %and.i = and i32 %59, 3264
  %sub32 = add i64 %sub, 4095
  %div = sdiv i64 %sub32, 4096
  %conv33 = trunc i64 %div to i32
  %60 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bio, align 4
  %tobool35.not = icmp eq ptr %61, null
  br i1 %tobool35.not, label %if.then29.if.end38_crit_edge, label %if.then36

if.then29.if.end38_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @submit_bio(ptr noundef nonnull %61) #12
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then29.if.end38_crit_edge
  %rac = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %ctx, i32 0, i32 3
  %62 = ptrtoint ptr %rac to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rac, align 4
  %tobool39.not = icmp eq ptr %63, null
  %or = or i32 %and.i, 73728
  %spec.select = select i1 %tobool39.not, i32 %and.i, i32 %or
  %64 = tail call i32 @llvm.umin.i32(i32 %conv33, i32 256) #12
  %conv43 = trunc i32 %64 to i16
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef %spec.select, i16 noundef zeroext %conv43, ptr noundef nonnull @fs_bio_set) #12
  %65 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %bio, align 4
  %tobool47.not = icmp eq ptr %call.i, null
  br i1 %tobool47.not, label %if.then48, label %if.end38.if.end51_crit_edge

if.end38.if.end51_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %call.i128 = tail call ptr @bio_alloc_bioset(i32 noundef %and.i, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #12
  %66 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i128, ptr %bio, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end38.if.end51_crit_edge
  %67 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bio, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %bi_opf, align 8
  %70 = ptrtoint ptr %rac to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rac, align 4
  %tobool54.not = icmp eq ptr %71, null
  br i1 %tobool54.not, label %if.end51.if.end61_crit_edge, label %if.then55

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bio, align 4
  %bi_opf57 = getelementptr inbounds %struct.bio, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %bi_opf57 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bi_opf57, align 8
  %76 = or i32 %75, 524288
  store i32 %76, ptr %bi_opf57, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.end51.if.end61_crit_edge
  %77 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bio, align 4
  %bi_iter63 = getelementptr inbounds %struct.bio, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %bi_iter63 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %shr.i, ptr %bi_iter63, align 8
  %80 = load ptr, ptr %bio, align 4
  %bdev = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 5
  %81 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %80, i32 0, i32 3
  %83 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %84, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i129 = icmp eq ptr %86, %82
  br i1 %cmp.not.i129, label %if.end61.bio_set_dev.exit_crit_edge, label %if.then.i130

if.end61.bio_set_dev.exit_crit_edge:              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit

if.then.i130:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i = and i16 %84, -2177
  %87 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i130, %if.end61.bio_set_dev.exit_crit_edge
  %88 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %82, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %80) #12
  %89 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bio, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @iomap_read_end_io, ptr %bi_end_io, align 8
  %92 = load ptr, ptr %bio, align 4
  %93 = ptrtoint ptr %poff to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %poff, align 4
  %call68 = tail call zeroext i1 @bio_add_folio(ptr noundef %92, ptr noundef %18, i32 noundef %28, i32 noundef %94) #12
  br label %done

done:                                             ; preds = %bio_set_dev.exit, %lor.lhs.false26.done_crit_edge, %if.then13, %if.end.done_crit_edge
  %95 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %pos, align 8
  %conv71 = zext i32 %28 to i64
  %sub70 = sub i64 %conv71, %add
  %add72 = add i64 %sub70, %96
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  %retval.0 = phi i64 [ %conv5, %if.then ], [ %add72, %done ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plen) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poff) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iomap_readahead(ptr noundef %rac, ptr noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.iomap_iter, align 8
  %ctx = alloca %struct.iomap_readpage_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #12
  %0 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %iter, align 8
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %6 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %_index.i, align 4
  %conv.i = zext i32 %7 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %mul.i, ptr %pos, align 8
  %len = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %9 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_nr_pages.i, align 4
  %mul.i26 = shl i32 %10, 12
  %conv = zext i32 %mul.i26 to i64
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %len, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx) #12
  %12 = getelementptr inbounds i8, ptr %ctx, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ctx, align 4
  %cur_folio_in_bio = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %ctx, i32 0, i32 1
  %15 = ptrtoint ptr %cur_folio_in_bio to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %cur_folio_in_bio, align 4
  %bio = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %ctx, i32 0, i32 2
  %16 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bio, align 4
  %rac2 = getelementptr inbounds %struct.iomap_readpage_ctx, ptr %ctx, i32 0, i32 3
  %17 = ptrtoint ptr %rac2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rac, ptr %rac2, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  tail call fastcc void @trace_iomap_readahead(ptr noundef %19, i32 noundef %10)
  %call630 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call630)
  %cmp31 = icmp sgt i32 %call630, 0
  br i1 %cmp31, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %offset.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %length.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %type.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %offset4.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %length6.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %iomap_readahead_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %20 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %offset.i.i, align 8
  %22 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %length.i.i, align 8
  %add.i.i = add i64 %23, %21
  %24 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.not.i.i = icmp eq i16 %25, 0
  br i1 %cmp.not.i.i, label %while.body.iomap_length.exit.i_crit_edge, label %if.then.i.i

while.body.iomap_length.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_length.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %offset4.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %offset4.i.i, align 8
  %28 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %length6.i.i, align 8
  %add7.i.i = add i64 %29, %27
  %30 = call i64 @llvm.umin.i64(i64 %add.i.i, i64 %add7.i.i) #12
  br label %iomap_length.exit.i

iomap_length.exit.i:                              ; preds = %if.then.i.i, %while.body.iomap_length.exit.i_crit_edge
  %end.0.i.i = phi i64 [ %30, %if.then.i.i ], [ %add.i.i, %while.body.iomap_length.exit.i_crit_edge ]
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %len, align 8
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos, align 8
  %sub.i.i = sub i64 %end.0.i.i, %34
  %35 = call i64 @llvm.umin.i64(i64 %32, i64 %sub.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp43.i = icmp sgt i64 %35, 0
  br i1 %cmp43.i, label %iomap_length.exit.i.for.body.i_crit_edge, label %iomap_length.exit.i.iomap_readahead_iter.exit_crit_edge

iomap_length.exit.i.iomap_readahead_iter.exit_crit_edge: ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_readahead_iter.exit

iomap_length.exit.i.for.body.i_crit_edge:         ; preds = %iomap_length.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %iomap_length.exit.i.for.body.i_crit_edge
  %done.044.i = phi i64 [ %add22.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %iomap_length.exit.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %for.body.i.if.then12.i_crit_edge, label %land.lhs.true.i

for.body.i.if.then12.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pos, align 8
  %add.i = add i64 %39, %done.044.i
  %conv.i28 = trunc i64 %add.i to i32
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %41, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %37, ptr noundef nonnull @.str.3) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %land.lhs.true.i
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %37, align 4
  %44 = and i32 %43, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = getelementptr %struct.page, ptr %37, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %47 to i32
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %sub.i = add i32 %shl.i.i, -1
  %and.i = and i32 %sub.i, %conv.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 0
  br i1 %cmp3.i, label %if.then.i, label %folio_size.exit.i.if.end16.i_crit_edge

folio_size.exit.i.if.end16.i_crit_edge:           ; preds = %folio_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then.i:                                        ; preds = %folio_size.exit.i
  %48 = ptrtoint ptr %cur_folio_in_bio to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cur_folio_in_bio, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool5.not.i = icmp eq i8 %49, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.then.i.if.then12.i_crit_edge

if.then.i.if.then12.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @folio_unlock(ptr noundef nonnull %37) #12
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.then6.i, %if.then.i.if.then12.i_crit_edge, %for.body.i.if.then12.i_crit_edge
  %50 = ptrtoint ptr %rac2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rac2, align 4
  %call13.i = call fastcc ptr @readahead_folio(ptr noundef %51) #12
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call13.i, ptr %ctx, align 4
  %53 = ptrtoint ptr %cur_folio_in_bio to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %cur_folio_in_bio, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %folio_size.exit.i.if.end16.i_crit_edge
  %call17.i = call fastcc i64 @iomap_readpage_iter(ptr noundef nonnull %iter, ptr noundef nonnull %ctx, i64 noundef %done.044.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call17.i)
  %cmp18.i = icmp slt i64 %call17.i, 1
  br i1 %cmp18.i, label %if.end16.i.iomap_readahead_iter.exit_crit_edge, label %for.inc.i

if.end16.i.iomap_readahead_iter.exit_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_readahead_iter.exit

for.inc.i:                                        ; preds = %if.end16.i
  %add22.i = add i64 %call17.i, %done.044.i
  %cmp.i = icmp slt i64 %add22.i, %35
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.iomap_readahead_iter.exit_crit_edge

for.inc.i.iomap_readahead_iter.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_readahead_iter.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

iomap_readahead_iter.exit:                        ; preds = %for.inc.i.iomap_readahead_iter.exit_crit_edge, %if.end16.i.iomap_readahead_iter.exit_crit_edge, %iomap_length.exit.i.iomap_readahead_iter.exit_crit_edge
  %retval.0.i = phi i64 [ 0, %iomap_length.exit.i.iomap_readahead_iter.exit_crit_edge ], [ %call17.i, %if.end16.i.iomap_readahead_iter.exit_crit_edge ], [ %add22.i, %for.inc.i.iomap_readahead_iter.exit_crit_edge ]
  %54 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %retval.0.i, ptr %processed, align 8
  %call6 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %iomap_readahead_iter.exit.while.body_crit_edge, label %iomap_readahead_iter.exit.while.end_crit_edge

iomap_readahead_iter.exit.while.end_crit_edge:    ; preds = %iomap_readahead_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

iomap_readahead_iter.exit.while.body_crit_edge:   ; preds = %iomap_readahead_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %iomap_readahead_iter.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %55 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bio, align 4
  %tobool.not = icmp eq ptr %56, null
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @submit_bio(ptr noundef nonnull %56) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %57 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx, align 4
  %tobool12.not = icmp eq ptr %58, null
  br i1 %tobool12.not, label %if.end.if.end19_crit_edge, label %if.then13

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %if.end
  %59 = ptrtoint ptr %cur_folio_in_bio to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cur_folio_in_bio, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool15.not = icmp eq i8 %60, 0
  br i1 %tobool15.not, label %if.then16, label %if.then13.if.end19_crit_edge

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  call void @folio_unlock(ptr noundef nonnull %58) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then13.if.end19_crit_edge, %if.end.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iomap_readahead(ptr noundef %inode, i32 noundef %nr_pages) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readahead, i32 0, i32 1), ptr blockaddress(@trace_iomap_readahead, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !149

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %call42 = tail call i32 @__traceiter_iomap_readahead(ptr noundef null, ptr noundef %inode, i32 noundef %nr_pages) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !162
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !149

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readahead, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readahead, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_iomap_readahead.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iomap_readahead.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 51, ptr noundef nonnull @.str.5) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
define dso_local i32 @iomap_is_partially_uptodate(ptr noundef %page, i32 noundef %from, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i27 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i = icmp eq i32 %and.i27, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_private.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_private.exit.i:                        ; preds = %_compound_head.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %folio_test_private.exit.i.to_iomap_page.exit_crit_edge, label %if.then.i28

folio_test_private.exit.i.to_iomap_page.exit_crit_edge: ; preds = %folio_test_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %to_iomap_page.exit

if.then.i28:                                      ; preds = %folio_test_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %private.i.i = getelementptr inbounds %struct.anon.81, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i.i, align 4
  br label %to_iomap_page.exit

to_iomap_page.exit:                               ; preds = %if.then.i28, %folio_test_private.exit.i.to_iomap_page.exit_crit_edge
  %retval.0.i29 = phi ptr [ %12, %if.then.i28 ], [ null, %folio_test_private.exit.i.to_iomap_page.exit_crit_edge ]
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapping, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %sub = sub i32 4096, %from
  %17 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 20
  %18 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %19 to i32
  %add = add i32 %from, -1
  %sub2 = add i32 %add, %17
  %shr5 = lshr i32 %sub2, %conv
  %tobool.not = icmp eq ptr %retval.0.i29, null
  br i1 %tobool.not, label %to_iomap_page.exit.cleanup_crit_edge, label %if.then

to_iomap_page.exit.cleanup_crit_edge:             ; preds = %to_iomap_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %to_iomap_page.exit
  %shr = lshr i32 %from, %conv
  %uptodate = getelementptr inbounds %struct.iomap_page, ptr %retval.0.i29, i32 0, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr5)
  %cmp6.not30 = icmp ugt i32 %shr, %shr5
  br i1 %cmp6.not30, label %if.then.cleanup_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.031, 1
  %cmp6.not = icmp ugt i32 %inc, %shr5
  br i1 %cmp6.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %shr, %if.then.for.body_crit_edge ]
  %div3.i = lshr i32 %i.031, 5
  %arrayidx.i = getelementptr i32, ptr %uptodate, i32 %div3.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.031, 31
  %22 = shl nuw i32 1, %and.i
  %23 = and i32 %21, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool9.not = icmp eq i32 %23, 0
  br i1 %tobool9.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then.cleanup_crit_edge, %to_iomap_page.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %to_iomap_page.exit.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_releasepage(ptr noundef %page, i32 %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %mapping = getelementptr inbounds %struct.anon.81, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %index.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %10 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i.i.i.i = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !150

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i:                              ; preds = %_compound_head.exit
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.69, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %18 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %conv = zext i32 %shl.i to i64
  tail call fastcc void @trace_iomap_releasepage(ptr noundef %8, i64 noundef %shl.i.i, i64 noundef %conv)
  %19 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_dirty.exit, label %if.then.i.i, !prof !149

if.then.i.i:                                      ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_dirty.exit:                            ; preds = %folio_size.exit
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %4, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %folio_test_dirty.exit.cleanup_crit_edge

folio_test_dirty.exit.cleanup_crit_edge:          ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %folio_test_dirty.exit
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %19, align 4
  %and.i.i.i12 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i12)
  %tobool.not.i.i13 = icmp eq i32 %and.i.i.i12, 0
  br i1 %tobool.not.i.i13, label %folio_test_writeback.exit, label %if.then.i.i14, !prof !149

if.then.i.i14:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_writeback.exit:                        ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %4, align 4
  %29 = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i15.not = icmp eq i32 %29, 0
  br i1 %tobool.i15.not, label %if.end, label %folio_test_writeback.exit.cleanup_crit_edge

folio_test_writeback.exit.cleanup_crit_edge:      ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @iomap_page_release(ptr noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %folio_test_writeback.exit.cleanup_crit_edge, %folio_test_dirty.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %folio_test_writeback.exit.cleanup_crit_edge ], [ 0, %folio_test_dirty.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iomap_releasepage(ptr noundef %inode, i64 noundef %off, i64 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_releasepage, i32 0, i32 1), ptr blockaddress(@trace_iomap_releasepage, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !149

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  %call42 = tail call i32 @__traceiter_iomap_releasepage(ptr noundef null, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !149

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_releasepage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_releasepage, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_iomap_releasepage.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iomap_releasepage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 83, ptr noundef nonnull @.str.5) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
define internal fastcc void @iomap_page_release(ptr noundef %folio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @folio_detach_private(ptr noundef %folio)
  %mapping = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 2
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %entry
  %6 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %folio, align 4
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_blocks_per_folio.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %11 to i32
  br label %i_blocks_per_folio.exit

i_blocks_per_folio.exit:                          ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %12 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %13 to i32
  %shr.i = lshr i32 %shl.i.i, %conv.i
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %i_blocks_per_folio.exit.cleanup_crit_edge, label %if.end

i_blocks_per_folio.exit.cleanup_crit_edge:        ; preds = %i_blocks_per_folio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %i_blocks_per_folio.exit
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call, i32 noundef 4) #12
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not = icmp eq i32 %15, 0
  br i1 %tobool3.not, label %if.end.if.end33_crit_edge, label %land.rhs

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.rhs:                                         ; preds = %if.end
  %.b173 = load i1, ptr @iomap_page_release.__already_done, align 1
  br i1 %.b173, label %land.rhs.if.end33_crit_edge, label %if.then11, !prof !149

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_page_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef null) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then11, %land.rhs.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %write_bytes_pending = getelementptr inbounds %struct.iomap_page, ptr %call, i32 0, i32 1
  %call.i.i174 = tail call zeroext i1 @__kasan_check_read(ptr noundef %write_bytes_pending, i32 noundef 4) #12
  %16 = ptrtoint ptr %write_bytes_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %write_bytes_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool43.not = icmp eq i32 %17, 0
  br i1 %tobool43.not, label %if.end33.if.end.i_crit_edge, label %land.rhs50

if.end33.if.end.i_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs50:                                       ; preds = %if.end33
  %.b169172 = load i1, ptr @iomap_page_release.__already_done.15, align 1
  br i1 %.b169172, label %land.rhs50.if.end.i_crit_edge, label %if.then61, !prof !149

land.rhs50.if.end.i_crit_edge:                    ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then61:                                        ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_page_release.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then61, %land.rhs50.if.end.i_crit_edge, %if.end33.if.end.i_crit_edge
  %uptodate = getelementptr inbounds %struct.iomap_page, ptr %call, i32 0, i32 3
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %uptodate, i32 noundef %shr.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %shr.i)
  %cmp4.i = icmp eq i32 %call.i, %shr.i
  %18 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !149

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_flags.exit.i:                               ; preds = %if.end.i
  %21 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %folio, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i = icmp ne i32 %23, 0
  br i1 %tobool.i, label %do.end.i, label %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge

folio_flags.exit.i.folio_test_uptodate.exit_crit_edge: ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_test_uptodate.exit

do.end.i:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !165
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %24 = xor i1 %cmp4.i, %tobool.i
  br i1 %24, label %land.rhs108, label %folio_test_uptodate.exit.if.end146_crit_edge

folio_test_uptodate.exit.if.end146_crit_edge:     ; preds = %folio_test_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

land.rhs108:                                      ; preds = %folio_test_uptodate.exit
  %.b170171 = load i1, ptr @iomap_page_release.__already_done.16, align 1
  br i1 %.b170171, label %land.rhs108.if.end146_crit_edge, label %if.then119, !prof !149

land.rhs108.if.end146_crit_edge:                  ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

if.then119:                                       ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_page_release.__already_done.16, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #12
  br label %if.end146

if.end146:                                        ; preds = %if.then119, %land.rhs108.if.end146_crit_edge, %folio_test_uptodate.exit.if.end146_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %i_blocks_per_folio.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iomap_invalidate_folio(ptr noundef %folio, i32 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 2
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i32 %offset to i64
  %conv1 = zext i32 %len to i64
  tail call fastcc void @trace_iomap_invalidatepage(ptr noundef %3, i64 noundef %conv, i64 noundef %conv1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp = icmp eq i32 %offset, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i.i.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !150

if.then.i.i.i.i:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i:                              ; preds = %land.lhs.true
  %6 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %folio, align 4
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.69, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %11 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %len)
  %cmp3 = icmp eq i32 %shl.i, %len
  br i1 %cmp3, label %if.then, label %folio_size.exit.if.else_crit_edge

folio_size.exit.if.else_crit_edge:                ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %folio_size.exit
  %12 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_writeback.exit, label %if.then.i.i, !prof !149

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_writeback.exit:                        ; preds = %if.then
  %15 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %folio, align 4
  %17 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %folio_test_writeback.exit.if.end34_crit_edge, label %land.rhs

folio_test_writeback.exit.if.end34_crit_edge:     ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.rhs:                                         ; preds = %folio_test_writeback.exit
  %.b121 = load i1, ptr @iomap_invalidate_folio.__already_done, align 1
  br i1 %.b121, label %land.rhs.if.end34_crit_edge, label %if.then13, !prof !149

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_invalidate_folio.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then13, %land.rhs.if.end34_crit_edge, %folio_test_writeback.exit.if.end34_crit_edge
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i127 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i127, label %folio_test_dirty.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_dirty.exit.i:                          ; preds = %if.end34
  %20 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %folio, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %folio_test_dirty.exit.i.if.end104.sink.split_crit_edge, label %if.then.i

folio_test_dirty.exit.i.if.end104.sink.split_crit_edge: ; preds = %folio_test_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104.sink.split

if.then.i:                                        ; preds = %folio_test_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__folio_cancel_dirty(ptr noundef %folio) #12
  br label %if.end104.sink.split

if.else:                                          ; preds = %folio_size.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %23 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i.i128 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i128)
  %tobool.not.i.i.i129 = icmp eq i32 %and.i.i.i.i128, 0
  br i1 %tobool.not.i.i.i129, label %folio_test_large.exit, label %if.then.i.i.i130, !prof !149

if.then.i.i.i130:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_large.exit:                            ; preds = %if.else
  %26 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %folio, align 4
  %28 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.i.not, label %folio_test_large.exit.if.end104_crit_edge, label %if.then43

folio_test_large.exit.if.end104_crit_edge:        ; preds = %folio_test_large.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then43:                                        ; preds = %folio_test_large.exit
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %23, align 4
  %and.i.i.i131 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i131)
  %tobool.not.i.i132 = icmp eq i32 %and.i.i.i131, 0
  br i1 %tobool.not.i.i132, label %folio_flags.exit.i, label %if.then.i.i133, !prof !149

if.then.i.i133:                                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_flags.exit.i:                               ; preds = %if.then43
  %31 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %folio, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i134.not = icmp eq i32 %33, 0
  br i1 %tobool.i134.not, label %land.rhs46, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !165
  br label %if.end104.sink.split

land.rhs46:                                       ; preds = %folio_flags.exit.i
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %23, align 4
  %and.i.i.i123 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %and.i.i.i123, 0
  br i1 %tobool.not.i.i124, label %folio_test_dirty.exit, label %if.then.i.i125, !prof !149

if.then.i.i125:                                   ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_dirty.exit:                            ; preds = %land.rhs46
  %36 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %folio, align 4
  %38 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i126.not = icmp eq i32 %38, 0
  br i1 %tobool.i126.not, label %folio_test_dirty.exit.if.end104.sink.split_crit_edge, label %land.rhs57

folio_test_dirty.exit.if.end104.sink.split_crit_edge: ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104.sink.split

land.rhs57:                                       ; preds = %folio_test_dirty.exit
  %.b119120 = load i1, ptr @iomap_invalidate_folio.__already_done.2, align 1
  br i1 %.b119120, label %land.rhs57.if.end104.sink.split_crit_edge, label %if.then68, !prof !149

land.rhs57.if.end104.sink.split_crit_edge:        ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104.sink.split

if.then68:                                        ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_invalidate_folio.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 496, i32 noundef 9, ptr noundef null) #12
  br label %if.end104.sink.split

if.end104.sink.split:                             ; preds = %if.then68, %land.rhs57.if.end104.sink.split_crit_edge, %folio_test_dirty.exit.if.end104.sink.split_crit_edge, %folio_test_uptodate.exit.thread, %if.then.i, %folio_test_dirty.exit.i.if.end104.sink.split_crit_edge
  tail call fastcc void @iomap_page_release(ptr noundef %folio)
  br label %if.end104

if.end104:                                        ; preds = %if.end104.sink.split, %folio_test_large.exit.if.end104_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iomap_invalidatepage(ptr noundef %inode, i64 noundef %off, i64 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_invalidatepage, i32 0, i32 1), ptr blockaddress(@trace_iomap_invalidatepage, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !149

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !166
  %call42 = tail call i32 @__traceiter_iomap_invalidatepage(ptr noundef null, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !167
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !149

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_invalidatepage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_invalidatepage, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_iomap_invalidatepage.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iomap_invalidatepage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 84, ptr noundef nonnull @.str.5) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
define dso_local void @iomap_invalidatepage(ptr noundef %page, i32 noundef %offset, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call void @iomap_invalidate_folio(ptr noundef %4, i32 noundef %offset, i32 noundef %len)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_migrate_page(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i20 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %if.end.i24, label %if.then.i23, !prof !149

if.then.i23:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i22 = add i32 %7, -1
  br label %_compound_head.exit26

if.end.i24:                                       ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit26

_compound_head.exit26:                            ; preds = %if.end.i24, %if.then.i23
  %retval.0.i25 = phi i32 [ %sub.i22, %if.then.i23 ], [ %8, %if.end.i24 ]
  %9 = inttoptr i32 %retval.0.i25 to ptr
  %call2 = tail call i32 @folio_migrate_mapping(ptr noundef %mapping, ptr noundef %9, ptr noundef %4, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %_compound_head.exit26.cleanup_crit_edge

_compound_head.exit26.cleanup_crit_edge:          ; preds = %_compound_head.exit26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %_compound_head.exit26
  %10 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !149

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_private.exit:                          ; preds = %if.end
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.if.end6_crit_edge, label %if.then4

folio_test_private.exit.if.end6_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %folio_test_private.exit
  %call5 = tail call fastcc ptr @folio_detach_private(ptr noundef %4)
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %17, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i27, label %do.end5.i.i, !prof !150

if.then.i.i27:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.17) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !168
  unreachable

do.end5.i.i:                                      ; preds = %if.then4
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iomap_migrate_page, %if.then.i.i.i.i)) #12
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !154

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %9, i32 noundef 1) #12
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.81, ptr %9, i32 0, i32 4
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5, ptr %private.i, align 4
  %20 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 13, ptr noundef %9) #12
  br label %if.end6

if.end6:                                          ; preds = %folio_attach_private.exit, %folio_test_private.exit.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp7.not = icmp eq i32 %mode, 3
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @folio_migrate_copy(ptr noundef %9, ptr noundef %4) #12
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @folio_migrate_flags(ptr noundef %9, ptr noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %_compound_head.exit26.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_migrate_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @folio_detach_private(ptr noundef %folio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %private.i = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 4
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !149

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_private.exit:                          ; preds = %entry
  %5 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %folio, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.cleanup_crit_edge, label %if.end

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %2, align 4
  %and.i.i.i6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %and.i.i.i6, 0
  br i1 %tobool.not.i.i7, label %folio_clear_private.exit, label %if.then.i.i8, !prof !149

if.then.i.i8:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #12
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !150

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !171
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !154

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #12
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %folio) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %folio_test_private.exit.cleanup_crit_edge ], [ %1, %folio_put_testzero.exit.i.cleanup_crit_edge ], [ %1, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_migrate_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_migrate_flags(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_file_buffered_write(ptr nocapture noundef readonly %iocb, ptr noundef %i, ptr noundef %ops) #0 align 64 {
entry:
  %folio.i = alloca ptr, align 4
  %iter = alloca %struct.iomap_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #12
  %0 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %1 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_mapping, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %iter, align 8
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %pos, align 8
  %len = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %i, i32 0, i32 4
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  %conv = zext i32 %12 to i64
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %len, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %flags, align 8
  %call124 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp25 = icmp sgt i32 %call124, 0
  br i1 %cmp25, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %offset.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %length.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %type.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %offset4.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %length6.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %iomap_write_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset.i.i, align 8
  %17 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length.i.i, align 8
  %add.i.i = add i64 %18, %16
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.not.i.i = icmp eq i16 %20, 0
  br i1 %cmp.not.i.i, label %while.body.iomap_length.exit.i_crit_edge, label %if.then.i.i

while.body.iomap_length.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_length.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %offset4.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %offset4.i.i, align 8
  %23 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %length6.i.i, align 8
  %add7.i.i = add i64 %24, %22
  %25 = call i64 @llvm.umin.i64(i64 %add.i.i, i64 %add7.i.i) #12
  br label %iomap_length.exit.i

iomap_length.exit.i:                              ; preds = %if.then.i.i, %while.body.iomap_length.exit.i_crit_edge
  %end.0.i.i = phi i64 [ %25, %if.then.i.i ], [ %add.i.i, %while.body.iomap_length.exit.i_crit_edge ]
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %len, align 8
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pos, align 8
  %sub.i.i = sub i64 %end.0.i.i, %29
  %30 = call i64 @llvm.umin.i64(i64 %27, i64 %sub.i.i) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %iomap_length.exit.i
  %written.0.i = phi i32 [ 0, %iomap_length.exit.i ], [ %add58.i, %do.cond.i.do.body.i_crit_edge ]
  %pos.0.i = phi i64 [ %29, %iomap_length.exit.i ], [ %add.i, %do.cond.i.do.body.i_crit_edge ]
  %length.0.i = phi i64 [ %30, %iomap_length.exit.i ], [ %sub60.i, %do.cond.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %folio.i) #12
  %31 = ptrtoint ptr %folio.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %folio.i, align 4, !annotation !159
  %conv.i = trunc i64 %pos.0.i to i32
  %and.i = and i32 %conv.i, 4095
  %sub.i = sub nuw nsw i32 4096, %and.i
  %32 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count.i, align 8
  %34 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %33) #12
  %conv7.i = trunc i64 %length.0.i to i32
  %conv4130.i = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %length.0.i, i64 %conv4130.i)
  %cmp5131.i = icmp slt i64 %length.0.i, %conv4130.i
  %spec.select132.i = select i1 %cmp5131.i, i32 %conv7.i, i32 %34
  %call8133.i = call i32 @fault_in_iov_iter_readable(ptr noundef %i, i32 noundef %spec.select132.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8133.i)
  %tobool.not134.i = icmp eq i32 %call8133.i, 0
  br i1 %tobool.not134.i, label %if.end12.lr.ph.i, label %do.body.i.cleanup.thread.i_crit_edge, !prof !149

do.body.i.cleanup.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end12.lr.ph.i:                                 ; preds = %do.body.i
  %35 = lshr i64 %pos.0.i, 12
  %conv23.i = trunc i64 %35 to i32
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then52.i.if.end12.i_crit_edge, %if.end12.lr.ph.i
  %spec.select135.i = phi i32 [ %spec.select132.i, %if.end12.lr.ph.i ], [ %spec.select.i, %if.then52.i.if.end12.i_crit_edge ]
  %call13.i = call fastcc i32 @iomap_write_begin(ptr noundef nonnull %iter, i64 noundef %pos.0.i, i32 noundef %spec.select135.i, ptr noundef nonnull %folio.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end22.i, label %if.end12.i.cleanup.thread.i_crit_edge, !prof !149

if.end12.i.cleanup.thread.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end22.i:                                       ; preds = %if.end12.i
  %36 = ptrtoint ptr %folio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %folio.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %39, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.3) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %if.end22.i
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %37, align 4
  %42 = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.folio_file_page.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_file_page.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_file_page.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %37, i32 1, i32 1, i32 0, i32 2
  %43 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %compound_nr.i.i.i.i, align 4
  %phi.bo.i.i = add i32 %44, -1
  br label %folio_file_page.exit.i

folio_file_page.exit.i:                           ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_file_page.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %phi.bo.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_file_page.exit.i_crit_edge ]
  %and.i.i = and i32 %retval.0.i.i.i.i, %conv23.i
  %add.ptr.i.i = getelementptr %struct.page, ptr %37, i32 %and.i.i
  %45 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iter, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_mapping.i, align 8
  %i_mmap_writable.i.i = getelementptr inbounds %struct.address_space, ptr %48, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_mmap_writable.i.i, i32 noundef 4) #12
  %49 = ptrtoint ptr %i_mmap_writable.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %i_mmap_writable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i.i = icmp slt i32 %50, 1
  br i1 %cmp.i.i, label %folio_file_page.exit.i.if.end28.i_crit_edge, label %if.then27.i

folio_file_page.exit.i.if.end28.i_crit_edge:      ; preds = %folio_file_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then27.i:                                      ; preds = %folio_file_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @flush_dcache_page(ptr noundef %add.ptr.i.i) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %folio_file_page.exit.i.if.end28.i_crit_edge
  %call29.i = call i32 @copy_page_from_iter_atomic(ptr noundef %add.ptr.i.i, i32 noundef %and.i, i32 noundef %spec.select135.i, ptr noundef %i) #12
  %call30.i = call fastcc i32 @iomap_write_end(ptr noundef nonnull %iter, i64 noundef %pos.0.i, i32 noundef %spec.select135.i, i32 noundef %call29.i, ptr noundef %37) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call29.i, i32 %call30.i)
  %cmp31.not.i = icmp eq i32 %call29.i, %call30.i
  br i1 %cmp31.not.i, label %if.end28.i.if.end41.i_crit_edge, label %if.then39.i, !prof !149

if.end28.i.if.end41.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub40.i = sub i32 %call29.i, %call30.i
  call void @iov_iter_revert(ptr noundef %i, i32 noundef %sub40.i) #12
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end28.i.if.end41.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 799, i32 noundef 0) #12
  %call.i.i = call i32 @__cond_resched() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp44.i = icmp eq i32 %call30.i, 0
  br i1 %cmp44.i, label %if.then52.i, label %do.cond.i, !prof !150

if.then52.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool53.not.i = icmp eq i32 %call29.i, 0
  %spec.select117.i = select i1 %tobool53.not.i, i32 %spec.select135.i, i32 %call29.i
  %conv4.i = zext i32 %spec.select117.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %length.0.i, i64 %conv4.i)
  %cmp5.i = icmp slt i64 %length.0.i, %conv4.i
  %spec.select.i = select i1 %cmp5.i, i32 %conv7.i, i32 %spec.select117.i
  %call8.i = call i32 @fault_in_iov_iter_readable(ptr noundef %i, i32 noundef %spec.select.i) #12
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.then52.i.if.end12.i_crit_edge, label %if.then52.i.cleanup.thread.i_crit_edge, !prof !149

if.then52.i.cleanup.thread.i_crit_edge:           ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.then52.i.if.end12.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

cleanup.thread.i:                                 ; preds = %if.then52.i.cleanup.thread.i_crit_edge, %if.end12.i.cleanup.thread.i_crit_edge, %do.body.i.cleanup.thread.i_crit_edge
  %status.0.ph.i = phi i32 [ %call13.i, %if.end12.i.cleanup.thread.i_crit_edge ], [ -14, %if.then52.i.cleanup.thread.i_crit_edge ], [ -14, %do.body.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %folio.i) #12
  br label %iomap_write_iter.exit

do.cond.i:                                        ; preds = %if.end41.i
  %conv57.i = sext i32 %call30.i to i64
  %add.i = add i64 %pos.0.i, %conv57.i
  %add58.i = add i32 %call30.i, %written.0.i
  %sub60.i = sub i64 %length.0.i, %conv57.i
  %51 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iter, align 8
  %i_mapping62.i = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %i_mapping62.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_mapping62.i, align 8
  call void @balance_dirty_pages_ratelimited(ptr noundef %54) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %folio.i) #12
  %55 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool68.not.i = icmp eq i32 %56, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub60.i)
  %tobool69.not.i = icmp eq i64 %sub60.i, 0
  %or.cond.i = select i1 %tobool68.not.i, i1 true, i1 %tobool69.not.i
  br i1 %or.cond.i, label %do.cond.i.iomap_write_iter.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.cond.i.iomap_write_iter.exit_crit_edge:        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_write_iter.exit

iomap_write_iter.exit:                            ; preds = %do.cond.i.iomap_write_iter.exit_crit_edge, %cleanup.thread.i
  %status.0126.i = phi i32 [ %status.0.ph.i, %cleanup.thread.i ], [ %call30.i, %do.cond.i.iomap_write_iter.exit_crit_edge ]
  %written.1125.i = phi i32 [ %written.0.i, %cleanup.thread.i ], [ %add58.i, %do.cond.i.iomap_write_iter.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.1125.i)
  %tobool70.not.i = icmp eq i32 %written.1125.i, 0
  %status.0.written.1.i = select i1 %tobool70.not.i, i32 %status.0126.i, i32 %written.1125.i
  %conv75.i = sext i32 %status.0.written.1.i to i64
  %57 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv75.i, ptr %processed, align 8
  %call1 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %iomap_write_iter.exit.while.body_crit_edge, label %iomap_write_iter.exit.while.end_crit_edge

iomap_write_iter.exit.while.end_crit_edge:        ; preds = %iomap_write_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

iomap_write_iter.exit.while.body_crit_edge:       ; preds = %iomap_write_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %iomap_write_iter.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %call1.lcssa = phi i32 [ %call124, %entry.while.end_crit_edge ], [ %call1, %iomap_write_iter.exit.while.end_crit_edge ]
  %58 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %pos, align 8
  %60 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %61)
  %cmp6 = icmp eq i64 %59, %61
  %sub = sub i64 %59, %61
  %conv10 = trunc i64 %sub to i32
  %retval.0 = select i1 %cmp6, i32 %call1.lcssa, i32 %conv10
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_file_unshare(ptr noundef %inode, i64 noundef %pos, i64 noundef %len, ptr noundef %ops) #0 align 64 {
entry:
  %folio.i = alloca ptr, align 4
  %iter = alloca %struct.iomap_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #12
  %0 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %1 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inode, ptr %iter, align 8
  %pos2 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %pos2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %pos, ptr %pos2, align 8
  %len3 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %3 = ptrtoint ptr %len3 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %len, ptr %len3, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 129, ptr %flags, align 8
  %call7 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, 0
  br i1 %cmp8, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %type.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %offset.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %length.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %offset4.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %length6.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %flags.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 4
  %iomap.i.i.sroa.gep = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 3
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %iomap_unshare_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %5 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not.i.i = icmp eq i16 %6, 0
  %7 = ptrtoint ptr %pos2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos2, align 8
  %9 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset.i.i, align 8
  %11 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %length.i.i, align 8
  %add.i.i = add i64 %12, %10
  br i1 %cmp.not.i.i, label %while.body.iomap_length.exit.i_crit_edge, label %if.then.i.i

while.body.iomap_length.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_length.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %offset4.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %offset4.i.i, align 8
  %15 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %length6.i.i, align 8
  %add7.i.i = add i64 %16, %14
  %17 = call i64 @llvm.umin.i64(i64 %add.i.i, i64 %add7.i.i) #12
  br label %iomap_length.exit.i

iomap_length.exit.i:                              ; preds = %if.then.i.i, %while.body.iomap_length.exit.i_crit_edge
  %end.0.i.i = phi i64 [ %17, %if.then.i.i ], [ %add.i.i, %while.body.iomap_length.exit.i_crit_edge ]
  %18 = ptrtoint ptr %len3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %len3, align 8
  %sub.i.i = sub i64 %end.0.i.i, %8
  %20 = call i64 @llvm.umin.i64(i64 %19, i64 %sub.i.i) #12
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags.i, align 2
  %23 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i, label %iomap_length.exit.i.iomap_unshare_iter.exit_crit_edge, label %if.end.i

iomap_length.exit.i.iomap_unshare_iter.exit_crit_edge: ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_unshare_iter.exit

if.end.i:                                         ; preds = %iomap_length.exit.i
  %24 = ptrtoint ptr %iomap.i.i.sroa.gep to i32
  call void @__asan_load2_noabort(i32 %24)
  %iomap.i.i.sroa.gep.val = load i16, ptr %iomap.i.i.sroa.gep, align 8
  %25 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %srcmap.i.i.sroa.gep.val = load i16, ptr %type.i.i, align 8
  %26 = select i1 %cmp.not.i.i, i16 %iomap.i.i.sroa.gep.val, i16 %srcmap.i.i.sroa.gep.val
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i16 %26, label %if.end.i.do.body.i_crit_edge [
    i16 0, label %if.end.i.iomap_unshare_iter.exit_crit_edge
    i16 3, label %if.end.i.iomap_unshare_iter.exit_crit_edge24
  ]

if.end.i.iomap_unshare_iter.exit_crit_edge24:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_unshare_iter.exit

if.end.i.iomap_unshare_iter.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_unshare_iter.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond87.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %written.0.i = phi i64 [ %add82.i, %do.cond87.i.do.body.i_crit_edge ], [ 0, %if.end.i.do.body.i_crit_edge ]
  %length.0.i = phi i64 [ %sub84.i, %do.cond87.i.do.body.i_crit_edge ], [ %20, %if.end.i.do.body.i_crit_edge ]
  %pos.0.i = phi i64 [ %add.i, %do.cond87.i.do.body.i_crit_edge ], [ %8, %if.end.i.do.body.i_crit_edge ]
  %conv12.i = trunc i64 %pos.0.i to i32
  %and13.i = and i32 %conv12.i, 4095
  %sub.i = sub nuw nsw i32 4096, %and13.i
  %conv14.i = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %length.0.i, i64 %conv14.i)
  %cmp15.i = icmp sgt i64 %length.0.i, %conv14.i
  %extract.t123.i = trunc i64 %length.0.i to i32
  %cond.off0.i = select i1 %cmp15.i, i32 %sub.i, i32 %extract.t123.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %folio.i) #12
  %28 = ptrtoint ptr %folio.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %folio.i, align 4, !annotation !159
  %call18.i = call fastcc i32 @iomap_write_begin(ptr noundef nonnull %iter, i64 noundef %pos.0.i, i32 noundef %cond.off0.i, ptr noundef nonnull %folio.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end24.i, label %if.then22.i, !prof !149

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv23.i = sext i32 %call18.i to i64
  br label %cleanup.thread.i

if.end24.i:                                       ; preds = %do.body.i
  %29 = ptrtoint ptr %folio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %folio.i, align 4
  %call25.i = call fastcc i32 @iomap_write_end(ptr noundef nonnull %iter, i64 noundef %pos.0.i, i32 noundef %cond.off0.i, i32 noundef %cond.off0.i, ptr noundef %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %land.rhs.i, label %do.cond87.i

land.rhs.i:                                       ; preds = %if.end24.i
  %.b124.i = load i1, ptr @iomap_unshare_iter.__already_done, align 1
  br i1 %.b124.i, label %land.rhs.i.cleanup.thread.i_crit_edge, label %if.then43.i, !prof !149

land.rhs.i.cleanup.thread.i_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.then43.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_unshare_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 867, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then43.i, %land.rhs.i.cleanup.thread.i_crit_edge, %if.then22.i
  %retval.1.ph.i = phi i64 [ -5, %land.rhs.i.cleanup.thread.i_crit_edge ], [ -5, %if.then43.i ], [ %conv23.i, %if.then22.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %folio.i) #12
  br label %iomap_unshare_iter.exit

do.cond87.i:                                      ; preds = %if.end24.i
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 870, i32 noundef 0) #12
  %call.i.i = call i32 @__cond_resched() #12
  %conv80.i = sext i32 %call25.i to i64
  %add.i = add i64 %pos.0.i, %conv80.i
  %add82.i = add i64 %written.0.i, %conv80.i
  %sub84.i = sub i64 %length.0.i, %conv80.i
  %31 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iter, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping.i, align 8
  call void @balance_dirty_pages_ratelimited(ptr noundef %34) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %folio.i) #12
  %tobool88.not.i = icmp eq i64 %sub84.i, 0
  br i1 %tobool88.not.i, label %do.cond87.i.iomap_unshare_iter.exit_crit_edge, label %do.cond87.i.do.body.i_crit_edge

do.cond87.i.do.body.i_crit_edge:                  ; preds = %do.cond87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.cond87.i.iomap_unshare_iter.exit_crit_edge:    ; preds = %do.cond87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_unshare_iter.exit

iomap_unshare_iter.exit:                          ; preds = %do.cond87.i.iomap_unshare_iter.exit_crit_edge, %cleanup.thread.i, %if.end.i.iomap_unshare_iter.exit_crit_edge, %if.end.i.iomap_unshare_iter.exit_crit_edge24, %iomap_length.exit.i.iomap_unshare_iter.exit_crit_edge
  %retval.2.i = phi i64 [ %20, %iomap_length.exit.i.iomap_unshare_iter.exit_crit_edge ], [ %20, %if.end.i.iomap_unshare_iter.exit_crit_edge ], [ %20, %if.end.i.iomap_unshare_iter.exit_crit_edge24 ], [ %retval.1.ph.i, %cleanup.thread.i ], [ %add82.i, %do.cond87.i.iomap_unshare_iter.exit_crit_edge ]
  %35 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %retval.2.i, ptr %processed, align 8
  %call = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %iomap_unshare_iter.exit.while.body_crit_edge, label %iomap_unshare_iter.exit.while.end_crit_edge

iomap_unshare_iter.exit.while.end_crit_edge:      ; preds = %iomap_unshare_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

iomap_unshare_iter.exit.while.body_crit_edge:     ; preds = %iomap_unshare_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %iomap_unshare_iter.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %call.lcssa = phi i32 [ %call7, %entry.while.end_crit_edge ], [ %call, %iomap_unshare_iter.exit.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #12
  ret i32 %call.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_zero_range(ptr noundef %inode, i64 noundef %pos, i64 noundef %len, ptr noundef writeonly %did_zero, ptr noundef %ops) #0 align 64 {
entry:
  %folio.i = alloca ptr, align 4
  %iter = alloca %struct.iomap_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #12
  %0 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %1 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inode, ptr %iter, align 8
  %pos2 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %pos2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %pos, ptr %pos2, align 8
  %len3 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %3 = ptrtoint ptr %len3 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %len, ptr %len3, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %flags, align 8
  %call17 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %type.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %offset.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %length.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %offset4.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %length6.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %iomap.i.i.sroa.gep = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 3
  %tobool76.not.i = icmp eq ptr %did_zero, null
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %iomap_zero_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %5 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not.i.i = icmp eq i16 %6, 0
  %7 = ptrtoint ptr %pos2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos2, align 8
  %9 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset.i.i, align 8
  %11 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %length.i.i, align 8
  %add.i.i = add i64 %12, %10
  br i1 %cmp.not.i.i, label %while.body.iomap_length.exit.i_crit_edge, label %if.then.i.i

while.body.iomap_length.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_length.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %offset4.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %offset4.i.i, align 8
  %15 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %length6.i.i, align 8
  %add7.i.i = add i64 %16, %14
  %17 = call i64 @llvm.umin.i64(i64 %add.i.i, i64 %add7.i.i) #12
  br label %iomap_length.exit.i

iomap_length.exit.i:                              ; preds = %if.then.i.i, %while.body.iomap_length.exit.i_crit_edge
  %end.0.i.i = phi i64 [ %17, %if.then.i.i ], [ %add.i.i, %while.body.iomap_length.exit.i_crit_edge ]
  %18 = ptrtoint ptr %len3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %len3, align 8
  %sub.i.i = sub i64 %end.0.i.i, %8
  %20 = call i64 @llvm.umin.i64(i64 %19, i64 %sub.i.i) #12
  %21 = ptrtoint ptr %iomap.i.i.sroa.gep to i32
  call void @__asan_load2_noabort(i32 %21)
  %iomap.i.i.sroa.gep.val = load i16, ptr %iomap.i.i.sroa.gep, align 8
  %22 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %srcmap.i.i.sroa.gep.val = load i16, ptr %type.i.i, align 8
  %23 = select i1 %cmp.not.i.i, i16 %iomap.i.i.sroa.gep.val, i16 %srcmap.i.i.sroa.gep.val
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %23, label %iomap_length.exit.i.do.body.i_crit_edge [
    i16 0, label %iomap_length.exit.i.iomap_zero_iter.exit_crit_edge
    i16 3, label %iomap_length.exit.i.iomap_zero_iter.exit_crit_edge69
  ]

iomap_length.exit.i.iomap_zero_iter.exit_crit_edge69: ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_zero_iter.exit

iomap_length.exit.i.iomap_zero_iter.exit_crit_edge: ; preds = %iomap_length.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_zero_iter.exit

iomap_length.exit.i.do.body.i_crit_edge:          ; preds = %iomap_length.exit.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond82.i.do.body.i_crit_edge, %iomap_length.exit.i.do.body.i_crit_edge
  %length.0.i = phi i64 [ %sub73.i, %do.cond82.i.do.body.i_crit_edge ], [ %20, %iomap_length.exit.i.do.body.i_crit_edge ]
  %written.0.i = phi i64 [ %add75.i, %do.cond82.i.do.body.i_crit_edge ], [ 0, %iomap_length.exit.i.do.body.i_crit_edge ]
  %pos.0.i = phi i64 [ %add.i, %do.cond82.i.do.body.i_crit_edge ], [ %8, %iomap_length.exit.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %folio.i) #12
  %25 = ptrtoint ptr %folio.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %folio.i, align 4, !annotation !159
  %26 = call i64 @llvm.umin.i64(i64 %length.0.i, i64 4294967295) #12
  %27 = trunc i64 %26 to i32
  %call11.i = call fastcc i32 @iomap_write_begin(ptr noundef nonnull %iter, i64 noundef %pos.0.i, i32 noundef %27, ptr noundef nonnull %folio.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.then12.i

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv13.i = sext i32 %call11.i to i64
  br label %cleanup.thread.i

if.end14.i:                                       ; preds = %do.body.i
  %conv15.i = trunc i64 %pos.0.i to i32
  %28 = ptrtoint ptr %folio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %folio.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.3) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %if.end14.i
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %29, align 4
  %34 = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = getelementptr %struct.page, ptr %29, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %37 to i32
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %sub.i = add i32 %shl.i.i, -1
  %and.i = and i32 %sub.i, %conv15.i
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.i.not.i.i.i.i123.i = icmp eq i32 %39, -1
  br i1 %cmp.i.not.i.i.i.i123.i, label %if.then.i.i.i.i124.i, label %PageHead.exit.i.i.i126.i, !prof !150

if.then.i.i.i.i124.i:                             ; preds = %folio_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.3) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i126.i:                         ; preds = %folio_size.exit.i
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %29, align 4
  %42 = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i125.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i125.i, label %PageHead.exit.i.i.i126.i.folio_size.exit132.i_crit_edge, label %if.end.i.i.i129.i

PageHead.exit.i.i.i126.i.folio_size.exit132.i_crit_edge: ; preds = %PageHead.exit.i.i.i126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit132.i

if.end.i.i.i129.i:                                ; preds = %PageHead.exit.i.i.i126.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = getelementptr %struct.page, ptr %29, i32 1, i32 1
  %compound_order.i.i.i127.i = getelementptr inbounds %struct.anon.69, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %compound_order.i.i.i127.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %compound_order.i.i.i127.i, align 1
  %conv.i.i.i128.i = zext i8 %45 to i32
  br label %folio_size.exit132.i

folio_size.exit132.i:                             ; preds = %if.end.i.i.i129.i, %PageHead.exit.i.i.i126.i.folio_size.exit132.i_crit_edge
  %retval.0.i.i.i130.i = phi i32 [ %conv.i.i.i128.i, %if.end.i.i.i129.i ], [ 0, %PageHead.exit.i.i.i126.i.folio_size.exit132.i_crit_edge ]
  %shl.i131.i = shl i32 4096, %retval.0.i.i.i130.i
  %sub18.i = sub i32 %shl.i131.i, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %27)
  %cmp19.i = icmp ult i32 %sub18.i, %27
  br i1 %cmp19.i, label %if.then21.i, label %folio_size.exit132.i.if.end24.i_crit_edge

folio_size.exit132.i.if.end24.i_crit_edge:        ; preds = %folio_size.exit132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then21.i:                                      ; preds = %folio_size.exit132.i
  %46 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp.i.not.i.i.i.i133.i = icmp eq i32 %47, -1
  br i1 %cmp.i.not.i.i.i.i133.i, label %if.then.i.i.i.i134.i, label %PageHead.exit.i.i.i136.i, !prof !150

if.then.i.i.i.i134.i:                             ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.3) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i136.i:                         ; preds = %if.then21.i
  %48 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %29, align 4
  %50 = and i32 %49, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i135.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i135.i, label %PageHead.exit.i.i.i136.i.folio_size.exit142.i_crit_edge, label %if.end.i.i.i139.i

PageHead.exit.i.i.i136.i.folio_size.exit142.i_crit_edge: ; preds = %PageHead.exit.i.i.i136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit142.i

if.end.i.i.i139.i:                                ; preds = %PageHead.exit.i.i.i136.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = getelementptr %struct.page, ptr %29, i32 1, i32 1
  %compound_order.i.i.i137.i = getelementptr inbounds %struct.anon.69, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %compound_order.i.i.i137.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %compound_order.i.i.i137.i, align 1
  %conv.i.i.i138.i = zext i8 %53 to i32
  br label %folio_size.exit142.i

folio_size.exit142.i:                             ; preds = %if.end.i.i.i139.i, %PageHead.exit.i.i.i136.i.folio_size.exit142.i_crit_edge
  %retval.0.i.i.i140.i = phi i32 [ %conv.i.i.i138.i, %if.end.i.i.i139.i ], [ 0, %PageHead.exit.i.i.i136.i.folio_size.exit142.i_crit_edge ]
  %shl.i141.i = shl i32 4096, %retval.0.i.i.i140.i
  %sub23.i = sub i32 %shl.i141.i, %and.i
  br label %if.end24.i

if.end24.i:                                       ; preds = %folio_size.exit142.i, %folio_size.exit132.i.if.end24.i_crit_edge
  %bytes.0.i = phi i32 [ %sub23.i, %folio_size.exit142.i ], [ %27, %folio_size.exit132.i.if.end24.i_crit_edge ]
  %add.i143.i = add i32 %bytes.0.i, %and.i
  call void @zero_user_segments(ptr noundef %29, i32 noundef %and.i, i32 noundef %add.i143.i, i32 noundef 0, i32 noundef 0) #12
  call void @folio_mark_accessed(ptr noundef %29) #12
  %call25.i = call fastcc i32 @iomap_write_end(ptr noundef nonnull %iter, i64 noundef %pos.0.i, i32 noundef %bytes.0.i, i32 noundef %bytes.0.i, ptr noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %land.rhs.i, label %if.end70.i

land.rhs.i:                                       ; preds = %if.end24.i
  %.b119.i = load i1, ptr @iomap_zero_iter.__already_done, align 1
  br i1 %.b119.i, label %land.rhs.i.cleanup.thread.i_crit_edge, label %if.then36.i, !prof !149

land.rhs.i.cleanup.thread.i_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.then36.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_zero_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 929, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.thread.i

if.end70.i:                                       ; preds = %if.end24.i
  %conv71.i = zext i32 %call25.i to i64
  %add.i = add i64 %pos.0.i, %conv71.i
  %sub73.i = sub i64 %length.0.i, %conv71.i
  %add75.i = add i64 %written.0.i, %conv71.i
  br i1 %tobool76.not.i, label %if.end70.i.do.cond82.i_crit_edge, label %if.then77.i

if.end70.i.do.cond82.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond82.i

if.then77.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %did_zero to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %did_zero, align 1
  br label %do.cond82.i

cleanup.thread.i:                                 ; preds = %if.then36.i, %land.rhs.i.cleanup.thread.i_crit_edge, %if.then12.i
  %retval.1.ph.i = phi i64 [ -5, %land.rhs.i.cleanup.thread.i_crit_edge ], [ -5, %if.then36.i ], [ %conv13.i, %if.then12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %folio.i) #12
  br label %iomap_zero_iter.exit

do.cond82.i:                                      ; preds = %if.then77.i, %if.end70.i.do.cond82.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %folio.i) #12
  %cmp83.i = icmp sgt i64 %sub73.i, 0
  br i1 %cmp83.i, label %do.cond82.i.do.body.i_crit_edge, label %do.cond82.i.iomap_zero_iter.exit_crit_edge

do.cond82.i.iomap_zero_iter.exit_crit_edge:       ; preds = %do.cond82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_zero_iter.exit

do.cond82.i.do.body.i_crit_edge:                  ; preds = %do.cond82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

iomap_zero_iter.exit:                             ; preds = %do.cond82.i.iomap_zero_iter.exit_crit_edge, %cleanup.thread.i, %iomap_length.exit.i.iomap_zero_iter.exit_crit_edge, %iomap_length.exit.i.iomap_zero_iter.exit_crit_edge69
  %retval.2.i = phi i64 [ %20, %iomap_length.exit.i.iomap_zero_iter.exit_crit_edge ], [ %20, %iomap_length.exit.i.iomap_zero_iter.exit_crit_edge69 ], [ %retval.1.ph.i, %cleanup.thread.i ], [ %add75.i, %do.cond82.i.iomap_zero_iter.exit_crit_edge ]
  %55 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %retval.2.i, ptr %processed, align 8
  %call = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %iomap_zero_iter.exit.while.body_crit_edge, label %iomap_zero_iter.exit.while.end_crit_edge

iomap_zero_iter.exit.while.end_crit_edge:         ; preds = %iomap_zero_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

iomap_zero_iter.exit.while.body_crit_edge:        ; preds = %iomap_zero_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %iomap_zero_iter.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %call.lcssa = phi i32 [ %call17, %entry.while.end_crit_edge ], [ %call, %iomap_zero_iter.exit.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #12
  ret i32 %call.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_truncate_page(ptr noundef %inode, i64 noundef %pos, ptr noundef %did_zero, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %sub = add i32 %shl.i, -1
  %2 = trunc i64 %pos to i32
  %conv1 = and i32 %sub, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool.not = icmp eq i32 %conv1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub2 = sub i32 %shl.i, %conv1
  %conv3 = zext i32 %sub2 to i64
  %call4 = tail call i32 @iomap_zero_range(ptr noundef %inode, i64 noundef %pos, i64 noundef %conv3, ptr noundef %did_zero, ptr noundef %ops)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_page_mkwrite(ptr nocapture noundef readonly %vmf, ptr noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.iomap_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %iter) #12
  %0 = call ptr @memset(ptr %iter, i32 0, i32 136)
  %1 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %iter, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9, ptr %flags, align 8
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page, align 4
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %13, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %10 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %14, %if.end.i ]
  %15 = inttoptr i32 %retval.0.i to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 777) #12
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #12
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and.i.i4.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i25_crit_edge

folio_flags.exit.i.i.if.then.i25_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i25

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #12, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.folio_lock.exit_crit_edge, label %folio_trylock.exit.i.if.then.i25_crit_edge

folio_trylock.exit.i.if.then.i25_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i25

folio_trylock.exit.i.folio_lock.exit_crit_edge:   ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_lock.exit

if.then.i25:                                      ; preds = %folio_trylock.exit.i.if.then.i25_crit_edge, %folio_flags.exit.i.i.if.then.i25_crit_edge
  tail call void @__folio_lock(ptr noundef %15) #12
  br label %folio_lock.exit

folio_lock.exit:                                  ; preds = %if.then.i25, %folio_trylock.exit.i.folio_lock.exit_crit_edge
  %22 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iter, align 8
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %23) #12
  %24 = lshr i64 %call.i, 12
  %conv.i = trunc i64 %24 to i32
  %conv1.i = trunc i64 %call.i to i32
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %folio_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %folio_lock.exit
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %15, align 4
  %29 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.i27 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.i27, label %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %32 to i32
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %sub.i28 = add i32 %shl.i.i, -1
  %and.i29 = and i32 %sub.i28, %conv1.i
  %mapping.i = getelementptr inbounds %struct.anon.81, ptr %15, i32 0, i32 2
  %33 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mapping.i, align 4
  %tobool.not.i30 = icmp eq ptr %34, null
  br i1 %tobool.not.i30, label %folio_size.exit.i.out_unlock.thread_crit_edge, label %if.end.i31

folio_size.exit.i.out_unlock.thread_crit_edge:    ; preds = %folio_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.thread

if.end.i31:                                       ; preds = %folio_size.exit.i
  %index.i.i = getelementptr inbounds %struct.anon.81, ptr %15, i32 0, i32 3
  %35 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i, align 4
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i.i.i.i24.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i.i.i.i24.i, label %if.then.i.i.i.i25.i, label %PageHead.exit.i.i.i27.i, !prof !150

if.then.i.i.i.i25.i:                              ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i27.i:                          ; preds = %if.end.i31
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %15, align 4
  %41 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i26.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i26.i, label %PageHead.exit.i.i.i27.i.folio_next_index.exit.i_crit_edge, label %if.end.i.i.i28.i

PageHead.exit.i.i.i27.i.folio_next_index.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_next_index.exit.i

if.end.i.i.i28.i:                                 ; preds = %PageHead.exit.i.i.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %15, i32 1, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %folio_next_index.exit.i

folio_next_index.exit.i:                          ; preds = %if.end.i.i.i28.i, %PageHead.exit.i.i.i27.i.folio_next_index.exit.i_crit_edge
  %retval.0.i.i.i29.i = phi i32 [ %43, %if.end.i.i.i28.i ], [ 1, %PageHead.exit.i.i.i27.i.folio_next_index.exit.i_crit_edge ]
  %add.i.i = add i32 %36, -1
  %sub4.i = add i32 %add.i.i, %retval.0.i.i.i29.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %sub4.i, %conv.i
  br i1 %cmp.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %folio_next_index.exit.i
  %44 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i.not.i.i.i.i30.i = icmp eq i32 %45, -1
  br i1 %cmp.i.not.i.i.i.i30.i, label %if.then.i.i.i.i31.i, label %PageHead.exit.i.i.i33.i, !prof !150

if.then.i.i.i.i31.i:                              ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i33.i:                          ; preds = %if.then6.i
  %46 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %15, align 4
  %48 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i.i32.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i.i32.i, label %PageHead.exit.i.i.i33.i.folio_size.exit39.i_crit_edge, label %if.end.i.i.i36.i

PageHead.exit.i.i.i33.i.folio_size.exit39.i_crit_edge: ; preds = %PageHead.exit.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit39.i

if.end.i.i.i36.i:                                 ; preds = %PageHead.exit.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = getelementptr %struct.page, ptr %15, i32 1, i32 1
  %compound_order.i.i.i34.i = getelementptr inbounds %struct.anon.69, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %compound_order.i.i.i34.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %compound_order.i.i.i34.i, align 1
  %conv.i.i.i35.i = zext i8 %51 to i32
  br label %folio_size.exit39.i

folio_size.exit39.i:                              ; preds = %if.end.i.i.i36.i, %PageHead.exit.i.i.i33.i.folio_size.exit39.i_crit_edge
  %retval.0.i.i.i37.i = phi i32 [ %conv.i.i.i35.i, %if.end.i.i.i36.i ], [ 0, %PageHead.exit.i.i.i33.i.folio_size.exit39.i_crit_edge ]
  %shl.i38.i = shl i32 4096, %retval.0.i.i.i37.i
  br label %folio_mkwrite_check_truncate.exit

if.end8.i:                                        ; preds = %folio_next_index.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv.i)
  %cmp10.i = icmp ugt i32 %36, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool12.not.i = icmp eq i32 %and.i29, 0
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %tobool12.not.i
  br i1 %or.cond.i, label %if.end8.i.out_unlock.thread_crit_edge, label %if.end8.i.folio_mkwrite_check_truncate.exit_crit_edge

if.end8.i.folio_mkwrite_check_truncate.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_mkwrite_check_truncate.exit

if.end8.i.out_unlock.thread_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.thread

out_unlock.thread:                                ; preds = %if.end8.i.out_unlock.thread_crit_edge, %folio_size.exit.i.out_unlock.thread_crit_edge
  tail call void @folio_unlock(ptr noundef %15) #12
  br label %cleanup

folio_mkwrite_check_truncate.exit:                ; preds = %if.end8.i.folio_mkwrite_check_truncate.exit_crit_edge, %folio_size.exit39.i
  %retval.0.i32 = phi i32 [ %shl.i38.i, %folio_size.exit39.i ], [ %and.i29, %if.end8.i.folio_mkwrite_check_truncate.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i32)
  %cmp = icmp slt i32 %retval.0.i32, 0
  br i1 %cmp, label %folio_mkwrite_check_truncate.exit.out_unlock_crit_edge, label %if.end

folio_mkwrite_check_truncate.exit.out_unlock_crit_edge: ; preds = %folio_mkwrite_check_truncate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end:                                           ; preds = %folio_mkwrite_check_truncate.exit
  %52 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %53 to i64
  %shl.i.i34 = shl nuw nsw i64 %conv.i.i, 12
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %shl.i.i34, ptr %pos, align 8
  %conv50 = zext i32 %retval.0.i32 to i64
  %len = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %55 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv50, ptr %len, align 8
  %call552 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call552)
  %cmp653 = icmp sgt i32 %call552, 0
  br i1 %cmp653, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %offset.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %length.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %type.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %offset4.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %length6.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %flags.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 4
  %iomap.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %iomap_folio_mkwrite_iter.exit.while.body_crit_edge, %while.body.lr.ph
  %56 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %offset.i.i, align 8
  %58 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %length.i.i, align 8
  %add.i.i35 = add i64 %59, %57
  %60 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp.not.i.i = icmp eq i16 %61, 0
  br i1 %cmp.not.i.i, label %while.body.iomap_length.exit.i_crit_edge, label %if.then.i.i

while.body.iomap_length.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_length.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %offset4.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %offset4.i.i, align 8
  %64 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %length6.i.i, align 8
  %add7.i.i = add i64 %65, %63
  %66 = call i64 @llvm.umin.i64(i64 %add.i.i35, i64 %add7.i.i) #12
  br label %iomap_length.exit.i

iomap_length.exit.i:                              ; preds = %if.then.i.i, %while.body.iomap_length.exit.i_crit_edge
  %end.0.i.i = phi i64 [ %66, %if.then.i.i ], [ %add.i.i35, %while.body.iomap_length.exit.i_crit_edge ]
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %len, align 8
  %69 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %pos, align 8
  %sub.i.i = sub i64 %end.0.i.i, %70
  %71 = call i64 @llvm.umin.i64(i64 %68, i64 %sub.i.i) #12
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %flags.i, align 2
  %74 = and i16 %73, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool.not.i36 = icmp eq i16 %74, 0
  br i1 %tobool.not.i36, label %if.else.i, label %if.then.i38

if.then.i38:                                      ; preds = %iomap_length.exit.i
  %conv1.i37 = trunc i64 %71 to i32
  %call3.i = call i32 @__block_write_begin_int(ptr noundef %15, i64 noundef %70, i32 noundef %conv1.i37, ptr noundef null, ptr noundef %iomap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i39, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #14
  %conv6.i = sext i32 %call3.i to i64
  br label %iomap_folio_mkwrite_iter.exit

if.end.i39:                                       ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = call i32 @block_commit_write(ptr noundef %15, i32 noundef 0, i32 noundef %conv1.i37) #12
  br label %iomap_folio_mkwrite_iter.exit

if.else.i:                                        ; preds = %iomap_length.exit.i
  %75 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i40 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i40)
  %tobool.not.i.i.i41 = icmp eq i32 %and.i.i.i.i40, 0
  br i1 %tobool.not.i.i.i41, label %folio_flags.exit.i.i43, label %if.then.i.i.i42, !prof !149

if.then.i.i.i42:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.10) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_flags.exit.i.i43:                           ; preds = %if.else.i
  %77 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %15, align 4
  %79 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i, label %land.rhs.i, label %folio_test_uptodate.exit.thread.i

folio_test_uptodate.exit.thread.i:                ; preds = %folio_flags.exit.i.i43
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !165
  br label %if.end41.i

land.rhs.i:                                       ; preds = %folio_flags.exit.i.i43
  %.b63.i = load i1, ptr @iomap_folio_mkwrite_iter.__already_done, align 1
  br i1 %.b63.i, label %land.rhs.i.if.end41.i_crit_edge, label %if.then19.i, !prof !149

land.rhs.i.if.end41.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then19.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_folio_mkwrite_iter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 987, i32 noundef 9, ptr noundef null) #12
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then19.i, %land.rhs.i.if.end41.i_crit_edge, %folio_test_uptodate.exit.thread.i
  %call49.i = call zeroext i1 @folio_mark_dirty(ptr noundef %15) #12
  br label %iomap_folio_mkwrite_iter.exit

iomap_folio_mkwrite_iter.exit:                    ; preds = %if.end41.i, %if.end.i39, %if.then5.i
  %retval.0.i44 = phi i64 [ %conv6.i, %if.then5.i ], [ %71, %if.end41.i ], [ %71, %if.end.i39 ]
  %80 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %retval.0.i44, ptr %processed, align 8
  %call5 = call i32 @iomap_iter(ptr noundef nonnull %iter, ptr noundef %ops) #12
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %iomap_folio_mkwrite_iter.exit.while.body_crit_edge, label %iomap_folio_mkwrite_iter.exit.while.end_crit_edge

iomap_folio_mkwrite_iter.exit.while.end_crit_edge: ; preds = %iomap_folio_mkwrite_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

iomap_folio_mkwrite_iter.exit.while.body_crit_edge: ; preds = %iomap_folio_mkwrite_iter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %iomap_folio_mkwrite_iter.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %call5.lcssa = phi i32 [ %call552, %if.end.while.end_crit_edge ], [ %call5, %iomap_folio_mkwrite_iter.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.lcssa)
  %cmp9 = icmp slt i32 %call5.lcssa, 0
  br i1 %cmp9, label %while.end.out_unlock_crit_edge, label %if.end12

while.end.out_unlock_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end12:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @folio_wait_stable(ptr noundef %15) #12
  br label %cleanup

out_unlock:                                       ; preds = %while.end.out_unlock_crit_edge, %folio_mkwrite_check_truncate.exit.out_unlock_crit_edge
  %ret.0 = phi i32 [ %retval.0.i32, %folio_mkwrite_check_truncate.exit.out_unlock_crit_edge ], [ %call5.lcssa, %while.end.out_unlock_crit_edge ]
  call void @folio_unlock(ptr noundef %15) #12
  %switch.tableidx = add i32 %ret.0, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %81 = icmp ult i32 %switch.tableidx, 4
  br i1 %81, label %switch.lookup, label %out_unlock.cleanup_crit_edge

out_unlock.cleanup_crit_edge:                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.iomap_page_mkwrite, i32 0, i32 %switch.tableidx
  %82 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %82)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %out_unlock.cleanup_crit_edge, %if.end12, %out_unlock.thread
  %retval.0 = phi i32 [ 512, %if.end12 ], [ 256, %out_unlock.thread ], [ %switch.load, %switch.lookup ], [ 2, %out_unlock.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %iter) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_stable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iomap_finish_ioends(ptr noundef %ioend, i32 noundef %error) #0 align 64 {
entry:
  %tmp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp, i32 0, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1099) #12
  %1 = ptrtoint ptr %ioend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioend, align 4
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %tmp, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tmp, ptr %prev.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ioend, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %0, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tmp, ptr %6, align 4
  store volatile ptr %ioend, ptr %ioend, align 4
  store ptr %ioend, ptr %prev3.i.i, align 4
  %call = call fastcc i32 @iomap_finish_ioend(ptr noundef %ioend, i32 noundef %error)
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %tmp, align 4
  %cmp.i.not16 = icmp eq ptr %10, %tmp
  br i1 %cmp.i.not16, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %completions.017 = phi i32 [ %add, %list_del_init.exit.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %completions.017)
  %cmp = icmp ugt i32 %completions.017, 32768
  br i1 %cmp, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1106, i32 noundef 0) #12
  %call.i = call i32 @__cond_resched() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %completions.1 = phi i32 [ 0, %if.then ], [ %completions.017, %while.body.if.end_crit_edge ]
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tmp, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i15, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %12, ptr %12, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %12, ptr %prev.i3.i, align 4
  %call9 = call fastcc i32 @iomap_finish_ioend(ptr noundef %12, i32 noundef %error)
  %add = add i32 %call9, %completions.1
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %tmp, align 4
  %cmp.i.not = icmp eq ptr %22, %tmp
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iomap_finish_ioend(ptr noundef %ioend, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  %fi = alloca %struct.folio_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_inode = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 4
  %0 = ptrtoint ptr %io_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_inode, align 8
  %io_inline_bio = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 9
  %io_bio = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 8
  %2 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_bio, align 8
  %bi_iter = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 9, i32 8
  %4 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter, align 8
  %io_offset = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 6
  %6 = ptrtoint ptr %io_offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %io_offset, align 8
  %bi_flags.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bi_flags.i, align 4
  %10 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.not = icmp eq i16 %10, 0
  %tobool.not55 = icmp eq ptr %io_inline_bio, null
  br i1 %tobool.not55, label %entry.for.end7_crit_edge, label %for.body.lr.ph

entry.for.end7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end7

for.body.lr.ph:                                   ; preds = %entry
  %11 = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 1
  %12 = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 2
  %13 = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 3
  %14 = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not.i = icmp eq i32 %error, 0
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %error)
  %cmp.i.i = icmp eq i32 %error, -28
  %..i.i = zext i1 %cmp.i.i to i32
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %folio_count.058 = phi i32 [ 0, %for.body.lr.ph ], [ %folio_count.1.lcssa, %for.end.for.body_crit_edge ]
  %bio.056 = phi ptr [ %io_inline_bio, %for.body.lr.ph ], [ %next.0, %for.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fi) #12
  %cmp = icmp eq ptr %bio.056, %3
  %15 = call ptr @memset(ptr %fi, i32 255, i32 20)
  br i1 %cmp, label %for.body.if.end_crit_edge, label %if.else

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio.056, i32 0, i32 11
  %16 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_private, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge
  %next.0 = phi ptr [ %17, %if.else ], [ null, %for.body.if.end_crit_edge ]
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.056, i32 0, i32 3
  %18 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bi_flags.i.i.i, align 4
  %20 = and i16 %19, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i.not.i.i = icmp eq i16 %20, 0
  br i1 %cmp.i.not.i.i, label %if.end.bio_first_bvec_all.exit.i_crit_edge, label %land.rhs.i.i

if.end.bio_first_bvec_all.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_first_bvec_all.exit.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_bvec_all.exit.i_crit_edge, label %if.then.i.i, !prof !149

land.rhs.i.i.bio_first_bvec_all.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_first_bvec_all.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 248, i32 noundef 9, ptr noundef null) #12
  br label %bio_first_bvec_all.exit.i

bio_first_bvec_all.exit.i:                        ; preds = %if.then.i.i, %land.rhs.i.i.bio_first_bvec_all.exit.i_crit_edge, %if.end.bio_first_bvec_all.exit.i_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %bio.056, i32 0, i32 20
  %21 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bi_io_vec.i.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i22.i, !prof !149

if.then.i22.i:                                    ; preds = %bio_first_bvec_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %27, -1
  %.pre = ptrtoint ptr %24 to i32
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %bio_first_bvec_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %24 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i22.i
  %sub.ptr.lhs.cast.i.pre-phi = phi i32 [ %28, %if.end.i.i ], [ %.pre, %if.then.i22.i ]
  %retval.0.i.i = phi i32 [ %28, %if.end.i.i ], [ %sub.i.i, %if.then.i22.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %30 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %fi, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %22, i32 0, i32 2
  %31 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bv_offset.i, align 4
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.pre-phi, %retval.0.i.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %mul.i = shl i32 %sub.ptr.div.i, 12
  %add.i = add i32 %mul.i, %32
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %11, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %22, i32 0, i32 1
  %34 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bv_len.i, align 4
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %13, align 4
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %_compound_head.exit.i
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %29, align 4
  %42 = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_first_folio.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = getelementptr %struct.page, ptr %29, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %45 to i32
  br label %bio_first_folio.exit

bio_first_folio.exit:                             ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %sub.i = sub i32 %shl.i.i, %add.i
  %46 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %35) #12
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %12, align 4
  %48 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %14, align 4
  %49 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fi, align 4
  %tobool3.not53 = icmp eq ptr %50, null
  br i1 %tobool3.not53, label %bio_first_folio.exit.for.end_crit_edge, label %bio_first_folio.exit.for.body4_crit_edge

bio_first_folio.exit.for.body4_crit_edge:         ; preds = %bio_first_folio.exit
  br label %for.body4

bio_first_folio.exit.for.end_crit_edge:           ; preds = %bio_first_folio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body4:                                        ; preds = %iomap_finish_folio_write.exit.for.body4_crit_edge, %bio_first_folio.exit.for.body4_crit_edge
  %51 = phi ptr [ %84, %iomap_finish_folio_write.exit.for.body4_crit_edge ], [ %50, %bio_first_folio.exit.for.body4_crit_edge ]
  %folio_count.154 = phi i32 [ %inc, %iomap_finish_folio_write.exit.for.body4_crit_edge ], [ %folio_count.058, %bio_first_folio.exit.for.body4_crit_edge ]
  %52 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %12, align 4
  %54 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %and.i.i.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i35 = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i35, label %folio_test_private.exit.i.i, label %if.then.i.i.i.i, !prof !149

if.then.i.i.i.i:                                  ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %51, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_private.exit.i.i:                      ; preds = %for.body4
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %51, align 4
  %59 = and i32 %58, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.i.not.i.i, label %folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge, label %if.then.i.i36

folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge: ; preds = %folio_test_private.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %to_iomap_page.exit.i

if.then.i.i36:                                    ; preds = %folio_test_private.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %private.i.i.i = getelementptr inbounds %struct.anon.81, ptr %51, i32 0, i32 4
  %60 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %private.i.i.i, align 4
  br label %to_iomap_page.exit.i

to_iomap_page.exit.i:                             ; preds = %if.then.i.i36, %folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge
  %retval.0.i.i37 = phi ptr [ %61, %if.then.i.i36 ], [ null, %folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge ]
  br i1 %tobool.not.i, label %to_iomap_page.exit.i.if.end.i_crit_edge, label %if.then.i

to_iomap_page.exit.i.if.end.i_crit_edge:          ; preds = %to_iomap_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %to_iomap_page.exit.i
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %54, align 4
  %and.i.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i38, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %51, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

if.end.i.i38:                                     ; preds = %if.then.i
  tail call void @_set_bit(i32 noundef 8, ptr noundef nonnull %51) #12
  %64 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_mapping.i, align 8
  tail call void @__filemap_set_wb_err(ptr noundef %65, i32 noundef %error) #12
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool4.not.i.i = icmp eq ptr %67, null
  br i1 %tobool4.not.i.i, label %if.end.i.i38.mapping_set_error.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i38.mapping_set_error.exit.i_crit_edge:  ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %mapping_set_error.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb.i.i, align 4
  %s_wb_err.i.i = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 50
  %call.i.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i.i, i32 noundef %error) #12
  br label %mapping_set_error.exit.i

mapping_set_error.exit.i:                         ; preds = %if.then5.i.i, %if.end.i.i38.mapping_set_error.exit.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.address_space, ptr %65, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %..i.i, ptr noundef %flags.i.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %mapping_set_error.exit.i, %to_iomap_page.exit.i.if.end.i_crit_edge
  %70 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %71, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !150

if.then.i.i.i.i.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %51, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %if.end.i
  %72 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %51, align 4
  %74 = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.i_blocks_per_folio.exit.i_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.i_blocks_per_folio.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_blocks_per_folio.exit.i

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = getelementptr %struct.page, ptr %51, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %77 to i32
  br label %i_blocks_per_folio.exit.i

i_blocks_per_folio.exit.i:                        ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.i_blocks_per_folio.exit.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %conv.i.i.i.i.i, %if.end.i.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.i.i_blocks_per_folio.exit.i_crit_edge ]
  %shl.i.i.i = shl i32 4096, %retval.0.i.i.i.i.i
  %78 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %79 to i32
  %shr.i.i = lshr i32 %shl.i.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i.i)
  %cmp.i39 = icmp ugt i32 %shr.i.i, 1
  %tobool2.not.i = icmp eq ptr %retval.0.i.i37, null
  %spec.select.i = select i1 %cmp.i39, i1 %tobool2.not.i, i1 false
  br i1 %spec.select.i, label %land.rhs6.i, label %i_blocks_per_folio.exit.i.if.end35.i_crit_edge

i_blocks_per_folio.exit.i.if.end35.i_crit_edge:   ; preds = %i_blocks_per_folio.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.rhs6.i:                                      ; preds = %i_blocks_per_folio.exit.i
  %.b121.i = load i1, ptr @iomap_finish_folio_write.__already_done, align 1
  br i1 %.b121.i, label %land.rhs6.i.if.end35.i_crit_edge, label %if.then13.i, !prof !149

land.rhs6.i.if.end35.i_crit_edge:                 ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then13.i:                                      ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_finish_folio_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1032, i32 noundef 9, ptr noundef null) #12
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then13.i, %land.rhs6.i.if.end35.i_crit_edge, %i_blocks_per_folio.exit.i.if.end35.i_crit_edge
  br i1 %tobool2.not.i, label %if.end35.i.if.then104.i_crit_edge, label %land.rhs45.i

if.end35.i.if.then104.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104.i

land.rhs45.i:                                     ; preds = %if.end35.i
  %write_bytes_pending.i = getelementptr inbounds %struct.iomap_page, ptr %retval.0.i.i37, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %write_bytes_pending.i, i32 noundef 4) #12
  %80 = ptrtoint ptr %write_bytes_pending.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %write_bytes_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp47.i = icmp slt i32 %81, 1
  br i1 %cmp47.i, label %land.rhs55.i, label %land.rhs45.i.lor.lhs.false.i_crit_edge

land.rhs45.i.lor.lhs.false.i_crit_edge:           ; preds = %land.rhs45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.rhs55.i:                                     ; preds = %land.rhs45.i
  %.b119120.i = load i1, ptr @iomap_finish_folio_write.__already_done.22, align 1
  br i1 %.b119120.i, label %land.rhs55.i.lor.lhs.false.i_crit_edge, label %if.then66.i, !prof !149

land.rhs55.i.lor.lhs.false.i_crit_edge:           ; preds = %land.rhs55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

if.then66.i:                                      ; preds = %land.rhs55.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_finish_folio_write.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1033, i32 noundef 9, ptr noundef null) #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then66.i, %land.rhs55.i.lor.lhs.false.i_crit_edge, %land.rhs45.i.lor.lhs.false.i_crit_edge
  %call.i.i125.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %write_bytes_pending.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %write_bytes_pending.i, i32 1, i32 3, i32 1) #12
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %write_bytes_pending.i, ptr %write_bytes_pending.i, i32 %53, ptr elementtype(i32) %write_bytes_pending.i) #12, !srcloc !171
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %82, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.if.then104.i_crit_edge, label %lor.lhs.false.i.iomap_finish_folio_write.exit_crit_edge

lor.lhs.false.i.iomap_finish_folio_write.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_finish_folio_write.exit

lor.lhs.false.i.if.then104.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104.i

if.then104.i:                                     ; preds = %lor.lhs.false.i.if.then104.i_crit_edge, %if.end35.i.if.then104.i_crit_edge
  tail call void @folio_end_writeback(ptr noundef nonnull %51) #12
  br label %iomap_finish_folio_write.exit

iomap_finish_folio_write.exit:                    ; preds = %if.then104.i, %lor.lhs.false.i.iomap_finish_folio_write.exit_crit_edge
  %inc = add i32 %folio_count.154, 1
  call fastcc void @bio_next_folio(ptr noundef nonnull %fi, ptr noundef nonnull %bio.056)
  %83 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fi, align 4
  %tobool3.not = icmp eq ptr %84, null
  br i1 %tobool3.not, label %iomap_finish_folio_write.exit.for.end_crit_edge, label %iomap_finish_folio_write.exit.for.body4_crit_edge

iomap_finish_folio_write.exit.for.body4_crit_edge: ; preds = %iomap_finish_folio_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4

iomap_finish_folio_write.exit.for.end_crit_edge:  ; preds = %iomap_finish_folio_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %iomap_finish_folio_write.exit.for.end_crit_edge, %bio_first_folio.exit.for.end_crit_edge
  %folio_count.1.lcssa = phi i32 [ %folio_count.058, %bio_first_folio.exit.for.end_crit_edge ], [ %inc, %iomap_finish_folio_write.exit.for.end_crit_edge ]
  tail call void @bio_put(ptr noundef nonnull %bio.056) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fi) #12
  %tobool.not = icmp eq ptr %next.0, null
  br i1 %tobool.not, label %for.end.for.end7_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.for.end7_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end7

for.end7:                                         ; preds = %for.end.for.end7_crit_edge, %entry.for.end7_crit_edge
  %folio_count.0.lcssa = phi i32 [ 0, %entry.for.end7_crit_edge ], [ %folio_count.1.lcssa, %for.end.for.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool8.not = icmp ne i32 %error, 0
  %spec.select = select i1 %tobool8.not, i1 %cmp.i.not, i1 false
  br i1 %spec.select, label %if.then13, label %for.end7.if.end19_crit_edge, !prof !150

for.end7.if.end19_crit_edge:                      ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %for.end7
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @iomap_finish_ioend._rs, ptr noundef nonnull @__func__.iomap_finish_ioend) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end19_crit_edge, label %do.end

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %85 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %87 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %i_ino, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %s_id, i32 noundef %88, i64 noundef %7, i64 noundef %5) #15
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then13.if.end19_crit_edge, %for.end7.if.end19_crit_edge
  ret i32 %folio_count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iomap_ioend_try_merge(ptr noundef %ioend, ptr noundef %more_ioends) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ioend to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ioend, ptr %ioend, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ioend, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ioend, ptr %prev.i, align 4
  %io_bio.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 8
  %io_flags.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 2
  %io_offset.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 6
  %io_sector.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 7
  %2 = ptrtoint ptr %more_ioends to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %more_ioends, align 4
  %cmp.not16 = icmp eq ptr %3, %more_ioends
  %tobool.not1517 = icmp eq ptr %3, null
  %tobool.not18 = or i1 %cmp.not16, %tobool.not1517
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %io_type.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 1
  %io_size.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %49, %list_move_tail.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %io_bio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_bio.i, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bi_status.i, align 2
  %io_bio1.i = getelementptr inbounds %struct.iomap_ioend, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %io_bio1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_bio1.i, align 8
  %bi_status2.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %bi_status2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bi_status2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %12)
  %cmp.not.i = icmp eq i8 %8, %12
  br i1 %cmp.not.i, label %if.end.i, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end.i:                                         ; preds = %while.body
  %13 = ptrtoint ptr %io_flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %io_flags.i, align 2
  %io_flags6.i = getelementptr inbounds %struct.iomap_ioend, ptr %4, i32 0, i32 2
  %15 = ptrtoint ptr %io_flags6.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %io_flags6.i, align 2
  %17 = xor i16 %16, %14
  %xor46.i = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor46.i)
  %tobool.not.i = icmp eq i16 %xor46.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.end.i.while.end_crit_edge

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end10.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %io_type.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %io_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp12.i = icmp eq i16 %19, 3
  %io_type14.i = getelementptr inbounds %struct.iomap_ioend, ptr %4, i32 0, i32 1
  %20 = ptrtoint ptr %io_type14.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %io_type14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp16.i = icmp eq i16 %21, 3
  %xor1847.i = xor i1 %cmp12.i, %cmp16.i
  br i1 %xor1847.i, label %if.end10.i.while.end_crit_edge, label %if.end21.i

if.end10.i.while.end_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end21.i:                                       ; preds = %if.end10.i
  %22 = ptrtoint ptr %io_offset.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %io_offset.i, align 8
  %24 = ptrtoint ptr %io_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_size.i, align 4
  %conv22.i = zext i32 %25 to i64
  %add.i = add i64 %23, %conv22.i
  %io_offset23.i = getelementptr inbounds %struct.iomap_ioend, ptr %4, i32 0, i32 6
  %26 = ptrtoint ptr %io_offset23.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %io_offset23.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %27)
  %cmp24.not.i = icmp eq i64 %add.i, %27
  br i1 %cmp24.not.i, label %iomap_ioend_can_merge.exit, label %if.end21.i.while.end_crit_edge

if.end21.i.while.end_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

iomap_ioend_can_merge.exit:                       ; preds = %if.end21.i
  %28 = ptrtoint ptr %io_sector.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %io_sector.i, align 8
  %shr.i = lshr i32 %25, 9
  %conv29.i = zext i32 %shr.i to i64
  %add30.i = add i64 %29, %conv29.i
  %io_sector31.i = getelementptr inbounds %struct.iomap_ioend, ptr %4, i32 0, i32 7
  %30 = ptrtoint ptr %io_sector31.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %io_sector31.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add30.i, i64 %31)
  %cmp32.not.i = icmp eq i64 %add30.i, %31
  br i1 %cmp32.not.i, label %if.end, label %iomap_ioend_can_merge.exit.while.end_crit_edge

iomap_ioend_can_merge.exit.while.end_crit_edge:   ; preds = %iomap_ioend_can_merge.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %iomap_ioend_can_merge.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %4) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %4, ptr noundef %39, ptr noundef %ioend) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %4, ptr %prev.i, align 4
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ioend, ptr %4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %4, ptr %39, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %io_size = getelementptr inbounds %struct.iomap_ioend, ptr %4, i32 0, i32 5
  %44 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_size, align 4
  %46 = ptrtoint ptr %io_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %io_size.i, align 4
  %add = add i32 %47, %45
  store i32 %add, ptr %io_size.i, align 4
  %48 = ptrtoint ptr %more_ioends to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %more_ioends, align 4
  %cmp.not = icmp eq ptr %49, %more_ioends
  %tobool.not15 = icmp eq ptr %49, null
  %tobool.not = or i1 %cmp.not, %tobool.not15
  br i1 %tobool.not, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %iomap_ioend_can_merge.exit.while.end_crit_edge, %if.end21.i.while.end_crit_edge, %if.end10.i.while.end_crit_edge, %if.end.i.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iomap_sort_ioends(ptr noundef %ioend_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @list_sort(ptr noundef null, ptr noundef %ioend_list, ptr noundef nonnull @iomap_ioend_compare) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iomap_ioend_compare(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_offset = getelementptr inbounds %struct.iomap_ioend, ptr %a, i32 0, i32 6
  %0 = ptrtoint ptr %io_offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %io_offset, align 8
  %io_offset4 = getelementptr inbounds %struct.iomap_ioend, ptr %b, i32 0, i32 6
  %2 = ptrtoint ptr %io_offset4 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %io_offset4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp slt i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp7 = icmp sgt i64 %1, %3
  %. = zext i1 %cmp7 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_writepage(ptr noundef %page, ptr noundef %wbc, ptr noundef %wpc, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %wpc, i32 0, i32 2
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %ops1, align 4
  %call = tail call i32 @iomap_do_writepage(ptr noundef %page, ptr noundef %wbc, ptr noundef %wpc)
  %ioend = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %wpc, i32 0, i32 1
  %1 = ptrtoint ptr %ioend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioend, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_bio.i = getelementptr inbounds %struct.iomap_ioend, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %io_bio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_bio.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %bi_private.i, align 4
  %6 = load ptr, ptr %io_bio.i, align 8
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @iomap_writepage_end_bio, ptr %bi_end_io.i, align 8
  %8 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops1, align 4
  %prepare_ioend.i = getelementptr inbounds %struct.iomap_writeback_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prepare_ioend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prepare_ioend.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %11(ptr noundef nonnull %2, i32 noundef %call) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %error.addr.0.i = phi i32 [ %call.i, %if.then.i ], [ %call, %if.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.addr.0.i)
  %tobool4.not.i = icmp eq i32 %error.addr.0.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call zeroext i8 @errno_to_blk_status(i32 noundef %error.addr.0.i) #12
  %12 = ptrtoint ptr %io_bio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_bio.i, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call6.i, ptr %bi_status.i, align 2
  %15 = load ptr, ptr %io_bio.i, align 8
  tail call void @bio_endio(ptr noundef %15) #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %io_bio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_bio.i, align 8
  tail call void @submit_bio(ptr noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.then5.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %error.addr.0.i, %if.then5.i ], [ 0, %if.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_do_writepage(ptr noundef %page, ptr noundef %wbc, ptr noundef %data) #0 align 64 {
entry:
  %submit_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %mapping = getelementptr inbounds %struct.anon.81, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %index.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %10 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i.i.i.i = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !150

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i:                              ; preds = %_compound_head.exit
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.69, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %18 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %conv = zext i32 %shl.i to i64
  tail call fastcc void @trace_iomap_writepage(ptr noundef %8, i64 noundef %shl.i.i, i64 noundef %conv)
  %19 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i99 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i99 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and)
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.rhs, label %if.end42.critedge

land.rhs:                                         ; preds = %folio_size.exit
  %.b96 = load i1, ptr @iomap_do_writepage.__already_done, align 1
  br i1 %.b96, label %land.rhs.redirty_crit_edge, label %if.then, !prof !149

land.rhs.redirty_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %redirty

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_do_writepage.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1466, i32 noundef 9, ptr noundef null) #12
  br label %redirty

if.end42.critedge:                                ; preds = %folio_size.exit
  %call43 = tail call fastcc i64 @i_size_read(ptr noundef %8)
  %25 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i.i, align 4
  %conv.i.i101 = zext i32 %26 to i64
  %shl.i.i102 = shl nuw nsw i64 %conv.i.i101, 12
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.not.i.i.i.i103 = icmp eq i32 %28, -1
  br i1 %cmp.i.not.i.i.i.i103, label %if.then.i.i.i.i104, label %PageHead.exit.i.i.i106, !prof !150

if.then.i.i.i.i104:                               ; preds = %if.end42.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i106:                           ; preds = %if.end42.critedge
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %4, align 4
  %31 = and i32 %30, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i105 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i105, label %PageHead.exit.i.i.i106.folio_size.exit112_crit_edge, label %if.end.i.i.i109

PageHead.exit.i.i.i106.folio_size.exit112_crit_edge: ; preds = %PageHead.exit.i.i.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit112

if.end.i.i.i109:                                  ; preds = %PageHead.exit.i.i.i106
  call void @__sanitizer_cov_trace_pc() #14
  %32 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i107 = getelementptr inbounds %struct.anon.69, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %compound_order.i.i.i107 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %compound_order.i.i.i107, align 1
  %conv.i.i.i108 = zext i8 %34 to i32
  br label %folio_size.exit112

folio_size.exit112:                               ; preds = %if.end.i.i.i109, %PageHead.exit.i.i.i106.folio_size.exit112_crit_edge
  %retval.0.i.i.i110 = phi i32 [ %conv.i.i.i108, %if.end.i.i.i109 ], [ 0, %PageHead.exit.i.i.i106.folio_size.exit112_crit_edge ]
  %shl.i111 = shl i32 4096, %retval.0.i.i.i110
  %conv46 = zext i32 %shl.i111 to i64
  %add = add nuw nsw i64 %shl.i.i102, %conv46
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call43)
  %cmp47 = icmp ugt i64 %add, %call43
  br i1 %cmp47, label %if.then49, label %folio_size.exit112.if.end65_crit_edge

folio_size.exit112.if.end65_crit_edge:            ; preds = %folio_size.exit112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then49:                                        ; preds = %folio_size.exit112
  %conv50 = trunc i64 %call43 to i32
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i.i.i.i113 = icmp eq i32 %36, -1
  br i1 %cmp.i.not.i.i.i.i113, label %if.then.i.i.i.i114, label %PageHead.exit.i.i.i116, !prof !150

if.then.i.i.i.i114:                               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i116:                           ; preds = %if.then49
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %4, align 4
  %39 = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i115 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i115, label %PageHead.exit.i.i.i116.folio_size.exit122_crit_edge, label %if.end.i.i.i119

PageHead.exit.i.i.i116.folio_size.exit122_crit_edge: ; preds = %PageHead.exit.i.i.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit122

if.end.i.i.i119:                                  ; preds = %PageHead.exit.i.i.i116
  call void @__sanitizer_cov_trace_pc() #14
  %40 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i117 = getelementptr inbounds %struct.anon.69, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %compound_order.i.i.i117 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %compound_order.i.i.i117, align 1
  %conv.i.i.i118 = zext i8 %42 to i32
  br label %folio_size.exit122

folio_size.exit122:                               ; preds = %if.end.i.i.i119, %PageHead.exit.i.i.i116.folio_size.exit122_crit_edge
  %retval.0.i.i.i120 = phi i32 [ %conv.i.i.i118, %if.end.i.i.i119 ], [ 0, %PageHead.exit.i.i.i116.folio_size.exit122_crit_edge ]
  %shl.i121 = shl i32 4096, %retval.0.i.i.i120
  %sub = add i32 %shl.i121, -1
  %and52 = and i32 %sub, %conv50
  %shr = lshr i64 %call43, 12
  %conv53 = trunc i64 %shr to i32
  %43 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv53)
  %cmp54 = icmp ugt i32 %44, %conv53
  br i1 %cmp54, label %folio_size.exit122.redirty_crit_edge, label %lor.lhs.false

folio_size.exit122.redirty_crit_edge:             ; preds = %folio_size.exit122
  call void @__sanitizer_cov_trace_pc() #14
  br label %redirty

lor.lhs.false:                                    ; preds = %folio_size.exit122
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv53)
  %cmp57 = icmp eq i32 %44, %conv53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp59 = icmp eq i32 %and52, 0
  %or.cond = select i1 %cmp57, i1 %cmp59, i1 false
  br i1 %or.cond, label %lor.lhs.false.redirty_crit_edge, label %if.end62

lor.lhs.false.redirty_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %redirty

if.end62:                                         ; preds = %lor.lhs.false
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i.not.i.i.i.i123 = icmp eq i32 %46, -1
  br i1 %cmp.i.not.i.i.i.i123, label %if.then.i.i.i.i124, label %PageHead.exit.i.i.i126, !prof !150

if.then.i.i.i.i124:                               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i126:                           ; preds = %if.end62
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %4, align 4
  %49 = and i32 %48, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i.i125 = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i.i125, label %PageHead.exit.i.i.i126.cleanup_crit_edge, label %if.end.i.i.i129

PageHead.exit.i.i.i126.cleanup_crit_edge:         ; preds = %PageHead.exit.i.i.i126
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.i129:                                  ; preds = %PageHead.exit.i.i.i126
  call void @__sanitizer_cov_trace_pc() #14
  %50 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i127 = getelementptr inbounds %struct.anon.69, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %compound_order.i.i.i127 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %compound_order.i.i.i127, align 1
  %conv.i.i.i128 = zext i8 %52 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i129, %PageHead.exit.i.i.i126.cleanup_crit_edge
  %retval.0.i.i.i130 = phi i32 [ %conv.i.i.i128, %if.end.i.i.i129 ], [ 0, %PageHead.exit.i.i.i126.cleanup_crit_edge ]
  %shl.i131 = shl i32 4096, %retval.0.i.i.i130
  tail call void @zero_user_segments(ptr noundef %4, i32 noundef %and52, i32 noundef %shl.i131, i32 noundef 0, i32 noundef 0) #12
  br label %if.end65

if.end65:                                         ; preds = %cleanup, %folio_size.exit112.if.end65_crit_edge
  %end_pos.1 = phi i64 [ %call43, %cleanup ], [ %add, %folio_size.exit112.if.end65_crit_edge ]
  %call.i = tail call fastcc ptr @iomap_page_create(ptr noundef %8, ptr noundef %4) #12
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 20
  %53 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i133 = zext i8 %54 to i32
  %shl.i.i134 = shl nuw i32 1, %conv.i.i133
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %56, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !150

if.then.i.i.i.i.i.i:                              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %if.end65
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %4, align 4
  %59 = and i32 %58, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i.i.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.i_blocks_per_folio.exit.i_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.i_blocks_per_folio.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_blocks_per_folio.exit.i

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %62 to i32
  br label %i_blocks_per_folio.exit.i

i_blocks_per_folio.exit.i:                        ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.i_blocks_per_folio.exit.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %conv.i.i.i.i.i, %if.end.i.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.i.i_blocks_per_folio.exit.i_crit_edge ]
  %shl.i.i.i = shl i32 4096, %retval.0.i.i.i.i.i
  %shr.i496.i = lshr i32 %shl.i.i.i, %conv.i.i133
  %63 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index.i.i, align 4
  %conv.i.i.i135 = zext i32 %64 to i64
  %shl.i.i497.i = shl nuw nsw i64 %conv.i.i.i135, 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %submit_list.i) #12
  %65 = getelementptr inbounds %struct.list_head, ptr %submit_list.i, i32 0, i32 1
  %66 = ptrtoint ptr %submit_list.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %submit_list.i, ptr %submit_list.i, align 4
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %submit_list.i, ptr %65, align 4
  %tobool.not.i136 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i136, label %i_blocks_per_folio.exit.i.if.end35.i_crit_edge, label %land.rhs.i

i_blocks_per_folio.exit.i.if.end35.i_crit_edge:   ; preds = %i_blocks_per_folio.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.rhs.i:                                       ; preds = %i_blocks_per_folio.exit.i
  %write_bytes_pending.i = getelementptr inbounds %struct.iomap_page, ptr %call.i, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %write_bytes_pending.i, i32 noundef 4) #12
  %68 = ptrtoint ptr %write_bytes_pending.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %write_bytes_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.not.i = icmp eq i32 %69, 0
  br i1 %cmp.not.i, label %land.rhs.i.if.end35.i_crit_edge, label %land.rhs8.i

land.rhs.i.if.end35.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.rhs8.i:                                      ; preds = %land.rhs.i
  %.b478.i = load i1, ptr @iomap_writepage_map.__already_done, align 1
  br i1 %.b478.i, label %land.rhs8.i.if.end35.i_crit_edge, label %if.then.i137, !prof !149

land.rhs8.i.if.end35.i_crit_edge:                 ; preds = %land.rhs8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then.i137:                                     ; preds = %land.rhs8.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_writepage_map.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1358, i32 noundef 9, ptr noundef null) #12
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then.i137, %land.rhs8.i.if.end35.i_crit_edge, %land.rhs.i.if.end35.i_crit_edge, %i_blocks_per_folio.exit.i.if.end35.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i496.i)
  %cmp43532.i = icmp ne i32 %shr.i496.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i497.i, i64 %end_pos.1)
  %cmp45533.i = icmp ult i64 %shl.i.i497.i, %end_pos.1
  %or.cond534.i = select i1 %cmp43532.i, i1 %cmp45533.i, i1 false
  br i1 %or.cond534.i, label %for.body.lr.ph.i, label %if.end35.i.if.end128.i_crit_edge

if.end35.i.if.end128.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128.i

for.body.lr.ph.i:                                 ; preds = %if.end35.i
  %uptodate.i = getelementptr inbounds %struct.iomap_page, ptr %call.i, i32 0, i32 3
  %ops.i = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %data, i32 0, i32 2
  %type.i = getelementptr inbounds %struct.iomap, ptr %data, i32 0, i32 3
  %offset.i.i.i = getelementptr inbounds %struct.iomap, ptr %data, i32 0, i32 1
  %70 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i.i.i505.i = getelementptr inbounds %struct.anon.69, ptr %70, i32 0, i32 2
  %ioend.i.i = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %data, i32 0, i32 1
  %flags.i.i.i = getelementptr inbounds %struct.iomap, ptr %data, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.iomap, ptr %data, i32 0, i32 5
  %punt_to_cgroup.i.i.i.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %sync_mode.i.i.i.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %i_write_hint.i.i.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 21
  %wb.i.i.i.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 6
  %write_bytes_pending.i.i = getelementptr inbounds %struct.iomap_page, ptr %call.i, i32 0, i32 1
  %conv123.i = zext i32 %shl.i.i134 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.0539.i = phi i64 [ %shl.i.i497.i, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %count.0538.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0535.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc122.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i136, label %for.body.i.if.end51.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end51.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %div3.i.i = lshr i32 %i.0535.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %uptodate.i, i32 %div3.i.i
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.0535.i, 31
  %73 = shl nuw i32 1, %and.i.i
  %74 = and i32 %72, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool49.not.i = icmp eq i32 %74, 0
  br i1 %tobool49.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end51.i_crit_edge

land.lhs.true.i.if.end51.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end51.i:                                       ; preds = %land.lhs.true.i.if.end51.i_crit_edge, %for.body.i.if.end51.i_crit_edge
  %75 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call52.i = call i32 %78(ptr noundef %data, ptr noundef %8, i64 noundef %pos.0539.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end51.i.for.end.i_crit_edge

if.end51.i.for.end.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end55.i:                                       ; preds = %if.end51.i
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %type.i, align 8
  %81 = zext i16 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %80, label %if.end121.i [
    i16 4, label %land.rhs66.i
    i16 0, label %if.end55.i.for.inc.i_crit_edge
  ]

if.end55.i.for.inc.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.rhs66.i:                                     ; preds = %if.end55.i
  %.b468477.i = load i1, ptr @iomap_writepage_map.__already_done.23, align 1
  br i1 %.b468477.i, label %land.rhs66.i.for.inc.i_crit_edge, label %if.then77.i, !prof !149

land.rhs66.i.for.inc.i_crit_edge:                 ; preds = %land.rhs66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then77.i:                                      ; preds = %land.rhs66.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_writepage_map.__already_done.23, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1372, i32 noundef 9, ptr noundef null) #12
  br label %for.inc.i

if.end121.i:                                      ; preds = %if.end55.i
  %82 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %data, align 8
  %add.i.i.i = add i64 %83, %pos.0539.i
  %84 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %offset.i.i.i, align 8
  %sub.i.i.i = sub i64 %add.i.i.i, %85
  %shr.i.i.i = lshr i64 %sub.i.i.i, 9
  %86 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i498.i = zext i8 %87 to i32
  %shl.i.i499.i = shl nuw i32 1, %conv.i.i498.i
  %conv.i500.i = trunc i64 %pos.0539.i to i32
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp.i.not.i.i.i.i.i501.i = icmp eq i32 %89, -1
  br i1 %cmp.i.not.i.i.i.i.i501.i, label %if.then.i.i.i.i.i502.i, label %PageHead.exit.i.i.i.i504.i, !prof !150

if.then.i.i.i.i.i502.i:                           ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i504.i:                       ; preds = %if.end121.i
  %90 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %4, align 4
  %92 = and i32 %91, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i.i.i503.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i.i.i.i503.i, label %PageHead.exit.i.i.i.i504.i.folio_size.exit.i.i_crit_edge, label %if.end.i.i.i.i507.i

PageHead.exit.i.i.i.i504.i.folio_size.exit.i.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i504.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit.i.i

if.end.i.i.i.i507.i:                              ; preds = %PageHead.exit.i.i.i.i504.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %compound_order.i.i.i.i505.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %compound_order.i.i.i.i505.i, align 1
  %conv.i.i.i.i506.i = zext i8 %94 to i32
  br label %folio_size.exit.i.i

folio_size.exit.i.i:                              ; preds = %if.end.i.i.i.i507.i, %PageHead.exit.i.i.i.i504.i.folio_size.exit.i.i_crit_edge
  %retval.0.i.i.i.i508.i = phi i32 [ %conv.i.i.i.i506.i, %if.end.i.i.i.i507.i ], [ 0, %PageHead.exit.i.i.i.i504.i.folio_size.exit.i.i_crit_edge ]
  %shl.i53.i.i = shl i32 4096, %retval.0.i.i.i.i508.i
  %sub.i.i = add i32 %shl.i53.i.i, -1
  %and.i509.i = and i32 %sub.i.i, %conv.i500.i
  %95 = ptrtoint ptr %ioend.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ioend.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i, label %folio_size.exit.i.i.if.end.i.i_crit_edge, label %lor.lhs.false.i.i

folio_size.exit.i.i.if.end.i.i_crit_edge:         ; preds = %folio_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

lor.lhs.false.i.i:                                ; preds = %folio_size.exit.i.i
  %97 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %flags.i.i.i, align 2
  %io_flags.i.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %io_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %io_flags.i.i.i, align 2
  %101 = xor i16 %100, %98
  %102 = and i16 %101, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp.not.i.i.i = icmp eq i16 %102, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i138, label %lor.lhs.false.i.i.if.then6.i.i_crit_edge

lor.lhs.false.i.i.if.then6.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i.i

if.end.i.i.i138:                                  ; preds = %lor.lhs.false.i.i
  %io_type.i.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %96, i32 0, i32 1
  %103 = ptrtoint ptr %io_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %io_type.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %104)
  %cmp8.not.i.i.i = icmp eq i16 %80, %104
  br i1 %cmp8.not.i.i.i, label %if.end11.i.i.i, label %if.end.i.i.i138.if.then6.i.i_crit_edge

if.end.i.i.i138.if.then6.i.i_crit_edge:           ; preds = %if.end.i.i.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i138
  %io_offset.i.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %96, i32 0, i32 6
  %105 = ptrtoint ptr %io_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %io_offset.i.i.i, align 8
  %io_size.i.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %96, i32 0, i32 5
  %107 = ptrtoint ptr %io_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %io_size.i.i.i, align 4
  %conv14.i.i.i = zext i32 %108 to i64
  %add.i54.i.i = add i64 %106, %conv14.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i54.i.i, i64 %pos.0539.i)
  %cmp15.not.i.i.i = icmp eq i64 %add.i54.i.i, %pos.0539.i
  br i1 %cmp15.not.i.i.i, label %if.end18.i.i.i, label %if.end11.i.i.i.if.then6.i.i_crit_edge

if.end11.i.i.i.if.then6.i.i_crit_edge:            ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i.i

if.end18.i.i.i:                                   ; preds = %if.end11.i.i.i
  %io_bio.i.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %96, i32 0, i32 8
  %109 = ptrtoint ptr %io_bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %io_bio.i.i.i, align 8
  %bi_iter.i.i.i = getelementptr inbounds %struct.bio, ptr %110, i32 0, i32 8
  %111 = ptrtoint ptr %bi_iter.i.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %bi_iter.i.i.i, align 8
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %110, i32 0, i32 8, i32 1
  %113 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bi_size.i.i.i, align 8
  %shr.i55.i.i = lshr i32 %114, 9
  %conv23.i.i.i = zext i32 %shr.i55.i.i to i64
  %add24.i.i.i = add i64 %112, %conv23.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add24.i.i.i, i64 %shr.i.i.i)
  %cmp25.not.i.i.i = icmp eq i64 %add24.i.i.i, %shr.i.i.i
  br i1 %cmp25.not.i.i.i, label %iomap_can_add_to_ioend.exit.i.i, label %if.end18.i.i.i.if.then6.i.i_crit_edge

if.end18.i.i.i.if.then6.i.i_crit_edge:            ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i.i

iomap_can_add_to_ioend.exit.i.i:                  ; preds = %if.end18.i.i.i
  %io_folios.i.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %96, i32 0, i32 3
  %115 = ptrtoint ptr %io_folios.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %io_folios.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %116)
  %cmp30.i.i.i = icmp ult i32 %116, 4096
  br i1 %cmp30.i.i.i, label %iomap_can_add_to_ioend.exit.i.i.if.end10.i.i_crit_edge, label %iomap_can_add_to_ioend.exit.i.i.if.then6.i.i_crit_edge

iomap_can_add_to_ioend.exit.i.i.if.then6.i.i_crit_edge: ; preds = %iomap_can_add_to_ioend.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.i.i

iomap_can_add_to_ioend.exit.i.i.if.end10.i.i_crit_edge: ; preds = %iomap_can_add_to_ioend.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.then6.i.i:                                     ; preds = %iomap_can_add_to_ioend.exit.i.i.if.then6.i.i_crit_edge, %if.end18.i.i.i.if.then6.i.i_crit_edge, %if.end11.i.i.i.if.then6.i.i_crit_edge, %if.end.i.i.i138.if.then6.i.i_crit_edge, %lor.lhs.false.i.i.if.then6.i.i_crit_edge
  %117 = ptrtoint ptr %submit_list.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %submit_list.i, align 4
  %call.i.i56.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %96, ptr noundef nonnull %submit_list.i, ptr noundef %118) #12
  br i1 %call.i.i56.i.i, label %if.end.i.i.i.i, label %if.then6.i.i.if.end.i.i_crit_edge

if.then6.i.i.if.end.i.i_crit_edge:                ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i.i.i:                                   ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %96, ptr %prev1.i.i.i.i, align 4
  %120 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %118, ptr %96, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %121 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %submit_list.i, ptr %prev3.i.i.i.i, align 4
  %122 = ptrtoint ptr %submit_list.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %96, ptr %submit_list.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i, %if.then6.i.i.if.end.i.i_crit_edge, %folio_size.exit.i.i.if.end.i.i_crit_edge
  %call.i.i510.i = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 256, ptr noundef nonnull @iomap_ioend_bioset) #12
  %123 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bdev.i.i.i, align 4
  %bi_flags.i.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i510.i, i32 0, i32 3
  %125 = ptrtoint ptr %bi_flags.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %bi_flags.i.i.i.i.i, align 4
  %conv1.i.i.i.i.i = and i16 %126, -2049
  store i16 %conv1.i.i.i.i.i, ptr %bi_flags.i.i.i.i.i, align 4
  %bi_bdev.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i510.i, i32 0, i32 1
  %127 = ptrtoint ptr %bi_bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bi_bdev.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %128, %124
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.bio_set_dev.exit.i.i.i_crit_edge, label %if.then.i.i.i.i139

if.end.i.i.bio_set_dev.exit.i.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit.i.i.i

if.then.i.i.i.i139:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i.i.i = and i16 %126, -2177
  %129 = ptrtoint ptr %bi_flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv1.i8.i.i.i.i, ptr %bi_flags.i.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i.i

bio_set_dev.exit.i.i.i:                           ; preds = %if.then.i.i.i.i139, %if.end.i.i.bio_set_dev.exit.i.i.i_crit_edge
  %130 = ptrtoint ptr %bi_bdev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %124, ptr %bi_bdev.i.i.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %call.i.i510.i) #12
  %bi_iter.i57.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i510.i, i32 0, i32 8
  %131 = ptrtoint ptr %bi_iter.i57.i.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %shr.i.i.i, ptr %bi_iter.i57.i.i, align 8
  %132 = ptrtoint ptr %punt_to_cgroup.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %bf.load.i.i.i.i = load i16, ptr %punt_to_cgroup.i.i.i.i, align 4
  %133 = and i16 %bf.load.i.i.i.i, 128
  %134 = zext i16 %133 to i32
  %135 = shl nuw nsw i32 %134, 15
  %136 = ptrtoint ptr %sync_mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sync_mode.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp.i.i.i.i = icmp eq i32 %137, 1
  %138 = or i32 %135, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i.i.i.i)
  %139 = icmp ult i16 %bf.load.i.i.i.i, 16384
  %140 = or i32 %135, 1048576
  %spec.select.i.i.i.i = select i1 %139, i32 %135, i32 %140
  %flags.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %138, i32 %spec.select.i.i.i.i
  %or.i.i.i = or i32 %flags.0.i.i.i.i, 1
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i510.i, i32 0, i32 2
  %141 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or.i.i.i, ptr %bi_opf.i.i.i, align 8
  %142 = ptrtoint ptr %i_write_hint.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %i_write_hint.i.i.i, align 1
  %conv.i58.i.i = zext i8 %143 to i16
  %bi_write_hint.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i510.i, i32 0, i32 5
  %144 = ptrtoint ptr %bi_write_hint.i.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv.i58.i.i, ptr %bi_write_hint.i.i.i, align 8
  %145 = ptrtoint ptr %wb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wb.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %146, null
  br i1 %tobool.not.i.i.i.i, label %bio_set_dev.exit.i.i.i.iomap_alloc_ioend.exit.i.i_crit_edge, label %if.then.i24.i.i.i

bio_set_dev.exit.i.i.i.iomap_alloc_ioend.exit.i.i_crit_edge: ; preds = %bio_set_dev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_alloc_ioend.exit.i.i

if.then.i24.i.i.i:                                ; preds = %bio_set_dev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %blkcg_css.i.i.i.i = getelementptr inbounds %struct.bdi_writeback, ptr %146, i32 0, i32 30
  %147 = ptrtoint ptr %blkcg_css.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %blkcg_css.i.i.i.i, align 4
  call void @bio_associate_blkg_from_css(ptr noundef %call.i.i510.i, ptr noundef %148) #12
  br label %iomap_alloc_ioend.exit.i.i

iomap_alloc_ioend.exit.i.i:                       ; preds = %if.then.i24.i.i.i, %bio_set_dev.exit.i.i.i.iomap_alloc_ioend.exit.i.i_crit_edge
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -48
  %149 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %add.ptr.i.i.i, ptr %add.ptr.i.i.i, align 4
  %prev.i.i.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -44
  %150 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %add.ptr.i.i.i, ptr %prev.i.i.i.i, align 4
  %151 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %type.i, align 8
  %io_type.i60.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -40
  %153 = ptrtoint ptr %io_type.i60.i.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %io_type.i60.i.i, align 8
  %154 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %flags.i.i.i, align 2
  %io_flags.i62.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -38
  %156 = ptrtoint ptr %io_flags.i62.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %io_flags.i62.i.i, align 2
  %io_inode.i.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -32
  %157 = ptrtoint ptr %io_inode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %8, ptr %io_inode.i.i.i, align 8
  %io_size.i63.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -28
  %158 = ptrtoint ptr %io_size.i63.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %io_size.i63.i.i, align 4
  %io_folios.i64.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -36
  %159 = ptrtoint ptr %io_folios.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %io_folios.i64.i.i, align 4
  %io_offset.i65.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -24
  %160 = ptrtoint ptr %io_offset.i65.i.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %pos.0539.i, ptr %io_offset.i65.i.i, align 8
  %io_bio.i66.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -8
  %161 = ptrtoint ptr %io_bio.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call.i.i510.i, ptr %io_bio.i66.i.i, align 8
  %io_sector.i.i.i = getelementptr i8, ptr %call.i.i510.i, i32 -16
  %162 = ptrtoint ptr %io_sector.i.i.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %shr.i.i.i, ptr %io_sector.i.i.i, align 8
  %163 = ptrtoint ptr %ioend.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %add.ptr.i.i.i, ptr %ioend.i.i, align 8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %iomap_alloc_ioend.exit.i.i, %iomap_can_add_to_ioend.exit.i.i.if.end10.i.i_crit_edge
  %164 = ptrtoint ptr %ioend.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ioend.i.i, align 8
  %io_bio.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %165, i32 0, i32 8
  %166 = ptrtoint ptr %io_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %io_bio.i.i, align 8
  %call12.i.i = call zeroext i1 @bio_add_folio(ptr noundef %167, ptr noundef %4, i32 noundef %shl.i.i499.i, i32 noundef %and.i509.i) #12
  br i1 %call12.i.i, label %if.end10.i.i.if.end22.i.i_crit_edge, label %if.then13.i.i

if.end10.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %168 = ptrtoint ptr %ioend.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ioend.i.i, align 8
  %io_bio15.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %169, i32 0, i32 8
  %170 = ptrtoint ptr %io_bio15.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %io_bio15.i.i, align 8
  %call.i.i67.i.i = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #12
  %bi_flags.i.i.i68.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i67.i.i, i32 0, i32 3
  %172 = ptrtoint ptr %bi_flags.i.i.i68.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %bi_flags.i.i.i68.i.i, align 4
  %conv1.i.i.i69.i.i = and i16 %173, -2049
  store i16 %conv1.i.i.i69.i.i, ptr %bi_flags.i.i.i68.i.i, align 4
  %bi_bdev.i.i70.i.i = getelementptr inbounds %struct.bio, ptr %171, i32 0, i32 1
  %174 = ptrtoint ptr %bi_bdev.i.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bi_bdev.i.i70.i.i, align 4
  %bi_bdev1.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i67.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %bi_bdev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %175, ptr %bi_bdev1.i.i.i.i, align 4
  call void @bio_clone_blkg_association(ptr noundef %call.i.i67.i.i, ptr noundef %171) #12
  %bi_iter.i71.i.i = getelementptr inbounds %struct.bio, ptr %171, i32 0, i32 8
  %177 = ptrtoint ptr %bi_iter.i71.i.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %bi_iter.i71.i.i, align 8
  %bi_size.i72.i.i = getelementptr inbounds %struct.bio, ptr %171, i32 0, i32 8, i32 1
  %179 = ptrtoint ptr %bi_size.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %bi_size.i72.i.i, align 8
  %shr.i73.i.i = lshr i32 %180, 9
  %conv.i74.i.i = zext i32 %shr.i73.i.i to i64
  %add.i75.i.i = add i64 %178, %conv.i74.i.i
  %bi_iter2.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i67.i.i, i32 0, i32 8
  %181 = ptrtoint ptr %bi_iter2.i.i.i to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %add.i75.i.i, ptr %bi_iter2.i.i.i, align 8
  %bi_opf.i76.i.i = getelementptr inbounds %struct.bio, ptr %171, i32 0, i32 2
  %182 = ptrtoint ptr %bi_opf.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %bi_opf.i76.i.i, align 8
  %bi_opf4.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i67.i.i, i32 0, i32 2
  %184 = ptrtoint ptr %bi_opf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %bi_opf4.i.i.i, align 8
  %bi_write_hint.i77.i.i = getelementptr inbounds %struct.bio, ptr %171, i32 0, i32 5
  %185 = ptrtoint ptr %bi_write_hint.i77.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %bi_write_hint.i77.i.i, align 8
  %bi_write_hint5.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i67.i.i, i32 0, i32 5
  %187 = ptrtoint ptr %bi_write_hint5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %186, ptr %bi_write_hint5.i.i.i, align 8
  call void @bio_chain(ptr noundef %171, ptr noundef %call.i.i67.i.i) #12
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %171, i32 0, i32 3
  %188 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %190 = or i16 %189, 64
  store i16 %190, ptr %bi_flags.i.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  %__bi_cnt.i.i.i.i = getelementptr inbounds %struct.bio, ptr %171, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %__bi_cnt.i.i.i.i, i32 1, i32 3, i32 1) #12
  %191 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i.i.i.i, ptr %__bi_cnt.i.i.i.i, i32 1, ptr elementtype(i32) %__bi_cnt.i.i.i.i) #12, !srcloc !160
  call void @submit_bio(ptr noundef %171) #12
  %192 = ptrtoint ptr %ioend.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ioend.i.i, align 8
  %io_bio18.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %193, i32 0, i32 8
  %194 = ptrtoint ptr %io_bio18.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call.i.i67.i.i, ptr %io_bio18.i.i, align 8
  %195 = load ptr, ptr %ioend.i.i, align 8
  %io_bio20.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %195, i32 0, i32 8
  %196 = ptrtoint ptr %io_bio20.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %io_bio20.i.i, align 8
  %call21.i.i = call zeroext i1 @bio_add_folio(ptr noundef %197, ptr noundef %4, i32 noundef %shl.i.i499.i, i32 noundef %and.i509.i) #12
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then13.i.i, %if.end10.i.i.if.end22.i.i_crit_edge
  br i1 %tobool.not.i136, label %if.end22.i.i.iomap_add_to_ioend.exit.i_crit_edge, label %if.then24.i.i

if.end22.i.i.iomap_add_to_ioend.exit.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_add_to_ioend.exit.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %write_bytes_pending.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %write_bytes_pending.i.i, i32 1, i32 3, i32 1) #12
  %198 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %write_bytes_pending.i.i, ptr %write_bytes_pending.i.i, i32 %shl.i.i499.i, ptr elementtype(i32) %write_bytes_pending.i.i) #12, !srcloc !160
  br label %iomap_add_to_ioend.exit.i

iomap_add_to_ioend.exit.i:                        ; preds = %if.then24.i.i, %if.end22.i.i.iomap_add_to_ioend.exit.i_crit_edge
  %199 = ptrtoint ptr %ioend.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ioend.i.i, align 8
  %io_size.i.i = getelementptr inbounds %struct.iomap_ioend, ptr %200, i32 0, i32 5
  %201 = ptrtoint ptr %io_size.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %io_size.i.i, align 4
  %add.i.i = add i32 %202, %shl.i.i499.i
  store i32 %add.i.i, ptr %io_size.i.i, align 4
  call void @wbc_account_cgroup_owner(ptr noundef %wbc, ptr noundef %4, i32 noundef %shl.i.i499.i) #12
  %inc.i = add i32 %count.0538.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %iomap_add_to_ioend.exit.i, %if.then77.i, %land.rhs66.i.for.inc.i_crit_edge, %if.end55.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %iomap_add_to_ioend.exit.i ], [ %count.0538.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %count.0538.i, %if.then77.i ], [ %count.0538.i, %land.rhs66.i.for.inc.i_crit_edge ], [ %count.0538.i, %if.end55.i.for.inc.i_crit_edge ]
  %inc122.i = add nuw i32 %i.0535.i, 1
  %add.i = add i64 %pos.0539.i, %conv123.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc122.i, i32 %shr.i496.i)
  %cmp43.i = icmp ult i32 %inc122.i, %shr.i496.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %end_pos.1)
  %cmp45.i = icmp ult i64 %add.i, %end_pos.1
  %or.cond.i = select i1 %cmp43.i, i1 %cmp45.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end51.i.for.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ %count.0538.i, %if.end51.i.for.end.i_crit_edge ], [ %count.1.i, %for.inc.i.for.end.i_crit_edge ]
  %pos.0.lcssa.i = phi i64 [ %pos.0539.i, %if.end51.i.for.end.i_crit_edge ], [ %add.i, %for.inc.i.for.end.i_crit_edge ]
  %error.2.i = phi i32 [ %call52.i, %if.end51.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa.i)
  %tobool124.not.i = icmp eq i32 %count.0.lcssa.i, 0
  br i1 %tobool124.not.i, label %for.end.i.if.end128.i_crit_edge, label %if.then125.i

for.end.i.if.end128.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128.i

if.then125.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %203 = ptrtoint ptr %ioend.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ioend.i.i, align 8
  %io_folios.i = getelementptr inbounds %struct.iomap_ioend, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %io_folios.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %io_folios.i, align 4
  %inc127.i = add i32 %206, 1
  store i32 %inc127.i, ptr %io_folios.i, align 4
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then125.i, %for.end.i.if.end128.i_crit_edge, %if.end35.i.if.end128.i_crit_edge
  %tobool124.not563.i = phi i1 [ false, %if.then125.i ], [ true, %for.end.i.if.end128.i_crit_edge ], [ true, %if.end35.i.if.end128.i_crit_edge ]
  %error.2561.i = phi i32 [ %error.2.i, %if.then125.i ], [ %error.2.i, %for.end.i.if.end128.i_crit_edge ], [ 0, %if.end35.i.if.end128.i_crit_edge ]
  %pos.0.lcssa560.i = phi i64 [ %pos.0.lcssa.i, %if.then125.i ], [ %pos.0.lcssa.i, %for.end.i.if.end128.i_crit_edge ], [ %shl.i.i497.i, %if.end35.i.if.end128.i_crit_edge ]
  %ioend130.i = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %data, i32 0, i32 1
  %207 = ptrtoint ptr %ioend130.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ioend130.i, align 8
  %tobool131.not.i = icmp eq ptr %208, null
  br i1 %tobool131.not.i, label %land.rhs132.i, label %if.end128.i.if.end183.i_crit_edge

if.end128.i.if.end183.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183.i

land.rhs132.i:                                    ; preds = %if.end128.i
  %209 = ptrtoint ptr %submit_list.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile ptr, ptr %submit_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %210, %submit_list.i
  br i1 %cmp.i.not.i, label %land.rhs132.i.if.end183.i_crit_edge, label %land.rhs145.i

land.rhs132.i.if.end183.i_crit_edge:              ; preds = %land.rhs132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183.i

land.rhs145.i:                                    ; preds = %land.rhs132.i
  %.b469476.i = load i1, ptr @iomap_writepage_map.__already_done.24, align 1
  br i1 %.b469476.i, label %land.rhs145.i.if.end183.i_crit_edge, label %if.then156.i, !prof !149

land.rhs145.i.if.end183.i_crit_edge:              ; preds = %land.rhs145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183.i

if.then156.i:                                     ; preds = %land.rhs145.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_writepage_map.__already_done.24, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1383, i32 noundef 9, ptr noundef null) #12
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.then156.i, %land.rhs145.i.if.end183.i_crit_edge, %land.rhs132.i.if.end183.i_crit_edge, %if.end128.i.if.end183.i_crit_edge
  %211 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %211, align 4
  %and.i.i.i.i = and i32 %213, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i140 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i140, label %folio_test_locked.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_locked.exit.i:                         ; preds = %if.end183.i
  %214 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %4, align 4
  %and1.i.i.i = and i32 %215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.rhs202.i, label %folio_test_locked.exit.i.if.end240.i_crit_edge

folio_test_locked.exit.i.if.end240.i_crit_edge:   ; preds = %folio_test_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end240.i

land.rhs202.i:                                    ; preds = %folio_test_locked.exit.i
  %.b470475.i = load i1, ptr @iomap_writepage_map.__already_done.25, align 1
  br i1 %.b470475.i, label %land.rhs202.i.if.end240.i_crit_edge, label %if.then213.i, !prof !149

land.rhs202.i.if.end240.i_crit_edge:              ; preds = %land.rhs202.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end240.i

if.then213.i:                                     ; preds = %land.rhs202.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_writepage_map.__already_done.25, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1384, i32 noundef 9, ptr noundef null) #12
  br label %if.end240.i

if.end240.i:                                      ; preds = %if.then213.i, %land.rhs202.i.if.end240.i_crit_edge, %folio_test_locked.exit.i.if.end240.i_crit_edge
  %216 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %211, align 4
  %and.i.i.i483.i = and i32 %217, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i483.i)
  %tobool.not.i.i484.i = icmp eq i32 %and.i.i.i483.i, 0
  br i1 %tobool.not.i.i484.i, label %folio_test_writeback.exit.i, label %if.then.i.i485.i, !prof !149

if.then.i.i485.i:                                 ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_writeback.exit.i:                      ; preds = %if.end240.i
  %218 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %4, align 4
  %220 = and i32 %219, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.i486.not.i = icmp eq i32 %220, 0
  br i1 %tobool.i486.not.i, label %folio_test_writeback.exit.i.if.end295.i_crit_edge, label %land.rhs257.i

folio_test_writeback.exit.i.if.end295.i_crit_edge: ; preds = %folio_test_writeback.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295.i

land.rhs257.i:                                    ; preds = %folio_test_writeback.exit.i
  %.b471474.i = load i1, ptr @iomap_writepage_map.__already_done.26, align 1
  br i1 %.b471474.i, label %land.rhs257.i.if.end295.i_crit_edge, label %if.then268.i, !prof !149

land.rhs257.i.if.end295.i_crit_edge:              ; preds = %land.rhs257.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295.i

if.then268.i:                                     ; preds = %land.rhs257.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_writepage_map.__already_done.26, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 9, ptr noundef null) #12
  br label %if.end295.i

if.end295.i:                                      ; preds = %if.then268.i, %land.rhs257.i.if.end295.i_crit_edge, %folio_test_writeback.exit.i.if.end295.i_crit_edge
  %221 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile i32, ptr %211, align 4
  %and.i.i.i487.i = and i32 %222, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i487.i)
  %tobool.not.i.i488.i = icmp eq i32 %and.i.i.i487.i, 0
  br i1 %tobool.not.i.i488.i, label %folio_test_dirty.exit.i, label %if.then.i.i489.i, !prof !149

if.then.i.i489.i:                                 ; preds = %if.end295.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_dirty.exit.i:                          ; preds = %if.end295.i
  %223 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %4, align 4
  %225 = and i32 %224, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool.i490.not.i = icmp eq i32 %225, 0
  br i1 %tobool.i490.not.i, label %folio_test_dirty.exit.i.if.end350.i_crit_edge, label %land.rhs312.i

folio_test_dirty.exit.i.if.end350.i_crit_edge:    ; preds = %folio_test_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end350.i

land.rhs312.i:                                    ; preds = %folio_test_dirty.exit.i
  %.b472473.i = load i1, ptr @iomap_writepage_map.__already_done.27, align 1
  br i1 %.b472473.i, label %land.rhs312.i.if.end350.i_crit_edge, label %if.then323.i, !prof !149

land.rhs312.i.if.end350.i_crit_edge:              ; preds = %land.rhs312.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end350.i

if.then323.i:                                     ; preds = %land.rhs312.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_writepage_map.__already_done.27, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1386, i32 noundef 9, ptr noundef null) #12
  br label %if.end350.i

if.end350.i:                                      ; preds = %if.then323.i, %land.rhs312.i.if.end350.i_crit_edge, %folio_test_dirty.exit.i.if.end350.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2561.i)
  %tobool358.not.i = icmp eq i32 %error.2561.i, 0
  br i1 %tobool358.not.i, label %if.end350.i.if.end375.i_crit_edge, label %if.then365.i, !prof !149

if.end350.i.if.end375.i_crit_edge:                ; preds = %if.end350.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end375.i

if.then365.i:                                     ; preds = %if.end350.i
  %ops366.i = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %data, i32 0, i32 2
  %226 = ptrtoint ptr %ops366.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ops366.i, align 4
  %discard_folio.i = getelementptr inbounds %struct.iomap_writeback_ops, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %discard_folio.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %discard_folio.i, align 4
  %tobool367.not.i = icmp eq ptr %229, null
  br i1 %tobool367.not.i, label %if.then365.i.if.end371.i_crit_edge, label %if.then368.i

if.then365.i.if.end371.i_crit_edge:               ; preds = %if.then365.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end371.i

if.then368.i:                                     ; preds = %if.then365.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %229(ptr noundef %4, i64 noundef %pos.0.lcssa560.i) #12
  br label %if.end371.i

if.end371.i:                                      ; preds = %if.then368.i, %if.then365.i.if.end371.i_crit_edge
  br i1 %tobool124.not563.i, label %if.then373.i, label %if.end371.i.if.end375.i_crit_edge

if.end371.i.if.end375.i_crit_edge:                ; preds = %if.end371.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end375.i

if.then373.i:                                     ; preds = %if.end371.i
  %230 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile i32, ptr %211, align 4
  %and.i.i.i491.i = and i32 %231, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i491.i)
  %tobool.not.i.i492.i = icmp eq i32 %and.i.i.i491.i, 0
  br i1 %tobool.not.i.i492.i, label %done.thread.i, label %if.then.i.i493.i, !prof !149

if.then.i.i493.i:                                 ; preds = %if.then373.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

done.thread.i:                                    ; preds = %if.then373.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 2, ptr noundef %4) #12
  call void @folio_unlock(ptr noundef %4) #12
  br label %if.end.i520.i

if.end375.i:                                      ; preds = %if.end371.i.if.end375.i_crit_edge, %if.end350.i.if.end375.i_crit_edge
  %call376.i = call zeroext i1 @__folio_start_writeback(ptr noundef %4, i1 noundef zeroext false) #12
  call void @folio_unlock(ptr noundef %4) #12
  %232 = ptrtoint ptr %submit_list.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %submit_list.i, align 4
  %cmp385.not550.i = icmp eq ptr %233, %submit_list.i
  br i1 %cmp385.not550.i, label %if.end375.i.for.end403.i_crit_edge, label %for.body389.lr.ph.i

if.end375.i.for.end403.i_crit_edge:               ; preds = %if.end375.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end403.i

for.body389.lr.ph.i:                              ; preds = %if.end375.i
  %ops.i.i = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %data, i32 0, i32 2
  br label %for.body389.i

for.body389.i:                                    ; preds = %iomap_submit_ioend.exit.i.for.body389.i_crit_edge, %for.body389.lr.ph.i
  %ioend.0553.i = phi ptr [ %233, %for.body389.lr.ph.i ], [ %next.0554.i, %iomap_submit_ioend.exit.i.for.body389.i_crit_edge ]
  %error.3551.i = phi i32 [ %error.2561.i, %for.body389.lr.ph.i ], [ %error.4.i, %iomap_submit_ioend.exit.i.for.body389.i_crit_edge ]
  %234 = ptrtoint ptr %ioend.0553.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %next.0554.i = load ptr, ptr %ioend.0553.i, align 8
  %call.i.i512.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ioend.0553.i) #12
  br i1 %call.i.i512.i, label %if.end.i.i514.i, label %for.body389.i.list_del_init.exit.i_crit_edge

for.body389.i.list_del_init.exit.i_crit_edge:     ; preds = %for.body389.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i514.i:                                  ; preds = %for.body389.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ioend.0553.i, i32 0, i32 1
  %235 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %prev.i.i.i, align 4
  %237 = ptrtoint ptr %ioend.0553.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ioend.0553.i, align 4
  %prev1.i.i.i513.i = getelementptr inbounds %struct.list_head, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %prev1.i.i.i513.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %236, ptr %prev1.i.i.i513.i, align 4
  %240 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile ptr %238, ptr %236, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i514.i, %for.body389.i.list_del_init.exit.i_crit_edge
  %241 = ptrtoint ptr %ioend.0553.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile ptr %ioend.0553.i, ptr %ioend.0553.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %ioend.0553.i, i32 0, i32 1
  %242 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %ioend.0553.i, ptr %prev.i3.i.i, align 4
  %io_bio.i515.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend.0553.i, i32 0, i32 8
  %243 = ptrtoint ptr %io_bio.i515.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %io_bio.i515.i, align 8
  %bi_private.i.i = getelementptr inbounds %struct.bio, ptr %244, i32 0, i32 11
  %245 = ptrtoint ptr %bi_private.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %ioend.0553.i, ptr %bi_private.i.i, align 4
  %246 = load ptr, ptr %io_bio.i515.i, align 8
  %bi_end_io.i.i = getelementptr inbounds %struct.bio, ptr %246, i32 0, i32 10
  %247 = ptrtoint ptr %bi_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @iomap_writepage_end_bio, ptr %bi_end_io.i.i, align 8
  %248 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ops.i.i, align 4
  %prepare_ioend.i.i = getelementptr inbounds %struct.iomap_writeback_ops, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %prepare_ioend.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %prepare_ioend.i.i, align 4
  %tobool.not.i516.i = icmp eq ptr %251, null
  br i1 %tobool.not.i516.i, label %list_del_init.exit.i.if.end.i517.i_crit_edge, label %if.then.i.i

list_del_init.exit.i.if.end.i517.i_crit_edge:     ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i517.i

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 %251(ptr noundef %ioend.0553.i, i32 noundef %error.3551.i) #12
  br label %if.end.i517.i

if.end.i517.i:                                    ; preds = %if.then.i.i, %list_del_init.exit.i.if.end.i517.i_crit_edge
  %error.addr.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %error.3551.i, %list_del_init.exit.i.if.end.i517.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.addr.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %error.addr.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i517.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call zeroext i8 @errno_to_blk_status(i32 noundef %error.addr.0.i.i) #12
  %252 = ptrtoint ptr %io_bio.i515.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %io_bio.i515.i, align 8
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %253, i32 0, i32 6
  %254 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %call6.i.i, ptr %bi_status.i.i, align 2
  %255 = load ptr, ptr %io_bio.i515.i, align 8
  call void @bio_endio(ptr noundef %255) #12
  br label %iomap_submit_ioend.exit.i

if.end9.i.i:                                      ; preds = %if.end.i517.i
  call void @__sanitizer_cov_trace_pc() #14
  %256 = ptrtoint ptr %io_bio.i515.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %io_bio.i515.i, align 8
  call void @submit_bio(ptr noundef %257) #12
  br label %iomap_submit_ioend.exit.i

iomap_submit_ioend.exit.i:                        ; preds = %if.end9.i.i, %if.then5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.addr.0.i.i)
  %tobool392.not.i = icmp ne i32 %error.addr.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3551.i)
  %tobool394.not.i = icmp eq i32 %error.3551.i, 0
  %or.cond482.i = select i1 %tobool392.not.i, i1 %tobool394.not.i, i1 false
  %error.4.i = select i1 %or.cond482.i, i32 %error.addr.0.i.i, i32 %error.3551.i
  %cmp385.not.i = icmp eq ptr %next.0554.i, %submit_list.i
  br i1 %cmp385.not.i, label %iomap_submit_ioend.exit.i.for.end403.i_crit_edge, label %iomap_submit_ioend.exit.i.for.body389.i_crit_edge

iomap_submit_ioend.exit.i.for.body389.i_crit_edge: ; preds = %iomap_submit_ioend.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body389.i

iomap_submit_ioend.exit.i.for.end403.i_crit_edge: ; preds = %iomap_submit_ioend.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end403.i

for.end403.i:                                     ; preds = %iomap_submit_ioend.exit.i.for.end403.i_crit_edge, %if.end375.i.for.end403.i_crit_edge
  %error.3.lcssa.i = phi i32 [ %error.2561.i, %if.end375.i.for.end403.i_crit_edge ], [ %error.4.i, %iomap_submit_ioend.exit.i.for.end403.i_crit_edge ]
  br i1 %tobool124.not563.i, label %if.then405.i, label %for.end403.i.done.i_crit_edge

for.end403.i.done.i_crit_edge:                    ; preds = %for.end403.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

if.then405.i:                                     ; preds = %for.end403.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @folio_end_writeback(ptr noundef %4) #12
  br label %done.i

done.i:                                           ; preds = %if.then405.i, %for.end403.i.done.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3.lcssa.i)
  %tobool.not.i518.i = icmp eq i32 %error.3.lcssa.i, 0
  br i1 %tobool.not.i518.i, label %done.i.iomap_writepage_map.exit_crit_edge, label %done.i.if.end.i520.i_crit_edge, !prof !149

done.i.if.end.i520.i_crit_edge:                   ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i520.i

done.i.iomap_writepage_map.exit_crit_edge:        ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_writepage_map.exit

if.end.i520.i:                                    ; preds = %done.i.if.end.i520.i_crit_edge, %done.thread.i
  %error.5528.i = phi i32 [ %error.2561.i, %done.thread.i ], [ %error.3.lcssa.i, %done.i.if.end.i520.i_crit_edge ]
  %258 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mapping, align 4
  call void @__filemap_set_wb_err(ptr noundef %259, i32 noundef %error.5528.i) #12
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %259, align 4
  %tobool4.not.i519.i = icmp eq ptr %261, null
  br i1 %tobool4.not.i519.i, label %if.end.i520.i.if.end7.i.i_crit_edge, label %if.then5.i522.i

if.end.i520.i.if.end7.i.i_crit_edge:              ; preds = %if.end.i520.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then5.i522.i:                                  ; preds = %if.end.i520.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %261, i32 0, i32 8
  %262 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %i_sb.i.i, align 4
  %s_wb_err.i.i = getelementptr inbounds %struct.super_block, ptr %263, i32 0, i32 50
  %call.i521.i = call i32 @errseq_set(ptr noundef %s_wb_err.i.i, i32 noundef %error.5528.i) #12
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i522.i, %if.end.i520.i.if.end7.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %error.5528.i)
  %cmp.i523.i = icmp eq i32 %error.5528.i, -28
  %flags.i.i = getelementptr inbounds %struct.address_space, ptr %259, i32 0, i32 10
  %..i.i = zext i1 %cmp.i523.i to i32
  call void @_set_bit(i32 noundef %..i.i, ptr noundef %flags.i.i) #12
  br label %iomap_writepage_map.exit

iomap_writepage_map.exit:                         ; preds = %if.end7.i.i, %done.i.iomap_writepage_map.exit_crit_edge
  %error.5529.i = phi i32 [ 0, %done.i.iomap_writepage_map.exit_crit_edge ], [ %error.5528.i, %if.end7.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %submit_list.i) #12
  br label %cleanup68

redirty:                                          ; preds = %lor.lhs.false.redirty_crit_edge, %folio_size.exit122.redirty_crit_edge, %if.then, %land.rhs.redirty_crit_edge
  %call67 = tail call zeroext i1 @folio_redirty_for_writepage(ptr noundef %wbc, ptr noundef %4) #12
  tail call void @folio_unlock(ptr noundef %4) #12
  br label %cleanup68

cleanup68:                                        ; preds = %redirty, %iomap_writepage_map.exit
  %retval.0 = phi i32 [ 0, %redirty ], [ %error.5529.i, %iomap_writepage_map.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iomap_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef %wpc, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %wpc, i32 0, i32 2
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %ops1, align 4
  %call = tail call i32 @write_cache_pages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @iomap_do_writepage, ptr noundef %wpc) #12
  %ioend = getelementptr inbounds %struct.iomap_writepage_ctx, ptr %wpc, i32 0, i32 1
  %1 = ptrtoint ptr %ioend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioend, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_bio.i = getelementptr inbounds %struct.iomap_ioend, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %io_bio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_bio.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %bi_private.i, align 4
  %6 = load ptr, ptr %io_bio.i, align 8
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @iomap_writepage_end_bio, ptr %bi_end_io.i, align 8
  %8 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops1, align 4
  %prepare_ioend.i = getelementptr inbounds %struct.iomap_writeback_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prepare_ioend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prepare_ioend.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %11(ptr noundef nonnull %2, i32 noundef %call) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %error.addr.0.i = phi i32 [ %call.i, %if.then.i ], [ %call, %if.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.addr.0.i)
  %tobool4.not.i = icmp eq i32 %error.addr.0.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call zeroext i8 @errno_to_blk_status(i32 noundef %error.addr.0.i) #12
  %12 = ptrtoint ptr %io_bio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_bio.i, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call6.i, ptr %bi_status.i, align 2
  %15 = load ptr, ptr %io_bio.i, align 8
  tail call void @bio_endio(ptr noundef %15) #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %io_bio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_bio.i, align 8
  tail call void @submit_bio(ptr noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.then5.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %error.addr.0.i, %if.then5.i ], [ 0, %if.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_cache_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bioset_init(ptr noundef nonnull @iomap_ioend_bioset, i32 noundef 32, i32 noundef 48, i32 noundef 1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_readpage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iomap_read_inline_data(ptr nocapture noundef readonly %iter, ptr noundef %folio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i = icmp eq i16 %1, 0
  %srcmap.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6
  %iomap.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  %retval.0.i = select i1 %cmp.not.i, ptr %iomap.i, ptr %srcmap.i
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 8
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %offset = getelementptr inbounds %struct.iomap, ptr %retval.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %sub = sub i64 %call1, %5
  %conv = trunc i64 %sub to i32
  %conv3 = trunc i64 %5 to i32
  %6 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i.i.i.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !150

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i:                              ; preds = %entry
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.69, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %13 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %sub8 = add i32 %shl.i, -1
  %and9 = and i32 %sub8, %conv3
  %14 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !149

if.then.i.i:                                      ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_flags.exit.i:                               ; preds = %folio_size.exit
  %17 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %folio, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.not, label %if.end, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !165
  br label %cleanup

if.end:                                           ; preds = %folio_flags.exit.i
  %and = and i32 %conv3, 4095
  %sub11 = sub nuw nsw i32 4096, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11, i32 %conv)
  %cmp = icmp ult i32 %sub11, %conv
  br i1 %cmp, label %land.rhs, label %if.end52

land.rhs:                                         ; preds = %if.end
  %.b230 = load i1, ptr @iomap_read_inline_data.__already_done, align 1
  br i1 %.b230, label %land.rhs.cleanup_crit_edge, label %if.then20, !prof !149

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_read_inline_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end52:                                         ; preds = %if.end
  %inline_data = getelementptr inbounds %struct.iomap, ptr %retval.0.i, i32 0, i32 7
  %20 = ptrtoint ptr %inline_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inline_data, align 4
  %22 = ptrtoint ptr %21 to i32
  %and54 = and i32 %22, 4095
  %sub55 = sub nuw nsw i32 4096, %and54
  call void @__sanitizer_cov_trace_cmp4(i32 %sub55, i32 %conv)
  %cmp56 = icmp ult i32 %sub55, %conv
  br i1 %cmp56, label %land.rhs65, label %if.end113

land.rhs65:                                       ; preds = %if.end52
  %.b226229 = load i1, ptr @iomap_read_inline_data.__already_done.7, align 1
  br i1 %.b226229, label %land.rhs65.cleanup_crit_edge, label %if.then76, !prof !149

land.rhs65.cleanup_crit_edge:                     ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then76:                                        ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_read_inline_data.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end113:                                        ; preds = %if.end52
  %conv115 = and i64 %sub, 4294967295
  %length = getelementptr inbounds %struct.iomap, ptr %retval.0.i, i32 0, i32 2
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %conv115, i64 %24)
  %cmp116 = icmp ugt i64 %conv115, %24
  br i1 %cmp116, label %land.rhs125, label %if.end173

land.rhs125:                                      ; preds = %if.end113
  %.b227228 = load i1, ptr @iomap_read_inline_data.__already_done.8, align 1
  br i1 %.b227228, label %land.rhs125.cleanup_crit_edge, label %if.then136, !prof !149

land.rhs125.cleanup_crit_edge:                    ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then136:                                       ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_read_inline_data.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end173:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp174.not = icmp eq i32 %and9, 0
  br i1 %cmp174.not, label %if.else, label %if.then176

if.then176:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iter, align 8
  %call178 = tail call fastcc ptr @iomap_page_create(ptr noundef %26, ptr noundef %folio)
  br label %if.end180

if.else:                                          ; preds = %if.end173
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i234 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i234, label %folio_test_private.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_private.exit.i:                        ; preds = %if.else
  %29 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %folio, align 4
  %31 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i, label %folio_test_private.exit.i.if.end180_crit_edge, label %if.then.i

folio_test_private.exit.i.if.end180_crit_edge:    ; preds = %folio_test_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.then.i:                                        ; preds = %folio_test_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %private.i.i = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 4
  %32 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private.i.i, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then.i, %folio_test_private.exit.i.if.end180_crit_edge, %if.then176
  %iop.0 = phi ptr [ %call178, %if.then176 ], [ %33, %if.then.i ], [ null, %folio_test_private.exit.i.if.end180_crit_edge ]
  %div3.i = lshr i32 %and9, 12
  %add.ptr.i = getelementptr %struct.page, ptr %folio, i32 %div3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %34 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %34, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i) #12
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 %and
  %35 = ptrtoint ptr %inline_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inline_data, align 4
  %37 = call ptr @memcpy(ptr %add.ptr1.i, ptr %36, i32 %conv)
  %add.ptr = getelementptr i8, ptr %add.ptr1.i, i32 %conv
  %sub184 = sub i32 %sub11, %conv
  %38 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub184)
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i) #12
  tail call fastcc void @iomap_set_range_uptodate(ptr noundef %folio, ptr noundef %iop.0, i32 noundef %and9, i32 noundef %sub11)
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.then136, %land.rhs125.cleanup_crit_edge, %if.then76, %land.rhs65.cleanup_crit_edge, %if.then20, %land.rhs.cleanup_crit_edge, %folio_test_uptodate.exit.thread
  %retval.0 = phi i32 [ 0, %if.end180 ], [ -5, %if.then20 ], [ -5, %if.then76 ], [ -5, %if.then136 ], [ -5, %land.rhs.cleanup_crit_edge ], [ -5, %land.rhs65.cleanup_crit_edge ], [ -5, %land.rhs125.cleanup_crit_edge ], [ 0, %folio_test_uptodate.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iomap_page_create(ptr nocapture noundef readonly %inode, ptr noundef %folio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_private.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_private.exit.i:                        ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %folio_test_private.exit.i.to_iomap_page.exit_crit_edge, label %if.then.i

folio_test_private.exit.i.to_iomap_page.exit_crit_edge: ; preds = %folio_test_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %to_iomap_page.exit

if.then.i:                                        ; preds = %folio_test_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %private.i.i = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 4
  %6 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i.i, align 4
  br label %to_iomap_page.exit

to_iomap_page.exit:                               ; preds = %if.then.i, %folio_test_private.exit.i.to_iomap_page.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.then.i ], [ null, %folio_test_private.exit.i.to_iomap_page.exit_crit_edge ]
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %to_iomap_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %to_iomap_page.exit
  %10 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %folio, align 4
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_blocks_per_folio.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %15 to i32
  br label %i_blocks_per_folio.exit

i_blocks_per_folio.exit:                          ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %16 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %17 to i32
  %shr.i = lshr i32 %shl.i.i, %conv.i
  %tobool.not = icmp ne ptr %retval.0.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp = icmp ult i32 %shr.i, 2
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %i_blocks_per_folio.exit.cleanup_crit_edge, label %if.end

i_blocks_per_folio.exit.cleanup_crit_edge:        ; preds = %i_blocks_per_folio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %i_blocks_per_folio.exit
  %sub = add i32 %shr.i, 31
  %18 = lshr i32 %sub, 3
  %19 = and i32 %18, 536870908
  %spec.select.i27 = add nuw nsw i32 %19, 52
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i27, i32 noundef 36160) #16
  %uptodate_lock = getelementptr inbounds %struct.iomap_page, ptr %call9.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %uptodate_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @iomap_page_create.__key, i16 noundef signext 3) #12
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i21, !prof !149

if.then.i.i21:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_flags.exit.i:                               ; preds = %if.end
  %22 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %folio, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.not, label %folio_flags.exit.i.if.end7_crit_edge, label %if.then6

folio_flags.exit.i.if.end7_crit_edge:             ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !165
  %uptodate = getelementptr inbounds %struct.iomap_page, ptr %call9.i.i, i32 0, i32 3
  %25 = call ptr @memset(ptr %uptodate, i32 255, i32 %19)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %folio_flags.exit.i.if.end7_crit_edge
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %26 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %27, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i22 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i22, label %if.then.i.i23, label %do.end5.i.i, !prof !150

if.then.i.i23:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.17) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !168
  unreachable

do.end5.i.i:                                      ; preds = %if.end7
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iomap_page_create, %if.then.i.i.i.i)) #12
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !154

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %folio, i32 noundef 1) #12
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 4
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %private.i, align 4
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i24 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i24)
  %tobool.not.i.i.i25 = icmp eq i32 %and.i.i.i.i24, 0
  br i1 %tobool.not.i.i.i25, label %folio_attach_private.exit, label %if.then.i.i.i26, !prof !149

if.then.i.i.i26:                                  ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 13, ptr noundef %folio) #12
  br label %cleanup

cleanup:                                          ; preds = %folio_attach_private.exit, %i_blocks_per_folio.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %folio_attach_private.exit ], [ %retval.0.i, %i_blocks_per_folio.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iomap_adjust_read_range(ptr noundef %inode, ptr noundef %folio, ptr nocapture noundef %pos, i64 noundef %length, ptr nocapture noundef writeonly %offp, ptr nocapture noundef writeonly %lenp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_private.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_private.exit.i:                        ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %folio_test_private.exit.i.to_iomap_page.exit_crit_edge, label %if.then.i

folio_test_private.exit.i.to_iomap_page.exit_crit_edge: ; preds = %folio_test_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %to_iomap_page.exit

if.then.i:                                        ; preds = %folio_test_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %private.i.i = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 4
  %6 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i.i, align 4
  br label %to_iomap_page.exit

to_iomap_page.exit:                               ; preds = %if.then.i, %folio_test_private.exit.i.to_iomap_page.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.then.i ], [ null, %folio_test_private.exit.i.to_iomap_page.exit_crit_edge ]
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %10 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %11 to i32
  %shl = shl nuw i32 1, %conv
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %conv2 = trunc i64 %13 to i32
  %14 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i.i.i.i = icmp eq i32 %15, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !150

if.then.i.i.i.i:                                  ; preds = %to_iomap_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i:                              ; preds = %to_iomap_page.exit
  %16 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %folio, align 4
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i113 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i113, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.69, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %21 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %sub = add i32 %shl.i, -1
  %and = and i32 %sub, %conv2
  %22 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i.i.i.i114 = icmp eq i32 %23, -1
  br i1 %cmp.i.not.i.i.i.i114, label %if.then.i.i.i.i115, label %PageHead.exit.i.i.i117, !prof !150

if.then.i.i.i.i115:                               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i117:                           ; preds = %folio_size.exit
  %24 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %folio, align 4
  %26 = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i116 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i116, label %PageHead.exit.i.i.i117.folio_size.exit123_crit_edge, label %if.end.i.i.i120

PageHead.exit.i.i.i117.folio_size.exit123_crit_edge: ; preds = %PageHead.exit.i.i.i117
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit123

if.end.i.i.i120:                                  ; preds = %PageHead.exit.i.i.i117
  call void @__sanitizer_cov_trace_pc() #14
  %27 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i118 = getelementptr inbounds %struct.anon.69, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %compound_order.i.i.i118 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %compound_order.i.i.i118, align 1
  %conv.i.i.i119 = zext i8 %29 to i32
  br label %folio_size.exit123

folio_size.exit123:                               ; preds = %if.end.i.i.i120, %PageHead.exit.i.i.i117.folio_size.exit123_crit_edge
  %retval.0.i.i.i121 = phi i32 [ %conv.i.i.i119, %if.end.i.i.i120 ], [ 0, %PageHead.exit.i.i.i117.folio_size.exit123_crit_edge ]
  %shl.i122 = shl i32 4096, %retval.0.i.i.i121
  %sub5 = sub i32 %shl.i122, %and
  %conv6 = zext i32 %sub5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv6, i64 %length)
  %cmp = icmp slt i64 %conv6, %length
  %extract.t106 = trunc i64 %length to i32
  %cond.off0 = select i1 %cmp, i32 %sub5, i32 %extract.t106
  %shr = lshr i32 %and, %conv
  %add = add i32 %and, -1
  %sub9 = add i32 %add, %cond.off0
  %shr10 = lshr i32 %sub9, %conv
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %folio_size.exit123.if.end38_crit_edge, label %for.cond.preheader

folio_size.exit123.if.end38_crit_edge:            ; preds = %folio_size.exit123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

for.cond.preheader:                               ; preds = %folio_size.exit123
  %uptodate = getelementptr inbounds %struct.iomap_page, ptr %retval.0.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr10)
  %cmp11.not135 = icmp ugt i32 %shr, %shr10
  br i1 %cmp11.not135, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv16 = zext i32 %shl to i64
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0139 = phi i32 [ %shr, %for.body.lr.ph ], [ %inc20, %if.end.for.body_crit_edge ]
  %plen.0137 = phi i32 [ %cond.off0, %for.body.lr.ph ], [ %sub19, %if.end.for.body_crit_edge ]
  %poff.0136 = phi i32 [ %and, %for.body.lr.ph ], [ %add18, %if.end.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0139, 5
  %arrayidx.i = getelementptr i32, ptr %uptodate, i32 %div3.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0139, 31
  %32 = shl nuw i32 1, %and.i
  %33 = and i32 %31, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool14.not = icmp eq i32 %33, 0
  br i1 %tobool14.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.body
  %34 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %pos, align 8
  %add17 = add i64 %35, %conv16
  store i64 %add17, ptr %pos, align 8
  %add18 = add i32 %poff.0136, %shl
  %sub19 = sub i32 %plen.0137, %shl
  %inc20 = add i32 %i.0139, 1
  %cmp11.not = icmp ugt i32 %inc20, %shr10
  br i1 %cmp11.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %poff.0.lcssa = phi i32 [ %and, %for.cond.preheader.for.end_crit_edge ], [ %poff.0136, %for.body.for.end_crit_edge ], [ %add18, %if.end.for.end_crit_edge ]
  %plen.0.lcssa = phi i32 [ %cond.off0, %for.cond.preheader.for.end_crit_edge ], [ %plen.0137, %for.body.for.end_crit_edge ], [ %sub19, %if.end.for.end_crit_edge ]
  %first.0.lcssa = phi i32 [ %shr, %for.cond.preheader.for.end_crit_edge ], [ %i.0139, %for.body.for.end_crit_edge ], [ %inc20, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr10, i32 %first.0.lcssa)
  %cmp22.not147 = icmp ult i32 %shr10, %first.0.lcssa
  br i1 %cmp22.not147, label %for.end.if.end38_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

for.body24:                                       ; preds = %for.inc35.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %i.1148 = phi i32 [ %inc36, %for.inc35.for.body24_crit_edge ], [ %first.0.lcssa, %for.end.for.body24_crit_edge ]
  %div3.i108 = lshr i32 %i.1148, 5
  %arrayidx.i109 = getelementptr i32, ptr %uptodate, i32 %div3.i108
  %36 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i109, align 4
  %and.i110 = and i32 %i.1148, 31
  %38 = shl nuw i32 1, %and.i110
  %39 = and i32 %37, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool28.not = icmp eq i32 %39, 0
  br i1 %tobool28.not, label %for.inc35, label %if.then29

if.then29:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  %40 = xor i32 %shr10, -1
  %add31.neg = add i32 %i.1148, %40
  %mul.neg = shl i32 %add31.neg, %conv
  %sub32 = add i32 %mul.neg, %plen.0.lcssa
  %sub33 = add i32 %i.1148, -1
  br label %if.end38

for.inc35:                                        ; preds = %for.body24
  %inc36 = add i32 %i.1148, 1
  %cmp22.not = icmp ult i32 %shr10, %inc36
  br i1 %cmp22.not, label %for.inc35.if.end38_crit_edge, label %for.inc35.for.body24_crit_edge

for.inc35.for.body24_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

for.inc35.if.end38_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end38:                                         ; preds = %for.inc35.if.end38_crit_edge, %if.then29, %for.end.if.end38_crit_edge, %folio_size.exit123.if.end38_crit_edge
  %poff.1 = phi i32 [ %and, %folio_size.exit123.if.end38_crit_edge ], [ %poff.0.lcssa, %if.then29 ], [ %poff.0.lcssa, %for.end.if.end38_crit_edge ], [ %poff.0.lcssa, %for.inc35.if.end38_crit_edge ]
  %plen.2 = phi i32 [ %cond.off0, %folio_size.exit123.if.end38_crit_edge ], [ %sub32, %if.then29 ], [ %plen.0.lcssa, %for.end.if.end38_crit_edge ], [ %plen.0.lcssa, %for.inc35.if.end38_crit_edge ]
  %first.1 = phi i32 [ %shr, %folio_size.exit123.if.end38_crit_edge ], [ %first.0.lcssa, %if.then29 ], [ %first.0.lcssa, %for.end.if.end38_crit_edge ], [ %first.0.lcssa, %for.inc35.if.end38_crit_edge ]
  %last.1 = phi i32 [ %shr10, %folio_size.exit123.if.end38_crit_edge ], [ %sub33, %if.then29 ], [ %shr10, %for.end.if.end38_crit_edge ], [ %shr10, %for.inc35.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %call1)
  %cmp39.not = icmp sle i64 %9, %call1
  %add41 = add i64 %9, %length
  call void @__sanitizer_cov_trace_cmp8(i64 %add41, i64 %call1)
  %cmp42 = icmp sgt i64 %add41, %call1
  %or.cond = and i1 %cmp39.not, %cmp42
  br i1 %or.cond, label %if.then44, label %if.end38.if.end61_crit_edge

if.end38.if.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then44:                                        ; preds = %if.end38
  %41 = trunc i64 %call1 to i32
  %conv46 = add i32 %41, -1
  %42 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.not.i.i.i.i124 = icmp eq i32 %43, -1
  br i1 %cmp.i.not.i.i.i.i124, label %if.then.i.i.i.i125, label %PageHead.exit.i.i.i127, !prof !150

if.then.i.i.i.i125:                               ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i127:                           ; preds = %if.then44
  %44 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %folio, align 4
  %46 = and i32 %45, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i126 = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i.i126, label %PageHead.exit.i.i.i127.folio_size.exit133_crit_edge, label %if.end.i.i.i130

PageHead.exit.i.i.i127.folio_size.exit133_crit_edge: ; preds = %PageHead.exit.i.i.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit133

if.end.i.i.i130:                                  ; preds = %PageHead.exit.i.i.i127
  call void @__sanitizer_cov_trace_pc() #14
  %47 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i128 = getelementptr inbounds %struct.anon.69, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %compound_order.i.i.i128 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %compound_order.i.i.i128, align 1
  %conv.i.i.i129 = zext i8 %49 to i32
  br label %folio_size.exit133

folio_size.exit133:                               ; preds = %if.end.i.i.i130, %PageHead.exit.i.i.i127.folio_size.exit133_crit_edge
  %retval.0.i.i.i131 = phi i32 [ %conv.i.i.i129, %if.end.i.i.i130 ], [ 0, %PageHead.exit.i.i.i127.folio_size.exit133_crit_edge ]
  %shl.i132 = shl i32 4096, %retval.0.i.i.i131
  %sub48 = add i32 %shl.i132, -1
  %and49 = and i32 %sub48, %conv46
  %shr50 = lshr i32 %and49, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %first.1, i32 %shr50)
  %cmp51.not = icmp ule i32 %first.1, %shr50
  call void @__sanitizer_cov_trace_cmp4(i32 %shr50, i32 %last.1)
  %cmp54 = icmp ult i32 %shr50, %last.1
  %or.cond107 = select i1 %cmp51.not, i1 %cmp54, i1 false
  %sub57.neg = sub i32 %shr50, %last.1
  %mul58.neg = shl i32 %sub57.neg, %conv
  %sub59 = select i1 %or.cond107, i32 %mul58.neg, i32 0
  %plen.3 = add i32 %sub59, %plen.2
  br label %if.end61

if.end61:                                         ; preds = %folio_size.exit133, %if.end38.if.end61_crit_edge
  %plen.4 = phi i32 [ %plen.3, %folio_size.exit133 ], [ %plen.2, %if.end38.if.end61_crit_edge ]
  %50 = ptrtoint ptr %offp to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %poff.1, ptr %offp, align 4
  %51 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %plen.4, ptr %lenp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iomap_set_range_uptodate(ptr noundef %folio, ptr noundef %iop, i32 noundef %off, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_error.exit, label %if.then.i.i, !prof !149

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_error.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %folio_test_error.exit.if.end2_crit_edge

folio_test_error.exit.if.end2_crit_edge:          ; preds = %folio_test_error.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.end:                                           ; preds = %folio_test_error.exit
  %tobool.not = icmp eq ptr %iop, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %mapping.i = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 2
  %6 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapping.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %11 to i32
  %shr.i = lshr i32 %off, %conv.i
  %add.i = add i32 %off, -1
  %sub.i = add i32 %add.i, %len
  %shr3.i = lshr i32 %sub.i, %conv.i
  %uptodate_lock.i = getelementptr inbounds %struct.iomap_page, ptr %iop, i32 0, i32 2
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uptodate_lock.i) #12
  %uptodate.i = getelementptr inbounds %struct.iomap_page, ptr %iop, i32 0, i32 3
  %sub9.i = sub i32 %shr3.i, %shr.i
  %add10.i = add i32 %sub9.i, 1
  tail call void @__bitmap_set(ptr noundef %uptodate.i, i32 noundef %shr.i, i32 noundef %add10.i) #12
  %12 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !150

if.then.i.i.i.i.i.i:                              ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %if.then1
  %14 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %folio, align 4
  %16 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i.bitmap_full.exit.i_crit_edge, label %if.end.i.i.i.i.i

PageHead.exit.i.i.i.i.i.bitmap_full.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bitmap_full.exit.i

if.end.i.i.i.i.i:                                 ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %19 to i32
  br label %bitmap_full.exit.i

bitmap_full.exit.i:                               ; preds = %if.end.i.i.i.i.i, %PageHead.exit.i.i.i.i.i.bitmap_full.exit.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %conv.i.i.i.i.i, %if.end.i.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.i.bitmap_full.exit.i_crit_edge ]
  %shl.i.i25.i = shl i32 4096, %retval.0.i.i.i.i.i
  %20 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i = zext i8 %21 to i32
  %shr.i.i = lshr i32 %shl.i.i25.i, %conv.i.i
  %call.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %uptodate.i, i32 noundef %shr.i.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %shr.i.i)
  %cmp4.i.i = icmp eq i32 %call.i.i, %shr.i.i
  br i1 %cmp4.i.i, label %if.then.i, label %bitmap_full.exit.i.iomap_iop_set_range_uptodate.exit_crit_edge

bitmap_full.exit.i.iomap_iop_set_range_uptodate.exit_crit_edge: ; preds = %bitmap_full.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_iop_set_range_uptodate.exit

if.then.i:                                        ; preds = %bitmap_full.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_mark_uptodate.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_mark_uptodate.exit.i:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %folio) #12
  br label %iomap_iop_set_range_uptodate.exit

iomap_iop_set_range_uptodate.exit:                ; preds = %folio_mark_uptodate.exit.i, %bitmap_full.exit.i.iomap_iop_set_range_uptodate.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uptodate_lock.i, i32 noundef %call6.i) #12
  br label %if.end2

if.else:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %0, align 4
  %and.i.i.i6 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %and.i.i.i6, 0
  br i1 %tobool.not.i.i7, label %folio_mark_uptodate.exit, label %if.then.i.i8, !prof !149

if.then.i.i8:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_mark_uptodate.exit:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %folio) #12
  br label %if.end2

if.end2:                                          ; preds = %folio_mark_uptodate.exit, %iomap_iop_set_range_uptodate.exit, %folio_test_error.exit.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bio_add_folio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iomap_read_end_io(ptr noundef %bio) #0 align 64 {
entry:
  %fi = alloca %struct.folio_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %0 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bi_status, align 2
  %call = tail call i32 @blk_status_to_errno(i8 noundef zeroext %1) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fi) #12
  %2 = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 1
  %3 = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 2
  %4 = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 3
  %5 = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i.i, align 4
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.not.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.not.i.i, label %entry.bio_first_bvec_all.exit.i_crit_edge, label %land.rhs.i.i

entry.bio_first_bvec_all.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_first_bvec_all.exit.i

land.rhs.i.i:                                     ; preds = %entry
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_bvec_all.exit.i_crit_edge, label %if.then.i.i, !prof !149

land.rhs.i.i.bio_first_bvec_all.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_first_bvec_all.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 248, i32 noundef 9, ptr noundef null) #12
  br label %bio_first_bvec_all.exit.i

bio_first_bvec_all.exit.i:                        ; preds = %if.then.i.i, %land.rhs.i.i.bio_first_bvec_all.exit.i_crit_edge, %entry.bio_first_bvec_all.exit.i_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %9 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bi_io_vec.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i22.i, !prof !149

if.then.i22.i:                                    ; preds = %bio_first_bvec_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %15, -1
  %.pre = ptrtoint ptr %12 to i32
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %bio_first_bvec_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %12 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i22.i
  %sub.ptr.lhs.cast.i.pre-phi = phi i32 [ %16, %if.end.i.i ], [ %.pre, %if.then.i22.i ]
  %retval.0.i.i = phi i32 [ %16, %if.end.i.i ], [ %sub.i.i, %if.then.i22.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %fi, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %10, i32 0, i32 2
  %19 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bv_offset.i, align 4
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.pre-phi, %retval.0.i.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %mul.i = shl i32 %sub.ptr.div.i, 12
  %add.i = add i32 %mul.i, %20
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %2, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_len.i, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %4, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %_compound_head.exit.i
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %17, align 4
  %29 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_first_folio.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = getelementptr %struct.page, ptr %17, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %32 to i32
  br label %bio_first_folio.exit

bio_first_folio.exit:                             ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %sub.i = sub i32 %shl.i.i, %add.i
  %33 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %23) #12
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %3, align 4
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %5, align 4
  %36 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fi, align 4
  %tobool.not11 = icmp eq ptr %37, null
  br i1 %tobool.not11, label %bio_first_folio.exit.for.end_crit_edge, label %for.body.lr.ph

bio_first_folio.exit.for.end_crit_edge:           ; preds = %bio_first_folio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %bio_first_folio.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i = icmp eq i32 %call, 0
  br label %for.body

for.body:                                         ; preds = %iomap_finish_folio_read.exit.for.body_crit_edge, %for.body.lr.ph
  %38 = phi ptr [ %37, %for.body.lr.ph ], [ %57, %iomap_finish_folio_read.exit.for.body_crit_edge ]
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %2, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %43 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i5 = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i5, label %folio_test_private.exit.i.i, label %if.then.i.i.i.i, !prof !149

if.then.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %38, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_private.exit.i.i:                      ; preds = %for.body
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %38, align 4
  %48 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i.i, label %folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge, label %if.then.i.i6

folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge: ; preds = %folio_test_private.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %to_iomap_page.exit.i

if.then.i.i6:                                     ; preds = %folio_test_private.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %private.i.i.i = getelementptr inbounds %struct.anon.81, ptr %38, i32 0, i32 4
  %49 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %private.i.i.i, align 4
  br label %to_iomap_page.exit.i

to_iomap_page.exit.i:                             ; preds = %if.then.i.i6, %folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge
  %retval.0.i.i7 = phi ptr [ %50, %if.then.i.i6 ], [ null, %folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge ]
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !149

if.then.i:                                        ; preds = %to_iomap_page.exit.i
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %43, align 4
  %and.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_clear_uptodate.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %38, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_clear_uptodate.exit.i:                      ; preds = %if.then.i
  tail call void @_clear_bit(i32 noundef 2, ptr noundef nonnull %38) #12
  %53 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %43, align 4
  %and.i.i.i14.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i14.i)
  %tobool.not.i.i15.i = icmp eq i32 %and.i.i.i14.i, 0
  br i1 %tobool.not.i.i15.i, label %folio_set_error.exit.i, label %if.then.i.i16.i, !prof !149

if.then.i.i16.i:                                  ; preds = %folio_clear_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %38, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_set_error.exit.i:                           ; preds = %folio_clear_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 8, ptr noundef nonnull %38) #12
  br label %if.end.i

if.else.i:                                        ; preds = %to_iomap_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @iomap_set_range_uptodate(ptr noundef nonnull %38, ptr noundef %retval.0.i.i7, i32 noundef %40, i32 noundef %42) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %folio_set_error.exit.i
  %tobool3.not.i = icmp eq ptr %retval.0.i.i7, null
  br i1 %tobool3.not.i, label %if.end.i.if.then5.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i.i7, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr nonnull %retval.0.i.i7, i32 1, i32 3, i32 1) #12
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %retval.0.i.i7, ptr nonnull %retval.0.i.i7, i32 %42, ptr nonnull elementtype(i32) %retval.0.i.i7) #12, !srcloc !171
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.if.then5.i_crit_edge, label %lor.lhs.false.i.iomap_finish_folio_read.exit_crit_edge

lor.lhs.false.i.iomap_finish_folio_read.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_finish_folio_read.exit

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i

if.then5.i:                                       ; preds = %lor.lhs.false.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  tail call void @folio_unlock(ptr noundef nonnull %38) #12
  br label %iomap_finish_folio_read.exit

iomap_finish_folio_read.exit:                     ; preds = %if.then5.i, %lor.lhs.false.i.iomap_finish_folio_read.exit_crit_edge
  call fastcc void @bio_next_folio(ptr noundef nonnull %fi, ptr noundef %bio)
  %56 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fi, align 4
  %tobool.not = icmp eq ptr %57, null
  br i1 %tobool.not, label %iomap_finish_folio_read.exit.for.end_crit_edge, label %iomap_finish_folio_read.exit.for.body_crit_edge

iomap_finish_folio_read.exit.for.body_crit_edge:  ; preds = %iomap_finish_folio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

iomap_finish_folio_read.exit.for.end_crit_edge:   ; preds = %iomap_finish_folio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %iomap_finish_folio_read.exit.for.end_crit_edge, %bio_first_folio.exit.for.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fi) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !177
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !178
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !150

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !179
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !180
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !181
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !182
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !183
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bio_next_folio(ptr nocapture noundef %fi, ptr nocapture noundef readonly %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %length = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %_seg_count = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 3
  %2 = ptrtoint ptr %_seg_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_seg_count, align 4
  %sub = sub i32 %3, %1
  store i32 %sub, ptr %_seg_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %tobool.not = icmp eq i32 %3, %1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fi, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i.i.i.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !150

if.then.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.then
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %5, align 4
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_next.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_next.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_next.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %5, i32 1, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %compound_nr.i.i.i, align 4
  br label %folio_next.exit

folio_next.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_next.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %12, %if.end.i.i.i ], [ 1, %PageHead.exit.i.i.i.folio_next.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.page, ptr %5, i32 %retval.0.i.i.i
  %13 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %fi, align 4
  %offset = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %offset, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i.i.i.i30 = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i.i.i.i30, label %if.then.i.i.i.i31, label %PageHead.exit.i.i.i33, !prof !150

if.then.i.i.i.i31:                                ; preds = %folio_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i33:                            ; preds = %folio_next.exit
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %add.ptr.i, align 4
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i32 = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i32, label %PageHead.exit.i.i.i33.folio_size.exit_crit_edge, label %if.end.i.i.i34

PageHead.exit.i.i.i33.folio_size.exit_crit_edge:  ; preds = %PageHead.exit.i.i.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit

if.end.i.i.i34:                                   ; preds = %PageHead.exit.i.i.i33
  call void @__sanitizer_cov_trace_pc() #14
  %20 = getelementptr %struct.page, ptr %add.ptr.i, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.69, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %22 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i34, %PageHead.exit.i.i.i33.folio_size.exit_crit_edge
  %retval.0.i.i.i35 = phi i32 [ %conv.i.i.i, %if.end.i.i.i34 ], [ 0, %PageHead.exit.i.i.i33.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i35
  %23 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 %sub)
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %length, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %_i = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 4
  %25 = ptrtoint ptr %_i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %_i, align 4
  %add = add i32 %26, 1
  %bi_vcnt = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %27 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %bi_vcnt, align 8
  %conv = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp7 = icmp slt i32 %add, %conv
  br i1 %cmp7, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %29 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bi_flags.i.i.i, align 4
  %31 = and i16 %30, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i.not.i.i = icmp eq i16 %31, 0
  br i1 %cmp.i.not.i.i, label %if.then9.bio_first_bvec_all.exit.i_crit_edge, label %land.rhs.i.i

if.then9.bio_first_bvec_all.exit.i_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_first_bvec_all.exit.i

land.rhs.i.i:                                     ; preds = %if.then9
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_bvec_all.exit.i_crit_edge, label %if.then.i.i, !prof !149

land.rhs.i.i.bio_first_bvec_all.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_first_bvec_all.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 248, i32 noundef 9, ptr noundef null) #12
  br label %bio_first_bvec_all.exit.i

bio_first_bvec_all.exit.i:                        ; preds = %if.then.i.i, %land.rhs.i.i.bio_first_bvec_all.exit.i_crit_edge, %if.then9.bio_first_bvec_all.exit.i_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %32 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bi_io_vec.i.i, align 8
  %add.ptr.i36 = getelementptr %struct.bio_vec, ptr %33, i32 %add
  %34 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i36, align 4
  %36 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i22.i, !prof !149

if.then.i22.i:                                    ; preds = %bio_first_bvec_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %38, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %bio_first_bvec_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %35 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i22.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i22.i ], [ %39, %if.end.i.i ]
  %40 = inttoptr i32 %retval.0.i.i to ptr
  %41 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %fi, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %33, i32 %add, i32 2
  %42 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_offset.i, align 4
  %44 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i36, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %retval.0.i.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %mul.i = shl i32 %sub.ptr.div.i, 12
  %add.i = add i32 %mul.i, %43
  %offset.i = getelementptr inbounds %struct.folio_iter, ptr %fi, i32 0, i32 1
  %46 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i, ptr %offset.i, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %33, i32 %add, i32 1
  %47 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bv_len.i, align 4
  %49 = ptrtoint ptr %_seg_count to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %_seg_count, align 4
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %51, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %_compound_head.exit.i
  %52 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %40, align 4
  %54 = and i32 %53, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_first_folio.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = getelementptr %struct.page, ptr %40, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %57 to i32
  br label %bio_first_folio.exit

bio_first_folio.exit:                             ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.bio_first_folio.exit_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %sub.i = sub i32 %shl.i.i, %add.i
  %58 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %48) #12
  %59 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %length, align 4
  %60 = ptrtoint ptr %_i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add, ptr %_i, align 4
  br label %if.end14

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %fi, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %bio_first_folio.exit, %folio_size.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_readahead(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @readahead_folio(ptr nocapture noundef %ractl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %_batch_count.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 5
  %0 = ptrtoint ptr %_batch_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_batch_count.i, align 4
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %2 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i = icmp ult i32 %3, %1
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !150

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #12, !srcloc !184
  unreachable

do.end7.i:                                        ; preds = %entry
  %sub.i = sub i32 %3, %1
  %4 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.i, ptr %_nr_pages.i, align 4
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %5 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_index.i, align 4
  %add.i = add i32 %6, %1
  store i32 %add.i, ptr %_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %tobool12.not.i = icmp eq i32 %3, %1
  br i1 %tobool12.not.i, label %__readahead_folio.exit.thread, label %if.end15.i

__readahead_folio.exit.thread:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %_batch_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %_batch_count.i, align 4
  br label %if.end

if.end15.i:                                       ; preds = %do.end7.i
  %mapping.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %8 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapping.i, align 4
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 1
  %call.i = tail call ptr @xa_load(ptr noundef %i_pages.i, i32 noundef %add.i) #12
  %10 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_locked.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_locked.exit.i:                         ; preds = %if.end15.i
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %call.i, align 4
  %and1.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then27.i, label %do.end36.i, !prof !150

if.then27.i:                                      ; preds = %folio_test_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.13) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1096, 0\0A.popsection", ""() #12, !srcloc !185
  unreachable

do.end36.i:                                       ; preds = %folio_test_locked.exit.i
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i.i.i.i = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !150

if.then.i.i.i.i:                                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i:                              ; preds = %do.end36.i
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call.i, align 4
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i53.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i53.i, label %PageHead.exit.i.i.i.__readahead_folio.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.__readahead_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__readahead_folio.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %call.i, i32 1, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %compound_nr.i.i.i, align 4
  br label %__readahead_folio.exit

__readahead_folio.exit:                           ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.__readahead_folio.exit_crit_edge
  %storemerge.i = phi i32 [ %21, %if.end.i.i.i ], [ 1, %PageHead.exit.i.i.i.__readahead_folio.exit_crit_edge ]
  %22 = ptrtoint ptr %_batch_count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i, ptr %_batch_count.i, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %__readahead_folio.exit.if.end_crit_edge, label %if.then

__readahead_folio.exit.if.end_crit_edge:          ; preds = %__readahead_folio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %__readahead_folio.exit
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %23 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i3, label %do.end5.i.i.i, !prof !150

if.then.i.i.i3:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !171
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@readahead_folio, %if.then.i.i.i.i4)) #12
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i4], !srcloc !154

if.then.i.i.i.i4:                                 ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef nonnull %call.i, i32 noundef -1, i32 noundef %conv.i.i.i.i) #12
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i4, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.if.end_crit_edge

folio_put_testzero.exit.i.if.end_crit_edge:       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef nonnull %call.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %folio_put_testzero.exit.i.if.end_crit_edge, %__readahead_folio.exit.if.end_crit_edge, %__readahead_folio.exit.thread
  %retval.0.i8 = phi ptr [ null, %__readahead_folio.exit.thread ], [ null, %__readahead_folio.exit.if.end_crit_edge ], [ %call.i, %folio_put_testzero.exit.i.if.end_crit_edge ], [ %call.i, %if.then.i ]
  ret ptr %retval.0.i8
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_put(ptr noundef %folio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #12
  %0 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !150

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

do.end5.i.i:                                      ; preds = %entry
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #12, !srcloc !171
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_put, %if.then.i.i.i)) #12
          to label %folio_put_testzero.exit [label %if.then.i.i.i], !srcloc !154

if.then.i.i.i:                                    ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i) #12
  br label %folio_put_testzero.exit

folio_put_testzero.exit:                          ; preds = %if.then.i.i.i, %do.end5.i.i
  br i1 %cmp.i.i.i.i.i, label %if.then, label %folio_put_testzero.exit.if.end_crit_edge

folio_put_testzero.exit.if.end_crit_edge:         ; preds = %folio_put_testzero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %folio_put_testzero.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %folio) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %folio_put_testzero.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_releasepage(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_invalidatepage(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_cancel_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_readable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iomap_write_begin(ptr noundef %iter, i64 noundef %pos, i32 noundef %len, ptr nocapture noundef writeonly %foliop) unnamed_addr #0 align 64 {
entry:
  %bvec.i.i = alloca %struct.bio_vec, align 4
  %bio.i.i = alloca %struct.bio, align 8
  %block_start.i = alloca i64, align 8
  %poff.i = alloca i32, align 4
  %plen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %page_ops1 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %page_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page_ops1, align 4
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 0
  %srcmap.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6
  %iomap.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  %retval.0.i = select i1 %cmp.not.i, ptr %iomap.i, ptr %srcmap.i
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %offset = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %length, align 8
  %add4 = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add4)
  %cmp = icmp ugt i64 %add, %add4
  br i1 %cmp, label %do.body7, label %do.end12, !prof !150

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/iomap/buffered-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #12, !srcloc !186
  unreachable

do.end12:                                         ; preds = %entry
  br i1 %cmp.not.i, label %do.end12.if.end41_crit_edge, label %do.body17

do.end12.if.end41_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.body17:                                        ; preds = %do.end12
  %offset20 = getelementptr inbounds %struct.iomap, ptr %retval.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %offset20 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset20, align 8
  %length21 = getelementptr inbounds %struct.iomap, ptr %retval.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %length21 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length21, align 8
  %add22 = add i64 %11, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add22)
  %cmp23 = icmp ugt i64 %add, %add22
  br i1 %cmp23, label %do.body32, label %do.body17.if.end41_crit_edge, !prof !150

do.body17.if.end41_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.body32:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/iomap/buffered-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 623, 0\0A.popsection", ""() #12, !srcloc !187
  unreachable

if.end41:                                         ; preds = %do.body17.if.end41_crit_edge, %do.end12.if.end41_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and1.i.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end41.if.end46_crit_edge, label %fatal_signal_pending.exit

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

fatal_signal_pending.exit:                        ; preds = %if.end41
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 116, i32 1
  %20 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %signal.i.i, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool44.not = icmp eq i32 %22, 0
  br i1 %tobool44.not, label %fatal_signal_pending.exit.if.end46_crit_edge, label %fatal_signal_pending.exit.cleanup_crit_edge

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fatal_signal_pending.exit.if.end46_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.end46:                                         ; preds = %fatal_signal_pending.exit.if.end46_crit_edge, %if.end41.if.end46_crit_edge
  %23 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iter, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_mapping, align 8
  %flags.i = getelementptr inbounds %struct.address_space, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i, align 4
  %29 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  %conv49 = trunc i64 %pos to i32
  %and = and i32 %conv49, 4095
  %sub = sub nuw nsw i32 4096, %and
  %30 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %len.addr.0 = select i1 %tobool.i.not, i32 %30, i32 %len
  %tobool53.not = icmp eq ptr %1, null
  br i1 %tobool53.not, label %if.end46.if.end62_crit_edge, label %land.lhs.true

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end46
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %tobool54.not = icmp eq ptr %32, null
  br i1 %tobool54.not, label %land.lhs.true.if.end62_crit_edge, label %if.then55

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then55:                                        ; preds = %land.lhs.true
  %call58 = tail call i32 %32(ptr noundef %24, i64 noundef %pos, i32 noundef %len.addr.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then55.if.end62_crit_edge, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then55.if.end62_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end62:                                         ; preds = %if.then55.if.end62_crit_edge, %land.lhs.true.if.end62_crit_edge, %if.end46.if.end62_crit_edge
  %33 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iter, align 8
  %i_mapping64 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %i_mapping64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_mapping64, align 8
  %37 = lshr i64 %pos, 12
  %conv65 = trunc i64 %37 to i32
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 3
  %38 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gfp_mask.i, align 4
  %call69 = tail call ptr @__filemap_get_folio(ptr noundef %36, i32 noundef %conv65, i32 noundef 542, i32 noundef %39) #12
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.end62.out_no_page_crit_edge, label %if.end72

if.end62.out_no_page_crit_edge:                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_page

if.end72:                                         ; preds = %if.end62
  %conv73 = zext i32 %len.addr.0 to i64
  %add74 = add i64 %conv73, %pos
  %index.i.i = getelementptr inbounds %struct.page, ptr %call69, i32 0, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %41 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %42 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %call69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.not.i.i.i.i = icmp eq i32 %43, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !150

if.then.i.i.i.i:                                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call69, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.end72
  %44 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %call69, align 4
  %46 = and i32 %45, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = getelementptr %struct.page, ptr %call69, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.69, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %49 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %conv77 = zext i32 %shl.i to i64
  %add78 = add nuw nsw i64 %shl.i.i, %conv77
  call void @__sanitizer_cov_trace_cmp8(i64 %add74, i64 %add78)
  %cmp79 = icmp sgt i64 %add74, %add78
  br i1 %cmp79, label %if.then81, label %folio_size.exit.if.end88_crit_edge

folio_size.exit.if.end88_crit_edge:               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then81:                                        ; preds = %folio_size.exit
  %50 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %call69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp.i.not.i.i.i.i183 = icmp eq i32 %51, -1
  br i1 %cmp.i.not.i.i.i.i183, label %if.then.i.i.i.i184, label %PageHead.exit.i.i.i186, !prof !150

if.then.i.i.i.i184:                               ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call69, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i186:                           ; preds = %if.then81
  %52 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %call69, align 4
  %54 = and i32 %53, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i185 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i.i185, label %PageHead.exit.i.i.i186.folio_size.exit192_crit_edge, label %if.end.i.i.i189

PageHead.exit.i.i.i186.folio_size.exit192_crit_edge: ; preds = %PageHead.exit.i.i.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit192

if.end.i.i.i189:                                  ; preds = %PageHead.exit.i.i.i186
  call void @__sanitizer_cov_trace_pc() #14
  %55 = getelementptr %struct.page, ptr %call69, i32 1, i32 1
  %compound_order.i.i.i187 = getelementptr inbounds %struct.anon.69, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %compound_order.i.i.i187 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %compound_order.i.i.i187, align 1
  %conv.i.i.i188 = zext i8 %57 to i32
  br label %folio_size.exit192

folio_size.exit192:                               ; preds = %if.end.i.i.i189, %PageHead.exit.i.i.i186.folio_size.exit192_crit_edge
  %retval.0.i.i.i190 = phi i32 [ %conv.i.i.i188, %if.end.i.i.i189 ], [ 0, %PageHead.exit.i.i.i186.folio_size.exit192_crit_edge ]
  %shl.i191 = shl i32 4096, %retval.0.i.i.i190
  %add85 = sub i64 %shl.i.i, %pos
  %58 = trunc i64 %add85 to i32
  %conv87 = add i32 %shl.i191, %58
  br label %if.end88

if.end88:                                         ; preds = %folio_size.exit192, %folio_size.exit.if.end88_crit_edge
  %len.addr.1 = phi i32 [ %conv87, %folio_size.exit192 ], [ %len.addr.0, %folio_size.exit.if.end88_crit_edge ]
  %type = getelementptr inbounds %struct.iomap, ptr %retval.0.i, i32 0, i32 3
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %60)
  %cmp90 = icmp eq i16 %60, 4
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.end88
  %61 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp.not.i.i = icmp eq i16 %62, 0
  %retval.0.i.i = select i1 %cmp.not.i.i, ptr %iomap.i, ptr %srcmap.i
  %offset.i = getelementptr inbounds %struct.iomap, ptr %retval.0.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %cmp.not.i193 = icmp eq i64 %64, 0
  br i1 %cmp.not.i193, label %if.end37.i, label %land.rhs.i194

land.rhs.i194:                                    ; preds = %if.then92
  %.b42.i = load i1, ptr @iomap_write_begin_inline.__already_done, align 1
  br i1 %.b42.i, label %land.rhs.i194.out_unlock_crit_edge, label %if.then.i, !prof !149

land.rhs.i194.out_unlock_crit_edge:               ; preds = %land.rhs.i194
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then.i:                                        ; preds = %land.rhs.i194
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_write_begin_inline.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 607, i32 noundef 9, ptr noundef null) #12
  br label %out_unlock

if.end37.i:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  %call38.i = tail call fastcc i32 @iomap_read_inline_data(ptr noundef %iter, ptr noundef nonnull %call69) #12
  br label %if.end102

if.else:                                          ; preds = %if.end88
  %flags = getelementptr inbounds %struct.iomap, ptr %retval.0.i, i32 0, i32 4
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %flags, align 2
  %67 = and i16 %66, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool96.not = icmp eq i16 %67, 0
  br i1 %tobool96.not, label %if.else99, label %if.then97

if.then97:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call98 = tail call i32 @__block_write_begin_int(ptr noundef nonnull %call69, i64 noundef %pos, i32 noundef %len.addr.1, ptr noundef null, ptr noundef %retval.0.i) #12
  br label %if.end102

if.else99:                                        ; preds = %if.else
  %68 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp.not.i.i197 = icmp eq i16 %69, 0
  %retval.0.i.i200 = select i1 %cmp.not.i.i197, ptr %iomap.i, ptr %srcmap.i
  %70 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iter, align 8
  %call1.i = tail call fastcc ptr @iomap_page_create(ptr noundef %71, ptr noundef nonnull %call69) #12
  %72 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iter, align 8
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 20
  %74 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i201 = zext i8 %75 to i32
  %shl.i.i202 = shl nuw i32 1, %conv.i.i201
  %conv.i = zext i32 %shl.i.i202 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block_start.i) #12
  %sub.i = add nsw i64 %conv.i, -1
  %neg.i = sub nsw i64 0, %conv.i
  %and.i203 = and i64 %neg.i, %pos
  %76 = ptrtoint ptr %block_start.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %and.i203, ptr %block_start.i, align 8
  %conv4.i = zext i32 %len.addr.1 to i64
  %add.i = add i64 %pos, -1
  %sub5.i = add i64 %add.i, %conv4.i
  %or.i = or i64 %sub.i, %sub5.i
  %add7.i = add i64 %or.i, 1
  %77 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %call69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %78, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call69, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %if.else99
  %79 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %call69, align 4
  %81 = and i32 %80, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i.i.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = getelementptr %struct.page, ptr %call69, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %84 to i32
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge ]
  %shl.i132.i = shl i32 4096, %retval.0.i.i.i.i
  %sub10.i = add i32 %shl.i132.i, -1
  %and11.i = and i32 %sub10.i, %conv49
  %add12.i = add i32 %and11.i, %len.addr.1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poff.i) #12
  %85 = ptrtoint ptr %poff.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %poff.i, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plen.i) #12
  %86 = ptrtoint ptr %plen.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %plen.i, align 4, !annotation !159
  %87 = getelementptr inbounds %struct.page, ptr %call69, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  %and.i.i.i133.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i133.i)
  %tobool.not.i.i134.i = icmp eq i32 %and.i.i.i133.i, 0
  br i1 %tobool.not.i.i134.i, label %folio_flags.exit.i.i, label %if.then.i.i135.i, !prof !149

if.then.i.i135.i:                                 ; preds = %folio_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call69, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_flags.exit.i.i:                             ; preds = %folio_size.exit.i
  %90 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %call69, align 4
  %92 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.not.i = icmp eq i32 %92, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %folio_test_uptodate.exit.thread.i

folio_test_uptodate.exit.thread.i:                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !165
  br label %__iomap_write_begin.exit

if.end.i:                                         ; preds = %folio_flags.exit.i.i
  %93 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %87, align 4
  %and.i.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i204 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i204, label %folio_clear_error.exit.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call69, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_clear_error.exit.i:                         ; preds = %if.end.i
  tail call void @_clear_bit(i32 noundef 8, ptr noundef nonnull %call69) #12
  %flags.i205 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %95 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i.i, i32 0, i32 1
  %96 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i.i, i32 0, i32 2
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %bio.i.i, i32 0, i32 2
  %offset.i.i.i = getelementptr inbounds %struct.iomap, ptr %retval.0.i.i200, i32 0, i32 1
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio.i.i, i32 0, i32 8
  %bdev.i.i = getelementptr inbounds %struct.iomap, ptr %retval.0.i.i200, i32 0, i32 5
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.i.i, i32 0, i32 3
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.i.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond87.i.do.body.i_crit_edge, %folio_clear_error.exit.i
  %97 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %iter, align 8
  %99 = ptrtoint ptr %block_start.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %block_start.i, align 8
  %sub15.i = sub i64 %add7.i, %100
  call fastcc void @iomap_adjust_read_range(ptr noundef %98, ptr noundef %call69, ptr noundef nonnull %block_start.i, i64 noundef %sub15.i, ptr noundef nonnull %poff.i, ptr noundef nonnull %plen.i) #12
  %101 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %plen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.i = icmp eq i32 %102, 0
  br i1 %cmp.i, label %do.body.i.__iomap_write_begin.exit_crit_edge, label %if.end18.i

do.body.i.__iomap_write_begin.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iomap_write_begin.exit

if.end18.i:                                       ; preds = %do.body.i
  %103 = ptrtoint ptr %flags.i205 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i205, align 8
  %and19.i = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not.i206 = icmp eq i32 %and19.i, 0
  br i1 %tobool.not.i206, label %land.lhs.true.i, label %if.end18.i.if.end33.i_crit_edge

if.end18.i.if.end33.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %105 = ptrtoint ptr %poff.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %poff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.i, i32 %106)
  %cmp20.not.i = icmp ugt i32 %and11.i, %106
  %add22.i = add i32 %106, %102
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.i, i32 %add22.i)
  %cmp23.not.i = icmp ult i32 %and11.i, %add22.i
  %or.cond.i = select i1 %cmp20.not.i, i1 %cmp23.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.if.end33.i_crit_edge, label %land.lhs.true25.i

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

land.lhs.true25.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %106)
  %cmp26.not.i = icmp ugt i32 %add12.i, %106
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %add22.i)
  %cmp30.not.i = icmp ult i32 %add12.i, %add22.i
  %or.cond140.i = select i1 %cmp26.not.i, i1 %cmp30.not.i, i1 false
  br i1 %or.cond140.i, label %land.lhs.true25.i.if.end33.i_crit_edge, label %land.lhs.true25.i.do.cond87.i_crit_edge

land.lhs.true25.i.do.cond87.i_crit_edge:          ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond87.i

land.lhs.true25.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.end33.i:                                       ; preds = %land.lhs.true25.i.if.end33.i_crit_edge, %land.lhs.true.i.if.end33.i_crit_edge, %if.end18.i.if.end33.i_crit_edge
  %107 = ptrtoint ptr %block_start.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %block_start.i, align 8
  %109 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %cmp.not.i.i.i = icmp eq i16 %110, 0
  %retval.0.i.i.i207 = select i1 %cmp.not.i.i.i, ptr %iomap.i, ptr %srcmap.i
  %type.i136.i = getelementptr inbounds %struct.iomap, ptr %retval.0.i.i.i207, i32 0, i32 3
  %111 = ptrtoint ptr %type.i136.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %type.i136.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %112)
  %cmp.not.i137.i = icmp eq i16 %112, 2
  br i1 %cmp.not.i137.i, label %lor.lhs.false.i.i, label %if.end33.i.if.then35.i_crit_edge

if.end33.i.if.then35.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35.i

lor.lhs.false.i.i:                                ; preds = %if.end33.i
  %flags.i.i = getelementptr inbounds %struct.iomap, ptr %retval.0.i.i.i207, i32 0, i32 4
  %113 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %flags.i.i, align 2
  %115 = and i16 %114, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool.not.i.i = icmp eq i16 %115, 0
  br i1 %tobool.not.i.i, label %iomap_block_needs_zeroing.exit.i, label %lor.lhs.false.i.i.if.then35.i_crit_edge

lor.lhs.false.i.i.if.then35.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35.i

iomap_block_needs_zeroing.exit.i:                 ; preds = %lor.lhs.false.i.i
  %116 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %iter, align 8
  %call3.i.i = call fastcc i64 @i_size_read(ptr noundef %117) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i.i, i64 %108)
  %cmp4.i.not.i = icmp sgt i64 %call3.i.i, %108
  br i1 %cmp4.i.not.i, label %if.else.i, label %iomap_block_needs_zeroing.exit.i.if.then35.i_crit_edge

iomap_block_needs_zeroing.exit.i.if.then35.i_crit_edge: ; preds = %iomap_block_needs_zeroing.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35.i

if.then35.i:                                      ; preds = %iomap_block_needs_zeroing.exit.i.if.then35.i_crit_edge, %lor.lhs.false.i.i.if.then35.i_crit_edge, %if.end33.i.if.then35.i_crit_edge
  %118 = ptrtoint ptr %flags.i205 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags.i205, align 8
  %and37.i = and i32 %119, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end80.i, label %land.rhs.i208

land.rhs.i208:                                    ; preds = %if.then35.i
  %.b130.i = load i1, ptr @__iomap_write_begin.__already_done, align 1
  br i1 %.b130.i, label %land.rhs.i208.__iomap_write_begin.exit_crit_edge, label %if.then47.i, !prof !149

land.rhs.i208.__iomap_write_begin.exit_crit_edge: ; preds = %land.rhs.i208
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iomap_write_begin.exit

if.then47.i:                                      ; preds = %land.rhs.i208
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__iomap_write_begin.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 9, ptr noundef null) #12
  br label %__iomap_write_begin.exit

if.end80.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %poff.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %poff.i, align 4
  %add81.i = add i32 %121, %102
  call void @zero_user_segments(ptr noundef %call69, i32 noundef %121, i32 noundef %and11.i, i32 noundef %add12.i, i32 noundef %add81.i) #12
  br label %if.end86.i

if.else.i:                                        ; preds = %iomap_block_needs_zeroing.exit.i
  %122 = ptrtoint ptr %poff.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %poff.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec.i.i) #12
  %124 = ptrtoint ptr %bvec.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 -1 to ptr), ptr %bvec.i.i, align 4, !annotation !159
  %125 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %95, align 4, !annotation !159
  %126 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %96, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bio.i.i) #12
  %127 = call ptr @memset(ptr %bio.i.i, i32 255, i32 104)
  call void @bio_init(ptr noundef nonnull %bio.i.i, ptr noundef nonnull %bvec.i.i, i16 noundef zeroext 1) #12
  %128 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %bi_opf.i.i, align 8
  %129 = ptrtoint ptr %retval.0.i.i200 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %retval.0.i.i200, align 8
  %add.i.i.i = add i64 %130, %108
  %131 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %offset.i.i.i, align 8
  %sub.i.i.i = sub i64 %add.i.i.i, %132
  %shr.i.i.i = lshr i64 %sub.i.i.i, 9
  %133 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %shr.i.i.i, ptr %bi_iter.i.i, align 8
  %134 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bdev.i.i, align 4
  %136 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %137, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %138 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i138.i = icmp eq ptr %139, %135
  br i1 %cmp.not.i.i138.i, label %if.else.i.iomap_read_folio_sync.exit.i_crit_edge, label %if.then.i.i139.i

if.else.i.iomap_read_folio_sync.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iomap_read_folio_sync.exit.i

if.then.i.i139.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i.i = and i16 %137, -2177
  %140 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %iomap_read_folio_sync.exit.i

iomap_read_folio_sync.exit.i:                     ; preds = %if.then.i.i139.i, %if.else.i.iomap_read_folio_sync.exit.i_crit_edge
  %141 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %135, ptr %bi_bdev.i.i.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %bio.i.i) #12
  %call1.i.i = call zeroext i1 @bio_add_folio(ptr noundef nonnull %bio.i.i, ptr noundef %call69, i32 noundef %102, i32 noundef %123) #12
  %call2.i.i = call i32 @submit_bio_wait(ptr noundef nonnull %bio.i.i) #12
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bio.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool83.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool83.not.i, label %iomap_read_folio_sync.exit.i.if.end86.i_crit_edge, label %iomap_read_folio_sync.exit.i.__iomap_write_begin.exit_crit_edge

iomap_read_folio_sync.exit.i.__iomap_write_begin.exit_crit_edge: ; preds = %iomap_read_folio_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iomap_write_begin.exit

iomap_read_folio_sync.exit.i.if.end86.i_crit_edge: ; preds = %iomap_read_folio_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86.i

if.end86.i:                                       ; preds = %iomap_read_folio_sync.exit.i.if.end86.i_crit_edge, %if.end80.i
  %142 = ptrtoint ptr %poff.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %poff.i, align 4
  call fastcc void @iomap_set_range_uptodate(ptr noundef %call69, ptr noundef %call1.i, i32 noundef %143, i32 noundef %102) #12
  br label %do.cond87.i

do.cond87.i:                                      ; preds = %if.end86.i, %land.lhs.true25.i.do.cond87.i_crit_edge
  %conv88.i = zext i32 %102 to i64
  %144 = ptrtoint ptr %block_start.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %block_start.i, align 8
  %add89.i = add i64 %145, %conv88.i
  store i64 %add89.i, ptr %block_start.i, align 8
  %cmp90.i = icmp slt i64 %add89.i, %add7.i
  br i1 %cmp90.i, label %do.cond87.i.do.body.i_crit_edge, label %do.cond87.i.__iomap_write_begin.exit_crit_edge

do.cond87.i.__iomap_write_begin.exit_crit_edge:   ; preds = %do.cond87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iomap_write_begin.exit

do.cond87.i.do.body.i_crit_edge:                  ; preds = %do.cond87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__iomap_write_begin.exit:                         ; preds = %do.cond87.i.__iomap_write_begin.exit_crit_edge, %iomap_read_folio_sync.exit.i.__iomap_write_begin.exit_crit_edge, %if.then47.i, %land.rhs.i208.__iomap_write_begin.exit_crit_edge, %do.body.i.__iomap_write_begin.exit_crit_edge, %folio_test_uptodate.exit.thread.i
  %retval.4.i = phi i32 [ -5, %if.then47.i ], [ -5, %land.rhs.i208.__iomap_write_begin.exit_crit_edge ], [ 0, %folio_test_uptodate.exit.thread.i ], [ %call2.i.i, %iomap_read_folio_sync.exit.i.__iomap_write_begin.exit_crit_edge ], [ 0, %do.body.i.__iomap_write_begin.exit_crit_edge ], [ 0, %do.cond87.i.__iomap_write_begin.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plen.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poff.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block_start.i) #12
  br label %if.end102

if.end102:                                        ; preds = %__iomap_write_begin.exit, %if.then97, %if.end37.i
  %status.0 = phi i32 [ %call98, %if.then97 ], [ %retval.4.i, %__iomap_write_begin.exit ], [ %call38.i, %if.end37.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool103.not = icmp eq i32 %status.0, 0
  br i1 %tobool103.not, label %if.end111, label %if.end102.out_unlock_crit_edge, !prof !149

if.end102.out_unlock_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end111:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %foliop to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call69, ptr %foliop, align 4
  br label %cleanup

out_unlock:                                       ; preds = %if.end102.out_unlock_crit_edge, %if.then.i, %land.rhs.i194.out_unlock_crit_edge
  %status.0212 = phi i32 [ %status.0, %if.end102.out_unlock_crit_edge ], [ -5, %if.then.i ], [ -5, %land.rhs.i194.out_unlock_crit_edge ]
  call void @folio_unlock(ptr noundef nonnull %call69) #12
  call fastcc void @folio_put(ptr noundef nonnull %call69)
  %147 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %iter, align 8
  call fastcc void @iomap_write_failed(ptr noundef %148, i64 noundef %pos, i32 noundef %len.addr.1)
  br label %out_no_page

out_no_page:                                      ; preds = %out_unlock, %if.end62.out_no_page_crit_edge
  %status.1 = phi i32 [ %status.0212, %out_unlock ], [ -12, %if.end62.out_no_page_crit_edge ]
  br i1 %tobool53.not, label %out_no_page.cleanup_crit_edge, label %land.lhs.true114

out_no_page.cleanup_crit_edge:                    ; preds = %out_no_page
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true114:                                 ; preds = %out_no_page
  %page_done = getelementptr inbounds %struct.iomap_page_ops, ptr %1, i32 0, i32 1
  %149 = ptrtoint ptr %page_done to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %page_done, align 4
  %tobool115.not = icmp eq ptr %150, null
  br i1 %tobool115.not, label %land.lhs.true114.cleanup_crit_edge, label %if.then116

land.lhs.true114.cleanup_crit_edge:               ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then116:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  %151 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %iter, align 8
  call void %150(ptr noundef %152, i64 noundef %pos, i32 noundef 0, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %land.lhs.true114.cleanup_crit_edge, %out_no_page.cleanup_crit_edge, %if.end111, %if.then55.cleanup_crit_edge, %fatal_signal_pending.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end111 ], [ -4, %fatal_signal_pending.exit.cleanup_crit_edge ], [ %call58, %if.then55.cleanup_crit_edge ], [ %status.1, %if.then116 ], [ %status.1, %land.lhs.true114.cleanup_crit_edge ], [ %status.1, %out_no_page.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter_atomic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iomap_write_end(ptr nocapture noundef %iter, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %folio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %page_ops1 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %page_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page_ops1, align 4
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 0
  %srcmap.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6
  %iomap.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5
  %retval.0.i = select i1 %cmp.not.i, ptr %iomap.i, ptr %srcmap.i
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iter, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  %type = getelementptr inbounds %struct.iomap, ptr %retval.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp = icmp eq i16 %9, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_flags.exit.i.i:                             ; preds = %if.then
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %land.rhs.i, label %folio_test_uptodate.exit.thread.i

folio_test_uptodate.exit.thread.i:                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !165
  br label %if.end29.i

land.rhs.i:                                       ; preds = %folio_flags.exit.i.i
  %.b74.i = load i1, ptr @iomap_write_end_inline.__already_done, align 1
  br i1 %.b74.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !149

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iomap_write_end_inline.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 700, i32 noundef 9, ptr noundef null) #12
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %folio_test_uptodate.exit.thread.i
  %length.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %length.i.i, align 8
  %inline_data.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 7
  %18 = ptrtoint ptr %inline_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inline_data.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %and.i.i = and i32 %20, 4095
  %sub.i.i = sub nuw nsw i32 4096, %and.i.i
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv.i.i)
  %cmp.i.not.i = icmp ugt i64 %17, %conv.i.i
  br i1 %cmp.i.not.i, label %do.body48.i, label %iomap_write_end_inline.exit, !prof !150

do.body48.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/iomap/buffered-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 701, 0\0A.popsection", ""() #12, !srcloc !188
  unreachable

iomap_write_end_inline.exit:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @flush_dcache_folio(ptr noundef %folio) #12
  %conv.i = trunc i64 %pos to i32
  %div3.i.i = lshr i32 %conv.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %folio, i32 %div3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %21, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i, i32 noundef %or.i.i) #12
  %rem.i.i = and i32 %conv.i, 4095
  %add.ptr1.i.i = getelementptr i8, ptr %call.i.i, i32 %rem.i.i
  %22 = ptrtoint ptr %inline_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inline_data.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %23, i32 %conv.i
  %offset.i.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset.i.i, align 8
  %idx.ext1.i.i = trunc i64 %25 to i32
  %idx.neg.i.i = sub i32 0, %idx.ext1.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i76.i, i32 %idx.neg.i.i
  %26 = call ptr @memcpy(ptr %add.ptr2.i.i, ptr %add.ptr1.i.i, i32 %copied)
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i.i) #12
  %27 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iter, align 8
  tail call void @__mark_inode_dirty(ptr noundef %28, i32 noundef 7) #12
  br label %if.end11

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.iomap, ptr %retval.0.i, i32 0, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags, align 2
  %31 = and i16 %30, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not = icmp eq i16 %31, 0
  br i1 %tobool.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %32 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_mapping, align 8
  %call7 = tail call i32 @block_write_end(ptr noundef null, ptr noundef %33, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %folio, ptr noundef null) #12
  br label %if.end11

if.else8:                                         ; preds = %if.else
  %34 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_private.exit.i.i, label %if.then.i.i.i.i, !prof !149

if.then.i.i.i.i:                                  ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_test_private.exit.i.i:                      ; preds = %if.else8
  %37 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %folio, align 4
  %39 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i.i, label %folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge, label %if.then.i.i

folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge: ; preds = %folio_test_private.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %to_iomap_page.exit.i

if.then.i.i:                                      ; preds = %folio_test_private.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %private.i.i.i = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 4
  %40 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private.i.i.i, align 4
  br label %to_iomap_page.exit.i

to_iomap_page.exit.i:                             ; preds = %if.then.i.i, %folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %41, %if.then.i.i ], [ null, %folio_test_private.exit.i.i.to_iomap_page.exit.i_crit_edge ]
  tail call void @flush_dcache_folio(ptr noundef %folio) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %copied, i32 %len)
  %cmp.i = icmp ult i32 %copied, %len
  br i1 %cmp.i, label %land.rhs.i81, label %to_iomap_page.exit.i.if.end.i_crit_edge

to_iomap_page.exit.i.if.end.i_crit_edge:          ; preds = %to_iomap_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i81:                                     ; preds = %to_iomap_page.exit.i
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i79 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i79)
  %tobool.not.i.i.i80 = icmp eq i32 %and.i.i.i.i79, 0
  br i1 %tobool.not.i.i.i80, label %folio_flags.exit.i.i84, label %if.then.i.i.i82, !prof !149

if.then.i.i.i82:                                  ; preds = %land.rhs.i81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

folio_flags.exit.i.i84:                           ; preds = %land.rhs.i81
  %44 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %folio, align 4
  %46 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i83 = icmp eq i32 %46, 0
  br i1 %tobool.i.not.i83, label %folio_flags.exit.i.i84.if.end11_crit_edge, label %folio_test_uptodate.exit.i

folio_flags.exit.i.i84.if.end11_crit_edge:        ; preds = %folio_flags.exit.i.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

folio_test_uptodate.exit.i:                       ; preds = %folio_flags.exit.i.i84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !165
  br label %if.end.i

if.end.i:                                         ; preds = %folio_test_uptodate.exit.i, %to_iomap_page.exit.i.if.end.i_crit_edge
  %conv.i85 = trunc i64 %pos to i32
  %47 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %48, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !150

if.then.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %if.end.i
  %49 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %folio, align 4
  %51 = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i.i13.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i.i13.i, label %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_size.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %54 to i32
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %sub.i = add i32 %shl.i.i, -1
  %and.i = and i32 %sub.i, %conv.i85
  tail call fastcc void @iomap_set_range_uptodate(ptr noundef %folio, ptr noundef %retval.0.i.i, i32 noundef %and.i, i32 noundef %len) #12
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %55 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_mapping.i, align 8
  %call5.i = tail call zeroext i1 @filemap_dirty_folio(ptr noundef %56, ptr noundef %folio) #12
  br label %if.end11

if.end11:                                         ; preds = %folio_size.exit.i, %folio_flags.exit.i.i84.if.end11_crit_edge, %if.then5, %iomap_write_end_inline.exit
  %ret.0 = phi i32 [ %copied, %iomap_write_end_inline.exit ], [ %call7, %if.then5 ], [ %copied, %folio_size.exit.i ], [ 0, %folio_flags.exit.i.i84.if.end11_crit_edge ]
  %conv12 = zext i32 %ret.0 to i64
  %add = add i64 %conv12, %pos
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %7)
  %cmp13 = icmp sgt i64 %add, %7
  br i1 %cmp13, label %if.then15, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then15:                                        ; preds = %if.end11
  %57 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iter, align 8
  %59 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i87 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %62, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %63 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i.i, label %if.then15.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then15.i_size_write.exit_crit_edge:            ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then15
  %64 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i.i88 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %67, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !190
  %68 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %73, ptrtoint (ptr @lockdep_recursion to i32)
  %74 = inttoptr i32 %add.i28.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !191
  %77 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i7.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %80, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool20.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %81 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i29.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i.i = icmp eq i32 %84, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %85 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i9.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %88, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !192
  %89 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %92, ptrtoint (ptr @hardirqs_enabled to i32)
  %93 = inttoptr i32 %add47.i.i to ptr
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  %96 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i12.i.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %99, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool54.not.i.i = icmp eq i32 %95, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i89, !prof !149

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

if.then.i.i89:                                    ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i89, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then15.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 23
  %100 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %101, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !194
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 23, i32 1
  %102 = tail call ptr @llvm.returnaddress(i32 0) #12
  %103 = ptrtoint ptr %102 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %103) #12
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 14
  %104 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %add, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %103) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !195
  %105 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %106, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !196
  %107 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i26.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i90 = add i32 %110, -1
  store volatile i32 %sub.i.i90, ptr %preempt_count.i.i27.i, align 4
  %flags20 = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 4
  %111 = ptrtoint ptr %flags20 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %flags20, align 2
  %113 = or i16 %112, 256
  store i16 %113, ptr %flags20, align 2
  br label %if.end23

if.end23:                                         ; preds = %i_size_write.exit, %if.end11.if.end23_crit_edge
  tail call void @folio_unlock(ptr noundef %folio) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %pos)
  %cmp24 = icmp slt i64 %7, %pos
  br i1 %cmp24, label %if.then26, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %iter, align 8
  tail call void @pagecache_isize_extended(ptr noundef %115, i64 noundef %7, i64 noundef %pos) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %tobool29.not = icmp eq ptr %1, null
  br i1 %tobool29.not, label %if.end28.if.end34_crit_edge, label %land.lhs.true

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end28
  %page_done = getelementptr inbounds %struct.iomap_page_ops, ptr %1, i32 0, i32 1
  %116 = ptrtoint ptr %page_done to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %page_done, align 4
  %tobool30.not = icmp eq ptr %117, null
  br i1 %tobool30.not, label %land.lhs.true.if.end34_crit_edge, label %if.then31

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %iter, align 8
  tail call void %117(ptr noundef %119, i64 noundef %pos, i32 noundef %ret.0, ptr noundef %folio) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true.if.end34_crit_edge, %if.end28.if.end34_crit_edge
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %120 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.i.i.i = icmp eq i32 %121, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i91, label %do.end5.i.i.i, !prof !150

if.then.i.i.i91:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

do.end5.i.i.i:                                    ; preds = %if.end34
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !171
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %122, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@iomap_write_end, %if.then.i.i.i.i93)) #12
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i93], !srcloc !154

if.then.i.i.i.i93:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i92 = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i92) #12
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i93, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i94, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_put.exit

if.then.i94:                                      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %folio) #12
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i94, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %len)
  %cmp35 = icmp ult i32 %ret.0, %len
  br i1 %cmp35, label %if.then37, label %folio_put.exit.if.end39_crit_edge

folio_put.exit.if.end39_crit_edge:                ; preds = %folio_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %folio_put.exit
  %123 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %iter, align 8
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %124) #12
  %conv.i96 = zext i32 %len to i64
  %add.i = add i64 %conv.i96, %pos
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call.i)
  %cmp.i97 = icmp sgt i64 %add.i, %call.i
  br i1 %cmp.i97, label %if.then.i98, label %if.then37.if.end39_crit_edge

if.then37.if.end39_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then.i98:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %125 = tail call i64 @llvm.smax.i64(i64 %call.i, i64 %pos) #12
  tail call void @truncate_pagecache_range(ptr noundef %124, i64 noundef %125, i64 noundef %add.i) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then.i98, %if.then37.if.end39_crit_edge, %folio_put.exit.if.end39_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin_int(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iomap_write_failed(ptr noundef %inode, i64 noundef %pos, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call)
  %cmp = icmp sgt i64 %add, %call
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i64 @llvm.smax.i64(i64 %call, i64 %pos)
  tail call void @truncate_pagecache_range(ptr noundef %inode, i64 noundef %0, i64 noundef %add) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagecache_isize_extended(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_folio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_dirty_folio(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_mark_accessed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_commit_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_end_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iomap_writepage(ptr noundef %inode, i64 noundef %off, i64 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_writepage, i32 0, i32 1), ptr blockaddress(@trace_iomap_writepage, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !149

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !197
  %call42 = tail call i32 @__traceiter_iomap_writepage(ptr noundef null, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !198
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !149

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_writepage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_writepage, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_iomap_writepage.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_iomap_writepage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 82, ptr noundef nonnull @.str.5) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_redirty_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iomap_writepage(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_start_writeback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wbc_account_cgroup_owner(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg_from_css(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_clone_blkg_association(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iomap_writepage_end_bio(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  %call = tail call i32 @blk_status_to_errno(i8 noundef zeroext %3) #12
  %call1 = tail call fastcc i32 @iomap_finish_ioend(ptr noundef %1, i32 noundef %call)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !57, !59, !61, !63, !64, !66, !68, !70, !71, !73, !74, !76, !78, !80, !81, !83, !85, !87, !89, !90, !92, !94, !96, !98, !100, !101, !103, !105, !107, !109, !111, !112, !113, !114, !115, !116, !118, !120, !122, !124, !125, !127, !129, !131, !133, !135, !137}
!llvm.named.register.sp = !{!139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/iomap/buffered-io.c", i32 346, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../fs/iomap/buffered-io.c", i32 348, i32 3}
!5 = !{ptr @__ksymtab_iomap_readpage, !6, !"__ksymtab_iomap_readpage", i1 false, i1 false}
!6 = !{!"../fs/iomap/buffered-io.c", i32 359, i32 1}
!7 = !{ptr @__ksymtab_iomap_readahead, !8, !"__ksymtab_iomap_readahead", i1 false, i1 false}
!8 = !{!"../fs/iomap/buffered-io.c", i32 424, i32 1}
!9 = !{ptr @__ksymtab_iomap_is_partially_uptodate, !10, !"__ksymtab_iomap_is_partially_uptodate", i1 false, i1 false}
!10 = !{!"../fs/iomap/buffered-io.c", i32 459, i32 1}
!11 = !{ptr @__ksymtab_iomap_releasepage, !12, !"__ksymtab_iomap_releasepage", i1 false, i1 false}
!12 = !{!"../fs/iomap/buffered-io.c", i32 479, i32 1}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../fs/iomap/buffered-io.c", i32 490, i32 3}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/iomap/buffered-io.c", i32 495, i32 3}
!17 = !{ptr @__ksymtab_iomap_invalidate_folio, !18, !"__ksymtab_iomap_invalidate_folio", i1 false, i1 false}
!18 = !{!"../fs/iomap/buffered-io.c", i32 500, i32 1}
!19 = !{ptr @__ksymtab_iomap_invalidatepage, !20, !"__ksymtab_iomap_invalidatepage", i1 false, i1 false}
!20 = !{!"../fs/iomap/buffered-io.c", i32 507, i32 1}
!21 = !{ptr @__ksymtab_iomap_migrate_page, !22, !"__ksymtab_iomap_migrate_page", i1 false, i1 false}
!22 = !{!"../fs/iomap/buffered-io.c", i32 531, i32 1}
!23 = !{ptr @__ksymtab_iomap_file_buffered_write, !24, !"__ksymtab_iomap_file_buffered_write", i1 false, i1 false}
!24 = !{!"../fs/iomap/buffered-io.c", i32 839, i32 1}
!25 = !{ptr @__ksymtab_iomap_file_unshare, !26, !"__ksymtab_iomap_file_unshare", i1 false, i1 false}
!26 = !{!"../fs/iomap/buffered-io.c", i32 898, i32 1}
!27 = !{ptr @__ksymtab_iomap_zero_range, !28, !"__ksymtab_iomap_zero_range", i1 false, i1 false}
!28 = !{!"../fs/iomap/buffered-io.c", i32 958, i32 1}
!29 = !{ptr @__ksymtab_iomap_truncate_page, !30, !"__ksymtab_iomap_truncate_page", i1 false, i1 false}
!30 = !{!"../fs/iomap/buffered-io.c", i32 972, i32 1}
!31 = !{ptr @__ksymtab_iomap_page_mkwrite, !32, !"__ksymtab_iomap_page_mkwrite", i1 false, i1 false}
!32 = !{!"../fs/iomap/buffered-io.c", i32 1020, i32 1}
!33 = !{ptr @__ksymtab_iomap_finish_ioends, !34, !"__ksymtab_iomap_finish_ioends", i1 false, i1 false}
!34 = !{!"../fs/iomap/buffered-io.c", i32 1114, i32 1}
!35 = !{ptr @__ksymtab_iomap_ioend_try_merge, !36, !"__ksymtab_iomap_ioend_try_merge", i1 false, i1 false}
!36 = !{!"../fs/iomap/buffered-io.c", i32 1162, i32 1}
!37 = !{ptr @__ksymtab_iomap_sort_ioends, !38, !"__ksymtab_iomap_sort_ioends", i1 false, i1 false}
!38 = !{!"../fs/iomap/buffered-io.c", i32 1183, i32 1}
!39 = !{ptr @__ksymtab_iomap_writepage, !40, !"__ksymtab_iomap_writepage", i1 false, i1 false}
!40 = !{!"../fs/iomap/buffered-io.c", i32 1553, i32 1}
!41 = !{ptr @__ksymtab_iomap_writepages, !42, !"__ksymtab_iomap_writepages", i1 false, i1 false}
!42 = !{!"../fs/iomap/buffered-io.c", i32 1568, i32 1}
!43 = !{ptr @__initcall__kmod_iomap__341_1576_iomap_init5, !44, !"__initcall__kmod_iomap__341_1576_iomap_init5", i1 false, i1 false}
!44 = !{!"../fs/iomap/buffered-io.c", i32 1576, i32 1}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/iomap/trace.h", i32 50, i32 1}
!49 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!51 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!54 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/iomap/buffered-io.c", i32 221, i32 6}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../fs/iomap/buffered-io.c", i32 223, i32 6}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/iomap/buffered-io.c", i32 226, i32 6}
!61 = !{ptr @iomap_page_create.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../fs/iomap/buffered-io.c", i32 57, i32 2}
!63 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/bio.h", i32 248, i32 2}
!70 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/iomap/trace.h", i32 51, i32 1}
!73 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/pagemap.h", i32 1096, i32 2}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/mm.h", i32 717, i32 2}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/iomap/trace.h", i32 83, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/iomap/buffered-io.c", i32 72, i32 2}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/iomap/buffered-io.c", i32 73, i32 2}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../fs/iomap/buffered-io.c", i32 74, i32 2}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../fs/iomap/trace.h", i32 84, i32 1}
!89 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!90 = !{ptr @.str.17, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../fs/iomap/buffered-io.c", i32 607, i32 6}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/iomap/buffered-io.c", i32 588, i32 8}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../fs/iomap/buffered-io.c", i32 700, i32 2}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!100 = !{ptr @.str.18, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../fs/iomap/buffered-io.c", i32 867, i32 7}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../fs/iomap/buffered-io.c", i32 929, i32 7}
!105 = !{ptr @.str.19, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/pagemap.h", i32 777, i32 2}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../fs/iomap/buffered-io.c", i32 987, i32 3}
!109 = !{ptr @.str.20, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/iomap/buffered-io.c", i32 1078, i32 3}
!111 = !{ptr @iomap_finish_ioend._rs, !110, !"_rs", i1 false, i1 false}
!112 = !{ptr @__func__.iomap_finish_ioend, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.21, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @iomap_finish_ioend._entry, !110, !"_entry", i1 false, i1 false}
!115 = !{ptr @iomap_finish_ioend._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../fs/iomap/buffered-io.c", i32 1032, i32 2}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../fs/iomap/buffered-io.c", i32 1033, i32 2}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../fs/iomap/buffered-io.c", i32 1465, i32 6}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../fs/iomap/trace.h", i32 82, i32 1}
!124 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../fs/iomap/buffered-io.c", i32 1358, i32 2}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../fs/iomap/buffered-io.c", i32 1372, i32 7}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../fs/iomap/buffered-io.c", i32 1383, i32 2}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../fs/iomap/buffered-io.c", i32 1384, i32 2}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../fs/iomap/buffered-io.c", i32 1385, i32 2}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../fs/iomap/buffered-io.c", i32 1386, i32 2}
!137 = !{ptr @iomap_ioend_bioset, !138, !"iomap_ioend_bioset", i1 false, i1 false}
!138 = !{!"../fs/iomap/buffered-io.c", i32 44, i32 23}
!139 = !{!"sp"}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i64 2150971789, i64 2150972280, i64 2150971826, i64 2150971882, i64 2150971916, i64 2150971940, i64 2150971981, i64 2150972002, i64 2150972030, i64 2150972064}
!152 = !{i64 2150205003, i64 2150205494, i64 2150205040, i64 2150205096, i64 2150205130, i64 2150205154, i64 2150205195, i64 2150205216, i64 2150205244, i64 2150205278}
!153 = !{i8 0, i8 2}
!154 = !{i64 2148996425, i64 2148996430, i64 2148996443, i64 2148996487, i64 2148996521, i64 2148996542}
!155 = !{i64 2155198464}
!156 = !{i64 2155198685}
!157 = !{i64 2149407766}
!158 = !{i64 2149408802}
!159 = !{!"auto-init"}
!160 = !{i64 2148383048, i64 2148383074, i64 2148383103, i64 2148383137, i64 2148383168, i64 2148383191}
!161 = !{i64 2155214922}
!162 = !{i64 2155215145}
!163 = !{i64 2155252301}
!164 = !{i64 2155252528}
!165 = !{i64 2150958956}
!166 = !{i64 2155269231}
!167 = !{i64 2155269464}
!168 = !{i64 2153442432, i64 2153442916, i64 2153442469, i64 2153442525, i64 2153442559, i64 2153442583, i64 2153442624, i64 2153442645, i64 2153442673, i64 2153442707}
!169 = !{i64 2153422520, i64 2153423003, i64 2153422557, i64 2153422613, i64 2153422647, i64 2153422671, i64 2153422712, i64 2153422733, i64 2153422761, i64 2153422795}
!170 = !{i64 2148471524}
!171 = !{i64 2148386233, i64 2148386265, i64 2148386294, i64 2148386328, i64 2148386359, i64 2148386382}
!172 = !{i64 2148471753}
!173 = !{i64 2148391906, i64 2148391938, i64 2148391967, i64 2148392001, i64 2148392032, i64 2148392055}
!174 = !{i64 2148481011}
!175 = !{i64 2154216380}
!176 = !{i64 2150960027}
!177 = !{i64 786748, i64 786809}
!178 = !{i64 789480}
!179 = !{i64 789765}
!180 = !{i64 2152746172}
!181 = !{i64 2152746014}
!182 = !{i64 2152746342}
!183 = !{i64 2150014874}
!184 = !{i64 2154376292, i64 2154376781, i64 2154376329, i64 2154376385, i64 2154376419, i64 2154376443, i64 2154376484, i64 2154376505, i64 2154376533, i64 2154376567}
!185 = !{i64 2154378138, i64 2154378627, i64 2154378175, i64 2154378231, i64 2154378265, i64 2154378289, i64 2154378330, i64 2154378351, i64 2154378379, i64 2154378413}
!186 = !{i64 2155400499, i64 2155400986, i64 2155400536, i64 2155400592, i64 2155400626, i64 2155400650, i64 2155400691, i64 2155400712, i64 2155400740, i64 2155400774}
!187 = !{i64 2155402150, i64 2155402637, i64 2155402187, i64 2155402243, i64 2155402277, i64 2155402301, i64 2155402342, i64 2155402363, i64 2155402391, i64 2155402425}
!188 = !{i64 2155407653, i64 2155408140, i64 2155407690, i64 2155407746, i64 2155407780, i64 2155407804, i64 2155407845, i64 2155407866, i64 2155407894, i64 2155407928}
!189 = !{i64 2152748103}
!190 = !{i64 2149907206}
!191 = !{i64 2149912138}
!192 = !{i64 2149933850}
!193 = !{i64 2149938742}
!194 = !{i64 2150015199}
!195 = !{i64 2150015524}
!196 = !{i64 2152759965}
!197 = !{i64 2155235596}
!198 = !{i64 2155235819}
