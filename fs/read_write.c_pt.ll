; ModuleID = '/llk/IR_all_yes/fs/read_write.c_pt.bc'
source_filename = "../fs/read_write.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+generic_ro_fops\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_ro_fops\09\09\09\09"
module asm "\09.long\09__crc_generic_ro_fops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_ro_fops:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_ro_fops\22\09\09\09\09\09"
module asm "__kstrtabns_generic_ro_fops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_setpos\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_setpos\09\09\09\09"
module asm "\09.long\09__crc_vfs_setpos\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_setpos:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_setpos\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_setpos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_file_llseek_size\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_file_llseek_size\09\09\09\09"
module asm "\09.long\09__crc_generic_file_llseek_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_llseek_size:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_llseek_size\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_llseek_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_file_llseek\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_file_llseek\09\09\09\09"
module asm "\09.long\09__crc_generic_file_llseek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fixed_size_llseek\22, \22a\22\09"
module asm "\09.weak\09__crc_fixed_size_llseek\09\09\09\09"
module asm "\09.long\09__crc_fixed_size_llseek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_size_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_size_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_size_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+no_seek_end_llseek\22, \22a\22\09"
module asm "\09.weak\09__crc_no_seek_end_llseek\09\09\09\09"
module asm "\09.long\09__crc_no_seek_end_llseek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_seek_end_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22no_seek_end_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_no_seek_end_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+no_seek_end_llseek_size\22, \22a\22\09"
module asm "\09.weak\09__crc_no_seek_end_llseek_size\09\09\09\09"
module asm "\09.long\09__crc_no_seek_end_llseek_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_seek_end_llseek_size:\09\09\09\09\09"
module asm "\09.asciz \09\22no_seek_end_llseek_size\22\09\09\09\09\09"
module asm "__kstrtabns_no_seek_end_llseek_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+noop_llseek\22, \22a\22\09"
module asm "\09.weak\09__crc_noop_llseek\09\09\09\09"
module asm "\09.long\09__crc_noop_llseek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_noop_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22noop_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_noop_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+no_llseek\22, \22a\22\09"
module asm "\09.weak\09__crc_no_llseek\09\09\09\09"
module asm "\09.long\09__crc_no_llseek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22no_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_no_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+default_llseek\22, \22a\22\09"
module asm "\09.weak\09__crc_default_llseek\09\09\09\09"
module asm "\09.long\09__crc_default_llseek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_default_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22default_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_default_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_llseek\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_llseek\09\09\09\09"
module asm "\09.long\09__crc_vfs_llseek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kernel_read\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_read\09\09\09\09"
module asm "\09.long\09__crc_kernel_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__kernel_write\22, \22a\22\09"
module asm "\09.weak\09__crc___kernel_write\09\09\09\09"
module asm "\09.long\09__crc___kernel_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__kernel_write\22\09\09\09\09\09"
module asm "__kstrtabns___kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kernel_write\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_write\09\09\09\09"
module asm "\09.long\09__crc_kernel_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_write\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_iocb_iter_read\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_iocb_iter_read\09\09\09\09"
module asm "\09.long\09__crc_vfs_iocb_iter_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_iocb_iter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_iocb_iter_read\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_iocb_iter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_iter_read\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_iter_read\09\09\09\09"
module asm "\09.long\09__crc_vfs_iter_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_iter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_iter_read\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_iter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_iocb_iter_write\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_iocb_iter_write\09\09\09\09"
module asm "\09.long\09__crc_vfs_iocb_iter_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_iocb_iter_write:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_iocb_iter_write\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_iocb_iter_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_iter_write\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_iter_write\09\09\09\09"
module asm "\09.long\09__crc_vfs_iter_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_iter_write:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_iter_write\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_iter_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_copy_file_range\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_copy_file_range\09\09\09\09"
module asm "\09.long\09__crc_generic_copy_file_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_copy_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_copy_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_generic_copy_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_copy_file_range\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_copy_file_range\09\09\09\09"
module asm "\09.long\09__crc_vfs_copy_file_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_copy_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_copy_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_copy_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_write_checks\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_write_checks\09\09\09\09"
module asm "\09.long\09__crc_generic_write_checks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_write_checks:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_write_checks\22\09\09\09\09\09"
module asm "__kstrtabns_generic_write_checks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.78, %struct.trace_event, ptr, ptr, %union.anon.79, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.78 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.102 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kvec = type { ptr, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.66, %union.anon.67 }
%union.anon.66 = type { ptr }
%union.anon.67 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16, %struct.spinlock, %struct.xarray, ptr, %struct.hlist_head, %struct.work_struct }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.iovec = type { ptr, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }

@generic_ro_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_readonly_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_generic_ro_fops = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_ro_fops = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_ro_fops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_ro_fops to i32), ptr @__kstrtab_generic_ro_fops, ptr @__kstrtabns_generic_ro_fops }, section "___ksymtab+generic_ro_fops", align 4
@__kstrtab_vfs_setpos = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_setpos = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_setpos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_setpos to i32), ptr @__kstrtab_vfs_setpos, ptr @__kstrtabns_vfs_setpos }, section "___ksymtab+vfs_setpos", align 4
@__kstrtab_generic_file_llseek_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_llseek_size = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_llseek_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_llseek_size to i32), ptr @__kstrtab_generic_file_llseek_size, ptr @__kstrtabns_generic_file_llseek_size }, section "___ksymtab+generic_file_llseek_size", align 4
@__kstrtab_generic_file_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_llseek to i32), ptr @__kstrtab_generic_file_llseek, ptr @__kstrtabns_generic_file_llseek }, section "___ksymtab+generic_file_llseek", align 4
@__kstrtab_fixed_size_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_size_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_size_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_size_llseek to i32), ptr @__kstrtab_fixed_size_llseek, ptr @__kstrtabns_fixed_size_llseek }, section "___ksymtab+fixed_size_llseek", align 4
@__kstrtab_no_seek_end_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_seek_end_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_no_seek_end_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_seek_end_llseek to i32), ptr @__kstrtab_no_seek_end_llseek, ptr @__kstrtabns_no_seek_end_llseek }, section "___ksymtab+no_seek_end_llseek", align 4
@__kstrtab_no_seek_end_llseek_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_seek_end_llseek_size = external dso_local constant [0 x i8], align 1
@__ksymtab_no_seek_end_llseek_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_seek_end_llseek_size to i32), ptr @__kstrtab_no_seek_end_llseek_size, ptr @__kstrtabns_no_seek_end_llseek_size }, section "___ksymtab+no_seek_end_llseek_size", align 4
@__kstrtab_noop_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_noop_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_noop_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @noop_llseek to i32), ptr @__kstrtab_noop_llseek, ptr @__kstrtabns_noop_llseek }, section "___ksymtab+noop_llseek", align 4
@__kstrtab_no_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_no_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_llseek to i32), ptr @__kstrtab_no_llseek, ptr @__kstrtabns_no_llseek }, section "___ksymtab+no_llseek", align 4
@__kstrtab_default_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_default_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_default_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @default_llseek to i32), ptr @__kstrtab_default_llseek, ptr @__kstrtabns_default_llseek }, section "___ksymtab+default_llseek", align 4
@__kstrtab_vfs_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_llseek to i32), ptr @__kstrtab_vfs_llseek, ptr @__kstrtabns_vfs_llseek }, section "___ksymtab+vfs_llseek", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_lseek\00", [16 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__lseek = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__lseek, ptr @args__lseek, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__lseek, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__lseek, i64 20) }, ptr @event_enter__lseek, ptr @event_exit__lseek }, align 4
@event_enter__lseek = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__lseek, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__lseek = internal global ptr @event_enter__lseek, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_lseek\00", [17 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__lseek = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__lseek, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__lseek = internal global ptr @event_exit__lseek, section "_ftrace_events", align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_lseek\00", [22 x i8] zeroinitializer }, align 32
@types__lseek = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.48], [20 x i8] zeroinitializer }, align 32
@args__lseek = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__lseek = internal global ptr @__syscall_meta__lseek, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_llseek\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__llseek = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 5, ptr @types__llseek, ptr @args__llseek, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__llseek, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__llseek, i64 20) }, ptr @event_enter__llseek, ptr @event_exit__llseek }, align 4
@event_enter__llseek = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__llseek, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__llseek = internal global ptr @event_enter__llseek, section "_ftrace_events", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_llseek\00", [16 x i8] zeroinitializer }, align 32
@event_exit__llseek = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__llseek, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__llseek = internal global ptr @event_exit__llseek, section "_ftrace_events", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_llseek\00", [21 x i8] zeroinitializer }, align 32
@types__llseek = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.48, ptr @.str.53, ptr @.str.53, ptr @.str.54, ptr @.str.48], [44 x i8] zeroinitializer }, align 32
@args__llseek = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.50, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__llseek = internal global ptr @__syscall_meta__llseek, section "__syscalls_metadata", align 4
@__kernel_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/read_write.c\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_kernel_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read to i32), ptr @__kstrtab_kernel_read, ptr @__kstrtabns_kernel_read }, section "___ksymtab+kernel_read", align 4
@__kernel_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab___kernel_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___kernel_write = external dso_local constant [0 x i8], align 1
@__ksymtab___kernel_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kernel_write to i32), ptr @__kstrtab___kernel_write, ptr @__kstrtabns___kernel_write }, section "___ksymtab_gpl+__kernel_write", align 4
@__kstrtab_kernel_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_write = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_write to i32), ptr @__kstrtab_kernel_write, ptr @__kstrtabns_kernel_write }, section "___ksymtab+kernel_write", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_read\00", [17 x i8] zeroinitializer }, align 32
@__syscall_meta__read = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 3, ptr @types__read, ptr @args__read, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__read, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__read, i64 20) }, ptr @event_enter__read, ptr @event_exit__read }, align 4
@event_enter__read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__read, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__read = internal global ptr @event_enter__read, section "_ftrace_events", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_read\00", [18 x i8] zeroinitializer }, align 32
@event_exit__read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__read, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__read = internal global ptr @event_exit__read, section "_ftrace_events", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_read\00", [23 x i8] zeroinitializer }, align 32
@types__read = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.48, ptr @.str.66, ptr @.str.67], [20 x i8] zeroinitializer }, align 32
@args__read = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.50, ptr @.str.68, ptr @.str.69], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__read = internal global ptr @__syscall_meta__read, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_write\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__write = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 3, ptr @types__write, ptr @args__write, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__write, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__write, i64 20) }, ptr @event_enter__write, ptr @event_exit__write }, align 4
@event_enter__write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__write, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__write = internal global ptr @event_enter__write, section "_ftrace_events", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_write\00", [17 x i8] zeroinitializer }, align 32
@event_exit__write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__write, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__write = internal global ptr @event_exit__write, section "_ftrace_events", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_write\00", [22 x i8] zeroinitializer }, align 32
@types__write = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.48, ptr @.str.70, ptr @.str.67], [20 x i8] zeroinitializer }, align 32
@args__write = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.50, ptr @.str.68, ptr @.str.69], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__write = internal global ptr @__syscall_meta__write, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_pread64\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__pread64 = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 4, ptr @types__pread64, ptr @args__pread64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pread64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pread64, i64 20) }, ptr @event_enter__pread64, ptr @event_exit__pread64 }, align 4
@event_enter__pread64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__pread64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pread64 = internal global ptr @event_enter__pread64, section "_ftrace_events", align 4
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_pread64\00", [47 x i8] zeroinitializer }, align 32
@event_exit__pread64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__pread64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pread64 = internal global ptr @event_exit__pread64, section "_ftrace_events", align 4
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_pread64\00", [20 x i8] zeroinitializer }, align 32
@types__pread64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.66, ptr @.str.67, ptr @.str.71], [16 x i8] zeroinitializer }, align 32
@args__pread64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.50, ptr @.str.68, ptr @.str.69, ptr @.str.72], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pread64 = internal global ptr @__syscall_meta__pread64, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_pwrite64\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__pwrite64 = internal global %struct.syscall_metadata { ptr @.str.20, i32 -1, i32 4, ptr @types__pwrite64, ptr @args__pwrite64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pwrite64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pwrite64, i64 20) }, ptr @event_enter__pwrite64, ptr @event_exit__pwrite64 }, align 4
@event_enter__pwrite64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__pwrite64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pwrite64 = internal global ptr @event_enter__pwrite64, section "_ftrace_events", align 4
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_pwrite64\00", [46 x i8] zeroinitializer }, align 32
@event_exit__pwrite64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__pwrite64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pwrite64 = internal global ptr @event_exit__pwrite64, section "_ftrace_events", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pwrite64\00", [19 x i8] zeroinitializer }, align 32
@types__pwrite64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.70, ptr @.str.67, ptr @.str.71], [16 x i8] zeroinitializer }, align 32
@args__pwrite64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.50, ptr @.str.68, ptr @.str.69, ptr @.str.72], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pwrite64 = internal global ptr @__syscall_meta__pwrite64, section "__syscalls_metadata", align 4
@__kstrtab_vfs_iocb_iter_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_iocb_iter_read = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_iocb_iter_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_iocb_iter_read to i32), ptr @__kstrtab_vfs_iocb_iter_read, ptr @__kstrtabns_vfs_iocb_iter_read }, section "___ksymtab+vfs_iocb_iter_read", align 4
@__kstrtab_vfs_iter_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_iter_read = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_iter_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_iter_read to i32), ptr @__kstrtab_vfs_iter_read, ptr @__kstrtabns_vfs_iter_read }, section "___ksymtab+vfs_iter_read", align 4
@__kstrtab_vfs_iocb_iter_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_iocb_iter_write = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_iocb_iter_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_iocb_iter_write to i32), ptr @__kstrtab_vfs_iocb_iter_write, ptr @__kstrtabns_vfs_iocb_iter_write }, section "___ksymtab+vfs_iocb_iter_write", align 4
@__kstrtab_vfs_iter_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_iter_write = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_iter_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_iter_write to i32), ptr @__kstrtab_vfs_iter_write, ptr @__kstrtabns_vfs_iter_write }, section "___ksymtab+vfs_iter_write", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_readv\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__readv = internal global %struct.syscall_metadata { ptr @.str.23, i32 -1, i32 3, ptr @types__readv, ptr @args__readv, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__readv, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__readv, i64 20) }, ptr @event_enter__readv, ptr @event_exit__readv }, align 4
@event_enter__readv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__readv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__readv = internal global ptr @event_enter__readv, section "_ftrace_events", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_readv\00", [17 x i8] zeroinitializer }, align 32
@event_exit__readv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.22 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__readv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__readv = internal global ptr @event_exit__readv, section "_ftrace_events", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_readv\00", [22 x i8] zeroinitializer }, align 32
@types__readv = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.53, ptr @.str.73, ptr @.str.53], [20 x i8] zeroinitializer }, align 32
@args__readv = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.50, ptr @.str.74, ptr @.str.75], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__readv = internal global ptr @__syscall_meta__readv, section "__syscalls_metadata", align 4
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_writev\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__writev = internal global %struct.syscall_metadata { ptr @.str.26, i32 -1, i32 3, ptr @types__writev, ptr @args__writev, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__writev, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__writev, i64 20) }, ptr @event_enter__writev, ptr @event_exit__writev }, align 4
@event_enter__writev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.24 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__writev, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__writev = internal global ptr @event_enter__writev, section "_ftrace_events", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_writev\00", [16 x i8] zeroinitializer }, align 32
@event_exit__writev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.25 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__writev, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__writev = internal global ptr @event_exit__writev, section "_ftrace_events", align 4
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_writev\00", [21 x i8] zeroinitializer }, align 32
@types__writev = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.53, ptr @.str.73, ptr @.str.53], [20 x i8] zeroinitializer }, align 32
@args__writev = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.50, ptr @.str.74, ptr @.str.75], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__writev = internal global ptr @__syscall_meta__writev, section "__syscalls_metadata", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_preadv\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__preadv = internal global %struct.syscall_metadata { ptr @.str.29, i32 -1, i32 5, ptr @types__preadv, ptr @args__preadv, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__preadv, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__preadv, i64 20) }, ptr @event_enter__preadv, ptr @event_exit__preadv }, align 4
@event_enter__preadv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.27 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__preadv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__preadv = internal global ptr @event_enter__preadv, section "_ftrace_events", align 4
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_preadv\00", [16 x i8] zeroinitializer }, align 32
@event_exit__preadv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.28 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__preadv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__preadv = internal global ptr @event_exit__preadv, section "_ftrace_events", align 4
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_preadv\00", [21 x i8] zeroinitializer }, align 32
@types__preadv = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.53, ptr @.str.73, ptr @.str.53, ptr @.str.53, ptr @.str.53], [44 x i8] zeroinitializer }, align 32
@args__preadv = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.50, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__preadv = internal global ptr @__syscall_meta__preadv, section "__syscalls_metadata", align 4
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_preadv2\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__preadv2 = internal global %struct.syscall_metadata { ptr @.str.32, i32 -1, i32 6, ptr @types__preadv2, ptr @args__preadv2, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__preadv2, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__preadv2, i64 20) }, ptr @event_enter__preadv2, ptr @event_exit__preadv2 }, align 4
@event_enter__preadv2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.30 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__preadv2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__preadv2 = internal global ptr @event_enter__preadv2, section "_ftrace_events", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_preadv2\00", [47 x i8] zeroinitializer }, align 32
@event_exit__preadv2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.31 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__preadv2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__preadv2 = internal global ptr @event_exit__preadv2, section "_ftrace_events", align 4
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_preadv2\00", [20 x i8] zeroinitializer }, align 32
@types__preadv2 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.53, ptr @.str.73, ptr @.str.53, ptr @.str.53, ptr @.str.53, ptr @.str.78], [40 x i8] zeroinitializer }, align 32
@args__preadv2 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.50, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__preadv2 = internal global ptr @__syscall_meta__preadv2, section "__syscalls_metadata", align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_pwritev\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__pwritev = internal global %struct.syscall_metadata { ptr @.str.35, i32 -1, i32 5, ptr @types__pwritev, ptr @args__pwritev, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pwritev, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pwritev, i64 20) }, ptr @event_enter__pwritev, ptr @event_exit__pwritev }, align 4
@event_enter__pwritev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.33 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__pwritev, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pwritev = internal global ptr @event_enter__pwritev, section "_ftrace_events", align 4
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_pwritev\00", [47 x i8] zeroinitializer }, align 32
@event_exit__pwritev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.34 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__pwritev, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pwritev = internal global ptr @event_exit__pwritev, section "_ftrace_events", align 4
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_pwritev\00", [20 x i8] zeroinitializer }, align 32
@types__pwritev = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.53, ptr @.str.73, ptr @.str.53, ptr @.str.53, ptr @.str.53], [44 x i8] zeroinitializer }, align 32
@args__pwritev = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.50, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pwritev = internal global ptr @__syscall_meta__pwritev, section "__syscalls_metadata", align 4
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_pwritev2\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__pwritev2 = internal global %struct.syscall_metadata { ptr @.str.38, i32 -1, i32 6, ptr @types__pwritev2, ptr @args__pwritev2, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pwritev2, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pwritev2, i64 20) }, ptr @event_enter__pwritev2, ptr @event_exit__pwritev2 }, align 4
@event_enter__pwritev2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.36 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__pwritev2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pwritev2 = internal global ptr @event_enter__pwritev2, section "_ftrace_events", align 4
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_pwritev2\00", [46 x i8] zeroinitializer }, align 32
@event_exit__pwritev2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.37 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__pwritev2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pwritev2 = internal global ptr @event_exit__pwritev2, section "_ftrace_events", align 4
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pwritev2\00", [19 x i8] zeroinitializer }, align 32
@types__pwritev2 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.53, ptr @.str.73, ptr @.str.53, ptr @.str.53, ptr @.str.53, ptr @.str.78], [40 x i8] zeroinitializer }, align 32
@args__pwritev2 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.50, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pwritev2 = internal global ptr @__syscall_meta__pwritev2, section "__syscalls_metadata", align 4
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_sendfile\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__sendfile = internal global %struct.syscall_metadata { ptr @.str.41, i32 -1, i32 4, ptr @types__sendfile, ptr @args__sendfile, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__sendfile, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__sendfile, i64 20) }, ptr @event_enter__sendfile, ptr @event_exit__sendfile }, align 4
@event_enter__sendfile = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.39 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__sendfile, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__sendfile = internal global ptr @event_enter__sendfile, section "_ftrace_events", align 4
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_sendfile\00", [46 x i8] zeroinitializer }, align 32
@event_exit__sendfile = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.40 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__sendfile, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__sendfile = internal global ptr @event_exit__sendfile, section "_ftrace_events", align 4
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_sendfile\00", [19 x i8] zeroinitializer }, align 32
@types__sendfile = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.80, ptr @.str.80, ptr @.str.81, ptr @.str.67], [16 x i8] zeroinitializer }, align 32
@args__sendfile = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.51, ptr @.str.69], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__sendfile = internal global ptr @__syscall_meta__sendfile, section "__syscalls_metadata", align 4
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_sendfile64\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__sendfile64 = internal global %struct.syscall_metadata { ptr @.str.44, i32 -1, i32 4, ptr @types__sendfile64, ptr @args__sendfile64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__sendfile64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__sendfile64, i64 20) }, ptr @event_enter__sendfile64, ptr @event_exit__sendfile64 }, align 4
@event_enter__sendfile64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.42 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__sendfile64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__sendfile64 = internal global ptr @event_enter__sendfile64, section "_ftrace_events", align 4
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_sendfile64\00", [44 x i8] zeroinitializer }, align 32
@event_exit__sendfile64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.43 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__sendfile64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__sendfile64 = internal global ptr @event_exit__sendfile64, section "_ftrace_events", align 4
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_sendfile64\00", [17 x i8] zeroinitializer }, align 32
@types__sendfile64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.80, ptr @.str.80, ptr @.str.54, ptr @.str.67], [16 x i8] zeroinitializer }, align 32
@args__sendfile64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.51, ptr @.str.69], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__sendfile64 = internal global ptr @__syscall_meta__sendfile64, section "__syscalls_metadata", align 4
@__kstrtab_generic_copy_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_copy_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_copy_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_copy_file_range to i32), ptr @__kstrtab_generic_copy_file_range, ptr @__kstrtabns_generic_copy_file_range }, section "___ksymtab+generic_copy_file_range", align 4
@vfs_copy_file_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_vfs_copy_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_copy_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_copy_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_copy_file_range to i32), ptr @__kstrtab_vfs_copy_file_range, ptr @__kstrtabns_vfs_copy_file_range }, section "___ksymtab+vfs_copy_file_range", align 4
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_copy_file_range\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__copy_file_range = internal global %struct.syscall_metadata { ptr @.str.47, i32 -1, i32 6, ptr @types__copy_file_range, ptr @args__copy_file_range, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__copy_file_range, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__copy_file_range, i64 20) }, ptr @event_enter__copy_file_range, ptr @event_exit__copy_file_range }, align 4
@event_enter__copy_file_range = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.78 { ptr @.str.45 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__copy_file_range, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__copy_file_range = internal global ptr @event_enter__copy_file_range, section "_ftrace_events", align 4
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_copy_file_range\00", [39 x i8] zeroinitializer }, align 32
@event_exit__copy_file_range = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.78 { ptr @.str.46 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__copy_file_range, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__copy_file_range = internal global ptr @event_exit__copy_file_range, section "_ftrace_events", align 4
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_copy_file_range\00", [44 x i8] zeroinitializer }, align 32
@types__copy_file_range = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.80, ptr @.str.54, ptr @.str.80, ptr @.str.54, ptr @.str.67, ptr @.str.48], [40 x i8] zeroinitializer }, align 32
@args__copy_file_range = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.79], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__copy_file_range = internal global ptr @__syscall_meta__copy_file_range, section "__syscalls_metadata", align 4
@__kstrtab_generic_write_checks = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_write_checks = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_write_checks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_write_checks to i32), ptr @__kstrtab_generic_write_checks, ptr @__kstrtabns_generic_write_checks }, section "___ksymtab+generic_write_checks", align 4
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"off_t\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"whence\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loff_t *\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"offset_high\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"offset_low\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@warn_unsupported._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.warn_unsupported = private unnamed_addr constant [17 x i8] c"warn_unsupported\00", align 1
@warn_unsupported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.warn_unsupported, ptr @.str.6, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014kernel %s not supported for file %pD4 (pid: %d comm: %.20s)\0A\00", [33 x i8] zeroinitializer }, align 32
@warn_unsupported._entry_ptr = internal global ptr @warn_unsupported._entry, section ".printk_index", align 4
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loff_t\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pos\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"const struct iovec *\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vec\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vlen\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pos_l\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pos_h\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rwf_t\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"off_t *\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"out_fd\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"in_fd\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fd_in\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"off_in\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fd_out\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"off_out\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"generic_ro_fops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 28, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"event_enter__lseek\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"event_exit__lseek\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"types__lseek\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"args__lseek\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"event_enter__llseek\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"event_exit__llseek\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [14 x i8] c"types__llseek\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"args__llseek\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 425, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 434, i32 33 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 530, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"event_enter__read\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"event_exit__read\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"types__read\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"args__read\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [19 x i8] c"event_enter__write\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [18 x i8] c"event_exit__write\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [13 x i8] c"types__write\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"args__write\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [21 x i8] c"event_enter__pread64\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"event_exit__pread64\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [15 x i8] c"types__pread64\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [14 x i8] c"args__pread64\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [22 x i8] c"event_enter__pwrite64\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"event_exit__pwrite64\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [16 x i8] c"types__pwrite64\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"args__pwrite64\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 704, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"event_enter__readv\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [18 x i8] c"event_exit__readv\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [13 x i8] c"types__readv\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [12 x i8] c"args__readv\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c"event_enter__writev\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"event_exit__writev\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [14 x i8] c"types__writev\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"args__writev\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1037, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c"event_enter__preadv\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [19 x i8] c"event_exit__preadv\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [14 x i8] c"types__preadv\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [13 x i8] c"args__preadv\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [21 x i8] c"event_enter__preadv2\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c"event_exit__preadv2\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [15 x i8] c"types__preadv2\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [14 x i8] c"args__preadv2\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [21 x i8] c"event_enter__pwritev\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c"event_exit__pwritev\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [15 x i8] c"types__pwritev\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [14 x i8] c"args__pwritev\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1063, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant [22 x i8] c"event_enter__pwritev2\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [21 x i8] c"event_exit__pwritev2\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [16 x i8] c"types__pwritev2\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [15 x i8] c"args__pwritev2\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1071, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant [22 x i8] c"event_enter__sendfile\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [21 x i8] c"event_exit__sendfile\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [16 x i8] c"types__sendfile\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [15 x i8] c"args__sendfile\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [24 x i8] c"event_enter__sendfile64\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [23 x i8] c"event_exit__sendfile64\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [18 x i8] c"types__sendfile64\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"args__sendfile64\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1296, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant [29 x i8] c"event_enter__copy_file_range\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [28 x i8] c"event_exit__copy_file_range\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [23 x i8] c"types__copy_file_range\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [22 x i8] c"args__copy_file_range\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 322, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 336, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 174, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 409, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 49, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 34, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 627, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 652, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 678, i32 1 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1031, i32 1 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1043, i32 1 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1051, i32 1 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1277, i32 1 }
@___asan_gen_.537 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.538 = private constant [19 x i8] c"../fs/read_write.c\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1528, i32 1 }
@llvm.compiler.used = appending global [232 x ptr] [ptr @__event_enter__copy_file_range, ptr @__event_enter__llseek, ptr @__event_enter__lseek, ptr @__event_enter__pread64, ptr @__event_enter__preadv, ptr @__event_enter__preadv2, ptr @__event_enter__pwrite64, ptr @__event_enter__pwritev, ptr @__event_enter__pwritev2, ptr @__event_enter__read, ptr @__event_enter__readv, ptr @__event_enter__sendfile, ptr @__event_enter__sendfile64, ptr @__event_enter__write, ptr @__event_enter__writev, ptr @__event_exit__copy_file_range, ptr @__event_exit__llseek, ptr @__event_exit__lseek, ptr @__event_exit__pread64, ptr @__event_exit__preadv, ptr @__event_exit__preadv2, ptr @__event_exit__pwrite64, ptr @__event_exit__pwritev, ptr @__event_exit__pwritev2, ptr @__event_exit__read, ptr @__event_exit__readv, ptr @__event_exit__sendfile, ptr @__event_exit__sendfile64, ptr @__event_exit__write, ptr @__event_exit__writev, ptr @__ksymtab___kernel_write, ptr @__ksymtab_default_llseek, ptr @__ksymtab_fixed_size_llseek, ptr @__ksymtab_generic_copy_file_range, ptr @__ksymtab_generic_file_llseek, ptr @__ksymtab_generic_file_llseek_size, ptr @__ksymtab_generic_ro_fops, ptr @__ksymtab_generic_write_checks, ptr @__ksymtab_kernel_read, ptr @__ksymtab_kernel_write, ptr @__ksymtab_no_llseek, ptr @__ksymtab_no_seek_end_llseek, ptr @__ksymtab_no_seek_end_llseek_size, ptr @__ksymtab_noop_llseek, ptr @__ksymtab_vfs_copy_file_range, ptr @__ksymtab_vfs_iocb_iter_read, ptr @__ksymtab_vfs_iocb_iter_write, ptr @__ksymtab_vfs_iter_read, ptr @__ksymtab_vfs_iter_write, ptr @__ksymtab_vfs_llseek, ptr @__ksymtab_vfs_setpos, ptr @__p_syscall_meta__copy_file_range, ptr @__p_syscall_meta__llseek, ptr @__p_syscall_meta__lseek, ptr @__p_syscall_meta__pread64, ptr @__p_syscall_meta__preadv, ptr @__p_syscall_meta__preadv2, ptr @__p_syscall_meta__pwrite64, ptr @__p_syscall_meta__pwritev, ptr @__p_syscall_meta__pwritev2, ptr @__p_syscall_meta__read, ptr @__p_syscall_meta__readv, ptr @__p_syscall_meta__sendfile, ptr @__p_syscall_meta__sendfile64, ptr @__p_syscall_meta__write, ptr @__p_syscall_meta__writev, ptr @__syscall_meta__copy_file_range, ptr @__syscall_meta__llseek, ptr @__syscall_meta__lseek, ptr @__syscall_meta__pread64, ptr @__syscall_meta__preadv, ptr @__syscall_meta__preadv2, ptr @__syscall_meta__pwrite64, ptr @__syscall_meta__pwritev, ptr @__syscall_meta__pwritev2, ptr @__syscall_meta__read, ptr @__syscall_meta__readv, ptr @__syscall_meta__sendfile, ptr @__syscall_meta__sendfile64, ptr @__syscall_meta__write, ptr @__syscall_meta__writev, ptr @event_enter__copy_file_range, ptr @event_enter__llseek, ptr @event_enter__lseek, ptr @event_enter__pread64, ptr @event_enter__preadv, ptr @event_enter__preadv2, ptr @event_enter__pwrite64, ptr @event_enter__pwritev, ptr @event_enter__pwritev2, ptr @event_enter__read, ptr @event_enter__readv, ptr @event_enter__sendfile, ptr @event_enter__sendfile64, ptr @event_enter__write, ptr @event_enter__writev, ptr @event_exit__copy_file_range, ptr @event_exit__llseek, ptr @event_exit__lseek, ptr @event_exit__pread64, ptr @event_exit__preadv, ptr @event_exit__preadv2, ptr @event_exit__pwrite64, ptr @event_exit__pwritev, ptr @event_exit__pwritev2, ptr @event_exit__read, ptr @event_exit__readv, ptr @event_exit__sendfile, ptr @event_exit__sendfile64, ptr @event_exit__write, ptr @event_exit__writev, ptr @warn_unsupported._entry, ptr @warn_unsupported._entry_ptr, ptr @generic_ro_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__lseek, ptr @args__lseek, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__llseek, ptr @args__llseek, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__read, ptr @args__read, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__write, ptr @args__write, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__pread64, ptr @args__pread64, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @types__pwrite64, ptr @args__pwrite64, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @types__readv, ptr @args__readv, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @types__writev, ptr @args__writev, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @types__preadv, ptr @args__preadv, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @types__preadv2, ptr @args__preadv2, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @types__pwritev, ptr @args__pwritev, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @types__pwritev2, ptr @args__pwritev2, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @types__sendfile, ptr @args__sendfile, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @types__sendfile64, ptr @args__sendfile64, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @types__copy_file_range, ptr @args__copy_file_range, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @warn_unsupported._rs, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [150 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_ro_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__lseek to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__lseek to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__lseek to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__lseek to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__llseek to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__llseek to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__llseek to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__llseek to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__read to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__read to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__write to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__write to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pread64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pread64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pread64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pread64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pwrite64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pwrite64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pwrite64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pwrite64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__readv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__readv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__readv to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__readv to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__writev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__writev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__writev to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__writev to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__preadv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__preadv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__preadv to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__preadv to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__preadv2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__preadv2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__preadv2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__preadv2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pwritev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pwritev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pwritev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pwritev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pwritev2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pwritev2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pwritev2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pwritev2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__sendfile to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__sendfile to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__sendfile to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__sendfile to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__sendfile64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__sendfile64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__sendfile64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__sendfile64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__copy_file_range to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__copy_file_range to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__copy_file_range to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__copy_file_range to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_unsupported._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_unsupported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_lseek = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_lseek
@sys_llseek = dso_local alias i32 (i32, i32, i32, ptr, i32), ptr @__se_sys_llseek
@sys_read = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_read
@sys_write = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_write
@sys_pread64 = dso_local alias i32 (i32, ptr, i32, i64), ptr @__se_sys_pread64
@sys_pwrite64 = dso_local alias i32 (i32, ptr, i32, i64), ptr @__se_sys_pwrite64
@sys_readv = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_readv
@sys_writev = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_writev
@sys_preadv = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_preadv
@sys_preadv2 = dso_local alias i32 (i32, ptr, i32, i32, i32, i32), ptr @__se_sys_preadv2
@sys_pwritev = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_pwritev
@sys_pwritev2 = dso_local alias i32 (i32, ptr, i32, i32, i32, i32), ptr @__se_sys_pwritev2
@sys_sendfile = dso_local alias i32 (i32, i32, ptr, i32), ptr @__se_sys_sendfile
@sys_sendfile64 = dso_local alias i32 (i32, i32, ptr, i32), ptr @__se_sys_sendfile64
@sys_copy_file_range = dso_local alias i32 (i32, ptr, i32, ptr, i32, i32), ptr @__se_sys_copy_file_range

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %s_maxbytes, align 8
  %call = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %call1 = tail call i64 @generic_file_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %7, i64 noundef %call)
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_readonly_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @vfs_setpos(ptr nocapture noundef %file, i64 noundef %offset, i64 noundef %maxsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp = icmp slt i64 %offset, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %offset, i64 %maxsize)
  %cmp1 = icmp sgt i64 %offset, %maxsize
  %or.cond = or i1 %cmp1, %tobool.i.not
  br i1 %or.cond, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %offset, i64 %maxsize)
  %cmp1.old = icmp sgt i64 %offset, %maxsize
  br i1 %cmp1.old, label %if.end.return_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %land.lhs.true.if.end3_crit_edge
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %2 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %f_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %offset)
  %cmp4.not = icmp eq i64 %3, %offset
  br i1 %cmp4.not, label %if.end3.return_crit_edge, label %if.then5

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %offset, ptr %f_pos, align 8
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %5 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %f_version, align 8
  br label %return

return:                                           ; preds = %if.then5, %if.end3.return_crit_edge, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i64 [ -22, %land.lhs.true.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ %offset, %if.then5 ], [ %offset, %if.end3.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @generic_file_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %maxsize, i64 noundef %eof) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whence, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb5
    i32 4, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i64 %eof, %offset
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp = icmp eq i64 %offset, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %1 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %f_pos, align 8
  br label %return

if.end:                                           ; preds = %sw.bb1
  %f_lock = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #12
  %f_pos2 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %3 = ptrtoint ptr %f_pos2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %f_pos2, align 8
  %add3 = add i64 %4, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add3)
  %cmp.i = icmp slt i64 %add3, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add3, i64 %maxsize)
  %cmp1.i = icmp sgt i64 %add3, %maxsize
  %or.cond.i = or i1 %cmp1.i, %tobool.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.vfs_setpos.exit_crit_edge, label %land.lhs.true.i.if.then5.i_crit_edge

land.lhs.true.i.if.then5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i

land.lhs.true.i.vfs_setpos.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfs_setpos.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %add3, i64 %maxsize)
  %cmp1.old.i = icmp sgt i64 %add3, %maxsize
  br i1 %cmp1.old.i, label %if.end.i.vfs_setpos.exit_crit_edge, label %if.end.i.if.then5.i_crit_edge

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i

if.end.i.vfs_setpos.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfs_setpos.exit

if.then5.i:                                       ; preds = %if.end.i.if.then5.i_crit_edge, %land.lhs.true.i.if.then5.i_crit_edge
  %7 = ptrtoint ptr %f_pos2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add3, ptr %f_pos2, align 8
  %f_version.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %8 = ptrtoint ptr %f_version.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %f_version.i, align 8
  br label %vfs_setpos.exit

vfs_setpos.exit:                                  ; preds = %if.then5.i, %if.end.i.vfs_setpos.exit_crit_edge, %land.lhs.true.i.vfs_setpos.exit_crit_edge
  %retval.0.i = phi i64 [ -22, %land.lhs.true.i.vfs_setpos.exit_crit_edge ], [ -22, %if.end.i.vfs_setpos.exit_crit_edge ], [ %add3, %if.then5.i ]
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #12
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %offset, i64 %eof)
  %cmp6.not = icmp ult i64 %offset, %eof
  br i1 %cmp6.not, label %sw.bb5.sw.epilog_crit_edge, label %sw.bb5.return_crit_edge

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %offset, i64 %eof)
  %cmp10.not = icmp ult i64 %offset, %eof
  br i1 %cmp10.not, label %sw.bb9.sw.epilog_crit_edge, label %sw.bb9.return_crit_edge

sw.bb9.return_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %offset.addr.0 = phi i64 [ %offset, %entry.sw.epilog_crit_edge ], [ %offset, %sw.bb5.sw.epilog_crit_edge ], [ %add, %sw.bb ], [ %eof, %sw.bb9.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset.addr.0)
  %cmp.i29 = icmp slt i64 %offset.addr.0, 0
  br i1 %cmp.i29, label %land.lhs.true.i35, label %if.end.i37

land.lhs.true.i35:                                ; preds = %sw.epilog
  %f_mode.i.i30 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %9 = ptrtoint ptr %f_mode.i.i30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_mode.i.i30, align 8
  %and.i.i31 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.i.not.i32 = icmp eq i32 %and.i.i31, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0, i64 %maxsize)
  %cmp1.i33 = icmp sgt i64 %offset.addr.0, %maxsize
  %or.cond.i34 = or i1 %cmp1.i33, %tobool.i.not.i32
  br i1 %or.cond.i34, label %land.lhs.true.i35.return_crit_edge, label %land.lhs.true.i35.if.end3.i40_crit_edge

land.lhs.true.i35.if.end3.i40_crit_edge:          ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i40

land.lhs.true.i35.return_crit_edge:               ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i37:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0, i64 %maxsize)
  %cmp1.old.i36 = icmp sgt i64 %offset.addr.0, %maxsize
  br i1 %cmp1.old.i36, label %if.end.i37.return_crit_edge, label %if.end.i37.if.end3.i40_crit_edge

if.end.i37.if.end3.i40_crit_edge:                 ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i40

if.end.i37.return_crit_edge:                      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end3.i40:                                      ; preds = %if.end.i37.if.end3.i40_crit_edge, %land.lhs.true.i35.if.end3.i40_crit_edge
  %f_pos.i38 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %11 = ptrtoint ptr %f_pos.i38 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %f_pos.i38, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %offset.addr.0)
  %cmp4.not.i39 = icmp eq i64 %12, %offset.addr.0
  br i1 %cmp4.not.i39, label %if.end3.i40.return_crit_edge, label %if.then5.i42

if.end3.i40.return_crit_edge:                     ; preds = %if.end3.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then5.i42:                                     ; preds = %if.end3.i40
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %f_pos.i38 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %offset.addr.0, ptr %f_pos.i38, align 8
  %f_version.i41 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %14 = ptrtoint ptr %f_version.i41 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %f_version.i41, align 8
  br label %return

return:                                           ; preds = %if.then5.i42, %if.end3.i40.return_crit_edge, %if.end.i37.return_crit_edge, %land.lhs.true.i35.return_crit_edge, %sw.bb9.return_crit_edge, %sw.bb5.return_crit_edge, %vfs_setpos.exit, %if.then
  %retval.0 = phi i64 [ %2, %if.then ], [ %retval.0.i, %vfs_setpos.exit ], [ -6, %sw.bb5.return_crit_edge ], [ -6, %sw.bb9.return_crit_edge ], [ -22, %land.lhs.true.i35.return_crit_edge ], [ -22, %if.end.i37.return_crit_edge ], [ %offset.addr.0, %if.then5.i42 ], [ %offset.addr.0, %if.end3.i40.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !298
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !299
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !300

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !301
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !302
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !303
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !305
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %whence)
  %switch = icmp ult i32 %whence, 3
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i64 @generic_file_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %size, i64 noundef %size)
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i64 [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @no_seek_end_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whence)
  %switch = icmp ult i32 %whence, 2
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i64 @generic_file_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef 9223372036854775807, i64 noundef 0)
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i64 [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @no_seek_end_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whence)
  %switch = icmp ult i32 %whence, 2
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i64 @generic_file_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %size, i64 noundef 0)
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i64 [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @noop_llseek(ptr nocapture noundef readonly %file, i64 %offset, i32 %whence) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %0 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %f_pos, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @no_llseek(ptr nocapture readnone %file, i64 %offset, i32 %whence) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 -29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @default_llseek(ptr nocapture noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %2 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %whence, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb6
    i32 4, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %add = add i64 %call2, %offset
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp = icmp eq i64 %offset, 0
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %3 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %f_pos, align 8
  br i1 %cmp, label %sw.bb3.out_crit_edge, label %if.end

sw.bb3.out_crit_edge:                             ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %add5 = add i64 %4, %offset
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %offset)
  %cmp7.not = icmp sgt i64 %6, %offset
  br i1 %cmp7.not, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.out_crit_edge

sw.bb6.out_crit_edge:                             ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %i_size11 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %i_size11 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %offset)
  %cmp12.not = icmp sgt i64 %8, %offset
  br i1 %cmp12.not, label %sw.bb10.sw.epilog_crit_edge, label %sw.bb10.out_crit_edge

sw.bb10.out_crit_edge:                            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  %offset.addr.0 = phi i64 [ %offset, %entry.sw.epilog_crit_edge ], [ %offset, %sw.bb6.sw.epilog_crit_edge ], [ %add5, %if.end ], [ %add, %sw.bb ], [ %8, %sw.bb10.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %offset.addr.0)
  %cmp16 = icmp sgt i64 %offset.addr.0, -1
  br i1 %cmp16, label %sw.epilog.if.then18_crit_edge, label %lor.lhs.false

sw.epilog.if.then18_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

lor.lhs.false:                                    ; preds = %sw.epilog
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %9 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %sw.epilog.if.then18_crit_edge
  %f_pos19 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %11 = ptrtoint ptr %f_pos19 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %f_pos19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0, i64 %12)
  %cmp20.not = icmp eq i64 %offset.addr.0, %12
  br i1 %cmp20.not, label %if.then18.out_crit_edge, label %if.then21

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %f_pos19 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %offset.addr.0, ptr %f_pos19, align 8
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %14 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %f_version, align 8
  br label %out

out:                                              ; preds = %if.then21, %if.then18.out_crit_edge, %lor.lhs.false.out_crit_edge, %sw.bb10.out_crit_edge, %sw.bb6.out_crit_edge, %sw.bb3.out_crit_edge
  %retval1.0 = phi i64 [ -22, %lor.lhs.false.out_crit_edge ], [ -6, %sw.bb6.out_crit_edge ], [ -6, %sw.bb10.out_crit_edge ], [ %offset.addr.0, %if.then21 ], [ %offset.addr.0, %if.then18.out_crit_edge ], [ %4, %sw.bb3.out_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  ret i64 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @vfs_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %2 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op, align 4
  %llseek = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %llseek to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %llseek, align 4
  %tobool1.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool1.not, ptr @no_llseek, ptr %5
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %fn.0 = phi ptr [ @no_llseek, %entry.if.end5_crit_edge ], [ %spec.select, %if.then ]
  %call = tail call i64 %fn.0(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #12
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lseek(i32 noundef %fd, i32 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @__fdget_pos(i32 noundef %fd) #12, !noalias !306
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %0 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.__do_sys_lseek.exit_crit_edge, label %if.end.i.i

entry.__do_sys_lseek.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_lseek.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %whence)
  %cmp.i.i = icmp ult i32 %whence, 5
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %conv.i.i = sext i32 %offset to i64
  %f_mode.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %f_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_mode.i.i.i, align 8
  %and.i.i.i = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then2.i.i.vfs_llseek.exit.i.i_crit_edge, label %if.then.i.i.i

if.then2.i.i.vfs_llseek.exit.i.i_crit_edge:       ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfs_llseek.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_op.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %f_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_op.i.i.i, align 4
  %llseek.i.i.i = getelementptr inbounds %struct.file_operations, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %llseek.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %llseek.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %6, null
  %spec.select.i.i.i = select i1 %tobool1.not.i.i.i, ptr @no_llseek, ptr %6
  br label %vfs_llseek.exit.i.i

vfs_llseek.exit.i.i:                              ; preds = %if.then.i.i.i, %if.then2.i.i.vfs_llseek.exit.i.i_crit_edge
  %fn.0.i.i.i = phi ptr [ @no_llseek, %if.then2.i.i.vfs_llseek.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then.i.i.i ]
  %call.i15.i.i = tail call i64 %fn.0.i.i.i(ptr noundef nonnull %0, i64 noundef %conv.i.i, i32 noundef %whence) #12
  %conv4.i.i = trunc i64 %call.i15.i.i to i32
  %conv5.i.i = sext i32 %conv4.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i15.i.i, i64 %conv5.i.i)
  %cmp6.not.i.i = icmp eq i64 %call.i15.i.i, %conv5.i.i
  %spec.store.select.i.i = select i1 %cmp6.not.i.i, i32 %conv4.i.i, i32 -75
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %vfs_llseek.exit.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %retval1.0.i.i = phi i32 [ %spec.store.select.i.i, %vfs_llseek.exit.i.i ], [ -22, %if.end.i.i.if.end10.i.i_crit_edge ]
  %and.i16.i.i = and i32 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %tobool.not.i17.i.i, label %if.end10.i.i.if.end.i.i.i_crit_edge, label %if.then.i18.i.i

if.end10.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i18.i.i:                                  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__f_unlock_pos(ptr noundef nonnull %0) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i18.i.i, %if.end10.i.i.if.end.i.i.i_crit_edge
  %and.i.i19.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i19.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.__do_sys_lseek.exit_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.__do_sys_lseek.exit_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_lseek.exit

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fput(ptr noundef nonnull %0) #12
  br label %__do_sys_lseek.exit

__do_sys_lseek.exit:                              ; preds = %if.then.i.i.i.i, %if.end.i.i.i.__do_sys_lseek.exit_crit_edge, %entry.__do_sys_lseek.exit_crit_edge
  %retval.0.i.i = phi i32 [ -9, %entry.__do_sys_lseek.exit_crit_edge ], [ %retval1.0.i.i, %if.end.i.i.i.__do_sys_lseek.exit_crit_edge ], [ %retval1.0.i.i, %if.then.i.i.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_llseek(i32 noundef %fd, i32 noundef %offset_high, i32 noundef %offset_low, i32 noundef %result, i32 noundef %whence) #0 align 64 {
entry:
  %offset.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %result to ptr
  %call.i.i = tail call i32 @__fdget_pos(i32 noundef %fd) #12, !noalias !309
  %and.i.i.i = and i32 %call.i.i, -4
  %1 = inttoptr i32 %and.i.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.i) #12
  %2 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %offset.i, align 8, !annotation !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_llseek.exit_crit_edge, label %if.end.i

entry.__do_sys_llseek.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_llseek.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %whence)
  %cmp.i = icmp ugt i32 %whence, 4
  br i1 %cmp.i, label %if.end.i.out_putf.i_crit_edge, label %if.end3.i

if.end.i.out_putf.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putf.i

if.end3.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %offset_high to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv5.i = zext i32 %offset_low to i64
  %or.i = or i64 %shl.i, %conv5.i
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.vfs_llseek.exit.i_crit_edge, label %if.then.i18.i

if.end3.i.vfs_llseek.exit.i_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfs_llseek.exit.i

if.then.i18.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_op.i.i, align 4
  %llseek.i.i = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %llseek.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %llseek.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %8, null
  %spec.select.i.i = select i1 %tobool1.not.i.i, ptr @no_llseek, ptr %8
  br label %vfs_llseek.exit.i

vfs_llseek.exit.i:                                ; preds = %if.then.i18.i, %if.end3.i.vfs_llseek.exit.i_crit_edge
  %fn.0.i.i = phi ptr [ @no_llseek, %if.end3.i.vfs_llseek.exit.i_crit_edge ], [ %spec.select.i.i, %if.then.i18.i ]
  %call.i19.i = tail call i64 %fn.0.i.i(ptr noundef nonnull %1, i64 noundef %or.i, i32 noundef %whence) #12
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i19.i, ptr %offset.i, align 8
  %conv6.i = trunc i64 %call.i19.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i19.i)
  %cmp7.i = icmp sgt i64 %call.i19.i, -1
  br i1 %cmp7.i, label %if.then.i.i, label %vfs_llseek.exit.i.out_putf.i_crit_edge

vfs_llseek.exit.i.out_putf.i_crit_edge:           ; preds = %vfs_llseek.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putf.i

if.then.i.i:                                      ; preds = %vfs_llseek.exit.i
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #12
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.out_putf.i_crit_edge, label %if.end.i.i.i

if.then.i.i.out_putf.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putf.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #15, !srcloc !313
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.out_putf.i_crit_edge

if.end.i.i.i.out_putf.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putf.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %offset.i, i32 noundef 8) #12
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %offset.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool11.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool11.not.i, i32 0, i32 -14
  br label %out_putf.i

out_putf.i:                                       ; preds = %copy_to_user.exit.i, %if.end.i.i.i.out_putf.i_crit_edge, %if.then.i.i.out_putf.i_crit_edge, %vfs_llseek.exit.i.out_putf.i_crit_edge, %if.end.i.out_putf.i_crit_edge
  %retval1.0.i = phi i32 [ -22, %if.end.i.out_putf.i_crit_edge ], [ %conv6.i, %vfs_llseek.exit.i.out_putf.i_crit_edge ], [ -14, %if.then.i.i.out_putf.i_crit_edge ], [ -14, %if.end.i.i.i.out_putf.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  %and.i20.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not.i21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not.i21.i, label %out_putf.i.if.end.i.i_crit_edge, label %if.then.i22.i

out_putf.i.if.end.i.i_crit_edge:                  ; preds = %out_putf.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i22.i:                                    ; preds = %out_putf.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__f_unlock_pos(ptr noundef nonnull %1) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i22.i, %out_putf.i.if.end.i.i_crit_edge
  %and.i.i23.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i23.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i23.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.__do_sys_llseek.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.__do_sys_llseek.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_llseek.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %1) #12
  br label %__do_sys_llseek.exit

__do_sys_llseek.exit:                             ; preds = %if.then.i.i.i, %if.end.i.i.__do_sys_llseek.exit_crit_edge, %entry.__do_sys_llseek.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_llseek.exit_crit_edge ], [ %retval1.0.i, %if.end.i.i.__do_sys_llseek.exit_crit_edge ], [ %retval1.0.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rw_verify_area(i32 noundef %read_write, ptr noundef %file, ptr noundef readonly %ppos, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !300

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %ppos, null
  br i1 %tobool2.not, label %if.end.if.end33_crit_edge, label %if.then3

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then3:                                         ; preds = %if.end
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp4 = icmp slt i64 %1, 0
  br i1 %cmp4, label %if.then11, label %if.else, !prof !300

if.then11:                                        ; preds = %if.then3
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then11.return_crit_edge, label %if.end13

if.then11.return_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end13:                                         ; preds = %if.then11
  %conv = zext i32 %count to i64
  %sub = sub i64 0, %1
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %sub)
  %cmp14.not = icmp slt i64 %conv, %sub
  br i1 %cmp14.not, label %if.end13.if.end33_crit_edge, label %if.end13.return_crit_edge

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.else:                                          ; preds = %if.then3
  %conv18 = zext i32 %count to i64
  %add = add nuw i64 %1, %conv18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp19 = icmp slt i64 %add, 0
  br i1 %cmp19, label %if.then27, label %if.else.if.end33_crit_edge, !prof !300

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then27:                                        ; preds = %if.else
  %f_mode.i44 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode.i44 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode.i44, align 8
  %and.i45 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.i46.not = icmp eq i32 %and.i45, 0
  br i1 %tobool.i46.not, label %if.then27.return_crit_edge, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then27.return_crit_edge:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end33:                                         ; preds = %if.then27.if.end33_crit_edge, %if.else.if.end33_crit_edge, %if.end13.if.end33_crit_edge, %if.end.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_write)
  %cmp34 = icmp eq i32 %read_write, 0
  %cond = select i1 %cmp34, i32 4, i32 2
  %call36 = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef %cond) #12
  br label %return

return:                                           ; preds = %if.end33, %if.then27.return_crit_edge, %if.end13.return_crit_edge, %if.then11.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call36, %if.end33 ], [ -22, %entry.return_crit_edge ], [ -22, %if.then27.return_crit_edge ], [ -75, %if.end13.return_crit_edge ], [ -22, %if.then11.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_permission(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kernel_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca %struct.kvec, align 4
  %kiocb = alloca %struct.kiocb, align 8
  %iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #12
  %0 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %1 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %iov, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 2147479552)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kiocb) #12
  %4 = call ptr @memset(ptr %kiocb, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #12
  %5 = call ptr @memset(ptr %iter, i32 255, i32 24)
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b95 = load i1, ptr @__kernel_read.__already_done, align 1
  br i1 %.b95, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !314

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__kernel_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 425, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end40:                                         ; preds = %entry
  %and42 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %8 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_op, align 4
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %read_iter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_iter, align 4
  %tobool46.not = icmp eq ptr %11, null
  br i1 %tobool46.not, label %if.end45.if.then55_crit_edge, label %lor.rhs, !prof !300

if.end45.if.then55_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

lor.rhs:                                          ; preds = %if.end45
  %read = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read, align 4
  %tobool48.not = icmp eq ptr %13, null
  br i1 %tobool48.not, label %if.end56, label %lor.rhs.if.then55_crit_edge, !prof !314

lor.rhs.if.then55_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.then55:                                        ; preds = %lor.rhs.if.then55_crit_edge, %if.end45.if.then55_crit_edge
  tail call fastcc void @warn_unsupported(ptr noundef %file, ptr noundef nonnull @.str.7)
  br label %cleanup

if.end56:                                         ; preds = %lor.rhs
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %14 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags.i.i, align 4
  %and.i.i = lshr i32 %15, 6
  %16 = and i32 %and.i.i, 16
  %and2.i.i = shl i32 %15, 1
  %17 = and i32 %and2.i.i, 131072
  %18 = or i32 %17, %16
  %and8.i.i = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i, label %if.end56.if.then17.i.i_crit_edge

if.end56.if.then17.i.i_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i

lor.lhs.false.i.i:                                ; preds = %if.end56
  %f_mapping.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %19 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_mapping.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_flags.i.i, align 4
  %and10.i.i = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false12.i.i, label %lor.lhs.false.i.i.if.then17.i.i_crit_edge

lor.lhs.false.i.i.if.then17.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i

lor.lhs.false12.i.i:                              ; preds = %lor.lhs.false.i.i
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 4
  %27 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_flags.i.i, align 4
  %and15.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge, label %lor.lhs.false12.i.i.if.then17.i.i_crit_edge

lor.lhs.false12.i.i.if.then17.i.i_crit_edge:      ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i

lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge:  ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iocb_flags.exit.i

if.then17.i.i:                                    ; preds = %lor.lhs.false12.i.i.if.then17.i.i_crit_edge, %lor.lhs.false.i.i.if.then17.i.i_crit_edge, %if.end56.if.then17.i.i_crit_edge
  %or18.i.i = or i32 %18, 2
  br label %iocb_flags.exit.i

iocb_flags.exit.i:                                ; preds = %if.then17.i.i, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge
  %res.2.i.i = phi i32 [ %or18.i.i, %if.then17.i.i ], [ %18, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge ]
  %f_write_hint.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 5
  %29 = ptrtoint ptr %f_write_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_write_hint.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge

iocb_flags.exit.i.file_write_hint.exit.i_crit_edge: ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_write_hint.exit.i

if.end.i.i:                                       ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %31 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_write_hint.i.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 21
  %33 = ptrtoint ptr %i_write_hint.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i_write_hint.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  br label %file_write_hint.exit.i

file_write_hint.exit.i:                           ; preds = %if.end.i.i, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ %30, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge ]
  %35 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i, align 8
  %io_context.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 151
  %39 = ptrtoint ptr %io_context.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_context.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge, label %if.then.i.i

file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge: ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_sync_kiocb.exit

if.then.i.i:                                      ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio.i.i = getelementptr inbounds %struct.io_context, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ioprio.i.i, align 4
  br label %init_sync_kiocb.exit

init_sync_kiocb.exit:                             ; preds = %if.then.i.i, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge
  %retval.0.i8.i = phi i16 [ %42, %if.then.i.i ], [ 16388, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge ]
  %43 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 65536) #12
  %44 = trunc i32 %43 to i16
  %and21.i.i = lshr i32 %15, 18
  %45 = and i32 %and21.i.i, 4
  %46 = or i32 %res.2.i.i, %45
  %47 = ptrtoint ptr %kiocb to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %file, ptr %kiocb, align 8
  %.compoundliteral.sroa.24.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 24
  %48 = getelementptr inbounds i8, ptr %kiocb, i32 16
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %48, align 8
  %50 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %46, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 28
  %51 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %44, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 30
  %52 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %retval.0.i8.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 32
  %53 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %.compoundliteral.sroa.8.0..sroa_idx.i, align 8
  %tobool57.not = icmp eq ptr %pos, null
  br i1 %tobool57.not, label %init_sync_kiocb.exit.cond.end60_crit_edge, label %cond.true58

init_sync_kiocb.exit.cond.end60_crit_edge:        ; preds = %init_sync_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end60

cond.true58:                                      ; preds = %init_sync_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %pos, align 8
  br label %cond.end60

cond.end60:                                       ; preds = %cond.true58, %init_sync_kiocb.exit.cond.end60_crit_edge
  %cond61 = phi i64 [ %55, %cond.true58 ], [ 0, %init_sync_kiocb.exit.cond.end60_crit_edge ]
  %56 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %cond61, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 8
  call void @iov_iter_kvec(ptr noundef nonnull %iter, i32 noundef 0, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef %2) #12
  %57 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %f_op, align 4
  %read_iter64 = getelementptr inbounds %struct.file_operations, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %read_iter64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_iter64, align 4
  %call65 = call i32 %60(ptr noundef nonnull %kiocb, ptr noundef nonnull %iter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp sgt i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %cond.end60.if.end73_crit_edge

cond.end60.if.end73_crit_edge:                    ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then67:                                        ; preds = %cond.end60
  br i1 %tobool57.not, label %if.then67.if.end71_crit_edge, label %if.then69

if.then67.if.end71_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 8
  %63 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %pos, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then67.if.end71_crit_edge
  %64 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %f_mode, align 8
  %and.i.i97 = and i32 %65, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %and.i.i97, 0
  br i1 %tobool.not.i.i98, label %if.end.i.i99, label %if.end71.fsnotify_access.exit_crit_edge

if.end71.fsnotify_access.exit_crit_edge:          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i99:                                     ; preds = %if.end71
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %72 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i.i = icmp eq i32 %73, 0
  br i1 %cmp.i.i.i, label %if.end.i.i99.fsnotify_access.exit_crit_edge, label %if.end.i.i.i

if.end.i.i99.fsnotify_access.exit_crit_edge:      ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i99
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %69, align 8
  %76 = and i16 %75, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %76)
  %cmp2.i.i.i = icmp eq i16 %76, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %77 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %67, align 8
  %and5.i.i.i = and i32 %78, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741825, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %67, i32 0, i32 3
  %79 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %80, %67
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = call i32 @__fsnotify_parent(ptr noundef %67, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %fsnotify_access.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741825, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %69, i32 noundef 0) #12
  br label %fsnotify_access.exit

fsnotify_access.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i99.fsnotify_access.exit_crit_edge, %if.end71.fsnotify_access.exit_crit_edge
  %81 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task, align 8
  %conv.i101 = zext i32 %call65 to i64
  %ioac.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 155
  %85 = ptrtoint ptr %ioac.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %ioac.i, align 8
  %add.i = add i64 %86, %conv.i101
  store i64 %add.i, ptr %ioac.i, align 8
  br label %if.end73

if.end73:                                         ; preds = %fsnotify_access.exit, %cond.end60.if.end73_crit_edge
  %87 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i100 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i100 to ptr
  %task75 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task75, align 8
  %syscr.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 155, i32 2
  %91 = ptrtoint ptr %syscr.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %syscr.i, align 8
  %inc.i = add i64 %92, 1
  store i64 %inc.i, ptr %syscr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then55, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then55 ], [ %call65, %if.end73 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kiocb) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @warn_unsupported(ptr noundef %file, ptr noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @warn_unsupported._rs, ptr noundef nonnull @__func__.warn_unsupported) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %op, ptr noundef %file, i32 noundef %5, ptr noundef %comm) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp slt i32 %count, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !300

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %pos, null
  br i1 %tobool2.not.i, label %if.end.i.rw_verify_area.exit_crit_edge, label %if.then3.i

if.end.i.rw_verify_area.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then3.i:                                       ; preds = %if.end.i
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp4.i = icmp slt i64 %1, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.then3.i
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end13.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then11.i
  %conv.i = zext i32 %count to i64
  %sub.i = sub i64 0, %1
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %sub.i)
  %cmp14.not.i = icmp slt i64 %conv.i, %sub.i
  br i1 %cmp14.not.i, label %if.end13.i.rw_verify_area.exit_crit_edge, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i.rw_verify_area.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.then3.i
  %conv18.i = zext i32 %count to i64
  %add.i = add nuw i64 %1, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %f_mode.i44.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode.i44.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode.i44.i, align 8
  %and.i45.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i.rw_verify_area.exit_crit_edge, %if.end.i.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool.not = icmp eq i32 %call36.i, 0
  br i1 %tobool.not, label %if.end, label %rw_verify_area.exit.cleanup_crit_edge

rw_verify_area.exit.cleanup_crit_edge:            ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @__kernel_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %pos)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rw_verify_area.exit.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call36.i, %rw_verify_area.exit.cleanup_crit_edge ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -75, %if.end13.i.cleanup_crit_edge ], [ -22, %if.then27.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %iov.i = alloca %struct.iovec, align 4
  %kiocb.i = alloca %struct.kiocb, align 8
  %iter.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #15, !srcloc !315
  %asmresult = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp.not = icmp eq i32 %asmresult, 0
  br i1 %cmp.not, label %if.end11, label %if.end5.cleanup_crit_edge, !prof !314

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp slt i32 %count, 0
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end.i, !prof !300

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %tobool2.not.i = icmp eq ptr %pos, null
  br i1 %tobool2.not.i, label %if.end.i.rw_verify_area.exit_crit_edge, label %if.then3.i

if.end.i.rw_verify_area.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then3.i:                                       ; preds = %if.end.i
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp4.i = icmp slt i64 %4, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.then3.i
  %and.i.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end13.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then11.i
  %conv.i = zext i32 %count to i64
  %sub.i = sub i64 0, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %sub.i)
  %cmp14.not.i = icmp slt i64 %conv.i, %sub.i
  br i1 %cmp14.not.i, label %if.end13.i.rw_verify_area.exit_crit_edge, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i.rw_verify_area.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.then3.i
  %conv18.i = zext i32 %count to i64
  %add.i = add nuw i64 %4, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %and.i45.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i.rw_verify_area.exit_crit_edge, %if.end.i.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool12.not = icmp eq i32 %call36.i, 0
  br i1 %tobool12.not, label %if.end14, label %rw_verify_area.exit.cleanup_crit_edge

rw_verify_area.exit.cleanup_crit_edge:            ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %rw_verify_area.exit
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 2147479552)
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %6 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_op, align 4
  %read = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 %9(ptr noundef %file, ptr noundef %buf, i32 noundef %5, ptr noundef %pos) #12
  br label %if.end29

if.else:                                          ; preds = %if.end14
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %read_iter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_iter, align 4
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %if.else.if.end33_crit_edge, label %if.then25

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then25:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #12
  %12 = getelementptr inbounds %struct.iovec, ptr %iov.i, i32 0, i32 1
  %13 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %iov.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kiocb.i) #12
  %15 = call ptr @memset(ptr %kiocb.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #12
  %16 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %f_flags.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %17 = ptrtoint ptr %f_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_flags.i.i.i, align 4
  %and.i.i.i = lshr i32 %18, 6
  %19 = and i32 %and.i.i.i, 16
  %and2.i.i.i = shl i32 %18, 1
  %20 = and i32 %and2.i.i.i, 131072
  %21 = or i32 %20, %19
  %and8.i.i.i = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.then25.if.then17.i.i.i_crit_edge

if.then25.if.then17.i.i.i_crit_edge:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then25
  %f_mapping.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %22 = ptrtoint ptr %f_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_mapping.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_flags.i.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %s_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_flags.i.i.i, align 4
  %and10.i.i.i = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %lor.lhs.false12.i.i.i, label %lor.lhs.false.i.i.i.if.then17.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then17.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i.i

lor.lhs.false12.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %i_flags.i.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_flags.i.i.i, align 4
  %and15.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %and15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %lor.lhs.false12.i.i.i.iocb_flags.exit.i.i_crit_edge, label %lor.lhs.false12.i.i.i.if.then17.i.i.i_crit_edge

lor.lhs.false12.i.i.i.if.then17.i.i.i_crit_edge:  ; preds = %lor.lhs.false12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i.i

lor.lhs.false12.i.i.i.iocb_flags.exit.i.i_crit_edge: ; preds = %lor.lhs.false12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iocb_flags.exit.i.i

if.then17.i.i.i:                                  ; preds = %lor.lhs.false12.i.i.i.if.then17.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then17.i.i.i_crit_edge, %if.then25.if.then17.i.i.i_crit_edge
  %or18.i.i.i = or i32 %21, 2
  br label %iocb_flags.exit.i.i

iocb_flags.exit.i.i:                              ; preds = %if.then17.i.i.i, %lor.lhs.false12.i.i.i.iocb_flags.exit.i.i_crit_edge
  %res.2.i.i.i = phi i32 [ %or18.i.i.i, %if.then17.i.i.i ], [ %21, %lor.lhs.false12.i.i.i.iocb_flags.exit.i.i_crit_edge ]
  %f_write_hint.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 5
  %32 = ptrtoint ptr %f_write_hint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_write_hint.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %iocb_flags.exit.i.i.file_write_hint.exit.i.i_crit_edge

iocb_flags.exit.i.i.file_write_hint.exit.i.i_crit_edge: ; preds = %iocb_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_write_hint.exit.i.i

if.end.i.i.i:                                     ; preds = %iocb_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %34 = ptrtoint ptr %f_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f_inode.i.i.i.i, align 8
  %i_write_hint.i.i.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 21
  %36 = ptrtoint ptr %i_write_hint.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i_write_hint.i.i.i, align 1
  %conv.i.i.i = zext i8 %37 to i32
  br label %file_write_hint.exit.i.i

file_write_hint.exit.i.i:                         ; preds = %if.end.i.i.i, %iocb_flags.exit.i.i.file_write_hint.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ %33, %iocb_flags.exit.i.i.file_write_hint.exit.i.i_crit_edge ]
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i, align 8
  %io_context.i.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 151
  %42 = ptrtoint ptr %io_context.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_context.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %file_write_hint.exit.i.i.init_sync_kiocb.exit.i_crit_edge, label %if.then.i.i.i

file_write_hint.exit.i.i.init_sync_kiocb.exit.i_crit_edge: ; preds = %file_write_hint.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_sync_kiocb.exit.i

if.then.i.i.i:                                    ; preds = %file_write_hint.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio.i.i.i = getelementptr inbounds %struct.io_context, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ioprio.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ioprio.i.i.i, align 4
  br label %init_sync_kiocb.exit.i

init_sync_kiocb.exit.i:                           ; preds = %if.then.i.i.i, %file_write_hint.exit.i.i.init_sync_kiocb.exit.i_crit_edge
  %retval.0.i8.i.i = phi i16 [ %45, %if.then.i.i.i ], [ 16388, %file_write_hint.exit.i.i.init_sync_kiocb.exit.i_crit_edge ]
  %46 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i.i, i32 65536) #12
  %47 = trunc i32 %46 to i16
  %and21.i.i.i = lshr i32 %18, 18
  %48 = and i32 %and21.i.i.i, 4
  %49 = or i32 %res.2.i.i.i, %48
  %50 = ptrtoint ptr %kiocb.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %file, ptr %kiocb.i, align 8
  %.compoundliteral.sroa.24.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 8
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 24
  %51 = getelementptr inbounds i8, ptr %kiocb.i, i32 16
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %51, align 8
  %53 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %49, ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 28
  %54 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %47, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 30
  %55 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %retval.0.i8.i.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 2
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 32
  %56 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, align 8
  br i1 %tobool2.not.i, label %init_sync_kiocb.exit.i.cond.end.i_crit_edge, label %cond.true.i

init_sync_kiocb.exit.i.cond.end.i_crit_edge:      ; preds = %init_sync_kiocb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %init_sync_kiocb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %pos, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %init_sync_kiocb.exit.i.cond.end.i_crit_edge
  %cond.i = phi i64 [ %58, %cond.true.i ], [ 0, %init_sync_kiocb.exit.i.cond.end.i_crit_edge ]
  %59 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %cond.i, ptr %.compoundliteral.sroa.24.0..sroa_idx.i.i, align 8
  call void @iov_iter_init(ptr noundef nonnull %iter.i, i32 noundef 0, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef %5) #12
  %60 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f_op, align 4
  %read_iter.i.i = getelementptr inbounds %struct.file_operations, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %read_iter.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_iter.i.i, align 4
  %call.i.i = call i32 %63(ptr noundef nonnull %kiocb.i, ptr noundef nonnull %iter.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call.i.i)
  %cmp.i56 = icmp eq i32 %call.i.i, -529
  br i1 %cmp.i56, label %do.body3.i, label %do.end8.i, !prof !300

do.body3.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/read_write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 401, 0\0A.popsection", ""() #12, !srcloc !316
  unreachable

do.end8.i:                                        ; preds = %cond.end.i
  br i1 %tobool2.not.i, label %do.end8.i.new_sync_read.exit_crit_edge, label %if.then10.i

do.end8.i.new_sync_read.exit_crit_edge:           ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_sync_read.exit

if.then10.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %.compoundliteral.sroa.24.0..sroa_idx.i.i, align 8
  %66 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %pos, align 8
  br label %new_sync_read.exit

new_sync_read.exit:                               ; preds = %if.then10.i, %do.end8.i.new_sync_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kiocb.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #12
  br label %if.end29

if.end29:                                         ; preds = %new_sync_read.exit, %if.then19
  %ret.0 = phi i32 [ %call22, %if.then19 ], [ %call.i.i, %new_sync_read.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp30 = icmp sgt i32 %ret.0, 0
  br i1 %cmp30, label %if.then31, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  %67 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %f_mode, align 8
  %and.i.i58 = and i32 %68, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %tobool.not.i.i = icmp eq i32 %and.i.i58, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then31.fsnotify_access.exit_crit_edge

if.then31.fsnotify_access.exit_crit_edge:         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i:                                       ; preds = %if.then31
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i59 = getelementptr inbounds %struct.inode, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %i_sb.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_sb.i.i.i59, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %75 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i.i = icmp eq i32 %76, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.fsnotify_access.exit_crit_edge, label %if.end.i.i.i60

if.end.i.i.fsnotify_access.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i.i60:                                   ; preds = %if.end.i.i
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %72, align 8
  %79 = and i16 %78, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %79)
  %cmp2.i.i.i = icmp eq i16 %79, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i60.if.end8.i.i.i_crit_edge

if.end.i.i.i60.if.end8.i.i.i_crit_edge:           ; preds = %if.end.i.i.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i60
  %80 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %70, align 8
  %and5.i.i.i = and i32 %81, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i61 = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i61, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i60.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741825, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 1, %if.end.i.i.i60.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %70, i32 0, i32 3
  %82 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %83, %70
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = call i32 @__fsnotify_parent(ptr noundef %70, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %fsnotify_access.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741825, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %72, i32 noundef 0) #12
  br label %fsnotify_access.exit

fsnotify_access.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.fsnotify_access.exit_crit_edge, %if.then31.fsnotify_access.exit_crit_edge
  %84 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task, align 8
  %conv.i6270 = zext i32 %ret.0 to i64
  %ioac.i = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 155
  %88 = ptrtoint ptr %ioac.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ioac.i, align 8
  %add.i63 = add i64 %89, %conv.i6270
  store i64 %add.i63, ptr %ioac.i, align 8
  br label %if.end33

if.end33:                                         ; preds = %fsnotify_access.exit, %if.end29.if.end33_crit_edge, %if.else.if.end33_crit_edge
  %ret.069 = phi i32 [ %ret.0, %fsnotify_access.exit ], [ %ret.0, %if.end29.if.end33_crit_edge ], [ -22, %if.else.if.end33_crit_edge ]
  %90 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i64 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i64 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task35, align 8
  %syscr.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 155, i32 2
  %94 = ptrtoint ptr %syscr.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %syscr.i, align 8
  %inc.i = add i64 %95, 1
  store i64 %inc.i, ptr %syscr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %rw_verify_area.exit.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.069, %if.end33 ], [ -9, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ %call36.i, %rw_verify_area.exit.cleanup_crit_edge ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -75, %if.end13.i.cleanup_crit_edge ], [ -22, %if.then27.i.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kernel_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  %iov = alloca %struct.kvec, align 4
  %kiocb = alloca %struct.kiocb, align 8
  %iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #12
  %0 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %1 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %iov, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 2147479552)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kiocb) #12
  %4 = call ptr @memset(ptr %kiocb, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #12
  %5 = call ptr @memset(ptr %iter, i32 255, i32 24)
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b95 = load i1, ptr @__kernel_write.__already_done, align 1
  br i1 %.b95, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !314

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__kernel_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 521, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end40:                                         ; preds = %entry
  %and42 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %8 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_op, align 4
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_iter, align 4
  %tobool46.not = icmp eq ptr %11, null
  br i1 %tobool46.not, label %if.end45.if.then55_crit_edge, label %lor.rhs, !prof !300

if.end45.if.then55_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

lor.rhs:                                          ; preds = %if.end45
  %write = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %tobool48.not = icmp eq ptr %13, null
  br i1 %tobool48.not, label %if.end56, label %lor.rhs.if.then55_crit_edge, !prof !314

lor.rhs.if.then55_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.then55:                                        ; preds = %lor.rhs.if.then55_crit_edge, %if.end45.if.then55_crit_edge
  tail call fastcc void @warn_unsupported(ptr noundef %file, ptr noundef nonnull @.str.8)
  br label %cleanup

if.end56:                                         ; preds = %lor.rhs
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %14 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags.i.i, align 4
  %and.i.i = lshr i32 %15, 6
  %16 = and i32 %and.i.i, 16
  %and2.i.i = shl i32 %15, 1
  %17 = and i32 %and2.i.i, 131072
  %18 = or i32 %17, %16
  %and8.i.i = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i, label %if.end56.if.then17.i.i_crit_edge

if.end56.if.then17.i.i_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i

lor.lhs.false.i.i:                                ; preds = %if.end56
  %f_mapping.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %19 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_mapping.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_flags.i.i, align 4
  %and10.i.i = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false12.i.i, label %lor.lhs.false.i.i.if.then17.i.i_crit_edge

lor.lhs.false.i.i.if.then17.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i

lor.lhs.false12.i.i:                              ; preds = %lor.lhs.false.i.i
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 4
  %27 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_flags.i.i, align 4
  %and15.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge, label %lor.lhs.false12.i.i.if.then17.i.i_crit_edge

lor.lhs.false12.i.i.if.then17.i.i_crit_edge:      ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i

lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge:  ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iocb_flags.exit.i

if.then17.i.i:                                    ; preds = %lor.lhs.false12.i.i.if.then17.i.i_crit_edge, %lor.lhs.false.i.i.if.then17.i.i_crit_edge, %if.end56.if.then17.i.i_crit_edge
  %or18.i.i = or i32 %18, 2
  br label %iocb_flags.exit.i

iocb_flags.exit.i:                                ; preds = %if.then17.i.i, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge
  %res.2.i.i = phi i32 [ %or18.i.i, %if.then17.i.i ], [ %18, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge ]
  %f_write_hint.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 5
  %29 = ptrtoint ptr %f_write_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_write_hint.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge

iocb_flags.exit.i.file_write_hint.exit.i_crit_edge: ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_write_hint.exit.i

if.end.i.i:                                       ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %31 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_write_hint.i.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 21
  %33 = ptrtoint ptr %i_write_hint.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i_write_hint.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  br label %file_write_hint.exit.i

file_write_hint.exit.i:                           ; preds = %if.end.i.i, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ %30, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge ]
  %35 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i, align 8
  %io_context.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 151
  %39 = ptrtoint ptr %io_context.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_context.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge, label %if.then.i.i

file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge: ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_sync_kiocb.exit

if.then.i.i:                                      ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio.i.i = getelementptr inbounds %struct.io_context, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ioprio.i.i, align 4
  br label %init_sync_kiocb.exit

init_sync_kiocb.exit:                             ; preds = %if.then.i.i, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge
  %retval.0.i8.i = phi i16 [ %42, %if.then.i.i ], [ 16388, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge ]
  %43 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 65536) #12
  %44 = trunc i32 %43 to i16
  %and21.i.i = lshr i32 %15, 18
  %45 = and i32 %and21.i.i, 4
  %46 = or i32 %res.2.i.i, %45
  %47 = ptrtoint ptr %kiocb to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %file, ptr %kiocb, align 8
  %.compoundliteral.sroa.24.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 24
  %48 = getelementptr inbounds i8, ptr %kiocb, i32 16
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %48, align 8
  %50 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %46, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 28
  %51 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %44, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 30
  %52 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %retval.0.i8.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 32
  %53 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %.compoundliteral.sroa.8.0..sroa_idx.i, align 8
  %tobool57.not = icmp eq ptr %pos, null
  br i1 %tobool57.not, label %init_sync_kiocb.exit.cond.end60_crit_edge, label %cond.true58

init_sync_kiocb.exit.cond.end60_crit_edge:        ; preds = %init_sync_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end60

cond.true58:                                      ; preds = %init_sync_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %pos, align 8
  br label %cond.end60

cond.end60:                                       ; preds = %cond.true58, %init_sync_kiocb.exit.cond.end60_crit_edge
  %cond61 = phi i64 [ %55, %cond.true58 ], [ 0, %init_sync_kiocb.exit.cond.end60_crit_edge ]
  %56 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %cond61, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 8
  call void @iov_iter_kvec(ptr noundef nonnull %iter, i32 noundef 1, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef %2) #12
  %57 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %f_op, align 4
  %write_iter64 = getelementptr inbounds %struct.file_operations, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %write_iter64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_iter64, align 4
  %call65 = call i32 %60(ptr noundef nonnull %kiocb, ptr noundef nonnull %iter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp sgt i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %cond.end60.if.end73_crit_edge

cond.end60.if.end73_crit_edge:                    ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then67:                                        ; preds = %cond.end60
  br i1 %tobool57.not, label %if.then67.if.end71_crit_edge, label %if.then69

if.then67.if.end71_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 8
  %63 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %pos, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then67.if.end71_crit_edge
  %64 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %f_mode, align 8
  %and.i.i97 = and i32 %65, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %and.i.i97, 0
  br i1 %tobool.not.i.i98, label %if.end.i.i99, label %if.end71.fsnotify_modify.exit_crit_edge

if.end71.fsnotify_modify.exit_crit_edge:          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i99:                                     ; preds = %if.end71
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %72 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i.i = icmp eq i32 %73, 0
  br i1 %cmp.i.i.i, label %if.end.i.i99.fsnotify_modify.exit_crit_edge, label %if.end.i.i.i

if.end.i.i99.fsnotify_modify.exit_crit_edge:      ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i99
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %69, align 8
  %76 = and i16 %75, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %76)
  %cmp2.i.i.i = icmp eq i16 %76, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %77 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %67, align 8
  %and5.i.i.i = and i32 %78, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741826, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 2, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %67, i32 0, i32 3
  %79 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %80, %67
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = call i32 @__fsnotify_parent(ptr noundef %67, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %fsnotify_modify.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741826, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %69, i32 noundef 0) #12
  br label %fsnotify_modify.exit

fsnotify_modify.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i99.fsnotify_modify.exit_crit_edge, %if.end71.fsnotify_modify.exit_crit_edge
  %81 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task, align 8
  %conv.i101 = zext i32 %call65 to i64
  %wchar.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 155, i32 1
  %85 = ptrtoint ptr %wchar.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %wchar.i, align 8
  %add.i = add i64 %86, %conv.i101
  store i64 %add.i, ptr %wchar.i, align 8
  br label %if.end73

if.end73:                                         ; preds = %fsnotify_modify.exit, %cond.end60.if.end73_crit_edge
  %87 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i100 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i100 to ptr
  %task75 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task75, align 8
  %syscw.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 155, i32 3
  %91 = ptrtoint ptr %syscw.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %syscw.i, align 8
  %inc.i = add i64 %92, 1
  store i64 %inc.i, ptr %syscw.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then55, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then55 ], [ %call65, %if.end73 ], [ -9, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -9, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kiocb) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp slt i32 %count, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !300

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %pos, null
  br i1 %tobool2.not.i, label %if.end.i.rw_verify_area.exit_crit_edge, label %if.then3.i

if.end.i.rw_verify_area.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then3.i:                                       ; preds = %if.end.i
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp4.i = icmp slt i64 %1, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.then3.i
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end13.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then11.i
  %conv.i = zext i32 %count to i64
  %sub.i = sub i64 0, %1
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %sub.i)
  %cmp14.not.i = icmp slt i64 %conv.i, %sub.i
  br i1 %cmp14.not.i, label %if.end13.i.rw_verify_area.exit_crit_edge, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i.rw_verify_area.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.then3.i
  %conv18.i = zext i32 %count to i64
  %add.i = add nuw i64 %1, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %f_mode.i44.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode.i44.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode.i44.i, align 8
  %and.i45.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i.rw_verify_area.exit_crit_edge, %if.end.i.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool.not = icmp eq i32 %call36.i, 0
  br i1 %tobool.not, label %if.end, label %rw_verify_area.exit.cleanup_crit_edge

rw_verify_area.exit.cleanup_crit_edge:            ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @file_start_write(ptr noundef %file)
  %call1 = tail call i32 @__kernel_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %pos)
  tail call fastcc void @file_end_write(ptr noundef %file)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rw_verify_area.exit.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call36.i, %rw_verify_area.exit.cleanup_crit_edge ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -75, %if.end13.i.cleanup_crit_edge ], [ -22, %if.then27.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @file_start_write(ptr nocapture noundef readonly %file) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.63, i32 noundef 49) #12
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 5
  %7 = tail call ptr @llvm.returnaddress(i32 0) #12
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %8) #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 35, ptr noundef nonnull @.str.65) #12
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %13 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !314

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !298
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_count.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add21.i.i.i = add i32 %27, 1
  store i32 %add21.i.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !299
  %and.i.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !300

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #12, !srcloc !301
  br label %sb_start_write.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #12
  br label %sb_start_write.exit

sb_start_write.exit:                              ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  %29 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i58.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  br label %return

return:                                           ; preds = %sb_start_write.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @file_end_write(ptr nocapture noundef readonly %file) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 5
  %7 = tail call ptr @llvm.returnaddress(i32 0) #12
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %8) #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.rcu_sync_is_idle.exit.i.i_crit_edge

if.end.rcu_sync_is_idle.exit.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 35, ptr noundef nonnull @.str.65) #12
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %if.end.rcu_sync_is_idle.exit.i.i_crit_edge
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !314

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !298
  %read_count.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_count.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add17.i.i = add i32 %27, -1
  store i32 %add17.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !299
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !300

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #12, !srcloc !301
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !320
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !298
  %read_count75.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_count75.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i122.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i122.i.i to ptr
  %cpu78.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu78.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu78.i.i, align 4
  %arrayidx79.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx79.i.i, align 4
  %add80.i.i = add i32 %38, %32
  %39 = inttoptr i32 %add80.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add81.i.i = add i32 %41, -1
  store i32 %add81.i.i, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !299
  %and.i.i123.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !300

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #12, !srcloc !301
  %writer.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #12
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !321
  %43 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i120.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i120.i.i to ptr
  %preempt_count.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i121.i.i, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i121.i.i, align 4
  br label %return

return:                                           ; preds = %__sb_end_write.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %iov.i = alloca %struct.iovec, align 4
  %kiocb.i = alloca %struct.kiocb, align 8
  %iter.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #15, !srcloc !322
  %asmresult = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp.not = icmp eq i32 %asmresult, 0
  br i1 %cmp.not, label %if.end11, label %if.end5.cleanup_crit_edge, !prof !314

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp slt i32 %count, 0
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end.i, !prof !300

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %tobool2.not.i = icmp eq ptr %pos, null
  br i1 %tobool2.not.i, label %if.end.i.rw_verify_area.exit_crit_edge, label %if.then3.i

if.end.i.rw_verify_area.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then3.i:                                       ; preds = %if.end.i
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp4.i = icmp slt i64 %4, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.then3.i
  %and.i.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end13.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then11.i
  %conv.i = zext i32 %count to i64
  %sub.i = sub i64 0, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %sub.i)
  %cmp14.not.i = icmp slt i64 %conv.i, %sub.i
  br i1 %cmp14.not.i, label %if.end13.i.rw_verify_area.exit_crit_edge, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i.rw_verify_area.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.then3.i
  %conv18.i = zext i32 %count to i64
  %add.i = add nuw i64 %4, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %and.i45.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i.rw_verify_area.exit_crit_edge, %if.end.i.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool12.not = icmp eq i32 %call36.i, 0
  br i1 %tobool12.not, label %if.end14, label %rw_verify_area.exit.cleanup_crit_edge

rw_verify_area.exit.cleanup_crit_edge:            ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %rw_verify_area.exit
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 2147479552)
  tail call fastcc void @file_start_write(ptr noundef %file)
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %6 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_op, align 4
  %write = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 %9(ptr noundef %file, ptr noundef %buf, i32 noundef %5, ptr noundef %pos) #12
  br label %if.end29

if.else:                                          ; preds = %if.end14
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_iter, align 4
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %if.else.if.end33_crit_edge, label %if.then25

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then25:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #12
  %12 = getelementptr inbounds %struct.iovec, ptr %iov.i, i32 0, i32 1
  %13 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %iov.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kiocb.i) #12
  %15 = call ptr @memset(ptr %kiocb.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #12
  %16 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %f_flags.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %17 = ptrtoint ptr %f_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_flags.i.i.i, align 4
  %and.i.i.i = lshr i32 %18, 6
  %19 = and i32 %and.i.i.i, 16
  %and2.i.i.i = shl i32 %18, 1
  %20 = and i32 %and2.i.i.i, 131072
  %21 = or i32 %20, %19
  %and8.i.i.i = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.then25.if.then17.i.i.i_crit_edge

if.then25.if.then17.i.i.i_crit_edge:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then25
  %f_mapping.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %22 = ptrtoint ptr %f_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_mapping.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_flags.i.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %s_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_flags.i.i.i, align 4
  %and10.i.i.i = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %lor.lhs.false12.i.i.i, label %lor.lhs.false.i.i.i.if.then17.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then17.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i.i

lor.lhs.false12.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %i_flags.i.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_flags.i.i.i, align 4
  %and15.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %and15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %lor.lhs.false12.i.i.i.iocb_flags.exit.i.i_crit_edge, label %lor.lhs.false12.i.i.i.if.then17.i.i.i_crit_edge

lor.lhs.false12.i.i.i.if.then17.i.i.i_crit_edge:  ; preds = %lor.lhs.false12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i.i

lor.lhs.false12.i.i.i.iocb_flags.exit.i.i_crit_edge: ; preds = %lor.lhs.false12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iocb_flags.exit.i.i

if.then17.i.i.i:                                  ; preds = %lor.lhs.false12.i.i.i.if.then17.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then17.i.i.i_crit_edge, %if.then25.if.then17.i.i.i_crit_edge
  %or18.i.i.i = or i32 %21, 2
  br label %iocb_flags.exit.i.i

iocb_flags.exit.i.i:                              ; preds = %if.then17.i.i.i, %lor.lhs.false12.i.i.i.iocb_flags.exit.i.i_crit_edge
  %res.2.i.i.i = phi i32 [ %or18.i.i.i, %if.then17.i.i.i ], [ %21, %lor.lhs.false12.i.i.i.iocb_flags.exit.i.i_crit_edge ]
  %f_write_hint.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 5
  %32 = ptrtoint ptr %f_write_hint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_write_hint.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %iocb_flags.exit.i.i.file_write_hint.exit.i.i_crit_edge

iocb_flags.exit.i.i.file_write_hint.exit.i.i_crit_edge: ; preds = %iocb_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_write_hint.exit.i.i

if.end.i.i.i:                                     ; preds = %iocb_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %34 = ptrtoint ptr %f_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f_inode.i.i.i.i, align 8
  %i_write_hint.i.i.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 21
  %36 = ptrtoint ptr %i_write_hint.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i_write_hint.i.i.i, align 1
  %conv.i.i.i = zext i8 %37 to i32
  br label %file_write_hint.exit.i.i

file_write_hint.exit.i.i:                         ; preds = %if.end.i.i.i, %iocb_flags.exit.i.i.file_write_hint.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ %33, %iocb_flags.exit.i.i.file_write_hint.exit.i.i_crit_edge ]
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i, align 8
  %io_context.i.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 151
  %42 = ptrtoint ptr %io_context.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_context.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %file_write_hint.exit.i.i.init_sync_kiocb.exit.i_crit_edge, label %if.then.i.i.i

file_write_hint.exit.i.i.init_sync_kiocb.exit.i_crit_edge: ; preds = %file_write_hint.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_sync_kiocb.exit.i

if.then.i.i.i:                                    ; preds = %file_write_hint.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio.i.i.i = getelementptr inbounds %struct.io_context, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ioprio.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ioprio.i.i.i, align 4
  br label %init_sync_kiocb.exit.i

init_sync_kiocb.exit.i:                           ; preds = %if.then.i.i.i, %file_write_hint.exit.i.i.init_sync_kiocb.exit.i_crit_edge
  %retval.0.i8.i.i = phi i16 [ %45, %if.then.i.i.i ], [ 16388, %file_write_hint.exit.i.i.init_sync_kiocb.exit.i_crit_edge ]
  %46 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i.i, i32 65536) #12
  %47 = trunc i32 %46 to i16
  %and21.i.i.i = lshr i32 %18, 18
  %48 = and i32 %and21.i.i.i, 4
  %49 = or i32 %res.2.i.i.i, %48
  %50 = ptrtoint ptr %kiocb.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %file, ptr %kiocb.i, align 8
  %.compoundliteral.sroa.24.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 8
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 24
  %51 = getelementptr inbounds i8, ptr %kiocb.i, i32 16
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %51, align 8
  %53 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %49, ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 28
  %54 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %47, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 30
  %55 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %retval.0.i8.i.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 2
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %kiocb.i, i32 32
  %56 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, align 8
  br i1 %tobool2.not.i, label %init_sync_kiocb.exit.i.cond.end.i_crit_edge, label %cond.true.i

init_sync_kiocb.exit.i.cond.end.i_crit_edge:      ; preds = %init_sync_kiocb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %init_sync_kiocb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %pos, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %init_sync_kiocb.exit.i.cond.end.i_crit_edge
  %cond.i = phi i64 [ %58, %cond.true.i ], [ 0, %init_sync_kiocb.exit.i.cond.end.i_crit_edge ]
  %59 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %cond.i, ptr %.compoundliteral.sroa.24.0..sroa_idx.i.i, align 8
  call void @iov_iter_init(ptr noundef nonnull %iter.i, i32 noundef 1, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef %5) #12
  %60 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f_op, align 4
  %write_iter.i.i = getelementptr inbounds %struct.file_operations, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %write_iter.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_iter.i.i, align 4
  %call.i.i = call i32 %63(ptr noundef nonnull %kiocb.i, ptr noundef nonnull %iter.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call.i.i)
  %cmp.i58 = icmp eq i32 %call.i.i, -529
  br i1 %cmp.i58, label %do.body3.i, label %do.end8.i, !prof !300

do.body3.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/read_write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #12, !srcloc !323
  unreachable

do.end8.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp9.i = icmp slt i32 %call.i.i, 1
  %brmerge.i = or i1 %tobool2.not.i, %cmp9.i
  br i1 %brmerge.i, label %do.end8.i.new_sync_write.exit_crit_edge, label %if.then11.i59

do.end8.i.new_sync_write.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_sync_write.exit

if.then11.i59:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %.compoundliteral.sroa.24.0..sroa_idx.i.i, align 8
  %66 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %pos, align 8
  br label %new_sync_write.exit

new_sync_write.exit:                              ; preds = %if.then11.i59, %do.end8.i.new_sync_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kiocb.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #12
  br label %if.end29

if.end29:                                         ; preds = %new_sync_write.exit, %if.then19
  %ret.0 = phi i32 [ %call22, %if.then19 ], [ %call.i.i, %new_sync_write.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp30 = icmp sgt i32 %ret.0, 0
  br i1 %cmp30, label %if.then31, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  %67 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %f_mode, align 8
  %and.i.i62 = and i32 %68, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62)
  %tobool.not.i.i = icmp eq i32 %and.i.i62, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then31.fsnotify_modify.exit_crit_edge

if.then31.fsnotify_modify.exit_crit_edge:         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i:                                       ; preds = %if.then31
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i63 = getelementptr inbounds %struct.inode, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %i_sb.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_sb.i.i.i63, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %75 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i.i = icmp eq i32 %76, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.fsnotify_modify.exit_crit_edge, label %if.end.i.i.i64

if.end.i.i.fsnotify_modify.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i.i64:                                   ; preds = %if.end.i.i
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %72, align 8
  %79 = and i16 %78, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %79)
  %cmp2.i.i.i = icmp eq i16 %79, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i64.if.end8.i.i.i_crit_edge

if.end.i.i.i64.if.end8.i.i.i_crit_edge:           ; preds = %if.end.i.i.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i64
  %80 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %70, align 8
  %and5.i.i.i = and i32 %81, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i65 = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i65, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i64.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741826, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 2, %if.end.i.i.i64.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %70, i32 0, i32 3
  %82 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %83, %70
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = call i32 @__fsnotify_parent(ptr noundef %70, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %fsnotify_modify.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741826, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %72, i32 noundef 0) #12
  br label %fsnotify_modify.exit

fsnotify_modify.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.fsnotify_modify.exit_crit_edge, %if.then31.fsnotify_modify.exit_crit_edge
  %84 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task, align 8
  %conv.i6674 = zext i32 %ret.0 to i64
  %wchar.i = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 155, i32 1
  %88 = ptrtoint ptr %wchar.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %wchar.i, align 8
  %add.i67 = add i64 %89, %conv.i6674
  store i64 %add.i67, ptr %wchar.i, align 8
  br label %if.end33

if.end33:                                         ; preds = %fsnotify_modify.exit, %if.end29.if.end33_crit_edge, %if.else.if.end33_crit_edge
  %ret.073 = phi i32 [ %ret.0, %fsnotify_modify.exit ], [ %ret.0, %if.end29.if.end33_crit_edge ], [ -22, %if.else.if.end33_crit_edge ]
  %90 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i68 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i68 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task35, align 8
  %syscw.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 155, i32 3
  %94 = ptrtoint ptr %syscw.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %syscw.i, align 8
  %inc.i = add i64 %95, 1
  store i64 %inc.i, ptr %syscw.i, align 8
  call fastcc void @file_end_write(ptr noundef %file)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %rw_verify_area.exit.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.073, %if.end33 ], [ -9, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ %call36.i, %rw_verify_area.exit.cleanup_crit_edge ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -75, %if.end13.i.cleanup_crit_edge ], [ -22, %if.then27.i.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_read(i32 noundef %fd, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget_pos(i32 noundef %fd) #12, !noalias !324
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %pos, align 8, !annotation !312
  %f_mode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %f_pos.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %tobool2.not21 = icmp eq ptr %f_pos.i, null
  %tobool2.not = select i1 %tobool.not.i, i1 true, i1 %tobool2.not21
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %f_pos.i, align 8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %ppos.0 = phi ptr [ %pos, %if.then3 ], [ null, %if.then.if.end_crit_edge ]
  %call5 = call i32 @vfs_read(ptr noundef nonnull %0, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  %tobool6.not = icmp eq ptr %ppos.0, null
  %or.cond = or i1 %tobool6.not, %cmp
  br i1 %or.cond, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  %9 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %f_pos.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %and.i15 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  br i1 %tobool.not.i16, label %if.end9.if.end.i_crit_edge, label %if.then.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void @__f_unlock_pos(ptr noundef nonnull %0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end9.if.end.i_crit_edge
  %and.i.i17 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.not.i.i = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.not.i.i, label %if.end.i.fdput_pos.exit_crit_edge, label %if.then.i.i

if.end.i.fdput_pos.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fdput_pos.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %0) #12
  br label %fdput_pos.exit

fdput_pos.exit:                                   ; preds = %if.then.i.i, %if.end.i.fdput_pos.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  br label %if.end10

if.end10:                                         ; preds = %fdput_pos.exit, %entry.if.end10_crit_edge
  %ret.0 = phi i32 [ %call5, %fdput_pos.exit ], [ -9, %entry.if.end10_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_read(i32 noundef %fd, i32 noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  %call.i = tail call i32 @ksys_read(i32 noundef %fd, ptr noundef %0, i32 noundef %count) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_write(i32 noundef %fd, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget_pos(i32 noundef %fd) #12, !noalias !327
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %pos, align 8, !annotation !312
  %f_mode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %f_pos.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %tobool2.not21 = icmp eq ptr %f_pos.i, null
  %tobool2.not = select i1 %tobool.not.i, i1 true, i1 %tobool2.not21
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %f_pos.i, align 8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %ppos.0 = phi ptr [ %pos, %if.then3 ], [ null, %if.then.if.end_crit_edge ]
  %call5 = call i32 @vfs_write(ptr noundef nonnull %0, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  %tobool6.not = icmp eq ptr %ppos.0, null
  %or.cond = or i1 %tobool6.not, %cmp
  br i1 %or.cond, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  %9 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %f_pos.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %and.i15 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  br i1 %tobool.not.i16, label %if.end9.if.end.i_crit_edge, label %if.then.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void @__f_unlock_pos(ptr noundef nonnull %0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end9.if.end.i_crit_edge
  %and.i.i17 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.not.i.i = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.not.i.i, label %if.end.i.fdput_pos.exit_crit_edge, label %if.then.i.i

if.end.i.fdput_pos.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fdput_pos.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %0) #12
  br label %fdput_pos.exit

fdput_pos.exit:                                   ; preds = %if.then.i.i, %if.end.i.fdput_pos.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  br label %if.end10

if.end10:                                         ; preds = %fdput_pos.exit, %entry.if.end10_crit_edge
  %ret.0 = phi i32 [ %call5, %fdput_pos.exit ], [ -9, %entry.if.end10_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_write(i32 noundef %fd, i32 noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  %call.i = tail call i32 @ksys_write(i32 noundef %fd, ptr noundef %0, i32 noundef %count) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_pread64(i32 noundef %fd, ptr noundef %buf, i32 noundef %count, i64 noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos)
  %cmp = icmp slt i64 %pos, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #12, !noalias !330
  %and.i.i = and i32 %call.i, -4
  %1 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then1.if.end6_crit_edge, label %if.then4

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 @vfs_read(ptr noundef nonnull %1, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %pos.addr)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then1.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then4 ], [ -29, %if.then1.if.end6_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.then.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end6.cleanup_crit_edge ], [ %ret.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pread64(i32 noundef %fd, i32 noundef %buf, i32 noundef %count, i64 noundef %pos) #0 align 64 {
entry:
  %pos.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i.i) #12
  %1 = ptrtoint ptr %pos.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %pos, ptr %pos.addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos)
  %cmp.i.i = icmp slt i64 %pos, 0
  br i1 %cmp.i.i, label %entry.__do_sys_pread64.exit_crit_edge, label %if.end.i.i

entry.__do_sys_pread64.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pread64.exit

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #12, !noalias !333
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.__do_sys_pread64.exit_crit_edge, label %if.then1.i.i

if.end.i.i.__do_sys_pread64.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pread64.exit

if.then1.i.i:                                     ; preds = %if.end.i.i
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then1.i.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.then1.i.i.if.end6.i.i_crit_edge:               ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 @vfs_read(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %count, ptr noundef nonnull %pos.addr.i.i) #12
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then1.i.i.if.end6.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then4.i.i ], [ -29, %if.then1.i.i.if.end6.i.i_crit_edge ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.__do_sys_pread64.exit_crit_edge, label %if.then.i.i.i

if.end6.i.i.__do_sys_pread64.exit_crit_edge:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pread64.exit

if.then.i.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %2) #12
  br label %__do_sys_pread64.exit

__do_sys_pread64.exit:                            ; preds = %if.then.i.i.i, %if.end6.i.i.__do_sys_pread64.exit_crit_edge, %if.end.i.i.__do_sys_pread64.exit_crit_edge, %entry.__do_sys_pread64.exit_crit_edge
  %retval.0.i.i = phi i32 [ -22, %entry.__do_sys_pread64.exit_crit_edge ], [ -9, %if.end.i.i.__do_sys_pread64.exit_crit_edge ], [ %ret.0.i.i, %if.end6.i.i.__do_sys_pread64.exit_crit_edge ], [ %ret.0.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i.i) #12
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_pwrite64(i32 noundef %fd, ptr noundef %buf, i32 noundef %count, i64 noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos)
  %cmp = icmp slt i64 %pos, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #12, !noalias !336
  %and.i.i = and i32 %call.i, -4
  %1 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then1.if.end6_crit_edge, label %if.then4

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 @vfs_write(ptr noundef nonnull %1, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %pos.addr)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then1.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then4 ], [ -29, %if.then1.if.end6_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.then.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end6.cleanup_crit_edge ], [ %ret.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pwrite64(i32 noundef %fd, i32 noundef %buf, i32 noundef %count, i64 noundef %pos) #0 align 64 {
entry:
  %pos.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i.i) #12
  %1 = ptrtoint ptr %pos.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %pos, ptr %pos.addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos)
  %cmp.i.i = icmp slt i64 %pos, 0
  br i1 %cmp.i.i, label %entry.__do_sys_pwrite64.exit_crit_edge, label %if.end.i.i

entry.__do_sys_pwrite64.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pwrite64.exit

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #12, !noalias !339
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.__do_sys_pwrite64.exit_crit_edge, label %if.then1.i.i

if.end.i.i.__do_sys_pwrite64.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pwrite64.exit

if.then1.i.i:                                     ; preds = %if.end.i.i
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then1.i.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.then1.i.i.if.end6.i.i_crit_edge:               ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 @vfs_write(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %count, ptr noundef nonnull %pos.addr.i.i) #12
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then1.i.i.if.end6.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then4.i.i ], [ -29, %if.then1.i.i.if.end6.i.i_crit_edge ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.__do_sys_pwrite64.exit_crit_edge, label %if.then.i.i.i

if.end6.i.i.__do_sys_pwrite64.exit_crit_edge:     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pwrite64.exit

if.then.i.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %2) #12
  br label %__do_sys_pwrite64.exit

__do_sys_pwrite64.exit:                           ; preds = %if.then.i.i.i, %if.end6.i.i.__do_sys_pwrite64.exit_crit_edge, %if.end.i.i.__do_sys_pwrite64.exit_crit_edge, %entry.__do_sys_pwrite64.exit_crit_edge
  %retval.0.i.i = phi i32 [ -22, %entry.__do_sys_pwrite64.exit_crit_edge ], [ -9, %if.end.i.i.__do_sys_pwrite64.exit_crit_edge ], [ %ret.0.i.i, %if.end6.i.i.__do_sys_pwrite64.exit_crit_edge ], [ %ret.0.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i.i) #12
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_iocb_iter_read(ptr noundef %file, ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %read_iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_iter, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and5 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end8.if.then17_crit_edge, label %if.end11

if.end8.if.then17_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end11:                                         ; preds = %if.end8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end.i, !prof !300

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %tobool2.not.i = icmp eq ptr %ki_pos, null
  br i1 %tobool2.not.i, label %if.end.i.rw_verify_area.exit_crit_edge, label %if.then3.i

if.end.i.rw_verify_area.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then3.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp4.i = icmp slt i64 %9, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.then3.i
  %and.i.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end13.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then11.i
  %conv.i = zext i32 %7 to i64
  %sub.i = sub i64 0, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %sub.i)
  %cmp14.not.i = icmp slt i64 %conv.i, %sub.i
  br i1 %cmp14.not.i, label %if.end13.i.rw_verify_area.exit_crit_edge, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i.rw_verify_area.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.then3.i
  %conv18.i = zext i32 %7 to i64
  %add.i = add nuw i64 %9, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %and.i45.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i.rw_verify_area.exit_crit_edge, %if.end.i.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp = icmp slt i32 %call36.i, 0
  br i1 %cmp, label %rw_verify_area.exit.cleanup_crit_edge, label %out

rw_verify_area.exit.cleanup_crit_edge:            ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out:                                              ; preds = %rw_verify_area.exit
  %10 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_op, align 4
  %read_iter.i = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %read_iter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_iter.i, align 4
  %call.i = tail call i32 %13(ptr noundef %iocb, ptr noundef %iter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp16 = icmp sgt i32 %call.i, -1
  br i1 %cmp16, label %out.if.then17_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out.if.then17_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %out.if.then17_crit_edge, %if.end8.if.then17_crit_edge
  %ret.037 = phi i32 [ %call.i, %out.if.then17_crit_edge ], [ 0, %if.end8.if.then17_crit_edge ]
  %14 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_mode, align 8
  %and.i.i32 = and i32 %15, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.not.i.i = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then17
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %22 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %19, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %26)
  %cmp2.i.i.i = icmp eq i16 %26, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %17, align 8
  %and5.i.i.i = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741825, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 3
  %29 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %30, %17
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %17, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %cleanup

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741825, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %19, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %out.cleanup_crit_edge, %rw_verify_area.exit.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call36.i, %rw_verify_area.exit.cleanup_crit_edge ], [ %call.i, %out.cleanup_crit_edge ], [ %ret.037, %if.then17.cleanup_crit_edge ], [ %ret.037, %if.end.i.i.cleanup_crit_edge ], [ %ret.037, %if.end12.i.i.i ], [ %ret.037, %notify_child.i.i.i ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -75, %if.end13.i.cleanup_crit_edge ], [ -22, %if.then27.i.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_iter_read(ptr noundef %file, ptr noundef %iter, ptr noundef %ppos, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %read_iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_iter, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @do_iter_read(ptr noundef %file, ptr noundef %iter, ptr noundef %ppos, i32 noundef %flags)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_iter_read(ptr noundef %file, ptr noundef %iter, ptr noundef %pos, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.end5.if.then18_crit_edge, label %if.end8

if.end5.if.then18_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.end8.cleanup_crit_edge, label %if.end.i, !prof !300

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %tobool2.not.i = icmp eq ptr %pos, null
  br i1 %tobool2.not.i, label %if.end.i.rw_verify_area.exit_crit_edge, label %if.then3.i

if.end.i.rw_verify_area.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then3.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp4.i = icmp slt i64 %5, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.then3.i
  %and.i.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end13.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then11.i
  %conv.i = zext i32 %3 to i64
  %sub.i = sub i64 0, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %sub.i)
  %cmp14.not.i = icmp slt i64 %conv.i, %sub.i
  br i1 %cmp14.not.i, label %if.end13.i.rw_verify_area.exit_crit_edge, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i.rw_verify_area.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.then3.i
  %conv18.i = zext i32 %3 to i64
  %add.i = add nuw i64 %5, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %and.i45.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i.rw_verify_area.exit_crit_edge, %if.end.i.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp = icmp slt i32 %call36.i, 0
  br i1 %cmp, label %rw_verify_area.exit.cleanup_crit_edge, label %if.end11

rw_verify_area.exit.cleanup_crit_edge:            ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %rw_verify_area.exit
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %6 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_op, align 4
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %read_iter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_iter, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call fastcc i32 @do_iter_readv_writev(ptr noundef %file, ptr noundef %iter, ptr noundef %pos, i32 noundef 0, i32 noundef %flags)
  br label %out

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not.i = icmp ult i32 %flags, 2
  br i1 %tobool.not.i, label %while.cond.preheader.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader.i:                           ; preds = %if.else
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not41.i = icmp eq i32 %11, 0
  br i1 %tobool1.not41.i, label %while.cond.preheader.i.if.then18_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.if.then18_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %12 = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 5
  %iov_offset.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %13 = phi i32 [ %11, %while.body.lr.ph.i ], [ %28, %cleanup.i.while.body.i_crit_edge ]
  %ret.042.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i36, %cleanup.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 4, !noalias !342
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4, !noalias !342
  %18 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iov_offset.i.i, align 4, !noalias !342
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %19
  %iov_len2.i.i = getelementptr inbounds %struct.iovec, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len2.i.i, align 4, !noalias !342
  %sub.i.i = sub i32 %21, %19
  %22 = tail call i32 @llvm.umin.i32(i32 %13, i32 %sub.i.i) #12
  %23 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_op, align 4
  %read.i = getelementptr inbounds %struct.file_operations, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i, align 4
  %call7.i = tail call i32 %26(ptr noundef %file, ptr noundef %add.ptr.i.i, i32 noundef %22, ptr noundef %pos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp9.i = icmp slt i32 %call7.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.end14.i

if.then10.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.042.i)
  %tobool11.not.i = icmp eq i32 %ret.042.i, 0
  br i1 %tobool11.not.i, label %if.then10.i.cleanup_crit_edge, label %if.then10.i.out_crit_edge

if.then10.i.out_crit_edge:                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.i:                                       ; preds = %while.body.i
  %add.i36 = add i32 %call7.i, %ret.042.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %22)
  %cmp16.not.i = icmp eq i32 %call7.i, %22
  br i1 %cmp16.not.i, label %cleanup.i, label %if.end14.i.out_crit_edge

if.end14.i.out_crit_edge:                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

cleanup.i:                                        ; preds = %if.end14.i
  tail call void @iov_iter_advance(ptr noundef %iter, i32 noundef %22) #12
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i, align 8
  %tobool1.not.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i, label %cleanup.i.out_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.out_crit_edge:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %cleanup.i.out_crit_edge, %if.end14.i.out_crit_edge, %if.then10.i.out_crit_edge, %if.then13
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ %ret.042.i, %if.then10.i.out_crit_edge ], [ %add.i36, %if.end14.i.out_crit_edge ], [ %add.i36, %cleanup.i.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp17 = icmp sgt i32 %ret.0, -1
  br i1 %cmp17, label %out.if.then18_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out.if.then18_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %out.if.then18_crit_edge, %while.cond.preheader.i.if.then18_crit_edge, %if.end5.if.then18_crit_edge
  %ret.043 = phi i32 [ %ret.0, %out.if.then18_crit_edge ], [ 0, %if.end5.if.then18_crit_edge ], [ 0, %while.cond.preheader.i.if.then18_crit_edge ]
  %29 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_mode, align 8
  %and.i.i38 = and i32 %30, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38)
  %tobool.not.i.i = icmp eq i32 %and.i.i38, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then18
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %34, align 8
  %41 = and i16 %40, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %41)
  %cmp2.i.i.i = icmp eq i16 %41, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %32, align 8
  %and5.i.i.i = and i32 %43, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741825, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 3
  %44 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %45, %32
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %32, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %cleanup

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741825, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %34, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %rw_verify_area.exit.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call36.i, %rw_verify_area.exit.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.043, %if.then18.cleanup_crit_edge ], [ %ret.043, %if.end.i.i.cleanup_crit_edge ], [ %ret.043, %if.end12.i.i.i ], [ %ret.043, %notify_child.i.i.i ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -75, %if.end13.i.cleanup_crit_edge ], [ -22, %if.then27.i.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ], [ %call7.i, %if.then10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_iocb_iter_write(ptr noundef %file, ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_iter, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and5 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end.i, !prof !300

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %tobool2.not.i = icmp eq ptr %ki_pos, null
  br i1 %tobool2.not.i, label %if.end.i.rw_verify_area.exit_crit_edge, label %if.then3.i

if.end.i.rw_verify_area.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then3.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp4.i = icmp slt i64 %9, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.then3.i
  %and.i.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end13.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then11.i
  %conv.i = zext i32 %7 to i64
  %sub.i = sub i64 0, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %sub.i)
  %cmp14.not.i = icmp slt i64 %conv.i, %sub.i
  br i1 %cmp14.not.i, label %if.end13.i.rw_verify_area.exit_crit_edge, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i.rw_verify_area.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.then3.i
  %conv18.i = zext i32 %7 to i64
  %add.i = add nuw i64 %9, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %and.i45.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i.rw_verify_area.exit_crit_edge, %if.end.i.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp = icmp slt i32 %call36.i, 0
  br i1 %cmp, label %rw_verify_area.exit.cleanup_crit_edge, label %if.end14

rw_verify_area.exit.cleanup_crit_edge:            ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %rw_verify_area.exit
  %10 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_op, align 4
  %write_iter.i = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write_iter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_iter.i, align 4
  %call.i = tail call i32 %13(ptr noundef %iocb, ptr noundef %iter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp sgt i32 %call.i, 0
  br i1 %cmp16, label %if.then17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %14 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_mode, align 8
  %and.i.i32 = and i32 %15, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.not.i.i = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then17
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %22 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %19, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %26)
  %cmp2.i.i.i = icmp eq i16 %26, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %17, align 8
  %and5.i.i.i = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741826, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 2, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 3
  %29 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %30, %17
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %17, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %cleanup

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741826, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %19, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %rw_verify_area.exit.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call36.i, %rw_verify_area.exit.cleanup_crit_edge ], [ %call.i, %if.end14.cleanup_crit_edge ], [ %call.i, %if.then17.cleanup_crit_edge ], [ %call.i, %if.end.i.i.cleanup_crit_edge ], [ %call.i, %if.end12.i.i.i ], [ %call.i, %notify_child.i.i.i ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -75, %if.end13.i.cleanup_crit_edge ], [ -22, %if.then27.i.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_iter_write(ptr noundef %file, ptr noundef %iter, ptr noundef %ppos, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_iter, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @do_iter_write(ptr noundef %file, ptr noundef %iter, ptr noundef %ppos, i32 noundef %flags)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_iter_write(ptr noundef %file, ptr noundef %iter, ptr noundef %pos, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.end8.cleanup_crit_edge, label %if.end.i, !prof !300

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %tobool2.not.i = icmp eq ptr %pos, null
  br i1 %tobool2.not.i, label %if.end.i.rw_verify_area.exit_crit_edge, label %if.then3.i

if.end.i.rw_verify_area.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then3.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp4.i = icmp slt i64 %5, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.then3.i
  %and.i.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end13.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then11.i
  %conv.i = zext i32 %3 to i64
  %sub.i = sub i64 0, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %sub.i)
  %cmp14.not.i = icmp slt i64 %conv.i, %sub.i
  br i1 %cmp14.not.i, label %if.end13.i.rw_verify_area.exit_crit_edge, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i.rw_verify_area.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.then3.i
  %conv18.i = zext i32 %3 to i64
  %add.i = add nuw i64 %5, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %and.i45.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i.rw_verify_area.exit_crit_edge, %if.end.i.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp = icmp slt i32 %call36.i, 0
  br i1 %cmp, label %rw_verify_area.exit.cleanup_crit_edge, label %if.end11

rw_verify_area.exit.cleanup_crit_edge:            ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %rw_verify_area.exit
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %6 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_op, align 4
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_iter, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call fastcc i32 @do_iter_readv_writev(ptr noundef %file, ptr noundef %iter, ptr noundef %pos, i32 noundef 1, i32 noundef %flags)
  br label %if.end16

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not.i = icmp ult i32 %flags, 2
  br i1 %tobool.not.i, label %while.cond.preheader.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader.i:                           ; preds = %if.else
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not41.i = icmp eq i32 %11, 0
  br i1 %tobool1.not41.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %12 = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 5
  %iov_offset.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %13 = phi i32 [ %11, %while.body.lr.ph.i ], [ %28, %cleanup.i.while.body.i_crit_edge ]
  %ret.042.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i36, %cleanup.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 4, !noalias !345
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4, !noalias !345
  %18 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iov_offset.i.i, align 4, !noalias !345
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %19
  %iov_len2.i.i = getelementptr inbounds %struct.iovec, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len2.i.i, align 4, !noalias !345
  %sub.i.i = sub i32 %21, %19
  %22 = tail call i32 @llvm.umin.i32(i32 %13, i32 %sub.i.i) #12
  %23 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_op, align 4
  %write.i = getelementptr inbounds %struct.file_operations, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i, align 4
  %call7.i = tail call i32 %26(ptr noundef %file, ptr noundef %add.ptr.i.i, i32 noundef %22, ptr noundef %pos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp9.i = icmp slt i32 %call7.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.end14.i

if.then10.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.042.i)
  %tobool11.not.i = icmp eq i32 %ret.042.i, 0
  br i1 %tobool11.not.i, label %if.then10.i.cleanup_crit_edge, label %if.then10.i.if.end16_crit_edge

if.then10.i.if.end16_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.i:                                       ; preds = %while.body.i
  %add.i36 = add i32 %call7.i, %ret.042.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %22)
  %cmp16.not.i = icmp eq i32 %call7.i, %22
  br i1 %cmp16.not.i, label %cleanup.i, label %if.end14.i.if.end16_crit_edge

if.end14.i.if.end16_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

cleanup.i:                                        ; preds = %if.end14.i
  tail call void @iov_iter_advance(ptr noundef %iter, i32 noundef %22) #12
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i, align 8
  %tobool1.not.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i, label %cleanup.i.if.end16_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.if.end16_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %cleanup.i.if.end16_crit_edge, %if.end14.i.if.end16_crit_edge, %if.then10.i.if.end16_crit_edge, %if.then13
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ %ret.042.i, %if.then10.i.if.end16_crit_edge ], [ %add.i36, %if.end14.i.if.end16_crit_edge ], [ %add.i36, %cleanup.i.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp sgt i32 %ret.0, 0
  br i1 %cmp17, label %if.then18, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  %29 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_mode, align 8
  %and.i.i38 = and i32 %30, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38)
  %tobool.not.i.i = icmp eq i32 %and.i.i38, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then18
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %34, align 8
  %41 = and i16 %40, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %41)
  %cmp2.i.i.i = icmp eq i16 %41, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %32, align 8
  %and5.i.i.i = and i32 %43, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741826, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 2, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 3
  %44 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %45, %32
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %32, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %cleanup

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741826, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %34, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %rw_verify_area.exit.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call36.i, %rw_verify_area.exit.cleanup_crit_edge ], [ %ret.0, %if.end16.cleanup_crit_edge ], [ %ret.0, %if.then18.cleanup_crit_edge ], [ %ret.0, %if.end.i.i.cleanup_crit_edge ], [ %ret.0, %if.end12.i.i.i ], [ %ret.0, %notify_child.i.i.i ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -75, %if.end13.i.cleanup_crit_edge ], [ -22, %if.then27.i.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %while.cond.preheader.i.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ], [ %call7.i, %if.then10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_readv(i32 noundef %fd, i32 noundef %vec, i32 noundef %vlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %vec to ptr
  %call.i = tail call fastcc i32 @do_readv(i32 noundef %fd, ptr noundef %0, i32 noundef %vlen, i32 noundef 0) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_writev(i32 noundef %fd, i32 noundef %vec, i32 noundef %vlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %vec to ptr
  %call.i = tail call fastcc i32 @do_writev(i32 noundef %fd, ptr noundef %0, i32 noundef %vlen, i32 noundef 0) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_preadv(i32 noundef %fd, i32 noundef %vec, i32 noundef %vlen, i32 noundef %pos_l, i32 noundef %pos_h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %vec to ptr
  %conv.i.i = zext i32 %pos_h to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv2.i.i = zext i32 %pos_l to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = tail call fastcc i32 @do_preadv(i32 noundef %fd, ptr noundef %0, i32 noundef %vlen, i64 noundef %or.i.i, i32 noundef 0) #12
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_preadv2(i32 noundef %fd, i32 noundef %vec, i32 noundef %vlen, i32 noundef %pos_l, i32 noundef %pos_h, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %vec to ptr
  %conv.i.i = zext i32 %pos_h to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv2.i.i = zext i32 %pos_l to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or.i.i)
  %cmp.i = icmp eq i64 %or.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call fastcc i32 @do_readv(i32 noundef %fd, ptr noundef %0, i32 noundef %vlen, i32 noundef %flags) #12
  br label %__do_sys_preadv2.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call fastcc i32 @do_preadv(i32 noundef %fd, ptr noundef %0, i32 noundef %vlen, i64 noundef %or.i.i, i32 noundef %flags) #12
  br label %__do_sys_preadv2.exit

__do_sys_preadv2.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pwritev(i32 noundef %fd, i32 noundef %vec, i32 noundef %vlen, i32 noundef %pos_l, i32 noundef %pos_h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %vec to ptr
  %conv.i.i = zext i32 %pos_h to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv2.i.i = zext i32 %pos_l to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = tail call fastcc i32 @do_pwritev(i32 noundef %fd, ptr noundef %0, i32 noundef %vlen, i64 noundef %or.i.i, i32 noundef 0) #12
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pwritev2(i32 noundef %fd, i32 noundef %vec, i32 noundef %vlen, i32 noundef %pos_l, i32 noundef %pos_h, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %vec to ptr
  %conv.i.i = zext i32 %pos_h to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv2.i.i = zext i32 %pos_l to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or.i.i)
  %cmp.i = icmp eq i64 %or.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call fastcc i32 @do_writev(i32 noundef %fd, ptr noundef %0, i32 noundef %vlen, i32 noundef %flags) #12
  br label %__do_sys_pwritev2.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call fastcc i32 @do_pwritev(i32 noundef %fd, ptr noundef %0, i32 noundef %vlen, i64 noundef %or.i.i, i32 noundef %flags) #12
  br label %__do_sys_pwritev2.exit

__do_sys_pwritev2.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, i32 noundef %offset, i32 noundef %count) #0 align 64 {
entry:
  %pos.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %offset to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not.i = icmp eq i32 %offset, 0
  br i1 %tobool.not.i, label %if.end27.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1284) #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #10, !srcloc !348
  %and.i.i = and i32 %3, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #12, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %0, i32 -1226833921) #12, !srcloc !351
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #12, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool3.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %if.then.i.__do_sys_sendfile.exit_crit_edge, !prof !314

if.then.i.__do_sys_sendfile.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_sendfile.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %asmresult1.i = extractvalue { i32, i32 } %4, 1
  %conv.i = sext i32 %asmresult1.i to i64
  %5 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.i, ptr %pos.i, align 8
  %call7.i = call fastcc i32 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, ptr noundef nonnull %pos.i, i32 noundef %count, i64 noundef 2147483647) #12
  %6 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos.i, align 8
  %conv8.i = trunc i64 %7 to i32
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1288) #12
  %8 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i36.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i36.i to ptr
  %cpu_domain.i.i37.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i37.i) #10, !srcloc !348
  %and.i38.i = and i32 %10, -13
  %or.i39.i = or i32 %and.i38.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i39.i) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  %11 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %0, i32 %conv8.i, i32 -1226833921) #12, !srcloc !352
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not.i = icmp eq i32 %11, 0
  %call7..i = select i1 %tobool18.not.i, i32 %call7.i, i32 -14, !prof !314
  br label %__do_sys_sendfile.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = tail call fastcc i32 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, ptr noundef null, i32 noundef %count, i64 noundef 0) #12
  br label %__do_sys_sendfile.exit

__do_sys_sendfile.exit:                           ; preds = %if.end27.i, %if.end.i, %if.then.i.__do_sys_sendfile.exit_crit_edge
  %retval.0.i = phi i32 [ %call28.i, %if.end27.i ], [ -14, %if.then.i.__do_sys_sendfile.exit_crit_edge ], [ %call7..i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sendfile64(i32 noundef %out_fd, i32 noundef %in_fd, i32 noundef %offset, i32 noundef %count) #0 align 64 {
entry:
  %pos.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %offset to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #12
  %1 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %pos.i, align 8, !annotation !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not.i = icmp eq i32 %offset, 0
  br i1 %tobool.not.i, label %if.end17.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #12
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.if.then11.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 8, i32 -1226833920) #15, !srcloc !353
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !314

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pos.i, i32 noundef 8) #12
  %3 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !348
  %and.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %pos.i, ptr noundef nonnull %0, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !314

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.then.i.i.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %pos.i, i32 %sub.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %__do_sys_sendfile64.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = call fastcc i32 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, ptr noundef nonnull %pos.i, i32 noundef %count, i64 noundef 0) #12
  %7 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos.i, align 8
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1305) #12
  %9 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #10, !srcloc !348
  %and.i.i = and i32 %11, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  %12 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %0, i64 %8, i32 -1226833921) #12, !srcloc !354
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not.i = icmp eq i32 %12, 0
  %call5..i = select i1 %tobool8.not.i, i32 %call5.i, i32 -14, !prof !314
  br label %__do_sys_sendfile64.exit

if.end17.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call18.i = tail call fastcc i32 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, ptr noundef null, i32 noundef %count, i64 noundef 0) #12
  br label %__do_sys_sendfile64.exit

__do_sys_sendfile64.exit:                         ; preds = %if.end17.i, %if.end.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call18.i, %if.end17.i ], [ %call5..i, %if.end.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_copy_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i32 noundef %len, i32 %flags) #0 align 64 {
entry:
  %pos_in.addr = alloca i64, align 8
  %pos_out.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos_in.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos_in, ptr %pos_in.addr, align 8
  %1 = ptrtoint ptr %pos_out.addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %pos_out, ptr %pos_out.addr, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %len, i32 2147479552)
  %call = call i32 @do_splice_direct(ptr noundef %file_in, ptr noundef nonnull %pos_in.addr, ptr noundef %file_out, ptr noundef nonnull %pos_out.addr, i32 noundef %2, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_splice_direct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_copy_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %pos_in.addr.i.i = alloca i64, align 8
  %pos_out.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %cmp.not = icmp eq i32 %flags, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup105_crit_edge

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end:                                           ; preds = %entry
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %f_inode.i3.i = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i3.i, align 8
  %conv.i = zext i32 %len to i64
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp.i.i = icmp eq i16 %6, 16384
  br i1 %cmp.i.i, label %if.end.cleanup105_crit_edge, label %lor.lhs.false.i.i

if.end.cleanup105_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

lor.lhs.false.i.i:                                ; preds = %if.end
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %3, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp6.i.i = icmp eq i16 %9, 16384
  br i1 %cmp6.i.i, label %lor.lhs.false.i.i.cleanup105_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.cleanup105_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp11.i.i = icmp eq i16 %6, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %9)
  %cmp17.i.i = icmp eq i16 %9, -32768
  %or.cond.i.i = select i1 %cmp11.i.i, i1 %cmp17.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end20.i.i, label %if.end.i.i.cleanup105_crit_edge

if.end.i.i.cleanup105_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end20.i.i:                                     ; preds = %if.end.i.i
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 8
  %10 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_mode.i.i, align 8
  %and21.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool.not.i.i, label %if.end20.i.i.cleanup105_crit_edge, label %lor.lhs.false22.i.i

if.end20.i.i.cleanup105_crit_edge:                ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

lor.lhs.false22.i.i:                              ; preds = %if.end20.i.i
  %f_mode23.i.i = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 8
  %12 = ptrtoint ptr %f_mode23.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_mode23.i.i, align 8
  %and24.i.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %lor.lhs.false22.i.i.cleanup105_crit_edge, label %lor.lhs.false26.i.i

lor.lhs.false22.i.i.cleanup105_crit_edge:         ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

lor.lhs.false26.i.i:                              ; preds = %lor.lhs.false22.i.i
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 7
  %14 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags.i.i, align 4
  %and27.i.i = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end.i, label %lor.lhs.false26.i.i.cleanup105_crit_edge

lor.lhs.false26.i.i.cleanup105_crit_edge:         ; preds = %lor.lhs.false26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end.i:                                         ; preds = %lor.lhs.false26.i.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup105_crit_edge

if.end.i.cleanup105_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end5.i:                                        ; preds = %if.end.i
  %i_flags6.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %i_flags6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags6.i, align 4
  %and7.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %and10.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = select i1 %tobool8.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end13.i, label %if.end5.i.cleanup105_crit_edge

if.end5.i.cleanup105_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end13.i:                                       ; preds = %if.end5.i
  %20 = xor i64 %pos_in, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %20)
  %cmp.i = icmp ugt i64 %conv.i, %20
  %21 = xor i64 %pos_out, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %21)
  %cmp17.i = icmp ugt i64 %conv.i, %21
  %or.cond1.i = or i1 %cmp.i, %cmp17.i
  br i1 %or.cond1.i, label %if.end13.i.cleanup105_crit_edge, label %if.end20.i

if.end13.i.cleanup105_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end20.i:                                       ; preds = %if.end13.i
  %call21.i = tail call fastcc i64 @i_size_read(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call21.i, i64 %pos_in)
  %cmp22.not.i = icmp sgt i64 %call21.i, %pos_in
  %sub.i = sub i64 %call21.i, %pos_in
  %22 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %conv.i) #12
  %storemerge.i = select i1 %cmp22.not.i, i64 %22, i64 0
  %f_mapping.i.i = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 18
  %23 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_mapping.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i.i, align 4
  %s_maxbytes.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %s_maxbytes.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %s_maxbytes.i.i, align 8
  %31 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i.i, align 8
  %signal.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 111
  %35 = ptrtoint ptr %signal.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %signal.i.i.i.i, align 16
  %arrayidx.i.i.i.i = getelementptr %struct.signal_struct, ptr %36, i32 0, i32 51, i32 1
  %37 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i.i.i, align 8
  %conv.i.i = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.not.i.i = icmp eq i32 %38, -1
  br i1 %cmp.not.i.i, label %if.end20.i.if.end9.i.i_crit_edge, label %if.then.i.i

if.end20.i.if.end9.i.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i.i, i64 %pos_out)
  %cmp2.not.i.i = icmp sgt i64 %conv.i.i, %pos_out
  br i1 %cmp2.not.i.i, label %if.end.i4.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i, align 8
  %call6.i.i = tail call i32 @send_sig(i32 noundef 25, ptr noundef %42, i32 noundef 0) #12
  br label %cleanup105

if.end.i4.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i64 %conv.i.i, %pos_out
  %43 = tail call i64 @llvm.smin.i64(i64 %storemerge.i, i64 %sub.i.i) #12
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i4.i, %if.end20.i.if.end9.i.i_crit_edge
  %count.0.i = phi i64 [ %storemerge.i, %if.end20.i.if.end9.i.i_crit_edge ], [ %43, %if.end.i4.i ]
  %44 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %f_flags.i.i, align 4
  %and.i.i = and i32 %45, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i6.i = icmp eq i32 %and.i.i, 0
  %spec.select.i7.i = select i1 %tobool.not.i6.i, i64 2147483647, i64 %30
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select.i7.i, i64 %pos_out)
  %cmp12.not.i.i = icmp sgt i64 %spec.select.i7.i, %pos_out
  br i1 %cmp12.not.i.i, label %if.end31.i, label %if.end9.i.i.cleanup105_crit_edge, !prof !314

if.end9.i.i.cleanup105_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end31.i:                                       ; preds = %if.end9.i.i
  %sub18.i.i = sub i64 %spec.select.i7.i, %pos_out
  %46 = tail call i64 @llvm.smin.i64(i64 %count.0.i, i64 %sub18.i.i) #12
  %cmp32.i = icmp eq ptr %1, %3
  br i1 %cmp32.i, label %land.lhs.true.i, label %if.end31.i.if.end4_crit_edge

if.end31.i.if.end4_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.end31.i
  %add34.i = add i64 %46, %pos_out
  call void @__sanitizer_cov_trace_cmp8(i64 %add34.i, i64 %pos_in)
  %cmp35.i = icmp ugt i64 %add34.i, %pos_in
  %add38.i = add i64 %46, %pos_in
  call void @__sanitizer_cov_trace_cmp8(i64 %add38.i, i64 %pos_out)
  %cmp39.i = icmp ugt i64 %add38.i, %pos_out
  %or.cond2.i = and i1 %cmp35.i, %cmp39.i
  br i1 %or.cond2.i, label %land.lhs.true.i.cleanup105_crit_edge, label %land.lhs.true.i.if.end4_crit_edge

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true.i.cleanup105_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end4:                                          ; preds = %land.lhs.true.i.if.end4_crit_edge, %if.end31.i.if.end4_crit_edge
  %conv43.i = trunc i64 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv43.i)
  %cmp.i138 = icmp slt i32 %conv43.i, 0
  br i1 %cmp.i138, label %if.end4.cleanup105_crit_edge, label %if.end.i139, !prof !300

if.end4.cleanup105_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end.i139:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos_in)
  %cmp4.i = icmp slt i64 %pos_in, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.end.i139
  %47 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i141 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i141)
  %tobool.i.not.i = icmp eq i32 %and.i.i141, 0
  br i1 %tobool.i.not.i, label %if.then11.i.cleanup105_crit_edge, label %if.end13.i144

if.then11.i.cleanup105_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end13.i144:                                    ; preds = %if.then11.i
  %conv.i142 = and i64 %46, 4294967295
  %sub.i143 = sub i64 0, %pos_in
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i142, i64 %sub.i143)
  %cmp14.not.i = icmp slt i64 %conv.i142, %sub.i143
  br i1 %cmp14.not.i, label %if.end13.i144.rw_verify_area.exit_crit_edge, label %if.end13.i144.cleanup105_crit_edge

if.end13.i144.cleanup105_crit_edge:               ; preds = %if.end13.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end13.i144.rw_verify_area.exit_crit_edge:      ; preds = %if.end13.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.end.i139
  %conv18.i = and i64 %46, 4294967295
  %add.i = add nuw i64 %conv18.i, %pos_in
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %49 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %f_mode.i.i, align 8
  %and.i45.i = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.cleanup105_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.cleanup105_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i144.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef %file_in, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool6.not = icmp eq i32 %call36.i, 0
  br i1 %tobool6.not, label %if.end.i146, label %rw_verify_area.exit.cleanup105_crit_edge, !prof !314

rw_verify_area.exit.cleanup105_crit_edge:         ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end.i146:                                      ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos_out)
  %cmp4.i147 = icmp slt i64 %pos_out, 0
  br i1 %cmp4.i147, label %if.then11.i151, label %if.else.i159, !prof !300

if.then11.i151:                                   ; preds = %if.end.i146
  %51 = ptrtoint ptr %f_mode23.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %f_mode23.i.i, align 8
  %and.i.i149 = and i32 %52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i149)
  %tobool.i.not.i150 = icmp eq i32 %and.i.i149, 0
  br i1 %tobool.i.not.i150, label %if.then11.i151.cleanup105_crit_edge, label %if.end13.i155

if.then11.i151.cleanup105_crit_edge:              ; preds = %if.then11.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end13.i155:                                    ; preds = %if.then11.i151
  %conv.i152 = and i64 %46, 4294967295
  %sub.i153 = sub i64 0, %pos_out
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i152, i64 %sub.i153)
  %cmp14.not.i154 = icmp slt i64 %conv.i152, %sub.i153
  br i1 %cmp14.not.i154, label %if.end13.i155.rw_verify_area.exit167_crit_edge, label %if.end13.i155.cleanup105_crit_edge

if.end13.i155.cleanup105_crit_edge:               ; preds = %if.end13.i155
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end13.i155.rw_verify_area.exit167_crit_edge:   ; preds = %if.end13.i155
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit167

if.else.i159:                                     ; preds = %if.end.i146
  %conv18.i156 = and i64 %46, 4294967295
  %add.i157 = add nuw i64 %conv18.i156, %pos_out
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i157)
  %cmp19.i158 = icmp slt i64 %add.i157, 0
  br i1 %cmp19.i158, label %if.then27.i163, label %if.else.i159.rw_verify_area.exit167_crit_edge, !prof !300

if.else.i159.rw_verify_area.exit167_crit_edge:    ; preds = %if.else.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit167

if.then27.i163:                                   ; preds = %if.else.i159
  %53 = ptrtoint ptr %f_mode23.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_mode23.i.i, align 8
  %and.i45.i161 = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i161)
  %tobool.i46.not.i162 = icmp eq i32 %and.i45.i161, 0
  br i1 %tobool.i46.not.i162, label %if.then27.i163.cleanup105_crit_edge, label %if.then27.i163.rw_verify_area.exit167_crit_edge

if.then27.i163.rw_verify_area.exit167_crit_edge:  ; preds = %if.then27.i163
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit167

if.then27.i163.cleanup105_crit_edge:              ; preds = %if.then27.i163
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

rw_verify_area.exit167:                           ; preds = %if.then27.i163.rw_verify_area.exit167_crit_edge, %if.else.i159.rw_verify_area.exit167_crit_edge, %if.end13.i155.rw_verify_area.exit167_crit_edge
  %call36.i164 = tail call i32 @security_file_permission(ptr noundef %file_out, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i164)
  %tobool16.not = icmp eq i32 %call36.i164, 0
  br i1 %tobool16.not, label %if.end24, label %rw_verify_area.exit167.cleanup105_crit_edge, !prof !314

rw_verify_area.exit167.cleanup105_crit_edge:      ; preds = %rw_verify_area.exit167
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end24:                                         ; preds = %rw_verify_area.exit167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv43.i)
  %cmp25 = icmp eq i32 %conv43.i, 0
  br i1 %cmp25, label %if.end24.cleanup105_crit_edge, label %if.end27

if.end24.cleanup105_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end27:                                         ; preds = %if.end24
  tail call fastcc void @file_start_write(ptr noundef %file_out)
  %f_op = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 3
  %55 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %f_op, align 4
  %remap_file_range = getelementptr inbounds %struct.file_operations, ptr %56, i32 0, i32 30
  %57 = ptrtoint ptr %remap_file_range to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %remap_file_range, align 4
  %tobool28.not = icmp eq ptr %58, null
  br i1 %tobool28.not, label %if.end27.if.end44_crit_edge, label %land.lhs.true

if.end27.if.end44_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end27
  %59 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  %63 = ptrtoint ptr %f_inode.i3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %f_inode.i3.i, align 8
  %i_sb31 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %i_sb31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb31, align 4
  %cmp32 = icmp eq ptr %62, %66
  br i1 %cmp32, label %if.then33, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %conv43.i)
  %cmp36 = icmp ugt i32 %conv43.i, 2147479552
  %conv = and i64 %46, 4294967295
  %cond = select i1 %cmp36, i64 2147479552, i64 %conv
  %call38 = tail call i64 %58(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %cond, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call38)
  %cmp39 = icmp sgt i64 %call38, 0
  %conv42 = trunc i64 %call38 to i32
  br i1 %cmp39, label %if.then33.done_crit_edge, label %if.then33.if.end44_crit_edge

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then33.done_crit_edge:                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end44:                                         ; preds = %if.then33.if.end44_crit_edge, %land.lhs.true.if.end44_crit_edge, %if.end27.if.end44_crit_edge
  %f_op.i = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 3
  %67 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %f_op.i, align 4
  %copy_file_range.i = getelementptr inbounds %struct.file_operations, ptr %68, i32 0, i32 29
  %69 = ptrtoint ptr %copy_file_range.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %copy_file_range.i, align 4
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %if.end44.if.end.i171_crit_edge, label %land.lhs.true.i170

if.end44.if.end.i171_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i171

land.lhs.true.i170:                               ; preds = %if.end44
  %71 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %f_op, align 4
  %copy_file_range4.i = getelementptr inbounds %struct.file_operations, ptr %72, i32 0, i32 29
  %73 = ptrtoint ptr %copy_file_range4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %copy_file_range4.i, align 4
  %cmp.i169 = icmp eq ptr %70, %74
  br i1 %cmp.i169, label %if.then.i, label %land.lhs.true.i170.if.end.i171_crit_edge

land.lhs.true.i170.if.end.i171_crit_edge:         ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i171

if.then.i:                                        ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %70(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i32 noundef %conv43.i, i32 noundef 0) #12
  br label %do_copy_file_range.exit

if.end.i171:                                      ; preds = %land.lhs.true.i170.if.end.i171_crit_edge, %if.end44.if.end.i171_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos_in.addr.i.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos_out.addr.i.i) #12
  %75 = ptrtoint ptr %pos_in.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %pos_in, ptr %pos_in.addr.i.i, align 8
  %76 = ptrtoint ptr %pos_out.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %pos_out, ptr %pos_out.addr.i.i, align 8
  %77 = tail call i32 @llvm.umin.i32(i32 %conv43.i, i32 2147479552) #12
  %call.i.i = call i32 @do_splice_direct(ptr noundef %file_in, ptr noundef nonnull %pos_in.addr.i.i, ptr noundef %file_out, ptr noundef nonnull %pos_out.addr.i.i, i32 noundef %77, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos_in.addr.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos_out.addr.i.i) #12
  br label %do_copy_file_range.exit

do_copy_file_range.exit:                          ; preds = %if.end.i171, %if.then.i
  %retval.0.i172 = phi i32 [ %call.i, %if.then.i ], [ %call.i.i, %if.end.i171 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %retval.0.i172)
  %cmp46 = icmp eq i32 %retval.0.i172, -95
  br i1 %cmp46, label %land.rhs, label %do_copy_file_range.exit.done_crit_edge

do_copy_file_range.exit.done_crit_edge:           ; preds = %do_copy_file_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

land.rhs:                                         ; preds = %do_copy_file_range.exit
  %.b137 = load i1, ptr @vfs_copy_file_range.__already_done, align 1
  br i1 %.b137, label %land.rhs.if.end100_crit_edge, label %if.then63, !prof !314

land.rhs.if.end100_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then63:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vfs_copy_file_range.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1510, i32 noundef 9, ptr noundef null) #12
  br label %if.end100

done:                                             ; preds = %do_copy_file_range.exit.done_crit_edge, %if.then33.done_crit_edge
  %ret.1 = phi i32 [ %conv42, %if.then33.done_crit_edge ], [ %retval.0.i172, %do_copy_file_range.exit.done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp94 = icmp sgt i32 %ret.1, 0
  br i1 %cmp94, label %if.then96, label %done.if.end100_crit_edge

done.if.end100_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then96:                                        ; preds = %done
  %78 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i174 = and i32 %79, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i174)
  %tobool.not.i.i175 = icmp eq i32 %and.i.i174, 0
  br i1 %tobool.not.i.i175, label %if.end.i.i176, label %if.then96.fsnotify_access.exit_crit_edge

if.then96.fsnotify_access.exit_crit_edge:         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i176:                                    ; preds = %if.then96
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %85, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %86 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i.i.i = icmp eq i32 %87, 0
  br i1 %cmp.i.i.i, label %if.end.i.i176.fsnotify_access.exit_crit_edge, label %if.end.i.i.i

if.end.i.i176.fsnotify_access.exit_crit_edge:     ; preds = %if.end.i.i176
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i176
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %83, align 8
  %90 = and i16 %89, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %90)
  %cmp2.i.i.i = icmp eq i16 %90, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %91 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %81, align 8
  %and5.i.i.i = and i32 %92, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741825, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %81, i32 0, i32 3
  %93 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %94, %81
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = call i32 @__fsnotify_parent(ptr noundef %81, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %fsnotify_access.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741825, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %83, i32 noundef 0) #12
  br label %fsnotify_access.exit

fsnotify_access.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i176.fsnotify_access.exit_crit_edge, %if.then96.fsnotify_access.exit_crit_edge
  %95 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i177 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i177 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task, align 8
  %conv.i178236 = zext i32 %ret.1 to i64
  %ioac.i = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 155
  %99 = ptrtoint ptr %ioac.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %ioac.i, align 8
  %add.i179 = add i64 %100, %conv.i178236
  store i64 %add.i179, ptr %ioac.i, align 8
  %101 = ptrtoint ptr %f_mode23.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %f_mode23.i.i, align 8
  %and.i.i181 = and i32 %102, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i181)
  %tobool.not.i.i182 = icmp eq i32 %and.i.i181, 0
  br i1 %tobool.not.i.i182, label %if.end.i.i190, label %fsnotify_access.exit.fsnotify_modify.exit_crit_edge

fsnotify_access.exit.fsnotify_modify.exit_crit_edge: ; preds = %fsnotify_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i190:                                    ; preds = %fsnotify_access.exit
  %f_path.i.i183 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 1
  %dentry.i.i184 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %dentry.i.i184 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dentry.i.i184, align 4
  %d_inode.i.i.i.i185 = getelementptr inbounds %struct.dentry, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %d_inode.i.i.i.i185 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %d_inode.i.i.i.i185, align 8
  %i_sb.i.i.i186 = getelementptr inbounds %struct.inode, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %i_sb.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i_sb.i.i.i186, align 4
  %s_fsnotify_connectors.i.i.i187 = getelementptr inbounds %struct.super_block, ptr %108, i32 0, i32 48
  %call.i.i.i.i.i188 = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i187, i32 noundef 4) #12
  %109 = ptrtoint ptr %s_fsnotify_connectors.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i.i.i189 = icmp eq i32 %110, 0
  br i1 %cmp.i.i.i189, label %if.end.i.i190.fsnotify_modify.exit_crit_edge, label %if.end.i.i.i192

if.end.i.i190.fsnotify_modify.exit_crit_edge:     ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i.i192:                                  ; preds = %if.end.i.i190
  %111 = ptrtoint ptr %106 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %106, align 8
  %113 = and i16 %112, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %113)
  %cmp2.i.i.i191 = icmp eq i16 %113, 16384
  br i1 %cmp2.i.i.i191, label %if.then4.i.i.i195, label %if.end.i.i.i192.if.end8.i.i.i199_crit_edge

if.end.i.i.i192.if.end8.i.i.i199_crit_edge:       ; preds = %if.end.i.i.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i199

if.then4.i.i.i195:                                ; preds = %if.end.i.i.i192
  %114 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %104, align 8
  %and5.i.i.i193 = and i32 %115, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i193)
  %tobool.not.i.i.i194 = icmp eq i32 %and5.i.i.i193, 0
  br i1 %tobool.not.i.i.i194, label %if.then4.i.i.i195.notify_child.i.i.i204_crit_edge, label %if.then4.i.i.i195.if.end8.i.i.i199_crit_edge

if.then4.i.i.i195.if.end8.i.i.i199_crit_edge:     ; preds = %if.then4.i.i.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i199

if.then4.i.i.i195.notify_child.i.i.i204_crit_edge: ; preds = %if.then4.i.i.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i204

if.end8.i.i.i199:                                 ; preds = %if.then4.i.i.i195.if.end8.i.i.i199_crit_edge, %if.end.i.i.i192.if.end8.i.i.i199_crit_edge
  %mask.addr.0.i.i.i196 = phi i32 [ 1073741826, %if.then4.i.i.i195.if.end8.i.i.i199_crit_edge ], [ 2, %if.end.i.i.i192.if.end8.i.i.i199_crit_edge ]
  %d_parent.i.i.i197 = getelementptr inbounds %struct.dentry, ptr %104, i32 0, i32 3
  %116 = ptrtoint ptr %d_parent.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %d_parent.i.i.i197, align 8
  %cmp9.i.i.i198 = icmp eq ptr %117, %104
  br i1 %cmp9.i.i.i198, label %if.end8.i.i.i199.notify_child.i.i.i204_crit_edge, label %if.end12.i.i.i201

if.end8.i.i.i199.notify_child.i.i.i204_crit_edge: ; preds = %if.end8.i.i.i199
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i204

if.end12.i.i.i201:                                ; preds = %if.end8.i.i.i199
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i200 = call i32 @__fsnotify_parent(ptr noundef %104, i32 noundef %mask.addr.0.i.i.i196, ptr noundef %f_path.i.i183, i32 noundef 1) #12
  br label %fsnotify_modify.exit

notify_child.i.i.i204:                            ; preds = %if.end8.i.i.i199.notify_child.i.i.i204_crit_edge, %if.then4.i.i.i195.notify_child.i.i.i204_crit_edge
  %mask.addr.1.i.i.i202 = phi i32 [ %mask.addr.0.i.i.i196, %if.end8.i.i.i199.notify_child.i.i.i204_crit_edge ], [ 1073741826, %if.then4.i.i.i195.notify_child.i.i.i204_crit_edge ]
  %call14.i.i.i203 = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i202, ptr noundef %f_path.i.i183, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %106, i32 noundef 0) #12
  br label %fsnotify_modify.exit

fsnotify_modify.exit:                             ; preds = %notify_child.i.i.i204, %if.end12.i.i.i201, %if.end.i.i190.fsnotify_modify.exit_crit_edge, %fsnotify_access.exit.fsnotify_modify.exit_crit_edge
  %118 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task, align 8
  %wchar.i = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 155, i32 1
  %120 = ptrtoint ptr %wchar.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %wchar.i, align 8
  %add.i206 = add i64 %121, %conv.i178236
  store i64 %add.i206, ptr %wchar.i, align 8
  br label %if.end100

if.end100:                                        ; preds = %fsnotify_modify.exit, %done.if.end100_crit_edge, %if.then63, %land.rhs.if.end100_crit_edge
  %ret.1235 = phi i32 [ %ret.1, %fsnotify_modify.exit ], [ %ret.1, %done.if.end100_crit_edge ], [ -95, %if.then63 ], [ -95, %land.rhs.if.end100_crit_edge ]
  %122 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i207 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i207 to ptr
  %task102 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task102 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task102, align 8
  %syscr.i = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 155, i32 2
  %126 = ptrtoint ptr %syscr.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %syscr.i, align 8
  %inc.i = add i64 %127, 1
  store i64 %inc.i, ptr %syscr.i, align 8
  %128 = load ptr, ptr %task102, align 8
  %syscw.i = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 155, i32 3
  %129 = ptrtoint ptr %syscw.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %syscw.i, align 8
  %inc.i208 = add i64 %130, 1
  store i64 %inc.i208, ptr %syscw.i, align 8
  call fastcc void @file_end_write(ptr noundef %file_out)
  br label %cleanup105

cleanup105:                                       ; preds = %if.end100, %if.end24.cleanup105_crit_edge, %rw_verify_area.exit167.cleanup105_crit_edge, %if.then27.i163.cleanup105_crit_edge, %if.end13.i155.cleanup105_crit_edge, %if.then11.i151.cleanup105_crit_edge, %rw_verify_area.exit.cleanup105_crit_edge, %if.then27.i.cleanup105_crit_edge, %if.end13.i144.cleanup105_crit_edge, %if.then11.i.cleanup105_crit_edge, %if.end4.cleanup105_crit_edge, %land.lhs.true.i.cleanup105_crit_edge, %if.end9.i.i.cleanup105_crit_edge, %if.then4.i.i, %if.end13.i.cleanup105_crit_edge, %if.end5.i.cleanup105_crit_edge, %if.end.i.cleanup105_crit_edge, %lor.lhs.false26.i.i.cleanup105_crit_edge, %lor.lhs.false22.i.i.cleanup105_crit_edge, %if.end20.i.i.cleanup105_crit_edge, %if.end.i.i.cleanup105_crit_edge, %lor.lhs.false.i.i.cleanup105_crit_edge, %if.end.cleanup105_crit_edge, %entry.cleanup105_crit_edge
  %retval.0 = phi i32 [ %ret.1235, %if.end100 ], [ -22, %entry.cleanup105_crit_edge ], [ %call36.i, %rw_verify_area.exit.cleanup105_crit_edge ], [ %call36.i164, %rw_verify_area.exit167.cleanup105_crit_edge ], [ 0, %if.end24.cleanup105_crit_edge ], [ -27, %if.end9.i.i.cleanup105_crit_edge ], [ -27, %if.then4.i.i ], [ -21, %lor.lhs.false.i.i.cleanup105_crit_edge ], [ -21, %if.end.cleanup105_crit_edge ], [ -22, %if.end.i.i.cleanup105_crit_edge ], [ -9, %lor.lhs.false22.i.i.cleanup105_crit_edge ], [ -9, %if.end20.i.i.cleanup105_crit_edge ], [ -9, %lor.lhs.false26.i.i.cleanup105_crit_edge ], [ -22, %land.lhs.true.i.cleanup105_crit_edge ], [ -75, %if.end13.i.cleanup105_crit_edge ], [ -26, %if.end5.i.cleanup105_crit_edge ], [ -1, %if.end.i.cleanup105_crit_edge ], [ -22, %if.then11.i.cleanup105_crit_edge ], [ -75, %if.end13.i144.cleanup105_crit_edge ], [ -22, %if.then27.i.cleanup105_crit_edge ], [ -22, %if.end4.cleanup105_crit_edge ], [ -22, %if.then11.i151.cleanup105_crit_edge ], [ -75, %if.end13.i155.cleanup105_crit_edge ], [ -22, %if.then27.i163.cleanup105_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_copy_file_range(i32 noundef %fd_in, i32 noundef %off_in, i32 noundef %fd_out, i32 noundef %off_out, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %pos_in.i = alloca i64, align 8
  %pos_out.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %off_in to ptr
  %1 = inttoptr i32 %off_out to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos_in.i) #12
  %2 = ptrtoint ptr %pos_in.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %pos_in.i, align 8, !annotation !312
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos_out.i) #12
  %3 = ptrtoint ptr %pos_out.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %pos_out.i, align 8, !annotation !312
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd_in) #12, !noalias !355
  %and.i.i.i = and i32 %call.i.i, -4
  %4 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_copy_file_range.exit_crit_edge, label %if.end.i

entry.__do_sys_copy_file_range.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_copy_file_range.exit

if.end.i:                                         ; preds = %entry
  %call.i110.i = tail call i32 @__fdget(i32 noundef %fd_out) #12, !noalias !358
  %and.i.i111.i = and i32 %call.i110.i, -4
  %5 = inttoptr i32 %and.i.i111.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i111.i)
  %tobool3.not.i = icmp eq i32 %and.i.i111.i, 0
  br i1 %tobool3.not.i, label %if.end.i.out1.i_crit_edge, label %if.end5.i

if.end.i.out1.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out1.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off_in)
  %tobool6.not.i = icmp eq i32 %off_in, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #12
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.if.then11.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 8, i32 -1226833920) #15, !srcloc !353
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !314

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pos_in.i, i32 noundef 8) #12
  %7 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !348
  %and.i.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %pos_in.i, ptr noundef nonnull %0, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end12.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !314

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end.i.i.i.if.end12.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.then.i.i.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %pos_in.i, i32 %sub.i.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %out.i

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_pos.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 10
  %11 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %f_pos.i, align 8
  %13 = ptrtoint ptr %pos_in.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %pos_in.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.end.i.i.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off_out)
  %tobool13.not.i = icmp eq i32 %off_out, 0
  br i1 %tobool13.not.i, label %if.else19.i, label %if.then.i71.i

if.then.i71.i:                                    ; preds = %if.end12.i
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #12
  %call.i.i70.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i70.i, label %if.then.i71.i.if.then11.i.i86.i_crit_edge, label %land.lhs.true.i.i74.i

if.then.i71.i.if.then11.i.i86.i_crit_edge:        ; preds = %if.then.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i86.i

land.lhs.true.i.i74.i:                            ; preds = %if.then.i71.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 8, i32 -1226833920) #15, !srcloc !353
  %asmresult.i.i72.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i72.i)
  %cmp.i.i73.i = icmp eq i32 %asmresult.i.i72.i, 0
  br i1 %cmp.i.i73.i, label %if.end.i.i82.i, label %land.lhs.true.i.i74.i.if.then11.i.i86.i_crit_edge, !prof !314

land.lhs.true.i.i74.i.if.then11.i.i86.i_crit_edge: ; preds = %land.lhs.true.i.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i86.i

if.end.i.i82.i:                                   ; preds = %land.lhs.true.i.i74.i
  %call.i.i.i75.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pos_out.i, i32 noundef 8) #12
  %15 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i.i76.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i76.i to ptr
  %cpu_domain.i.i.i.i.i77.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i77.i) #10, !srcloc !348
  %and.i.i.i.i78.i = and i32 %17, -13
  %or.i.i.i.i79.i = or i32 %and.i.i.i.i78.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i79.i) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  %call1.i.i.i80.i = call i32 @arm_copy_from_user(ptr noundef nonnull %pos_out.i, ptr noundef nonnull %1, i32 noundef 8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i80.i)
  %tobool4.not.i.i81.i = icmp eq i32 %call1.i.i.i80.i, 0
  br i1 %tobool4.not.i.i81.i, label %if.end.i.i82.i.if.end22.i_crit_edge, label %if.end.i.i82.i.if.then11.i.i86.i_crit_edge, !prof !314

if.end.i.i82.i.if.then11.i.i86.i_crit_edge:       ; preds = %if.end.i.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i86.i

if.end.i.i82.i.if.end22.i_crit_edge:              ; preds = %if.end.i.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then11.i.i86.i:                                ; preds = %if.end.i.i82.i.if.then11.i.i86.i_crit_edge, %land.lhs.true.i.i74.i.if.then11.i.i86.i_crit_edge, %if.then.i71.i.if.then11.i.i86.i_crit_edge
  %res.03.i.i83.i = phi i32 [ %call1.i.i.i80.i, %if.end.i.i82.i.if.then11.i.i86.i_crit_edge ], [ 8, %if.then.i71.i.if.then11.i.i86.i_crit_edge ], [ 8, %land.lhs.true.i.i74.i.if.then11.i.i86.i_crit_edge ]
  %sub.i.i84.i = sub i32 8, %res.03.i.i83.i
  %add.ptr.i.i85.i = getelementptr i8, ptr %pos_out.i, i32 %sub.i.i84.i
  %18 = call ptr @memset(ptr %add.ptr.i.i85.i, i32 0, i32 %res.03.i.i83.i)
  br label %out.i

if.else19.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_pos21.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 10
  %19 = ptrtoint ptr %f_pos21.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %f_pos21.i, align 8
  %21 = ptrtoint ptr %pos_out.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %pos_out.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else19.i, %if.end.i.i82.i.if.end22.i_crit_edge
  %22 = ptrtoint ptr %pos_in.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pos_in.i, align 8
  %24 = ptrtoint ptr %pos_out.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pos_out.i, align 8
  %call25.i = call i32 @vfs_copy_file_range(ptr noundef nonnull %4, i64 noundef %23, ptr noundef nonnull %5, i64 noundef %25, i32 noundef %len, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp.i = icmp sgt i32 %call25.i, 0
  br i1 %cmp.i, label %if.then26.i, label %if.end22.i.out.i_crit_edge

if.end22.i.out.i_crit_edge:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then26.i:                                      ; preds = %if.end22.i
  %conv127.i = zext i32 %call25.i to i64
  %26 = ptrtoint ptr %pos_in.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos_in.i, align 8
  %add.i = add i64 %27, %conv127.i
  store i64 %add.i, ptr %pos_in.i, align 8
  %28 = ptrtoint ptr %pos_out.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pos_out.i, align 8
  %add28.i = add i64 %29, %conv127.i
  store i64 %add28.i, ptr %pos_out.i, align 8
  br i1 %tobool6.not.i, label %if.else35.i, label %if.then.i92.i

if.then.i92.i:                                    ; preds = %if.then26.i
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #12
  %call.i.i91.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i91.i, label %if.then.i92.i.if.end38.i_crit_edge, label %if.end.i.i95.i

if.then.i92.i.if.end38.i_crit_edge:               ; preds = %if.then.i92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.end.i.i95.i:                                   ; preds = %if.then.i92.i
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 8, i32 -1226833920) #15, !srcloc !313
  %asmresult.i.i93.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i93.i)
  %cmp.i.i94.i = icmp eq i32 %asmresult.i.i93.i, 0
  br i1 %cmp.i.i94.i, label %copy_to_user.exit.i, label %if.end.i.i95.i.if.end38.i_crit_edge

if.end.i.i95.i.if.end38.i_crit_edge:              ; preds = %if.end.i.i95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i95.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i96.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pos_in.i, i32 noundef 8) #12
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %0, ptr noundef nonnull %pos_in.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool32.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool32.not.i, i32 %call25.i, i32 -14
  br label %if.end38.i

if.else35.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_pos37.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 10
  %31 = ptrtoint ptr %f_pos37.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add.i, ptr %f_pos37.i, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else35.i, %copy_to_user.exit.i, %if.end.i.i95.i.if.end38.i_crit_edge, %if.then.i92.i.if.end38.i_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.else35.i ], [ -14, %if.then.i92.i.if.end38.i_crit_edge ], [ -14, %if.end.i.i95.i.if.end38.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  br i1 %tobool13.not.i, label %if.else45.i, label %if.then.i101.i

if.then.i101.i:                                   ; preds = %if.end38.i
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #12
  %call.i.i100.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i100.i, label %if.then.i101.i.out.i_crit_edge, label %if.end.i.i104.i

if.then.i101.i.out.i_crit_edge:                   ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end.i.i104.i:                                  ; preds = %if.then.i101.i
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 8, i32 -1226833920) #15, !srcloc !313
  %asmresult.i.i102.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i102.i)
  %cmp.i.i103.i = icmp eq i32 %asmresult.i.i102.i, 0
  br i1 %cmp.i.i103.i, label %copy_to_user.exit109.i, label %if.end.i.i104.i.out.i_crit_edge

if.end.i.i104.i.out.i_crit_edge:                  ; preds = %if.end.i.i104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

copy_to_user.exit109.i:                           ; preds = %if.end.i.i104.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i105.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pos_out.i, i32 noundef 8) #12
  %call.i1.i.i106.i = call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %pos_out.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i106.i)
  %tobool42.not.i = icmp eq i32 %call.i1.i.i106.i, 0
  %spec.select128.i = select i1 %tobool42.not.i, i32 %ret.0.i, i32 -14
  br label %out.i

if.else45.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %pos_out.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos_out.i, align 8
  %f_pos47.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 10
  %35 = ptrtoint ptr %f_pos47.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %f_pos47.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.else45.i, %copy_to_user.exit109.i, %if.end.i.i104.i.out.i_crit_edge, %if.then.i101.i.out.i_crit_edge, %if.end22.i.out.i_crit_edge, %if.then11.i.i86.i, %if.then11.i.i.i
  %ret.1.i = phi i32 [ %ret.0.i, %if.else45.i ], [ %call25.i, %if.end22.i.out.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then11.i.i86.i ], [ -14, %if.then.i101.i.out.i_crit_edge ], [ -14, %if.end.i.i104.i.out.i_crit_edge ], [ %spec.select128.i, %copy_to_user.exit109.i ]
  %and.i.i = and i32 %call.i110.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %out.i.out1.i_crit_edge, label %if.then.i114.i

out.i.out1.i_crit_edge:                           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out1.i

if.then.i114.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %5) #12
  br label %out1.i

out1.i:                                           ; preds = %if.then.i114.i, %out.i.out1.i_crit_edge, %if.end.i.out1.i_crit_edge
  %ret.2.i = phi i32 [ -9, %if.end.i.out1.i_crit_edge ], [ %ret.1.i, %out.i.out1.i_crit_edge ], [ %ret.1.i, %if.then.i114.i ]
  %and.i115.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115.i)
  %tobool.not.i116.i = icmp eq i32 %and.i115.i, 0
  br i1 %tobool.not.i116.i, label %out1.i.__do_sys_copy_file_range.exit_crit_edge, label %if.then.i117.i

out1.i.__do_sys_copy_file_range.exit_crit_edge:   ; preds = %out1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_copy_file_range.exit

if.then.i117.i:                                   ; preds = %out1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %4) #12
  br label %__do_sys_copy_file_range.exit

__do_sys_copy_file_range.exit:                    ; preds = %if.then.i117.i, %out1.i.__do_sys_copy_file_range.exit_crit_edge, %entry.__do_sys_copy_file_range.exit_crit_edge
  %ret.3.i = phi i32 [ -9, %entry.__do_sys_copy_file_range.exit_crit_edge ], [ %ret.2.i, %out1.i.__do_sys_copy_file_range.exit_crit_edge ], [ %ret.2.i, %if.then.i117.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos_out.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos_in.i) #12
  ret i32 %ret.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_write_check_limits(ptr nocapture noundef readonly %file, i64 noundef %pos, ptr nocapture noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %s_maxbytes, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 51, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 8
  %conv = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not = icmp eq i32 %15, -1
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %pos)
  %cmp2.not = icmp sgt i64 %conv, %pos
  br i1 %cmp2.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %call6 = tail call i32 @send_sig(i32 noundef 25, ptr noundef %19, i32 noundef 0) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %count, align 8
  %sub = sub i64 %conv, %pos
  %22 = tail call i64 @llvm.smin.i64(i64 %21, i64 %sub)
  %23 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %count, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %24 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_flags, align 4
  %and = and i32 %25, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i64 2147483647, i64 %7
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %pos)
  %cmp12.not = icmp sgt i64 %spec.select, %pos
  br i1 %cmp12.not, label %if.end17, label %if.end9.cleanup_crit_edge, !prof !314

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %count, align 8
  %sub18 = sub i64 %spec.select, %pos
  %28 = tail call i64 @llvm.smin.i64(i64 %27, i64 %sub18)
  %29 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end9.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ -27, %if.then4 ], [ 0, %if.end17 ], [ -27, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_write_checks(ptr nocapture noundef %iocb, ptr nocapture noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %10 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ki_flags, align 8
  %and4 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end8_crit_edge, label %if.then6

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %12 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call7, ptr %ki_pos, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3.if.end8_crit_edge
  %13 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ki_flags, align 8
  %15 = and i32 %14, 131080
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %if.end8.cleanup_crit_edge, label %if.end16

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i, align 8
  %conv = zext i32 %18 to i64
  %ki_pos18 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %19 = ptrtoint ptr %ki_pos18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ki_pos18, align 8
  %21 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_mapping, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %s_maxbytes.i, align 8
  %29 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 111
  %33 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %34, i32 0, i32 51, i32 1
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %conv.i = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.not.i = icmp eq i32 %36, -1
  br i1 %cmp.not.i, label %if.end16.if.end9.i_crit_edge, label %if.then.i

if.end16.if.end9.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv.i)
  %cmp2.not.i = icmp slt i64 %20, %conv.i
  br i1 %cmp2.not.i, label %if.end.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i, align 8
  %call6.i = tail call i32 @send_sig(i32 noundef 25, ptr noundef %40, i32 noundef 0) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i64 %conv.i, %20
  %41 = tail call i64 @llvm.smin.i64(i64 %conv, i64 %sub.i) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %if.end16.if.end9.i_crit_edge
  %count.0 = phi i64 [ %conv, %if.end16.if.end9.i_crit_edge ], [ %41, %if.end.i ]
  %f_flags.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %42 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i64 2147483647, i64 %28
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select.i, i64 %20)
  %cmp12.not.i = icmp sgt i64 %spec.select.i, %20
  br i1 %cmp12.not.i, label %if.end22, label %if.end9.i.cleanup_crit_edge, !prof !314

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.end9.i
  %sub18.i = sub i64 %spec.select.i, %20
  %44 = tail call i64 @llvm.smin.i64(i64 %count.0, i64 %sub18.i) #12
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count.i, align 8
  %conv.i39 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %conv.i39)
  %cmp.i = icmp ult i64 %44, %conv.i39
  br i1 %cmp.i, label %if.then.i40, label %if.end22.iov_iter_truncate.exit_crit_edge

if.end22.iov_iter_truncate.exit_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %iov_iter_truncate.exit

if.then.i40:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %conv3.i = trunc i64 %44 to i32
  %47 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv3.i, ptr %count.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i40, %if.end22.iov_iter_truncate.exit_crit_edge
  %48 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %iov_iter_truncate.exit, %if.end9.i.cleanup_crit_edge, %if.then4.i, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %iov_iter_truncate.exit ], [ -26, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -27, %if.then4.i ], [ -27, %if.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @generic_file_rw_checks(ptr nocapture noundef readonly %file_in, ptr nocapture noundef readonly %file_out) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %f_inode.i37 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i37, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp6 = icmp eq i16 %9, 16384
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp11 = icmp eq i16 %4, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %9)
  %cmp17 = icmp eq i16 %9, -32768
  %or.cond = select i1 %cmp11, i1 %cmp17, i1 false
  br i1 %or.cond, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 8
  %10 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_mode, align 8
  %and21 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %if.end20.cleanup_crit_edge, label %lor.lhs.false22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false22:                                  ; preds = %if.end20
  %f_mode23 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 8
  %12 = ptrtoint ptr %f_mode23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_mode23, align 8
  %and24 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false22.cleanup_crit_edge, label %lor.lhs.false26

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  %f_flags = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 7
  %14 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags, align 4
  %and27 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %spec.select = select i1 %tobool28.not, i32 0, i32 -9
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false26, %lor.lhs.false22.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -21, %lor.lhs.false.cleanup_crit_edge ], [ -21, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -9, %lor.lhs.false22.cleanup_crit_edge ], [ -9, %if.end20.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_pos(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_unlock_pos(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_iter_readv_writev(ptr noundef %filp, ptr noundef %iter, ptr noundef %ppos, i32 noundef %type, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %kiocb = alloca %struct.kiocb, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kiocb) #12
  %0 = call ptr @memset(ptr %kiocb, i32 255, i32 40)
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %1 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_flags.i.i, align 4
  %and.i.i = lshr i32 %2, 6
  %3 = and i32 %and.i.i, 16
  %and2.i.i = shl i32 %2, 1
  %4 = and i32 %and2.i.i, 131072
  %5 = or i32 %4, %3
  %and8.i.i = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i, label %entry.if.then17.i.i_crit_edge

entry.if.then17.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i

lor.lhs.false.i.i:                                ; preds = %entry
  %f_mapping.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_mapping.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags.i.i, align 4
  %and10.i.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false12.i.i, label %lor.lhs.false.i.i.if.then17.i.i_crit_edge

lor.lhs.false.i.i.if.then17.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i

lor.lhs.false12.i.i:                              ; preds = %lor.lhs.false.i.i
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags.i.i, align 4
  %and15.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge, label %lor.lhs.false12.i.i.if.then17.i.i_crit_edge

lor.lhs.false12.i.i.if.then17.i.i_crit_edge:      ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i.i

lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge:  ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iocb_flags.exit.i

if.then17.i.i:                                    ; preds = %lor.lhs.false12.i.i.if.then17.i.i_crit_edge, %lor.lhs.false.i.i.if.then17.i.i_crit_edge, %entry.if.then17.i.i_crit_edge
  %or18.i.i = or i32 %5, 2
  br label %iocb_flags.exit.i

iocb_flags.exit.i:                                ; preds = %if.then17.i.i, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge
  %res.2.i.i = phi i32 [ %or18.i.i, %if.then17.i.i ], [ %5, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge ]
  %f_write_hint.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 5
  %16 = ptrtoint ptr %f_write_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_write_hint.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge

iocb_flags.exit.i.file_write_hint.exit.i_crit_edge: ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_write_hint.exit.i

if.end.i.i:                                       ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %18 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_write_hint.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %i_write_hint.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i_write_hint.i.i, align 1
  %conv.i.i = zext i8 %21 to i32
  br label %file_write_hint.exit.i

file_write_hint.exit.i:                           ; preds = %if.end.i.i, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ %17, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge ]
  %22 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i, align 8
  %io_context.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 151
  %26 = ptrtoint ptr %io_context.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_context.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge, label %if.then.i.i

file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge: ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_sync_kiocb.exit

if.then.i.i:                                      ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %ioprio.i.i = getelementptr inbounds %struct.io_context, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ioprio.i.i, align 4
  br label %init_sync_kiocb.exit

init_sync_kiocb.exit:                             ; preds = %if.then.i.i, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge
  %retval.0.i8.i = phi i16 [ %29, %if.then.i.i ], [ 16388, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge ]
  %30 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 65536) #12
  %31 = trunc i32 %30 to i16
  %and21.i.i = lshr i32 %2, 18
  %32 = and i32 %and21.i.i, 4
  %33 = or i32 %res.2.i.i, %32
  %34 = ptrtoint ptr %kiocb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %filp, ptr %kiocb, align 8
  %.compoundliteral.sroa.24.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 24
  %35 = getelementptr inbounds i8, ptr %kiocb, i32 16
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %35, align 8
  %37 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %33, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 28
  %38 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %31, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 30
  %39 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %retval.0.i8.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 32
  %40 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %.compoundliteral.sroa.8.0..sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i = icmp eq i32 %flags, 0
  br i1 %tobool.not.i, label %init_sync_kiocb.exit.if.end_crit_edge, label %if.end.i

init_sync_kiocb.exit.if.end_crit_edge:            ; preds = %init_sync_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %init_sync_kiocb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %flags)
  %tobool1.not.i = icmp ult i32 %flags, 32
  br i1 %tobool1.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge, !prof !314

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %and6.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then8.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  %f_mode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %41 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %f_mode.i, align 8
  %and9.i = and i32 %42, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.cleanup_crit_edge, label %if.then8.i.if.end13.i_crit_edge

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %kiocb_flags.0.i = phi i32 [ 0, %if.end5.i.if.end13.i_crit_edge ], [ 1048576, %if.then8.i.if.end13.i_crit_edge ]
  %and16.i = lshr i32 %flags, 1
  %43 = and i32 %and16.i, 2
  %44 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 8
  %or15.i = or i32 %43, %flags
  %46 = or i32 %or15.i, %kiocb_flags.0.i
  %or21.i = or i32 %46, %45
  store i32 %or21.i, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end13.i, %init_sync_kiocb.exit.if.end_crit_edge
  %tobool1.not = icmp eq ptr %ppos, null
  br i1 %tobool1.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %ppos, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i64 [ %48, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %49 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %cond, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %f_op.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 3
  %50 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f_op.i, align 4
  %read_iter.i = getelementptr inbounds %struct.file_operations, ptr %51, i32 0, i32 4
  %write_iter.i = getelementptr inbounds %struct.file_operations, ptr %51, i32 0, i32 5
  %read_iter.i.sink = select i1 %cmp, ptr %read_iter.i, ptr %write_iter.i
  %52 = ptrtoint ptr %read_iter.i.sink to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_iter.i.sink, align 4
  %call.i = call i32 %53(ptr noundef nonnull %kiocb, ptr noundef %iter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call.i)
  %cmp6 = icmp eq i32 %call.i, -529
  br i1 %cmp6, label %do.body10, label %do.end16, !prof !300

do.body10:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/read_write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 726, 0\0A.popsection", ""() #12, !srcloc !361
  unreachable

do.end16:                                         ; preds = %cond.end
  br i1 %tobool1.not, label %do.end16.cleanup_crit_edge, label %if.then18

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 8
  %56 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.end16.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then18 ], [ %call.i, %do.end16.cleanup_crit_edge ], [ -95, %if.end.i.cleanup_crit_edge ], [ -95, %if.then8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kiocb) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_readv(i32 noundef %fd, ptr noundef %vec, i32 noundef %vlen, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %iovstack.i = alloca [8 x %struct.iovec], align 4
  %iov.i = alloca ptr, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget_pos(i32 noundef %fd) #12, !noalias !362
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %pos, align 8, !annotation !312
  %f_mode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %f_pos.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %tobool2.not42 = icmp eq ptr %f_pos.i, null
  %tobool2.not = select i1 %tobool.not.i, i1 true, i1 %tobool2.not42
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %f_pos.i, align 8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %ppos.0 = phi ptr [ %pos, %if.then3 ], [ null, %if.then.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack.i) #12
  %7 = call ptr @memset(ptr %iovstack.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov.i) #12
  %8 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %iovstack.i, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #12
  %9 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %call.i23 = call i32 @import_iovec(i32 noundef 0, ptr noundef %vec, i32 noundef %vlen, i32 noundef 8, ptr noundef nonnull %iov.i, ptr noundef nonnull %iter.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i23)
  %cmp.i = icmp sgt i32 %call.i23, -1
  br i1 %cmp.i, label %vfs_readv.exit, label %vfs_readv.exit.thread

vfs_readv.exit.thread:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack.i) #12
  br label %if.end9

vfs_readv.exit:                                   ; preds = %if.end
  %call1.i = call fastcc i32 @do_iter_read(ptr noundef nonnull %0, ptr noundef nonnull %iter.i, ptr noundef %ppos.0, i32 noundef %flags) #12
  %10 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iov.i, align 4
  call void @kfree(ptr noundef %11) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  %tobool6.not = icmp eq ptr %ppos.0, null
  %or.cond = or i1 %tobool6.not, %cmp
  br i1 %or.cond, label %vfs_readv.exit.if.end9_crit_edge, label %if.then7

vfs_readv.exit.if.end9_crit_edge:                 ; preds = %vfs_readv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %vfs_readv.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %14 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %f_pos.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %vfs_readv.exit.if.end9_crit_edge, %vfs_readv.exit.thread
  %ret.0.i37 = phi i32 [ %call.i23, %vfs_readv.exit.thread ], [ %call1.i, %if.then7 ], [ %call1.i, %vfs_readv.exit.if.end9_crit_edge ]
  %and.i24 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %if.end9.if.end.i_crit_edge, label %if.then.i26

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i26:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void @__f_unlock_pos(ptr noundef nonnull %0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i26, %if.end9.if.end.i_crit_edge
  %and.i.i27 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i.i = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end10_crit_edge, label %if.then.i.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %0) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then.i.i, %if.end.i.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i37)
  %cmp11 = icmp sgt i32 %ret.0.i37, 0
  br i1 %cmp11, label %if.then12, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %15 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i28 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i28 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %conv.i41 = zext i32 %ret.0.i37 to i64
  %ioac.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 155
  %19 = ptrtoint ptr %ioac.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ioac.i, align 8
  %add.i = add i64 %20, %conv.i41
  store i64 %add.i, ptr %ioac.i, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge, %entry.if.end14_crit_edge
  %ret.040 = phi i32 [ %ret.0.i37, %if.then12 ], [ %ret.0.i37, %if.end10.if.end14_crit_edge ], [ -9, %entry.if.end14_crit_edge ]
  %21 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i29 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i29 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task16, align 8
  %syscr.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 155, i32 2
  %25 = ptrtoint ptr %syscr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %syscr.i, align 8
  %inc.i = add i64 %26, 1
  store i64 %inc.i, ptr %syscr.i, align 8
  ret i32 %ret.040
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_writev(i32 noundef %fd, ptr noundef %vec, i32 noundef %vlen, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %iovstack.i = alloca [8 x %struct.iovec], align 4
  %iov.i = alloca ptr, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget_pos(i32 noundef %fd) #12, !noalias !365
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %pos, align 8, !annotation !312
  %f_mode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %f_pos.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %tobool2.not42 = icmp eq ptr %f_pos.i, null
  %tobool2.not = select i1 %tobool.not.i, i1 true, i1 %tobool2.not42
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %f_pos.i, align 8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %ppos.0 = phi ptr [ %pos, %if.then3 ], [ null, %if.then.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack.i) #12
  %7 = call ptr @memset(ptr %iovstack.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov.i) #12
  %8 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %iovstack.i, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #12
  %9 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %call.i23 = call i32 @import_iovec(i32 noundef 1, ptr noundef %vec, i32 noundef %vlen, i32 noundef 8, ptr noundef nonnull %iov.i, ptr noundef nonnull %iter.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i23)
  %cmp.i = icmp sgt i32 %call.i23, -1
  br i1 %cmp.i, label %vfs_writev.exit, label %vfs_writev.exit.thread

vfs_writev.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack.i) #12
  br label %if.end9

vfs_writev.exit:                                  ; preds = %if.end
  call fastcc void @file_start_write(ptr noundef nonnull %0) #12
  %call1.i = call fastcc i32 @do_iter_write(ptr noundef nonnull %0, ptr noundef nonnull %iter.i, ptr noundef %ppos.0, i32 noundef %flags) #12
  call fastcc void @file_end_write(ptr noundef nonnull %0) #12
  %10 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iov.i, align 4
  call void @kfree(ptr noundef %11) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  %tobool6.not = icmp eq ptr %ppos.0, null
  %or.cond = or i1 %tobool6.not, %cmp
  br i1 %or.cond, label %vfs_writev.exit.if.end9_crit_edge, label %if.then7

vfs_writev.exit.if.end9_crit_edge:                ; preds = %vfs_writev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %vfs_writev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %14 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %f_pos.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %vfs_writev.exit.if.end9_crit_edge, %vfs_writev.exit.thread
  %ret.0.i37 = phi i32 [ %call.i23, %vfs_writev.exit.thread ], [ %call1.i, %if.then7 ], [ %call1.i, %vfs_writev.exit.if.end9_crit_edge ]
  %and.i24 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %if.end9.if.end.i_crit_edge, label %if.then.i26

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i26:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void @__f_unlock_pos(ptr noundef nonnull %0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i26, %if.end9.if.end.i_crit_edge
  %and.i.i27 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i.i = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end10_crit_edge, label %if.then.i.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %0) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then.i.i, %if.end.i.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i37)
  %cmp11 = icmp sgt i32 %ret.0.i37, 0
  br i1 %cmp11, label %if.then12, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %15 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i28 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i28 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %conv.i41 = zext i32 %ret.0.i37 to i64
  %wchar.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 155, i32 1
  %19 = ptrtoint ptr %wchar.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wchar.i, align 8
  %add.i = add i64 %20, %conv.i41
  store i64 %add.i, ptr %wchar.i, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge, %entry.if.end14_crit_edge
  %ret.040 = phi i32 [ %ret.0.i37, %if.then12 ], [ %ret.0.i37, %if.end10.if.end14_crit_edge ], [ -9, %entry.if.end14_crit_edge ]
  %21 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i29 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i29 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task16, align 8
  %syscw.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 155, i32 3
  %25 = ptrtoint ptr %syscw.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %syscw.i, align 8
  %inc.i = add i64 %26, 1
  store i64 %inc.i, ptr %syscw.i, align 8
  ret i32 %ret.040
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_preadv(i32 noundef %fd, ptr noundef %vec, i32 noundef %vlen, i64 noundef %pos, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %iovstack.i = alloca [8 x %struct.iovec], align 4
  %iov.i = alloca ptr, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos)
  %cmp = icmp slt i64 %pos, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #12, !noalias !368
  %and.i.i = and i32 %call.i, -4
  %1 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then1

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then1:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then1.if.end6_crit_edge, label %if.then4

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.then1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack.i) #12
  %4 = call ptr @memset(ptr %iovstack.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov.i) #12
  %5 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iovstack.i, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #12
  %6 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %call.i19 = call i32 @import_iovec(i32 noundef 0, ptr noundef %vec, i32 noundef %vlen, i32 noundef 8, ptr noundef nonnull %iov.i, ptr noundef nonnull %iter.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i19)
  %cmp.i = icmp sgt i32 %call.i19, -1
  br i1 %cmp.i, label %if.then.i, label %if.then4.vfs_readv.exit_crit_edge

if.then4.vfs_readv.exit_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfs_readv.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @do_iter_read(ptr noundef nonnull %1, ptr noundef nonnull %iter.i, ptr noundef nonnull %pos.addr, i32 noundef %flags) #12
  %7 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iov.i, align 4
  call void @kfree(ptr noundef %8) #12
  br label %vfs_readv.exit

vfs_readv.exit:                                   ; preds = %if.then.i, %if.then4.vfs_readv.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i19, %if.then4.vfs_readv.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack.i) #12
  br label %if.end6

if.end6:                                          ; preds = %vfs_readv.exit, %if.then1.if.end6_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %vfs_readv.exit ], [ -29, %if.then1.if.end6_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.if.end7_crit_edge, label %if.then.i20

if.end6.if.end7_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then.i20:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %1) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then.i20, %if.end6.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp8 = icmp sgt i32 %ret.0, 0
  br i1 %cmp8, label %if.then9, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %9 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i21 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i21 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %conv.i26 = zext i32 %ret.0 to i64
  %ioac.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 155
  %13 = ptrtoint ptr %ioac.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ioac.i, align 8
  %add.i = add i64 %14, %conv.i26
  store i64 %add.i, ptr %ioac.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ret.125 = phi i32 [ %ret.0, %if.then9 ], [ %ret.0, %if.end7.if.end11_crit_edge ], [ -9, %if.end.if.end11_crit_edge ]
  %15 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i22 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i22 to ptr
  %task13 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task13, align 8
  %syscr.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 155, i32 2
  %19 = ptrtoint ptr %syscr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %syscr.i, align 8
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %syscr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.125, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_pwritev(i32 noundef %fd, ptr noundef %vec, i32 noundef %vlen, i64 noundef %pos, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %iovstack.i = alloca [8 x %struct.iovec], align 4
  %iov.i = alloca ptr, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos)
  %cmp = icmp slt i64 %pos, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #12, !noalias !371
  %and.i.i = and i32 %call.i, -4
  %1 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then1

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then1:                                         ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then1.if.end6_crit_edge, label %if.then4

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.then1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack.i) #12
  %4 = call ptr @memset(ptr %iovstack.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov.i) #12
  %5 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iovstack.i, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #12
  %6 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %call.i19 = call i32 @import_iovec(i32 noundef 1, ptr noundef %vec, i32 noundef %vlen, i32 noundef 8, ptr noundef nonnull %iov.i, ptr noundef nonnull %iter.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i19)
  %cmp.i = icmp sgt i32 %call.i19, -1
  br i1 %cmp.i, label %if.then.i, label %if.then4.vfs_writev.exit_crit_edge

if.then4.vfs_writev.exit_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfs_writev.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @file_start_write(ptr noundef nonnull %1) #12
  %call1.i = call fastcc i32 @do_iter_write(ptr noundef nonnull %1, ptr noundef nonnull %iter.i, ptr noundef nonnull %pos.addr, i32 noundef %flags) #12
  call fastcc void @file_end_write(ptr noundef nonnull %1) #12
  %7 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iov.i, align 4
  call void @kfree(ptr noundef %8) #12
  br label %vfs_writev.exit

vfs_writev.exit:                                  ; preds = %if.then.i, %if.then4.vfs_writev.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i19, %if.then4.vfs_writev.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack.i) #12
  br label %if.end6

if.end6:                                          ; preds = %vfs_writev.exit, %if.then1.if.end6_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %vfs_writev.exit ], [ -29, %if.then1.if.end6_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.if.end7_crit_edge, label %if.then.i20

if.end6.if.end7_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then.i20:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %1) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then.i20, %if.end6.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp8 = icmp sgt i32 %ret.0, 0
  br i1 %cmp8, label %if.then9, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %9 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i21 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i21 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %conv.i26 = zext i32 %ret.0 to i64
  %wchar.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 155, i32 1
  %13 = ptrtoint ptr %wchar.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %wchar.i, align 8
  %add.i = add i64 %14, %conv.i26
  store i64 %add.i, ptr %wchar.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ret.125 = phi i32 [ %ret.0, %if.then9 ], [ %ret.0, %if.end7.if.end11_crit_edge ], [ -9, %if.end.if.end11_crit_edge ]
  %15 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i22 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i22 to ptr
  %task13 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task13, align 8
  %syscw.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 155, i32 3
  %19 = ptrtoint ptr %syscw.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %syscw.i, align 8
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %syscw.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.125, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_sendfile(i32 noundef %out_fd, i32 noundef %in_fd, ptr noundef %ppos, i32 noundef %count, i64 noundef %max) unnamed_addr #0 align 64 {
entry:
  %pos = alloca i64, align 8
  %out_pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %pos, align 8, !annotation !312
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #12
  %1 = ptrtoint ptr %out_pos to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %out_pos, align 8, !annotation !312
  %call.i = tail call i32 @__fdget(i32 noundef %in_fd) #12, !noalias !374
  %and.i.i = and i32 %call.i, -4
  %2 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.out101_crit_edge, label %if.end

entry.out101_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out101

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.fput_in_crit_edge, label %if.end5

if.end.fput_in_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_in

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %ppos, null
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %f_pos = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 10
  %5 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %f_pos, align 8
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %pos, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %pos, align 8
  %and11 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else.fput_in_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.else.fput_in_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_in

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp slt i32 %count, 0
  br i1 %cmp.i, label %if.end15.fput_in_crit_edge, label %if.end.i, !prof !300

if.end15.fput_in_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_in

if.end.i:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp4.i = icmp slt i64 %12, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.else.i, !prof !300

if.then11.i:                                      ; preds = %if.end.i
  %13 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_mode, align 8
  %and.i.i146 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i146)
  %tobool.i.not.i = icmp eq i32 %and.i.i146, 0
  br i1 %tobool.i.not.i, label %if.then11.i.fput_in_crit_edge, label %if.end13.i

if.then11.i.fput_in_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_in

if.end13.i:                                       ; preds = %if.then11.i
  %conv.i = zext i32 %count to i64
  %sub.i = sub i64 0, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %sub.i)
  %cmp14.not.i = icmp slt i64 %conv.i, %sub.i
  br i1 %cmp14.not.i, label %if.end13.i.rw_verify_area.exit_crit_edge, label %if.end13.i.fput_in_crit_edge

if.end13.i.fput_in_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_in

if.end13.i.rw_verify_area.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.else.i:                                        ; preds = %if.end.i
  %conv18.i = zext i32 %count to i64
  %add.i = add nuw i64 %12, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp19.i = icmp slt i64 %add.i, 0
  br i1 %cmp19.i, label %if.then27.i, label %if.else.i.rw_verify_area.exit_crit_edge, !prof !300

if.else.i.rw_verify_area.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i:                                      ; preds = %if.else.i
  %15 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_mode, align 8
  %and.i45.i = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.i46.not.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.i46.not.i, label %if.then27.i.fput_in_crit_edge, label %if.then27.i.rw_verify_area.exit_crit_edge

if.then27.i.rw_verify_area.exit_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rw_verify_area.exit

if.then27.i.fput_in_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_in

rw_verify_area.exit:                              ; preds = %if.then27.i.rw_verify_area.exit_crit_edge, %if.else.i.rw_verify_area.exit_crit_edge, %if.end13.i.rw_verify_area.exit_crit_edge
  %call36.i = tail call i32 @security_file_permission(ptr noundef nonnull %2, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp = icmp slt i32 %call36.i, 0
  br i1 %cmp, label %rw_verify_area.exit.fput_in_crit_edge, label %if.end18

rw_verify_area.exit.fput_in_crit_edge:            ; preds = %rw_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_in

if.end18:                                         ; preds = %rw_verify_area.exit
  %17 = tail call i32 @llvm.umin.i32(i32 %count, i32 2147479552)
  %call.i147 = tail call i32 @__fdget(i32 noundef %out_fd) #12, !noalias !377
  %and.i.i148 = and i32 %call.i147, -4
  %18 = inttoptr i32 %and.i.i148 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i148)
  %tobool24.not = icmp eq i32 %and.i.i148, 0
  br i1 %tobool24.not, label %if.end18.fput_in_crit_edge, label %if.end26

if.end18.fput_in_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_in

if.end26:                                         ; preds = %if.end18
  %f_mode28 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %f_mode28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_mode28, align 8
  %and29 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end26.fput_out_crit_edge, label %if.end32

if.end26.fput_out_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_out

if.end32:                                         ; preds = %if.end26
  %f_inode.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %21 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_inode.i, align 8
  %f_inode.i151 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %f_inode.i151 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_inode.i151, align 8
  %f_pos38 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 10
  %25 = ptrtoint ptr %f_pos38 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %f_pos38, align 8
  %27 = ptrtoint ptr %out_pos to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %out_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max)
  %tobool39.not = icmp eq i64 %max, 0
  br i1 %tobool39.not, label %if.then40, label %if.end32.if.end45_crit_edge

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %s_maxbytes, align 8
  %i_sb41 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb41, align 4
  %s_maxbytes42 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %s_maxbytes42 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %s_maxbytes42, align 8
  %36 = tail call i64 @llvm.smin.i64(i64 %31, i64 %35)
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end32.if.end45_crit_edge
  %max.addr.0 = phi i64 [ %max, %if.end32.if.end45_crit_edge ], [ %36, %if.then40 ]
  %37 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %pos, align 8
  %conv = zext i32 %17 to i64
  %add = add i64 %38, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %max.addr.0)
  %cmp46 = icmp sgt i64 %add, %max.addr.0
  br i1 %cmp46, label %if.then50, label %if.end45.if.end56_crit_edge, !prof !300

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_cmp8(i64 %max.addr.0, i64 %38)
  %cmp51.not = icmp sgt i64 %max.addr.0, %38
  br i1 %cmp51.not, label %if.end54, label %if.then50.fput_out_crit_edge

if.then50.fput_out_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_out

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i64 %max.addr.0, %38
  %conv55 = trunc i64 %sub to i32
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %if.end45.if.end56_crit_edge
  %count.addr.0 = phi i32 [ %conv55, %if.end54 ], [ %17, %if.end45.if.end56_crit_edge ]
  %call58 = tail call ptr @get_pipe_info(ptr noundef nonnull %18, i1 noundef zeroext true) #12
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then60, label %if.else72

if.then60:                                        ; preds = %if.end56
  %call62 = call i32 @rw_verify_area(i32 noundef 1, ptr noundef nonnull %18, ptr noundef nonnull %out_pos, i32 noundef %count.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then60.fput_out_crit_edge, label %if.end66

if.then60.fput_out_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_out

if.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @file_start_write(ptr noundef nonnull %18)
  %call70 = call i32 @do_splice_direct(ptr noundef nonnull %2, ptr noundef nonnull %pos, ptr noundef nonnull %18, ptr noundef nonnull %out_pos, i32 noundef %count.addr.0, i32 noundef 0) #12
  call fastcc void @file_end_write(ptr noundef nonnull %18)
  br label %if.end75

if.else72:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %call74 = call i32 @splice_file_to_pipe(ptr noundef nonnull %2, ptr noundef nonnull %call58, ptr noundef nonnull %pos, i32 noundef %count.addr.0, i32 noundef 0) #12
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.end66
  %retval1.0 = phi i32 [ %call74, %if.else72 ], [ %call70, %if.end66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp76 = icmp sgt i32 %retval1.0, 0
  br i1 %cmp76, label %if.then78, label %if.end75.if.end92_crit_edge

if.end75.if.end92_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then78:                                        ; preds = %if.end75
  %39 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %conv.i152194 = zext i32 %retval1.0 to i64
  %ioac.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 155
  %43 = ptrtoint ptr %ioac.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ioac.i, align 8
  %add.i153 = add i64 %44, %conv.i152194
  store i64 %add.i153, ptr %ioac.i, align 8
  %45 = load ptr, ptr %task, align 8
  %wchar.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 155, i32 1
  %46 = ptrtoint ptr %wchar.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %wchar.i, align 8
  %add.i155 = add i64 %47, %conv.i152194
  store i64 %add.i155, ptr %wchar.i, align 8
  %48 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %f_mode, align 8
  %and.i.i157 = and i32 %49, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i157)
  %tobool.not.i.i = icmp eq i32 %and.i.i157, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then78.fsnotify_access.exit_crit_edge

if.then78.fsnotify_access.exit_crit_edge:         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i:                                       ; preds = %if.then78
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %56 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.fsnotify_access.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.fsnotify_access.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_access.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %53, align 8
  %60 = and i16 %59, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %60)
  %cmp2.i.i.i = icmp eq i16 %60, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %61 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %51, align 8
  %and5.i.i.i = and i32 %62, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741825, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 3
  %63 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %64, %51
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i = call i32 @__fsnotify_parent(ptr noundef %51, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #12
  br label %fsnotify_access.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741825, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %53, i32 noundef 0) #12
  br label %fsnotify_access.exit

fsnotify_access.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.fsnotify_access.exit_crit_edge, %if.then78.fsnotify_access.exit_crit_edge
  %65 = ptrtoint ptr %f_mode28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %f_mode28, align 8
  %and.i.i159 = and i32 %66, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i159)
  %tobool.not.i.i160 = icmp eq i32 %and.i.i159, 0
  br i1 %tobool.not.i.i160, label %if.end.i.i168, label %fsnotify_access.exit.fsnotify_modify.exit_crit_edge

fsnotify_access.exit.fsnotify_modify.exit_crit_edge: ; preds = %fsnotify_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i168:                                    ; preds = %fsnotify_access.exit
  %f_path.i.i161 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 1
  %dentry.i.i162 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %dentry.i.i162 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dentry.i.i162, align 4
  %d_inode.i.i.i.i163 = getelementptr inbounds %struct.dentry, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %d_inode.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %d_inode.i.i.i.i163, align 8
  %i_sb.i.i.i164 = getelementptr inbounds %struct.inode, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %i_sb.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb.i.i.i164, align 4
  %s_fsnotify_connectors.i.i.i165 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 48
  %call.i.i.i.i.i166 = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i165, i32 noundef 4) #12
  %73 = ptrtoint ptr %s_fsnotify_connectors.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i.i.i167 = icmp eq i32 %74, 0
  br i1 %cmp.i.i.i167, label %if.end.i.i168.fsnotify_modify.exit_crit_edge, label %if.end.i.i.i170

if.end.i.i168.fsnotify_modify.exit_crit_edge:     ; preds = %if.end.i.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_modify.exit

if.end.i.i.i170:                                  ; preds = %if.end.i.i168
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %70, align 8
  %77 = and i16 %76, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %77)
  %cmp2.i.i.i169 = icmp eq i16 %77, 16384
  br i1 %cmp2.i.i.i169, label %if.then4.i.i.i173, label %if.end.i.i.i170.if.end8.i.i.i177_crit_edge

if.end.i.i.i170.if.end8.i.i.i177_crit_edge:       ; preds = %if.end.i.i.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i177

if.then4.i.i.i173:                                ; preds = %if.end.i.i.i170
  %78 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %68, align 8
  %and5.i.i.i171 = and i32 %79, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i171)
  %tobool.not.i.i.i172 = icmp eq i32 %and5.i.i.i171, 0
  br i1 %tobool.not.i.i.i172, label %if.then4.i.i.i173.notify_child.i.i.i182_crit_edge, label %if.then4.i.i.i173.if.end8.i.i.i177_crit_edge

if.then4.i.i.i173.if.end8.i.i.i177_crit_edge:     ; preds = %if.then4.i.i.i173
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i177

if.then4.i.i.i173.notify_child.i.i.i182_crit_edge: ; preds = %if.then4.i.i.i173
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i182

if.end8.i.i.i177:                                 ; preds = %if.then4.i.i.i173.if.end8.i.i.i177_crit_edge, %if.end.i.i.i170.if.end8.i.i.i177_crit_edge
  %mask.addr.0.i.i.i174 = phi i32 [ 1073741826, %if.then4.i.i.i173.if.end8.i.i.i177_crit_edge ], [ 2, %if.end.i.i.i170.if.end8.i.i.i177_crit_edge ]
  %d_parent.i.i.i175 = getelementptr inbounds %struct.dentry, ptr %68, i32 0, i32 3
  %80 = ptrtoint ptr %d_parent.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d_parent.i.i.i175, align 8
  %cmp9.i.i.i176 = icmp eq ptr %81, %68
  br i1 %cmp9.i.i.i176, label %if.end8.i.i.i177.notify_child.i.i.i182_crit_edge, label %if.end12.i.i.i179

if.end8.i.i.i177.notify_child.i.i.i182_crit_edge: ; preds = %if.end8.i.i.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %notify_child.i.i.i182

if.end12.i.i.i179:                                ; preds = %if.end8.i.i.i177
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i.i178 = call i32 @__fsnotify_parent(ptr noundef %68, i32 noundef %mask.addr.0.i.i.i174, ptr noundef %f_path.i.i161, i32 noundef 1) #12
  br label %fsnotify_modify.exit

notify_child.i.i.i182:                            ; preds = %if.end8.i.i.i177.notify_child.i.i.i182_crit_edge, %if.then4.i.i.i173.notify_child.i.i.i182_crit_edge
  %mask.addr.1.i.i.i180 = phi i32 [ %mask.addr.0.i.i.i174, %if.end8.i.i.i177.notify_child.i.i.i182_crit_edge ], [ 1073741826, %if.then4.i.i.i173.notify_child.i.i.i182_crit_edge ]
  %call14.i.i.i181 = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i180, ptr noundef %f_path.i.i161, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %70, i32 noundef 0) #12
  br label %fsnotify_modify.exit

fsnotify_modify.exit:                             ; preds = %notify_child.i.i.i182, %if.end12.i.i.i179, %if.end.i.i168.fsnotify_modify.exit_crit_edge, %fsnotify_access.exit.fsnotify_modify.exit_crit_edge
  %82 = ptrtoint ptr %out_pos to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %out_pos, align 8
  %84 = ptrtoint ptr %f_pos38 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %f_pos38, align 8
  %85 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %pos, align 8
  %f_pos90 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 10
  %ppos.sink = select i1 %tobool6.not, ptr %f_pos90, ptr %ppos
  %87 = ptrtoint ptr %ppos.sink to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %ppos.sink, align 8
  br label %if.end92

if.end92:                                         ; preds = %fsnotify_modify.exit, %if.end75.if.end92_crit_edge
  %88 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i183 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i183 to ptr
  %task94 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task94 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task94, align 8
  %syscr.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 155, i32 2
  %92 = ptrtoint ptr %syscr.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %syscr.i, align 8
  %inc.i = add i64 %93, 1
  store i64 %inc.i, ptr %syscr.i, align 8
  %94 = load ptr, ptr %task94, align 8
  %syscw.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 155, i32 3
  %95 = ptrtoint ptr %syscw.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %syscw.i, align 8
  %inc.i184 = add i64 %96, 1
  store i64 %inc.i184, ptr %syscw.i, align 8
  %97 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %max.addr.0)
  %cmp97 = icmp sgt i64 %98, %max.addr.0
  %spec.select = select i1 %cmp97, i32 -75, i32 %retval1.0
  br label %fput_out

fput_out:                                         ; preds = %if.end92, %if.then60.fput_out_crit_edge, %if.then50.fput_out_crit_edge, %if.end26.fput_out_crit_edge
  %retval1.1 = phi i32 [ -75, %if.then50.fput_out_crit_edge ], [ %call62, %if.then60.fput_out_crit_edge ], [ -9, %if.end26.fput_out_crit_edge ], [ %spec.select, %if.end92 ]
  %and.i185 = and i32 %call.i147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185)
  %tobool.not.i = icmp eq i32 %and.i185, 0
  br i1 %tobool.not.i, label %fput_out.fput_in_crit_edge, label %if.then.i

fput_out.fput_in_crit_edge:                       ; preds = %fput_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %fput_in

if.then.i:                                        ; preds = %fput_out
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %18) #12
  br label %fput_in

fput_in:                                          ; preds = %if.then.i, %fput_out.fput_in_crit_edge, %if.end18.fput_in_crit_edge, %rw_verify_area.exit.fput_in_crit_edge, %if.then27.i.fput_in_crit_edge, %if.end13.i.fput_in_crit_edge, %if.then11.i.fput_in_crit_edge, %if.end15.fput_in_crit_edge, %if.else.fput_in_crit_edge, %if.end.fput_in_crit_edge
  %retval1.2 = phi i32 [ %call36.i, %rw_verify_area.exit.fput_in_crit_edge ], [ -9, %if.end18.fput_in_crit_edge ], [ -29, %if.else.fput_in_crit_edge ], [ -9, %if.end.fput_in_crit_edge ], [ %retval1.1, %fput_out.fput_in_crit_edge ], [ %retval1.1, %if.then.i ], [ -22, %if.then11.i.fput_in_crit_edge ], [ -75, %if.end13.i.fput_in_crit_edge ], [ -22, %if.then27.i.fput_in_crit_edge ], [ -22, %if.end15.fput_in_crit_edge ]
  %and.i187 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool.not.i188 = icmp eq i32 %and.i187, 0
  br i1 %tobool.not.i188, label %fput_in.out101_crit_edge, label %if.then.i189

fput_in.out101_crit_edge:                         ; preds = %fput_in
  call void @__sanitizer_cov_trace_pc() #14
  br label %out101

if.then.i189:                                     ; preds = %fput_in
  call void @__sanitizer_cov_trace_pc() #14
  call void @fput(ptr noundef nonnull %2) #12
  br label %out101

out101:                                           ; preds = %if.then.i189, %fput_in.out101_crit_edge, %entry.out101_crit_edge
  %retval1.3 = phi i32 [ -9, %entry.out101_crit_edge ], [ %retval1.2, %fput_in.out101_crit_edge ], [ %retval1.2, %if.then.i189 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  ret i32 %retval1.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pipe_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_file_to_pipe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96, !97, !98, !99, !101, !103, !105, !107, !109, !110, !111, !112, !113, !114, !115, !116, !117, !119, !120, !121, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !134, !135, !136, !137, !139, !140, !141, !142, !143, !144, !145, !146, !147, !149, !150, !151, !152, !153, !154, !155, !156, !157, !159, !160, !161, !162, !163, !164, !165, !166, !167, !169, !170, !171, !172, !173, !174, !175, !176, !177, !179, !180, !181, !182, !183, !184, !185, !186, !187, !189, !191, !193, !195, !196, !197, !198, !199, !200, !201, !202, !203, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !221, !222, !224, !226, !228, !229, !230, !231, !232, !233, !235, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!llvm.named.register.sp = !{!288}
!llvm.module.flags = !{!289, !290, !291, !292, !293, !294, !295, !296}
!llvm.ident = !{!297}

!0 = !{ptr @generic_ro_fops, !1, !"generic_ro_fops", i1 false, i1 false}
!1 = !{!"../fs/read_write.c", i32 28, i32 30}
!2 = !{ptr @__ksymtab_generic_ro_fops, !3, !"__ksymtab_generic_ro_fops", i1 false, i1 false}
!3 = !{!"../fs/read_write.c", i32 35, i32 1}
!4 = !{ptr @__ksymtab_vfs_setpos, !5, !"__ksymtab_vfs_setpos", i1 false, i1 false}
!5 = !{!"../fs/read_write.c", i32 67, i32 1}
!6 = !{ptr @__ksymtab_generic_file_llseek_size, !7, !"__ksymtab_generic_file_llseek_size", i1 false, i1 false}
!7 = !{!"../fs/read_write.c", i32 132, i32 1}
!8 = !{ptr @__ksymtab_generic_file_llseek, !9, !"__ksymtab_generic_file_llseek", i1 false, i1 false}
!9 = !{!"../fs/read_write.c", i32 152, i32 1}
!10 = !{ptr @__ksymtab_fixed_size_llseek, !11, !"__ksymtab_fixed_size_llseek", i1 false, i1 false}
!11 = !{!"../fs/read_write.c", i32 172, i32 1}
!12 = !{ptr @__ksymtab_no_seek_end_llseek, !13, !"__ksymtab_no_seek_end_llseek", i1 false, i1 false}
!13 = !{!"../fs/read_write.c", i32 191, i32 1}
!14 = !{ptr @__ksymtab_no_seek_end_llseek_size, !15, !"__ksymtab_no_seek_end_llseek_size", i1 false, i1 false}
!15 = !{!"../fs/read_write.c", i32 211, i32 1}
!16 = !{ptr @__ksymtab_noop_llseek, !17, !"__ksymtab_noop_llseek", i1 false, i1 false}
!17 = !{!"../fs/read_write.c", i32 228, i32 1}
!18 = !{ptr @__ksymtab_no_llseek, !19, !"__ksymtab_no_llseek", i1 false, i1 false}
!19 = !{!"../fs/read_write.c", i32 234, i32 1}
!20 = !{ptr @__ksymtab_default_llseek, !21, !"__ksymtab_default_llseek", i1 false, i1 false}
!21 = !{!"../fs/read_write.c", i32 289, i32 1}
!22 = !{ptr @__ksymtab_vfs_llseek, !23, !"__ksymtab_vfs_llseek", i1 false, i1 false}
!23 = !{!"../fs/read_write.c", i32 302, i32 1}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/read_write.c", i32 322, i32 1}
!26 = !{ptr @event_enter__lseek, !25, !"event_enter__lseek", i1 false, i1 false}
!27 = !{ptr @__event_enter__lseek, !25, !"__event_enter__lseek", i1 false, i1 false}
!28 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @event_exit__lseek, !25, !"event_exit__lseek", i1 false, i1 false}
!30 = !{ptr @__event_exit__lseek, !25, !"__event_exit__lseek", i1 false, i1 false}
!31 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__syscall_meta__lseek, !25, !"__syscall_meta__lseek", i1 false, i1 false}
!33 = !{ptr @__p_syscall_meta__lseek, !25, !"__p_syscall_meta__lseek", i1 false, i1 false}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/read_write.c", i32 336, i32 1}
!36 = !{ptr @event_enter__llseek, !35, !"event_enter__llseek", i1 false, i1 false}
!37 = !{ptr @__event_enter__llseek, !35, !"__event_enter__llseek", i1 false, i1 false}
!38 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @event_exit__llseek, !35, !"event_exit__llseek", i1 false, i1 false}
!40 = !{ptr @__event_exit__llseek, !35, !"__event_exit__llseek", i1 false, i1 false}
!41 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__syscall_meta__llseek, !35, !"__syscall_meta__llseek", i1 false, i1 false}
!43 = !{ptr @__p_syscall_meta__llseek, !35, !"__p_syscall_meta__llseek", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/read_write.c", i32 425, i32 6}
!46 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/read_write.c", i32 434, i32 33}
!49 = !{ptr @__ksymtab_kernel_read, !50, !"__ksymtab_kernel_read", i1 false, i1 false}
!50 = !{!"../fs/read_write.c", i32 459, i32 1}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/read_write.c", i32 521, i32 6}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/read_write.c", i32 530, i32 33}
!55 = !{ptr @__ksymtab___kernel_write, !56, !"__ksymtab___kernel_write", i1 false, i1 false}
!56 = !{!"../fs/read_write.c", i32 552, i32 1}
!57 = !{ptr @__ksymtab_kernel_write, !58, !"__ksymtab_kernel_write", i1 false, i1 false}
!58 = !{!"../fs/read_write.c", i32 568, i32 1}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/read_write.c", i32 627, i32 1}
!61 = !{ptr @event_enter__read, !60, !"event_enter__read", i1 false, i1 false}
!62 = !{ptr @__event_enter__read, !60, !"__event_enter__read", i1 false, i1 false}
!63 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @event_exit__read, !60, !"event_exit__read", i1 false, i1 false}
!65 = !{ptr @__event_exit__read, !60, !"__event_exit__read", i1 false, i1 false}
!66 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__syscall_meta__read, !60, !"__syscall_meta__read", i1 false, i1 false}
!68 = !{ptr @__p_syscall_meta__read, !60, !"__p_syscall_meta__read", i1 false, i1 false}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/read_write.c", i32 652, i32 1}
!71 = !{ptr @event_enter__write, !70, !"event_enter__write", i1 false, i1 false}
!72 = !{ptr @__event_enter__write, !70, !"__event_enter__write", i1 false, i1 false}
!73 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @event_exit__write, !70, !"event_exit__write", i1 false, i1 false}
!75 = !{ptr @__event_exit__write, !70, !"__event_exit__write", i1 false, i1 false}
!76 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__syscall_meta__write, !70, !"__syscall_meta__write", i1 false, i1 false}
!78 = !{ptr @__p_syscall_meta__write, !70, !"__p_syscall_meta__write", i1 false, i1 false}
!79 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/read_write.c", i32 678, i32 1}
!81 = !{ptr @event_enter__pread64, !80, !"event_enter__pread64", i1 false, i1 false}
!82 = !{ptr @__event_enter__pread64, !80, !"__event_enter__pread64", i1 false, i1 false}
!83 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @event_exit__pread64, !80, !"event_exit__pread64", i1 false, i1 false}
!85 = !{ptr @__event_exit__pread64, !80, !"__event_exit__pread64", i1 false, i1 false}
!86 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @__syscall_meta__pread64, !80, !"__syscall_meta__pread64", i1 false, i1 false}
!88 = !{ptr @__p_syscall_meta__pread64, !80, !"__p_syscall_meta__pread64", i1 false, i1 false}
!89 = !{ptr @.str.18, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/read_write.c", i32 704, i32 1}
!91 = !{ptr @event_enter__pwrite64, !90, !"event_enter__pwrite64", i1 false, i1 false}
!92 = !{ptr @__event_enter__pwrite64, !90, !"__event_enter__pwrite64", i1 false, i1 false}
!93 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @event_exit__pwrite64, !90, !"event_exit__pwrite64", i1 false, i1 false}
!95 = !{ptr @__event_exit__pwrite64, !90, !"__event_exit__pwrite64", i1 false, i1 false}
!96 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @__syscall_meta__pwrite64, !90, !"__syscall_meta__pwrite64", i1 false, i1 false}
!98 = !{ptr @__p_syscall_meta__pwrite64, !90, !"__p_syscall_meta__pwrite64", i1 false, i1 false}
!99 = !{ptr @__ksymtab_vfs_iocb_iter_read, !100, !"__ksymtab_vfs_iocb_iter_read", i1 false, i1 false}
!100 = !{!"../fs/read_write.c", i32 821, i32 1}
!101 = !{ptr @__ksymtab_vfs_iter_read, !102, !"__ksymtab_vfs_iter_read", i1 false, i1 false}
!102 = !{!"../fs/read_write.c", i32 830, i32 1}
!103 = !{ptr @__ksymtab_vfs_iocb_iter_write, !104, !"__ksymtab_vfs_iocb_iter_write", i1 false, i1 false}
!104 = !{!"../fs/read_write.c", i32 885, i32 1}
!105 = !{ptr @__ksymtab_vfs_iter_write, !106, !"__ksymtab_vfs_iter_write", i1 false, i1 false}
!106 = !{!"../fs/read_write.c", i32 894, i32 1}
!107 = !{ptr @.str.21, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/read_write.c", i32 1031, i32 1}
!109 = !{ptr @event_enter__readv, !108, !"event_enter__readv", i1 false, i1 false}
!110 = !{ptr @__event_enter__readv, !108, !"__event_enter__readv", i1 false, i1 false}
!111 = !{ptr @.str.22, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @event_exit__readv, !108, !"event_exit__readv", i1 false, i1 false}
!113 = !{ptr @__event_exit__readv, !108, !"__event_exit__readv", i1 false, i1 false}
!114 = !{ptr @.str.23, !108, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @__syscall_meta__readv, !108, !"__syscall_meta__readv", i1 false, i1 false}
!116 = !{ptr @__p_syscall_meta__readv, !108, !"__p_syscall_meta__readv", i1 false, i1 false}
!117 = !{ptr @.str.24, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/read_write.c", i32 1037, i32 1}
!119 = !{ptr @event_enter__writev, !118, !"event_enter__writev", i1 false, i1 false}
!120 = !{ptr @__event_enter__writev, !118, !"__event_enter__writev", i1 false, i1 false}
!121 = !{ptr @.str.25, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @event_exit__writev, !118, !"event_exit__writev", i1 false, i1 false}
!123 = !{ptr @__event_exit__writev, !118, !"__event_exit__writev", i1 false, i1 false}
!124 = !{ptr @.str.26, !118, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @__syscall_meta__writev, !118, !"__syscall_meta__writev", i1 false, i1 false}
!126 = !{ptr @__p_syscall_meta__writev, !118, !"__p_syscall_meta__writev", i1 false, i1 false}
!127 = !{ptr @.str.27, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/read_write.c", i32 1043, i32 1}
!129 = !{ptr @event_enter__preadv, !128, !"event_enter__preadv", i1 false, i1 false}
!130 = !{ptr @__event_enter__preadv, !128, !"__event_enter__preadv", i1 false, i1 false}
!131 = !{ptr @.str.28, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @event_exit__preadv, !128, !"event_exit__preadv", i1 false, i1 false}
!133 = !{ptr @__event_exit__preadv, !128, !"__event_exit__preadv", i1 false, i1 false}
!134 = !{ptr @.str.29, !128, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @__syscall_meta__preadv, !128, !"__syscall_meta__preadv", i1 false, i1 false}
!136 = !{ptr @__p_syscall_meta__preadv, !128, !"__p_syscall_meta__preadv", i1 false, i1 false}
!137 = !{ptr @.str.30, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/read_write.c", i32 1051, i32 1}
!139 = !{ptr @event_enter__preadv2, !138, !"event_enter__preadv2", i1 false, i1 false}
!140 = !{ptr @__event_enter__preadv2, !138, !"__event_enter__preadv2", i1 false, i1 false}
!141 = !{ptr @.str.31, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @event_exit__preadv2, !138, !"event_exit__preadv2", i1 false, i1 false}
!143 = !{ptr @__event_exit__preadv2, !138, !"__event_exit__preadv2", i1 false, i1 false}
!144 = !{ptr @.str.32, !138, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @__syscall_meta__preadv2, !138, !"__syscall_meta__preadv2", i1 false, i1 false}
!146 = !{ptr @__p_syscall_meta__preadv2, !138, !"__p_syscall_meta__preadv2", i1 false, i1 false}
!147 = !{ptr @.str.33, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/read_write.c", i32 1063, i32 1}
!149 = !{ptr @event_enter__pwritev, !148, !"event_enter__pwritev", i1 false, i1 false}
!150 = !{ptr @__event_enter__pwritev, !148, !"__event_enter__pwritev", i1 false, i1 false}
!151 = !{ptr @.str.34, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @event_exit__pwritev, !148, !"event_exit__pwritev", i1 false, i1 false}
!153 = !{ptr @__event_exit__pwritev, !148, !"__event_exit__pwritev", i1 false, i1 false}
!154 = !{ptr @.str.35, !148, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @__syscall_meta__pwritev, !148, !"__syscall_meta__pwritev", i1 false, i1 false}
!156 = !{ptr @__p_syscall_meta__pwritev, !148, !"__p_syscall_meta__pwritev", i1 false, i1 false}
!157 = !{ptr @.str.36, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/read_write.c", i32 1071, i32 1}
!159 = !{ptr @event_enter__pwritev2, !158, !"event_enter__pwritev2", i1 false, i1 false}
!160 = !{ptr @__event_enter__pwritev2, !158, !"__event_enter__pwritev2", i1 false, i1 false}
!161 = !{ptr @.str.37, !158, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @event_exit__pwritev2, !158, !"event_exit__pwritev2", i1 false, i1 false}
!163 = !{ptr @__event_exit__pwritev2, !158, !"__event_exit__pwritev2", i1 false, i1 false}
!164 = !{ptr @.str.38, !158, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @__syscall_meta__pwritev2, !158, !"__syscall_meta__pwritev2", i1 false, i1 false}
!166 = !{ptr @__p_syscall_meta__pwritev2, !158, !"__p_syscall_meta__pwritev2", i1 false, i1 false}
!167 = !{ptr @.str.39, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/read_write.c", i32 1277, i32 1}
!169 = !{ptr @event_enter__sendfile, !168, !"event_enter__sendfile", i1 false, i1 false}
!170 = !{ptr @__event_enter__sendfile, !168, !"__event_enter__sendfile", i1 false, i1 false}
!171 = !{ptr @.str.40, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @event_exit__sendfile, !168, !"event_exit__sendfile", i1 false, i1 false}
!173 = !{ptr @__event_exit__sendfile, !168, !"__event_exit__sendfile", i1 false, i1 false}
!174 = !{ptr @.str.41, !168, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @__syscall_meta__sendfile, !168, !"__syscall_meta__sendfile", i1 false, i1 false}
!176 = !{ptr @__p_syscall_meta__sendfile, !168, !"__p_syscall_meta__sendfile", i1 false, i1 false}
!177 = !{ptr @.str.42, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/read_write.c", i32 1296, i32 1}
!179 = !{ptr @event_enter__sendfile64, !178, !"event_enter__sendfile64", i1 false, i1 false}
!180 = !{ptr @__event_enter__sendfile64, !178, !"__event_enter__sendfile64", i1 false, i1 false}
!181 = !{ptr @.str.43, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @event_exit__sendfile64, !178, !"event_exit__sendfile64", i1 false, i1 false}
!183 = !{ptr @__event_exit__sendfile64, !178, !"__event_exit__sendfile64", i1 false, i1 false}
!184 = !{ptr @.str.44, !178, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @__syscall_meta__sendfile64, !178, !"__syscall_meta__sendfile64", i1 false, i1 false}
!186 = !{ptr @__p_syscall_meta__sendfile64, !178, !"__p_syscall_meta__sendfile64", i1 false, i1 false}
!187 = !{ptr @__ksymtab_generic_copy_file_range, !188, !"__ksymtab_generic_copy_file_range", i1 false, i1 false}
!188 = !{!"../fs/read_write.c", i32 1381, i32 1}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../fs/read_write.c", i32 1510, i32 2}
!191 = !{ptr @__ksymtab_vfs_copy_file_range, !192, !"__ksymtab_vfs_copy_file_range", i1 false, i1 false}
!192 = !{!"../fs/read_write.c", i32 1526, i32 1}
!193 = !{ptr @.str.45, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/read_write.c", i32 1528, i32 1}
!195 = !{ptr @event_enter__copy_file_range, !194, !"event_enter__copy_file_range", i1 false, i1 false}
!196 = !{ptr @__event_enter__copy_file_range, !194, !"__event_enter__copy_file_range", i1 false, i1 false}
!197 = !{ptr @.str.46, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @event_exit__copy_file_range, !194, !"event_exit__copy_file_range", i1 false, i1 false}
!199 = !{ptr @__event_exit__copy_file_range, !194, !"__event_exit__copy_file_range", i1 false, i1 false}
!200 = !{ptr @.str.47, !194, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @__syscall_meta__copy_file_range, !194, !"__syscall_meta__copy_file_range", i1 false, i1 false}
!202 = !{ptr @__p_syscall_meta__copy_file_range, !194, !"__p_syscall_meta__copy_file_range", i1 false, i1 false}
!203 = !{ptr @__ksymtab_generic_write_checks, !204, !"__ksymtab_generic_write_checks", i1 false, i1 false}
!204 = !{!"../fs/read_write.c", i32 1655, i32 1}
!205 = !{ptr @.str.48, !25, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.49, !25, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @types__lseek, !25, !"types__lseek", i1 false, i1 false}
!208 = !{ptr @.str.50, !25, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.51, !25, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.52, !25, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @args__lseek, !25, !"args__lseek", i1 false, i1 false}
!212 = !{ptr @.str.53, !35, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.54, !35, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @types__llseek, !35, !"types__llseek", i1 false, i1 false}
!215 = !{ptr @.str.55, !35, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.56, !35, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.57, !35, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @args__llseek, !35, !"args__llseek", i1 false, i1 false}
!219 = distinct !{null, !220, !"__already_done", i1 false, i1 false}
!220 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!221 = distinct !{null, !220, !"<string literal>", i1 false, i1 false}
!222 = distinct !{null, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!224 = !{ptr @.str.60, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!226 = !{ptr @.str.61, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/read_write.c", i32 409, i32 2}
!228 = !{ptr @warn_unsupported._rs, !227, !"_rs", i1 false, i1 false}
!229 = !{ptr @__func__.warn_unsupported, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.62, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @warn_unsupported._entry, !227, !"_entry", i1 false, i1 false}
!232 = !{ptr @warn_unsupported._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.63, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!235 = distinct !{null, !236, !"__warned", i1 false, i1 false}
!236 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!237 = !{ptr @.str.64, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.65, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.66, !60, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.67, !60, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @types__read, !60, !"types__read", i1 false, i1 false}
!242 = !{ptr @.str.68, !60, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.69, !60, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @args__read, !60, !"args__read", i1 false, i1 false}
!245 = !{ptr @.str.70, !70, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @types__write, !70, !"types__write", i1 false, i1 false}
!247 = !{ptr @args__write, !70, !"args__write", i1 false, i1 false}
!248 = !{ptr @.str.71, !80, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @types__pread64, !80, !"types__pread64", i1 false, i1 false}
!250 = !{ptr @.str.72, !80, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @args__pread64, !80, !"args__pread64", i1 false, i1 false}
!252 = !{ptr @types__pwrite64, !90, !"types__pwrite64", i1 false, i1 false}
!253 = !{ptr @args__pwrite64, !90, !"args__pwrite64", i1 false, i1 false}
!254 = !{ptr @.str.73, !108, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @types__readv, !108, !"types__readv", i1 false, i1 false}
!256 = !{ptr @.str.74, !108, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.75, !108, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @args__readv, !108, !"args__readv", i1 false, i1 false}
!259 = !{ptr @types__writev, !118, !"types__writev", i1 false, i1 false}
!260 = !{ptr @args__writev, !118, !"args__writev", i1 false, i1 false}
!261 = !{ptr @types__preadv, !128, !"types__preadv", i1 false, i1 false}
!262 = !{ptr @.str.76, !128, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.77, !128, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @args__preadv, !128, !"args__preadv", i1 false, i1 false}
!265 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @types__preadv2, !138, !"types__preadv2", i1 false, i1 false}
!267 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @args__preadv2, !138, !"args__preadv2", i1 false, i1 false}
!269 = !{ptr @types__pwritev, !148, !"types__pwritev", i1 false, i1 false}
!270 = !{ptr @args__pwritev, !148, !"args__pwritev", i1 false, i1 false}
!271 = !{ptr @types__pwritev2, !158, !"types__pwritev2", i1 false, i1 false}
!272 = !{ptr @args__pwritev2, !158, !"args__pwritev2", i1 false, i1 false}
!273 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @types__sendfile, !168, !"types__sendfile", i1 false, i1 false}
!276 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @args__sendfile, !168, !"args__sendfile", i1 false, i1 false}
!279 = !{ptr @types__sendfile64, !178, !"types__sendfile64", i1 false, i1 false}
!280 = !{ptr @args__sendfile64, !178, !"args__sendfile64", i1 false, i1 false}
!281 = !{ptr @types__copy_file_range, !194, !"types__copy_file_range", i1 false, i1 false}
!282 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @args__copy_file_range, !194, !"args__copy_file_range", i1 false, i1 false}
!288 = !{!"sp"}
!289 = !{i32 1, !"wchar_size", i32 2}
!290 = !{i32 1, !"min_enum_size", i32 4}
!291 = !{i32 8, !"branch-target-enforcement", i32 0}
!292 = !{i32 8, !"sign-return-address", i32 0}
!293 = !{i32 8, !"sign-return-address-all", i32 0}
!294 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!295 = !{i32 7, !"uwtable", i32 1}
!296 = !{i32 7, !"frame-pointer", i32 2}
!297 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!298 = !{i64 1023125, i64 1023186}
!299 = !{i64 1025857}
!300 = !{!"branch_weights", i32 1, i32 2000}
!301 = !{i64 1026142}
!302 = !{i64 2153015179}
!303 = !{i64 2153015021}
!304 = !{i64 2153015349}
!305 = !{i64 2149797844}
!306 = !{!307}
!307 = distinct !{!307, !308, !"fdget_pos: %agg.result"}
!308 = distinct !{!308, !"fdget_pos"}
!309 = !{!310}
!310 = distinct !{!310, !311, !"fdget_pos: %agg.result"}
!311 = distinct !{!311, !"fdget_pos"}
!312 = !{!"auto-init"}
!313 = !{i64 2152681447, i64 2152681472}
!314 = !{!"branch_weights", i32 2000, i32 1}
!315 = !{i64 2155451778, i64 2155451803}
!316 = !{i64 2155441717, i64 2155442197, i64 2155441754, i64 2155441810, i64 2155441844, i64 2155441868, i64 2155441909, i64 2155441930, i64 2155441958, i64 2155441992}
!317 = !{i64 2152851429}
!318 = !{i64 2152860279}
!319 = !{i64 2152870233}
!320 = !{i64 2152879728}
!321 = !{i64 2152889205}
!322 = !{i64 2155460993, i64 2155461018}
!323 = !{i64 2155452560, i64 2155453040, i64 2155452597, i64 2155452653, i64 2155452687, i64 2155452711, i64 2155452752, i64 2155452773, i64 2155452801, i64 2155452835}
!324 = !{!325}
!325 = distinct !{!325, !326, !"fdget_pos: %agg.result"}
!326 = distinct !{!326, !"fdget_pos"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"fdget_pos: %agg.result"}
!329 = distinct !{!329, !"fdget_pos"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"fdget: %agg.result"}
!332 = distinct !{!332, !"fdget"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"fdget: %agg.result"}
!335 = distinct !{!335, !"fdget"}
!336 = !{!337}
!337 = distinct !{!337, !338, !"fdget: %agg.result"}
!338 = distinct !{!338, !"fdget"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"fdget: %agg.result"}
!341 = distinct !{!341, !"fdget"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"iov_iter_iovec: %agg.result"}
!344 = distinct !{!344, !"iov_iter_iovec"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"iov_iter_iovec: %agg.result"}
!347 = distinct !{!347, !"iov_iter_iovec"}
!348 = !{i64 5176321}
!349 = !{i64 5176518}
!350 = !{i64 2152661751}
!351 = !{i64 2155701196, i64 2155701506, i64 2155701820, i64 2155702134}
!352 = !{i64 2155717174, i64 2155717484, i64 2155717798, i64 2155718112}
!353 = !{i64 2152680766, i64 2152680791}
!354 = !{i64 2155749795, i64 2155750105, i64 2155750419, i64 2155750733}
!355 = !{!356}
!356 = distinct !{!356, !357, !"fdget: %agg.result"}
!357 = distinct !{!357, !"fdget"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"fdget: %agg.result"}
!360 = distinct !{!360, !"fdget"}
!361 = !{i64 2155524731, i64 2155525211, i64 2155524768, i64 2155524824, i64 2155524858, i64 2155524882, i64 2155524923, i64 2155524944, i64 2155524972, i64 2155525006}
!362 = !{!363}
!363 = distinct !{!363, !364, !"fdget_pos: %agg.result"}
!364 = distinct !{!364, !"fdget_pos"}
!365 = !{!366}
!366 = distinct !{!366, !367, !"fdget_pos: %agg.result"}
!367 = distinct !{!367, !"fdget_pos"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"fdget: %agg.result"}
!370 = distinct !{!370, !"fdget"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"fdget: %agg.result"}
!373 = distinct !{!373, !"fdget"}
!374 = !{!375}
!375 = distinct !{!375, !376, !"fdget: %agg.result"}
!376 = distinct !{!376, !"fdget"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"fdget: %agg.result"}
!379 = distinct !{!379, !"fdget"}
