; ModuleID = '/llk/IR_all_yes/init/initramfs.c_pt.bc'
source_filename = "../init/initramfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wait_for_initramfs\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_initramfs\09\09\09\09"
module asm "\09.long\09__crc_wait_for_initramfs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_initramfs:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_initramfs\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_initramfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.async_domain = type { %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dir_entry = type { %struct.list_head, ptr, i64 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.hash = type { i32, i32, i32, i16, ptr, [4098 x i8] }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kgid_t = type { i32 }

@__setup_str_retain_initrd_param = internal constant [14 x i8] c"retain_initrd\00", section ".init.rodata", align 1
@__setup_retain_initrd_param = internal global %struct.obs_kernel_param { ptr @__setup_str_retain_initrd_param, ptr @retain_initrd_param, i32 0 }, section ".init.setup", align 4
@__setup_str_keepinitrd_setup = internal constant [11 x i8] c"keepinitrd\00", section ".init.rodata", align 1
@__setup_keepinitrd_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_keepinitrd_setup, ptr @keepinitrd_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_initramfs_async_setup = internal constant [17 x i8] c"initramfs_async=\00", section ".init.rodata", align 1
@__setup_initramfs_async_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_initramfs_async_setup, ptr @initramfs_async_setup, i32 0 }, section ".init.setup", align 4
@initrd_end = external dso_local local_unnamed_addr global i32, align 4
@initrd_start = external dso_local local_unnamed_addr global i32, align 4
@phys_initrd_size = external dso_local local_unnamed_addr global i32, align 4
@phys_initrd_start = external dso_local local_unnamed_addr global i32, align 4
@reserve_initrd_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013INITRD: 0x%08llx+0x%08lx is not a memory region\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reserve_initrd_mem\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init/initramfs.c\00", [47 x i8] zeroinitializer }, align 32
@reserve_initrd_mem._entry_ptr = internal global ptr @reserve_initrd_mem._entry, section ".printk_index", align 4
@reserve_initrd_mem._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013INITRD: 0x%08llx+0x%08lx overlaps in-use memory region\0A\00", [38 x i8] zeroinitializer }, align 32
@reserve_initrd_mem._entry_ptr.5 = internal global ptr @reserve_initrd_mem._entry.3, section ".printk_index", align 4
@initrd_below_start_ok = external dso_local local_unnamed_addr global i32, align 4
@reserve_initrd_mem._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\01c - disabling initrd\0A\00", [41 x i8] zeroinitializer }, align 32
@reserve_initrd_mem._entry_ptr.8 = internal global ptr @reserve_initrd_mem._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"initrd\00", [25 x i8] zeroinitializer }, align 32
@initramfs_cookie = internal global { i64, [24 x i8] } zeroinitializer, align 32
@wait_for_initramfs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wait_for_initramfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014wait_for_initramfs() called before rootfs_initcalls\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wait_for_initramfs\00", [45 x i8] zeroinitializer }, align 32
@wait_for_initramfs._entry_ptr = internal global ptr @wait_for_initramfs._entry, section ".printk_index", align 4
@initramfs_domain = internal global { %struct.async_domain, [20 x i8] } { %struct.async_domain { %struct.list_head { ptr @initramfs_domain, ptr @initramfs_domain }, i8 0 }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_wait_for_initramfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_initramfs = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_initramfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_initramfs to i32), ptr @__kstrtab_wait_for_initramfs, ptr @__kstrtabns_wait_for_initramfs }, section "___ksymtab_gpl+wait_for_initramfs", align 4
@__initcall__kmod_initramfs__258_736_populate_rootfsrootfs = internal global ptr @populate_rootfs, section ".initcallrootfs.init", align 4
@do_retain_initrd = internal unnamed_addr global i1 false, section ".init.data", align 4
@initramfs_async = internal global i8 1, section ".init.data", align 1
@__initramfs_start = external dso_local global [0 x i8], align 1
@__initramfs_size = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@do_populate_rootfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016Trying to unpack rootfs image as initramfs...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_populate_rootfs\00", [45 x i8] zeroinitializer }, align 32
@do_populate_rootfs._entry_ptr = internal global ptr @do_populate_rootfs._entry, section ".printk_index", align 4
@unpack_to_rootfs.msg_buf = internal global [64 x i8] zeroinitializer, section ".init.data", align 1
@header_buf = internal unnamed_addr global ptr null, section ".init.data", align 4
@symlink_buf = internal unnamed_addr global ptr null, section ".init.data", align 4
@name_buf = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't allocate buffers\00", [41 x i8] zeroinitializer }, align 32
@state = internal unnamed_addr global i32 0, section ".init.data", align 4
@this_header = internal unnamed_addr global i64 0, section ".init.data", align 8
@message = internal unnamed_addr global ptr null, section ".init.data", align 4
@unpack_to_rootfs.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"initramfs\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unpack_to_rootfs\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Detected %s compressed data\0A\00", [35 x i8] zeroinitializer }, align 32
@my_inptr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"decompressor failed\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"compression method %s not configured\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid magic at start of compressed archive\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"junk at the end of compressed archive\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@byte_count = internal unnamed_addr global i32 0, section ".init.data", align 4
@victim = internal unnamed_addr global ptr null, section ".init.data", align 4
@actions = internal unnamed_addr constant [8 x ptr] [ptr @do_start, ptr @do_collect, ptr @do_header, ptr @do_skip, ptr @do_name, ptr @do_copy, ptr @do_symlink, ptr @do_reset], section ".init.data", align 4
@collected = internal unnamed_addr global ptr null, section ".init.data", align 4
@collect = internal unnamed_addr global ptr null, section ".init.data", align 4
@remains = internal unnamed_addr global i32 0, section ".init.data", align 4
@next_state = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"070707\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"incorrect cpio method used: use -H newc option\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"070701\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no cpio magic\00", [18 x i8] zeroinitializer }, align 32
@name_len = internal unnamed_addr global i32 0, section ".init.data", align 4
@body_len = internal unnamed_addr global i32 0, section ".init.data", align 4
@next_header = internal unnamed_addr global i64 0, section ".init.data", align 8
@mode = internal unnamed_addr global i16 0, section ".init.data", align 2
@ino = internal unnamed_addr global i32 0, section ".init.data", align 4
@uid = internal unnamed_addr global i32 0, section ".init.data", align 4
@gid = internal unnamed_addr global i32 0, section ".init.data", align 4
@nlink = internal unnamed_addr global i32 0, section ".init.data", align 4
@mtime = internal unnamed_addr global i64 0, section ".init.data", align 8
@major = internal unnamed_addr global i32 0, section ".init.data", align 4
@minor = internal unnamed_addr global i32 0, section ".init.data", align 4
@rdev = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TRAILER!!!\00", [21 x i8] zeroinitializer }, align 32
@wfile = internal unnamed_addr global ptr null, section ".init.data", align 4
@wfile_pos = internal global i64 0, section ".init.data", align 8
@head = internal global [32 x ptr] zeroinitializer, section ".init.data", align 4
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't allocate link hash entry\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't allocate dir_entry buffer\00", [32 x i8] zeroinitializer }, align 32
@dir_list = internal global %struct.list_head { ptr @dir_list, ptr @dir_list }, section ".init.data", align 4
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write error\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"broken padding\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"junk within compressed archive\00", [33 x i8] zeroinitializer }, align 32
@populate_initrd_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016rootfs image is not initramfs (%s); looks like an initrd\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"populate_initrd_image\00", [42 x i8] zeroinitializer }, align 32
@populate_initrd_image._entry_ptr = internal global ptr @populate_initrd_image._entry, section ".printk_index", align 4
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"/initrd.image\00", [18 x i8] zeroinitializer }, align 32
@populate_initrd_image._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013/initrd.image: incomplete write (%zd != %ld)\0A\00", [48 x i8] zeroinitializer }, align 32
@populate_initrd_image._entry_ptr.38 = internal global ptr @populate_initrd_image._entry.36, section ".printk_index", align 4
@crashk_res = external dso_local local_unnamed_addr global %struct.resource, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 48]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 4, i64 0, i64 4, i64 9, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967292]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 580, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 586, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 599, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 614, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"initramfs_cookie\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 709, i32 23 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 720, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"initramfs_domain\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 708, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 676, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 682, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 476, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 498, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"my_inptr\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 460, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 503, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 507, i32 7 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 512, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 514, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 260, i32 24 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 261, i32 9 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 264, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 265, i32 9 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 341, i32 24 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 96, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 141, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 385, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 305, i32 9 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 455, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 656, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 658, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [20 x i8] c"../init/initramfs.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 665, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__initcall__kmod_initramfs__258_736_populate_rootfsrootfs, ptr @__ksymtab_wait_for_initramfs, ptr @__setup_initramfs_async_setup, ptr @__setup_keepinitrd_setup, ptr @__setup_retain_initrd_param, ptr @do_populate_rootfs._entry, ptr @do_populate_rootfs._entry_ptr, ptr @populate_initrd_image._entry, ptr @populate_initrd_image._entry.36, ptr @populate_initrd_image._entry_ptr, ptr @populate_initrd_image._entry_ptr.38, ptr @reserve_initrd_mem._entry, ptr @reserve_initrd_mem._entry.3, ptr @reserve_initrd_mem._entry.6, ptr @reserve_initrd_mem._entry_ptr, ptr @reserve_initrd_mem._entry_ptr.5, ptr @reserve_initrd_mem._entry_ptr.8, ptr @wait_for_initramfs._entry, ptr @wait_for_initramfs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @initramfs_cookie, ptr @.str.10, ptr @.str.11, ptr @initramfs_domain, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @my_inptr, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserve_initrd_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserve_initrd_mem._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserve_initrd_mem._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initramfs_cookie to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_initramfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initramfs_domain to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_populate_rootfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @my_inptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @populate_initrd_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @populate_initrd_image._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @retain_initrd_param(ptr nocapture noundef readonly %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @do_retain_initrd, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @keepinitrd_setup(ptr nocapture noundef readnone %__unused) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @do_retain_initrd, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @initramfs_async_setup(ptr noundef %str) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @kstrtobool(ptr noundef %str, ptr noundef nonnull @initramfs_async) #19
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @reserve_initrd_mem() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  store i32 0, ptr @initrd_end, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  store i32 0, ptr @initrd_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phys_initrd_size to i32))
  %0 = load i32, ptr @phys_initrd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phys_initrd_start to i32))
  %1 = load i32, ptr @phys_initrd_start, align 4
  %and = and i32 %1, -4096
  %sub = and i32 %1, 4095
  %add = add i32 %0, -1
  %sub1 = add i32 %add, %sub
  %or = or i32 %sub1, 4095
  %add2 = add i32 %or, 1
  %call = tail call zeroext i1 @memblock_is_region_memory(i32 noundef %and, i32 noundef %add2) #19
  br i1 %call, label %if.end5, label %if.end.do.end20_crit_edge

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end20

if.end5:                                          ; preds = %if.end
  %call6 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %and, i32 noundef %add2) #19
  br i1 %call6, label %if.end5.do.end20_crit_edge, label %if.end14

if.end5.do.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end20

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %call15 = tail call i32 @memblock_reserve(i32 noundef %and, i32 noundef %add2) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phys_initrd_start to i32))
  %2 = load i32, ptr @phys_initrd_start, align 4
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %2, i32 -2130706432, i32 8454144) #22, !srcloc !167
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  store i32 %3, ptr @initrd_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phys_initrd_size to i32))
  %4 = load i32, ptr @phys_initrd_size, align 4
  %add17 = add i32 %4, %3
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  store i32 %add17, ptr @initrd_end, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_below_start_ok to i32))
  store i32 1, ptr @initrd_below_start_ok, align 4
  br label %cleanup

do.end20:                                         ; preds = %if.end5.do.end20_crit_edge, %if.end.do.end20_crit_edge
  %.str.sink = phi ptr [ @.str, %if.end.do.end20_crit_edge ], [ @.str.4, %if.end5.do.end20_crit_edge ]
  %conv = zext i32 %and to i64
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.sink, i64 noundef %conv, i32 noundef %add2) #23
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #23
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  store i32 0, ptr @initrd_start, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  store i32 0, ptr @initrd_end, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_memory(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @free_initrd_mem(i32 noundef %start, i32 noundef %end) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start, -4096
  %add1 = add i32 %end, 4095
  %and2 = and i32 %add1, -4096
  %0 = inttoptr i32 %and to ptr
  %sub3 = sub i32 %and2, %and
  tail call void @memblock_free(ptr noundef %0, i32 noundef %sub3) #19
  %1 = inttoptr i32 %start to ptr
  %2 = inttoptr i32 %end to ptr
  %call = tail call i32 @free_reserved_area(ptr noundef %1, ptr noundef %2, i32 noundef 204, ptr noundef nonnull @.str.9) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_reserved_area(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_for_initramfs() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @initramfs_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %land.end, label %if.end14

land.end:                                         ; preds = %entry
  %.b16 = load i1, ptr @wait_for_initramfs.__already_done, align 1
  br i1 %.b16, label %land.end.return_crit_edge, label %if.then6, !prof !168

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @wait_for_initramfs.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #23
  br label %return

if.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %add = add i64 %0, 1
  tail call void @async_synchronize_cookie_domain(i64 noundef %add, ptr noundef nonnull @initramfs_domain) #19
  br label %return

return:                                           ; preds = %if.end14, %if.then6, %land.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_cookie_domain(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @populate_rootfs() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @async_schedule_node_domain(ptr noundef nonnull @do_populate_rootfs, ptr noundef null, i32 noundef -1, ptr noundef nonnull @initramfs_domain) #19
  store i64 %call.i, ptr @initramfs_cookie, align 8
  tail call void @__usermodehelper_set_disable_depth(i32 noundef 0) #19
  %0 = load i8, ptr @initramfs_async, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @wait_for_initramfs()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @do_populate_rootfs(ptr nocapture noundef readnone %unused, i64 noundef %cookie) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__initramfs_size to i32))
  %0 = load i32, ptr @__initramfs_size, align 4
  %call = tail call fastcc ptr @unpack_to_rootfs(ptr noundef nonnull @__initramfs_start, i32 noundef %0) #24
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic_show_mem(ptr noundef nonnull @.str.12, ptr noundef nonnull %call)
  unreachable

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %1 = load i32, ptr @initrd_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.done_crit_edge, label %do.end

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

do.end:                                           ; preds = %if.end
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %2 = load i32, ptr @initrd_start, align 4
  %3 = inttoptr i32 %2 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  %4 = load i32, ptr @initrd_end, align 4
  %sub = sub i32 %4, %2
  %call5 = tail call fastcc ptr @unpack_to_rootfs(ptr noundef %3, i32 noundef %sub) #24
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.done_crit_edge, label %if.then7

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %done

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @populate_initrd_image(ptr noundef nonnull %call5) #24
  br label %done

done:                                             ; preds = %if.then7, %do.end.done_crit_edge, %if.end.done_crit_edge
  %.b = load i1, ptr @do_retain_initrd, align 4
  br i1 %.b, label %done.if.end14_crit_edge, label %land.lhs.true

done.if.end14_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

land.lhs.true:                                    ; preds = %done
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %5 = load i32, ptr @initrd_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true11

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

land.lhs.true11:                                  ; preds = %land.lhs.true
  %call12 = tail call fastcc zeroext i1 @kexec_free_initrd() #24
  br i1 %call12, label %land.lhs.true11.if.end14_crit_edge, label %if.then13

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %6 = load i32, ptr @initrd_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  %7 = load i32, ptr @initrd_end, align 4
  tail call void @free_initrd_mem(i32 noundef %6, i32 noundef %7) #24
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true11.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %done.if.end14_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  store i32 0, ptr @initrd_start, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  store i32 0, ptr @initrd_end, align 4
  tail call void @flush_delayed_fput() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node_domain(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @unpack_to_rootfs(ptr noundef %buf, i32 noundef %len) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %compress_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compress_name) #19
  %0 = ptrtoint ptr %compress_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %compress_name, align 4, !annotation !170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 110) #25
  store ptr %call7.i, ptr @header_buf, align 4
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8195, i32 noundef 3264, i32 noundef 2) #26
  store ptr %call1.i.i, ptr @symlink_buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4098) #25
  store ptr %call7.i65, ptr @name_buf, align 4
  %3 = load ptr, ptr @header_buf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr @symlink_buf, align 4
  %tobool3.not = icmp eq ptr %4, null
  %tobool5.not = icmp eq ptr %call7.i65, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic_show_mem(ptr noundef nonnull @.str.15)
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr @state, align 4
  store i64 0, ptr @this_header, align 8
  store ptr null, ptr @message, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool7.not75 = icmp eq i32 %len, 0
  br i1 %tobool7.not75, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %buf.addr.079 = phi ptr [ %buf.addr.1, %cleanup.while.body_crit_edge ], [ %buf, %if.end.while.body_crit_edge ]
  %len.addr.077 = phi i32 [ %len.addr.1, %cleanup.while.body_crit_edge ], [ %len, %if.end.while.body_crit_edge ]
  %5 = load i64, ptr @this_header, align 8
  %6 = ptrtoint ptr %buf.addr.079 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.addr.079, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %7)
  %cmp = icmp eq i8 %7, 48
  %and = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool9.not = icmp eq i64 %and, 0
  %or.cond64 = select i1 %cmp, i1 %tobool9.not, i1 false
  br i1 %or.cond64, label %if.then10, label %if.end12

if.then10:                                        ; preds = %while.body
  store i32 0, ptr @state, align 4
  store i32 %len.addr.077, ptr @byte_count, align 4
  store ptr %buf.addr.079, ptr @victim, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then10
  %8 = load i32, ptr @state, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @actions, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 %10() #19
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.cond.i.while.cond.i_crit_edge, label %write_buffer.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i

write_buffer.exit:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  %11 = load i32, ptr @byte_count, align 4
  %sub.i = sub i32 %len.addr.077, %11
  %add.ptr = getelementptr i8, ptr %buf.addr.079, i32 %sub.i
  br label %cleanup

if.end12:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  %incdec.ptr = getelementptr i8, ptr %buf.addr.079, i32 1
  %dec = add i32 %len.addr.077, -1
  %inc = add i64 %5, 1
  store i64 %inc, ptr @this_header, align 8
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  store i64 0, ptr @this_header, align 8
  %call16 = call ptr @decompress_method(ptr noundef %buf.addr.079, i32 noundef %len.addr.077, ptr noundef nonnull %compress_name) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unpack_to_rootfs.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unpack_to_rootfs, %if.then21)) #19
          to label %do.end [label %if.then21], !srcloc !171

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %compress_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compress_name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unpack_to_rootfs.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.18, ptr noundef %13) #19
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end15
  %tobool23.not = icmp eq ptr %call16, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %do.end
  %call25 = call i32 %call16(ptr noundef %buf.addr.079, i32 noundef %len.addr.077, ptr noundef null, ptr noundef nonnull @flush_buffer, ptr noundef null, ptr noundef nonnull @my_inptr, ptr noundef nonnull @error) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.if.end37_crit_edge, label %if.then27

if.then24.if.end37_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.then27:                                        ; preds = %if.then24
  %14 = load ptr, ptr @message, align 4
  %tobool.not.i66 = icmp eq ptr %14, null
  br i1 %tobool.not.i66, label %if.then27.if.end37.sink.split_crit_edge, label %if.then27.if.end37_crit_edge

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.then27.if.end37.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37.sink.split

if.else:                                          ; preds = %do.end
  %15 = ptrtoint ptr %compress_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %compress_name, align 4
  %tobool29.not = icmp eq ptr %16, null
  %17 = load ptr, ptr @message, align 4
  %tobool.not.i67 = icmp eq ptr %17, null
  br i1 %tobool29.not, label %if.else35, label %if.then30

if.then30:                                        ; preds = %if.else
  br i1 %tobool.not.i67, label %if.then32, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #21
  %call33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @unpack_to_rootfs.msg_buf, i32 noundef 64, ptr noundef nonnull @.str.20, ptr noundef nonnull %16)
  br label %if.end37.sink.split

if.else35:                                        ; preds = %if.else
  br i1 %tobool.not.i67, label %if.else35.if.end37.sink.split_crit_edge, label %if.else35.if.end37_crit_edge

if.else35.if.end37_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.else35.if.end37.sink.split_crit_edge:          ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.else35.if.end37.sink.split_crit_edge, %if.then32, %if.then27.if.end37.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @unpack_to_rootfs.msg_buf, %if.then32 ], [ @.str.19, %if.then27.if.end37.sink.split_crit_edge ], [ @.str.21, %if.else35.if.end37.sink.split_crit_edge ]
  store ptr %.str.21.sink, ptr @message, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else35.if.end37_crit_edge, %if.then30.if.end37_crit_edge, %if.then27.if.end37_crit_edge, %if.then24.if.end37_crit_edge
  %18 = load i32, ptr @state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp38.not = icmp eq i32 %18, 7
  br i1 %cmp38.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  %19 = load ptr, ptr @message, align 4
  %tobool.not.i70 = icmp eq ptr %19, null
  br i1 %tobool.not.i70, label %if.then.i71, label %if.then40.if.end41_crit_edge

if.then40.if.end41_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

if.then.i71:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #21
  store ptr @.str.22, ptr @message, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then.i71, %if.then40.if.end41_crit_edge, %if.end37.if.end41_crit_edge
  %20 = load i32, ptr @my_inptr, align 4
  %conv42 = zext i32 %20 to i64
  %add = add i64 %5, %conv42
  store i64 %add, ptr @this_header, align 8
  %add.ptr43 = getelementptr i8, ptr %buf.addr.079, i32 %20
  %sub44 = sub i32 %len.addr.077, %20
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then14, %write_buffer.exit
  %len.addr.1 = phi i32 [ %sub44, %if.end41 ], [ %dec, %if.then14 ], [ %11, %write_buffer.exit ]
  %buf.addr.1 = phi ptr [ %add.ptr43, %if.end41 ], [ %incdec.ptr, %if.then14 ], [ %add.ptr, %write_buffer.exit ]
  %21 = load ptr, ptr @message, align 4
  %tobool6.not = icmp ne ptr %21, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1)
  %tobool7.not = icmp eq i32 %len.addr.1, 0
  %or.cond63 = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  br i1 %or.cond63, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge
  call fastcc void @dir_utime() #24
  %22 = load ptr, ptr @name_buf, align 4
  call void @kfree(ptr noundef %22) #19
  %23 = load ptr, ptr @symlink_buf, align 4
  call void @kfree(ptr noundef %23) #19
  %24 = load ptr, ptr @header_buf, align 4
  call void @kfree(ptr noundef %24) #19
  %25 = load ptr, ptr @message, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compress_name) #19
  ret ptr %25
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panic_show_mem(ptr noundef %fmt, ...) unnamed_addr #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %args = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #19
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !170
  tail call void @show_mem(i32 noundef 0, ptr noundef null) #19
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef %fmt, [1 x i32] %.fca.0.insert) #27
  unreachable
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @populate_initrd_image(ptr noundef %err) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #19
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %pos, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__initramfs_size to i32))
  %1 = load i32, ptr @__initramfs_size, align 4
  %call = tail call fastcc ptr @unpack_to_rootfs(ptr noundef nonnull @__initramfs_start, i32 noundef %1) #24
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %err) #23
  %call2 = tail call ptr @filp_open(ptr noundef nonnull @.str.35, i32 noundef 65, i16 noundef zeroext 448) #19
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %2 = load i32, ptr @initrd_start, align 4
  %3 = inttoptr i32 %2 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  %4 = load i32, ptr @initrd_end, align 4
  %sub = sub i32 %4, %2
  %call4 = call fastcc i32 @xwrite(ptr noundef %call2, ptr noundef %3, i32 noundef %sub, ptr noundef nonnull %pos) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  %5 = load i32, ptr @initrd_end, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %6 = load i32, ptr @initrd_start, align 4
  %sub5 = sub i32 %5, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %sub5)
  %cmp.not = icmp eq i32 %call4, %sub5
  br i1 %cmp.not, label %if.end.if.end13_crit_edge, label %do.end9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call4, i32 noundef %sub5) #23
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %if.end.if.end13_crit_edge
  call void @fput(ptr noundef %call2) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #19
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @kexec_free_initrd() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crashk_res to i32))
  %0 = load i32, ptr @crashk_res, align 4
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %0, i32 -2130706432, i32 8454144) #22, !srcloc !167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %2, i32 -2130706432, i32 8454144) #22, !srcloc !167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %4 = load i32, ptr @initrd_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not = icmp ult i32 %4, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  %5 = load i32, ptr @initrd_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp2.not = icmp ugt i32 %5, %1
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = inttoptr i32 %4 to ptr
  %sub = sub i32 %5, %4
  %7 = call ptr @memset(ptr %6, i32 0, i32 %sub)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %8 = load i32, ptr @initrd_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp3 = icmp ult i32 %8, %1
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @free_initrd_mem(i32 noundef %8, i32 noundef %1) #24
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  %9 = load i32, ptr @initrd_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp6 = icmp ugt i32 %9, %3
  br i1 %cmp6, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @free_initrd_mem(i32 noundef %3, i32 noundef %9) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %if.then7 ], [ true, %if.end5.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_delayed_fput() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @decompress_method(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @flush_buffer(ptr noundef %bufv, i32 noundef %len) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @message, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.while.cond.outer_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

entry.while.cond.outer_crit_edge:                 ; preds = %entry
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %entry.while.cond.outer_crit_edge
  %len.addr.0.ph = phi i32 [ %4, %while.cond.outer.backedge ], [ %len, %entry.while.cond.outer_crit_edge ]
  %buf.0.ph = phi ptr [ %arrayidx36, %while.cond.outer.backedge ], [ %bufv, %entry.while.cond.outer_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %error.exit, %while.cond.outer
  store i32 %len.addr.0.ph, ptr @byte_count, align 4
  store ptr %buf.0.ph, ptr @victim, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.cond
  %1 = load i32, ptr @state, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @actions, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %3() #19
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.cond.i.while.cond.i_crit_edge, label %write_buffer.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i

write_buffer.exit:                                ; preds = %while.cond.i
  %4 = load i32, ptr @byte_count, align 4
  %sub.i = sub i32 %len.addr.0.ph, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.ph, i32 %sub.i)
  %cmp = icmp ugt i32 %len.addr.0.ph, %sub.i
  br i1 %cmp, label %land.rhs, label %write_buffer.exit.cleanup_crit_edge

write_buffer.exit.cleanup_crit_edge:              ; preds = %write_buffer.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs:                                         ; preds = %write_buffer.exit
  %5 = load ptr, ptr @message, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %arrayidx = getelementptr i8, ptr %buf.0.ph, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %error.exit [
    i8 48, label %if.then4
    i8 0, label %if.then8
  ]

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.le37 = getelementptr i8, ptr %buf.0.ph, i32 %sub.i
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then8, %if.then4
  %arrayidx36 = phi ptr [ %arrayidx.le, %if.then8 ], [ %arrayidx.le37, %if.then4 ]
  %storemerge = phi i32 [ 7, %if.then8 ], [ 0, %if.then4 ]
  store i32 %storemerge, ptr @state, align 4
  br label %while.cond.outer

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.le = getelementptr i8, ptr %buf.0.ph, i32 %sub.i
  br label %while.cond.outer.backedge

error.exit:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  store ptr @.str.32, ptr @message, align 4
  br label %while.cond

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %write_buffer.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %len, %write_buffer.exit.cleanup_crit_edge ], [ %len, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal void @error(ptr noundef %x) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @message, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  store ptr %x, ptr @message, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dir_utime() unnamed_addr #2 section ".init.text" align 64 {
entry:
  %t.i = alloca [2 x %struct.timespec64], align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dir_list, align 4
  %cmp.not20 = icmp eq ptr %0, @dir_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %t.i, i32 8
  %arrayidx2.i = getelementptr inbounds [2 x %struct.timespec64], ptr %t.i, i32 0, i32 1
  %tv_nsec5.i = getelementptr inbounds [2 x %struct.timespec64], ptr %t.i, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %de.021 = phi ptr [ %0, %for.body.lr.ph ], [ %tmp.0, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %de.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %de.021, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %de.021) #19
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %de.021, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %de.021 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %de.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %de.021 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %de.021, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %de.021, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %name = getelementptr inbounds %struct.dir_entry, ptr %de.021, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 8
  %mtime = getelementptr inbounds %struct.dir_entry, ptr %de.021, i32 0, i32 2
  %13 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mtime, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t.i) #19
  %15 = call ptr @memset(ptr %1, i32 255, i32 24)
  %16 = ptrtoint ptr %t.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %14, ptr %t.i, align 8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %1, align 8
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %14, ptr %arrayidx2.i, align 8
  %19 = ptrtoint ptr %tv_nsec5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %tv_nsec5.i, align 8
  %call.i = call i32 @init_utimes(ptr noundef %12, ptr noundef nonnull %t.i) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t.i) #19
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  call void @kfree(ptr noundef %21) #19
  call void @kfree(ptr noundef %de.021) #19
  %cmp.not = icmp eq ptr %tmp.0, @dir_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @do_start() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @byte_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %0)
  %cmp.not.i = icmp ult i32 %0, 110
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %1 = load ptr, ptr @victim, align 4
  store ptr %1, ptr @collected, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 110
  store ptr %add.ptr.i.i, ptr @victim, align 4
  %2 = load i64, ptr @this_header, align 8
  %add.i.i = add i64 %2, 110
  store i64 %add.i.i, ptr @this_header, align 8
  %sub.i.i = add i32 %0, -110
  store i32 %sub.i.i, ptr @byte_count, align 4
  br label %read_into.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %3 = load ptr, ptr @header_buf, align 4
  store ptr %3, ptr @collected, align 4
  store ptr %3, ptr @collect, align 4
  store i32 110, ptr @remains, align 4
  store i32 2, ptr @next_state, align 4
  br label %read_into.exit

read_into.exit:                                   ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ 1, %if.else.i ], [ 2, %if.then.i ]
  store i32 %storemerge.i, ptr @state, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @do_collect() #11 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @remains, align 4
  %1 = load i32, ptr @byte_count, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %0)
  %3 = load ptr, ptr @collect, align 4
  %4 = load ptr, ptr @victim, align 4
  %5 = call ptr @memcpy(ptr %3, ptr %4, i32 %2)
  %add.ptr.i = getelementptr i8, ptr %4, i32 %2
  store ptr %add.ptr.i, ptr @victim, align 4
  %conv.i = zext i32 %2 to i64
  %6 = load i64, ptr @this_header, align 8
  %add.i = add i64 %6, %conv.i
  store i64 %add.i, ptr @this_header, align 8
  %sub.i = sub i32 %1, %2
  store i32 %sub.i, ptr @byte_count, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %2
  store ptr %add.ptr, ptr @collect, align 4
  %sub = sub i32 %0, %2
  store i32 %sub, ptr @remains, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp1.not.not = icmp ugt i32 %0, %1
  br i1 %cmp1.not.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %7 = load i32, ptr @next_state, align 4
  store i32 %7, ptr @state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @do_header() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @collected, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %0, ptr noundef nonnull dereferenceable(6) @.str.23, i32 6) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @message, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  store ptr @.str.24, ptr @message, align 4
  br label %return

if.end:                                           ; preds = %entry
  %bcmp41 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %0, ptr noundef nonnull dereferenceable(6) @.str.25, i32 6) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp41)
  %tobool.not = icmp eq i32 %bcmp41, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @message, align 4
  %tobool.not.i42 = icmp eq ptr %2, null
  br i1 %tobool.not.i42, label %if.then.i43, label %if.then2.return_crit_edge

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then.i43:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  store ptr @.str.26, ptr @message, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  tail call fastcc void @parse_header(ptr noundef %0) #24
  %3 = load i64, ptr @this_header, align 8
  %4 = load i32, ptr @name_len, align 4
  %add = add i32 %4, 1
  %and = and i32 %add, -4
  %add4 = or i32 %and, 2
  %conv = zext i32 %add4 to i64
  %add5 = add i64 %3, %conv
  %5 = load i32, ptr @body_len, align 4
  %conv6 = zext i32 %5 to i64
  %add7 = add nuw nsw i64 %conv6, 3
  %add8 = add i64 %add7, %add5
  %and9 = and i64 %add8, -4
  store i64 %and9, ptr @next_header, align 8
  store i32 3, ptr @state, align 4
  %6 = add i32 %4, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %6)
  %7 = icmp ult i32 %6, -4096
  br i1 %7, label %if.end3.return_crit_edge, label %if.end15

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end15:                                         ; preds = %if.end3
  %8 = load i16, ptr @mode, align 2
  %9 = and i16 %8, -4096
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %9, label %lor.lhs.false34 [
    i16 -24576, label %if.then20
    i16 -32768, label %if.end15.if.then36_crit_edge
  ]

if.end15.if.then36_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then36

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp21 = icmp ugt i32 %5, 4096
  br i1 %cmp21, label %if.then20.return_crit_edge, label %if.end24

if.then20.return_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  %11 = load ptr, ptr @symlink_buf, align 4
  store ptr %11, ptr @collected, align 4
  store ptr %11, ptr @collect, align 4
  %add28 = add i32 %add4, %5
  store i32 %add28, ptr @remains, align 4
  store i32 6, ptr @next_state, align 4
  store i32 1, ptr @state, align 4
  br label %return

lor.lhs.false34:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool35.not = icmp eq i32 %5, 0
  br i1 %tobool35.not, label %lor.lhs.false34.if.then36_crit_edge, label %lor.lhs.false34.return_crit_edge

lor.lhs.false34.return_crit_edge:                 ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

lor.lhs.false34.if.then36_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false34.if.then36_crit_edge, %if.end15.if.then36_crit_edge
  %12 = load i32, ptr @byte_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add4)
  %cmp.not.i = icmp ult i32 %12, %add4
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i45

if.then.i45:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #21
  %13 = load ptr, ptr @victim, align 4
  store ptr %13, ptr @collected, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add4
  store ptr %add.ptr.i.i, ptr @victim, align 4
  store i64 %add5, ptr @this_header, align 8
  %sub.i.i = sub i32 %12, %add4
  store i32 %sub.i.i, ptr @byte_count, align 4
  br label %read_into.exit

if.else.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #21
  %14 = load ptr, ptr @name_buf, align 4
  store ptr %14, ptr @collected, align 4
  store ptr %14, ptr @collect, align 4
  store i32 %add4, ptr @remains, align 4
  store i32 4, ptr @next_state, align 4
  br label %read_into.exit

read_into.exit:                                   ; preds = %if.else.i, %if.then.i45
  %storemerge.i = phi i32 [ 1, %if.else.i ], [ 4, %if.then.i45 ]
  store i32 %storemerge.i, ptr @state, align 4
  br label %return

return:                                           ; preds = %read_into.exit, %lor.lhs.false34.return_crit_edge, %if.end24, %if.then20.return_crit_edge, %if.end3.return_crit_edge, %if.then.i43, %if.then2.return_crit_edge, %if.then.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ 0, %if.end3.return_crit_edge ], [ 0, %if.then20.return_crit_edge ], [ 0, %read_into.exit ], [ 0, %lor.lhs.false34.return_crit_edge ], [ 1, %if.then.return_crit_edge ], [ 1, %if.then.i ], [ 1, %if.then2.return_crit_edge ], [ 1, %if.then.i43 ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @do_skip() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @this_header, align 8
  %1 = load i32, ptr @byte_count, align 4
  %conv = zext i32 %1 to i64
  %add = add i64 %0, %conv
  %2 = load i64, ptr @next_header, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %2)
  %cmp = icmp slt i64 %add, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %3 = load ptr, ptr @victim, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  store ptr %add.ptr.i, ptr @victim, align 4
  store i64 %add, ptr @this_header, align 8
  store i32 0, ptr @byte_count, align 4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sub = sub i64 %2, %0
  %conv2 = trunc i64 %sub to i32
  %4 = load ptr, ptr @victim, align 4
  %add.ptr.i3 = getelementptr i8, ptr %4, i32 %conv2
  store ptr %add.ptr.i3, ptr @victim, align 4
  %conv.i4 = and i64 %sub, 4294967295
  %add.i5 = add i64 %conv.i4, %0
  store i64 %add.i5, ptr @this_header, align 8
  %sub.i6 = sub i32 %1, %conv2
  store i32 %sub.i6, ptr @byte_count, align 4
  %5 = load i32, ptr @next_state, align 4
  store i32 %5, ptr @state, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @do_name() #2 section ".init.text" align 64 {
entry:
  %t.i = alloca [2 x %struct.timespec64], align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 3, ptr @state, align 4
  store i32 7, ptr @next_state, align 4
  %0 = load ptr, ptr @collected, align 4
  %call = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(11) @.str.27) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @free_hash() #24
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, ptr @mode, align 2
  tail call fastcc void @clean_path(ptr noundef %0, i16 noundef zeroext %1) #24
  %2 = load i16, ptr @mode, align 2
  %3 = lshr i16 %2, 12
  %4 = trunc i16 %3 to i4
  %trunc = xor i4 %4, -8
  %5 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.40)
  switch i4 %trunc, label %if.end.return_crit_edge [
    i4 0, label %if.then3
    i4 -4, label %if.then30
    i4 -2, label %if.end.if.then53_crit_edge
    i4 -6, label %if.end.if.then53_crit_edge69
    i4 -7, label %if.end.if.then53_crit_edge70
    i4 4, label %if.end.if.then53_crit_edge71
  ]

if.end.if.then53_crit_edge71:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then53

if.end.if.then53_crit_edge70:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then53

if.end.if.then53_crit_edge69:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then53

if.end.if.then53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then53

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @maybe_link() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %if.then7, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp8.not = icmp eq i32 %call4, 1
  %spec.select = select i1 %cmp8.not, i32 65, i32 577
  %6 = load ptr, ptr @collected, align 4
  %7 = load i16, ptr @mode, align 2
  %call12 = tail call ptr @filp_open(ptr noundef %6, i32 noundef %spec.select, i16 noundef zeroext %7) #19
  store ptr %call12, ptr @wfile, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7.return_crit_edge, label %if.end15

if.then7.return_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end15:                                         ; preds = %if.then7
  store i64 0, ptr @wfile_pos, align 8
  %8 = load i32, ptr @uid, align 4
  %9 = load i32, ptr @gid, align 4
  %call16 = tail call i32 @vfs_fchown(ptr noundef %call12, i32 noundef %8, i32 noundef %9) #19
  %10 = load ptr, ptr @wfile, align 4
  %11 = load i16, ptr @mode, align 2
  %call17 = tail call i32 @vfs_fchmod(ptr noundef %10, i16 noundef zeroext %11) #19
  %12 = load i32, ptr @body_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  %13 = load ptr, ptr @wfile, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 1
  %conv19 = zext i32 %12 to i64
  %call20 = tail call i32 @vfs_truncate(ptr noundef %f_path, i64 noundef %conv19) #19
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  store i32 5, ptr @state, align 4
  br label %return

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %14 = load ptr, ptr @collected, align 4
  %call31 = tail call i32 @init_mkdir(ptr noundef %14, i16 noundef zeroext %2) #23
  %15 = load ptr, ptr @collected, align 4
  %16 = load i32, ptr @uid, align 4
  %17 = load i32, ptr @gid, align 4
  %call32 = tail call i32 @init_chown(ptr noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef 0) #23
  %18 = load ptr, ptr @collected, align 4
  %19 = load i16, ptr @mode, align 2
  %call33 = tail call i32 @init_chmod(ptr noundef %18, i16 noundef zeroext %19) #23
  %20 = load ptr, ptr @collected, align 4
  %21 = load i64, ptr @mtime, align 8
  tail call fastcc void @dir_add(ptr noundef %20, i64 noundef %21) #24
  br label %return

if.then53:                                        ; preds = %if.end.if.then53_crit_edge, %if.end.if.then53_crit_edge69, %if.end.if.then53_crit_edge70, %if.end.if.then53_crit_edge71
  %call54 = tail call fastcc i32 @maybe_link() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.then53.return_crit_edge

if.then53.return_crit_edge:                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #21
  %22 = load ptr, ptr @collected, align 4
  %23 = load i16, ptr @mode, align 2
  %24 = load i32, ptr @rdev, align 4
  %call58 = tail call i32 @init_mknod(ptr noundef %22, i16 noundef zeroext %23, i32 noundef %24) #23
  %25 = load ptr, ptr @collected, align 4
  %26 = load i32, ptr @uid, align 4
  %27 = load i32, ptr @gid, align 4
  %call59 = tail call i32 @init_chown(ptr noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef 0) #23
  %28 = load ptr, ptr @collected, align 4
  %29 = load i16, ptr @mode, align 2
  %call60 = tail call i32 @init_chmod(ptr noundef %28, i16 noundef zeroext %29) #23
  %30 = load ptr, ptr @collected, align 4
  %31 = load i64, ptr @mtime, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t.i) #19
  %32 = getelementptr inbounds i8, ptr %t.i, i32 8
  %33 = call ptr @memset(ptr %32, i32 255, i32 24)
  %34 = ptrtoint ptr %t.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %31, ptr %t.i, align 8
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %32, align 8
  %arrayidx2.i = getelementptr inbounds [2 x %struct.timespec64], ptr %t.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %31, ptr %arrayidx2.i, align 8
  %tv_nsec5.i = getelementptr inbounds [2 x %struct.timespec64], ptr %t.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %tv_nsec5.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tv_nsec5.i, align 8
  %call.i = call i32 @init_utimes(ptr noundef %30, ptr noundef nonnull %t.i) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t.i) #19
  br label %return

return:                                           ; preds = %if.then57, %if.then53.return_crit_edge, %if.then30, %if.end21, %if.then7.return_crit_edge, %if.then3.return_crit_edge, %if.end.return_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @do_copy() #2 section ".init.text" align 64 {
entry:
  %t = alloca [2 x %struct.timespec64], align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @byte_count, align 4
  %1 = load i32, ptr @body_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp ult i32 %0, %1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #19
  %2 = getelementptr inbounds i8, ptr %t, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %4 = load ptr, ptr @wfile, align 4
  %5 = load ptr, ptr @victim, align 4
  %call = tail call fastcc i32 @xwrite(ptr noundef %4, ptr noundef %5, i32 noundef %1, ptr noundef nonnull @wfile_pos) #24
  %6 = load i32, ptr @body_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %6)
  %cmp1.not = icmp eq i32 %call, %6
  br i1 %cmp1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr @message, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.if.end_crit_edge

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  store ptr @.str.30, ptr @message, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then2.if.end_crit_edge, %if.then.if.end_crit_edge
  %8 = load i64, ptr @mtime, align 8
  %9 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %t, align 8
  %arrayidx3 = getelementptr inbounds [2 x %struct.timespec64], ptr %t, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %8, ptr %arrayidx3, align 8
  %11 = load ptr, ptr @wfile, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 1
  %call5 = call i32 @vfs_utimes(ptr noundef %f_path, ptr noundef nonnull %t) #19
  %12 = load ptr, ptr @wfile, align 4
  call void @fput(ptr noundef %12) #19
  %13 = load i32, ptr @body_len, align 4
  %14 = load ptr, ptr @victim, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %13
  store ptr %add.ptr.i, ptr @victim, align 4
  %conv.i = zext i32 %13 to i64
  %15 = load i64, ptr @this_header, align 8
  %add.i = add i64 %15, %conv.i
  store i64 %add.i, ptr @this_header, align 8
  %16 = load i32, ptr @byte_count, align 4
  %sub.i = sub i32 %16, %13
  store i32 %sub.i, ptr @byte_count, align 4
  store i32 3, ptr @state, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #19
  br label %return

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr @wfile, align 4
  %18 = load ptr, ptr @victim, align 4
  %call6 = tail call fastcc i32 @xwrite(ptr noundef %17, ptr noundef %18, i32 noundef %0, ptr noundef nonnull @wfile_pos) #24
  %19 = load i32, ptr @byte_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %19)
  %cmp7.not = icmp eq i32 %call6, %19
  br i1 %cmp7.not, label %if.else.if.end9_crit_edge, label %if.then8

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then8:                                         ; preds = %if.else
  %20 = load ptr, ptr @message, align 4
  %tobool.not.i10 = icmp eq ptr %20, null
  br i1 %tobool.not.i10, label %if.then.i11, label %if.then8.if.end9_crit_edge

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then.i11:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  store ptr @.str.30, ptr @message, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then.i11, %if.then8.if.end9_crit_edge, %if.else.if.end9_crit_edge
  %21 = load i32, ptr @body_len, align 4
  %sub = sub i32 %21, %19
  store i32 %sub, ptr @body_len, align 4
  %22 = load ptr, ptr @victim, align 4
  %add.ptr.i13 = getelementptr i8, ptr %22, i32 %19
  store ptr %add.ptr.i13, ptr @victim, align 4
  %conv.i14 = zext i32 %19 to i64
  %23 = load i64, ptr @this_header, align 8
  %add.i15 = add i64 %23, %conv.i14
  store i64 %add.i15, ptr @this_header, align 8
  store i32 0, ptr @byte_count, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @do_symlink() #2 section ".init.text" align 64 {
entry:
  %t.i = alloca [2 x %struct.timespec64], align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @collected, align 4
  %1 = load i32, ptr @name_len, align 4
  %add = add i32 %1, 1
  %and = and i32 %add, -4
  %2 = load i32, ptr @body_len, align 4
  %add1 = add i32 %2, 2
  %add2 = add i32 %add1, %and
  %arrayidx = getelementptr i8, ptr %0, i32 %add2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  tail call fastcc void @clean_path(ptr noundef %0, i16 noundef zeroext 0) #24
  %4 = load ptr, ptr @collected, align 4
  %5 = load i32, ptr @name_len, align 4
  %add3 = add i32 %5, 1
  %and4 = and i32 %add3, -4
  %add5 = or i32 %and4, 2
  %add.ptr = getelementptr i8, ptr %4, i32 %add5
  %call = tail call i32 @init_symlink(ptr noundef %add.ptr, ptr noundef %4) #23
  %6 = load ptr, ptr @collected, align 4
  %7 = load i32, ptr @uid, align 4
  %8 = load i32, ptr @gid, align 4
  %call6 = tail call i32 @init_chown(ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 256) #23
  %9 = load ptr, ptr @collected, align 4
  %10 = load i64, ptr @mtime, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t.i) #19
  %11 = getelementptr inbounds i8, ptr %t.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 255, i32 24)
  %13 = ptrtoint ptr %t.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %t.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %11, align 8
  %arrayidx2.i = getelementptr inbounds [2 x %struct.timespec64], ptr %t.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %10, ptr %arrayidx2.i, align 8
  %tv_nsec5.i = getelementptr inbounds [2 x %struct.timespec64], ptr %t.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %tv_nsec5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tv_nsec5.i, align 8
  %call.i = call i32 @init_utimes(ptr noundef %9, ptr noundef nonnull %t.i) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t.i) #19
  store i32 3, ptr @state, align 4
  store i32 7, ptr @next_state, align 4
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @do_reset() #12 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %.pr = load i32, ptr @byte_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not6 = icmp eq i32 %.pr, 0
  br i1 %tobool.not6, label %entry.if.end_crit_edge, label %land.rhs.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.rhs.preheader:                               ; preds = %entry
  %this_header.promoted = load i64, ptr @this_header, align 8
  %victim.promoted = load ptr, ptr @victim, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %0 = phi i32 [ %sub.i, %while.body.land.rhs_crit_edge ], [ %.pr, %land.rhs.preheader ]
  %add.ptr.i48 = phi ptr [ %add.ptr.i, %while.body.land.rhs_crit_edge ], [ %victim.promoted, %land.rhs.preheader ]
  %add.i57 = phi i64 [ %add.i, %while.body.land.rhs_crit_edge ], [ %this_header.promoted, %land.rhs.preheader ]
  %1 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr.i48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %while.body, label %land.lhs.true

while.body:                                       ; preds = %land.rhs
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i48, i32 1
  store ptr %add.ptr.i, ptr @victim, align 4
  %add.i = add i64 %add.i57, 1
  store i64 %add.i, ptr @this_header, align 8
  %sub.i = add i32 %0, -1
  store i32 %sub.i, ptr @byte_count, align 4
  %tobool.not = icmp eq i32 %sub.i, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %land.rhs
  %3 = load i64, ptr @this_header, align 8
  %and = and i64 %3, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr @message, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  store ptr @.str.31, ptr @message, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_header(ptr nocapture noundef readonly %s) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %parsed = alloca [12 x i32], align 4
  %buf = alloca [9 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %parsed) #19
  %0 = call ptr @memset(ptr %parsed, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #19
  %1 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %s, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %s.addr.022 = phi ptr [ %add.ptr, %entry ], [ %add.ptr3, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %s.addr.022 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %s.addr.022, align 1
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %buf, align 8
  %call = call i32 @simple_strtoul(ptr noundef nonnull %buf, ptr noundef null, i32 noundef 16) #19
  %arrayidx2 = getelementptr [12 x i32], ptr %parsed, i32 0, i32 %i.023
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.023, 1
  %add.ptr3 = getelementptr i8, ptr %s.addr.022, i32 8
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %parsed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %parsed, align 4
  store i32 %8, ptr @ino, align 4
  %arrayidx5 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %conv = trunc i32 %10 to i16
  store i16 %conv, ptr @mode, align 2
  %arrayidx6 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  store i32 %12, ptr @uid, align 4
  %arrayidx7 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7, align 4
  store i32 %14, ptr @gid, align 4
  %arrayidx8 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8, align 4
  store i32 %16, ptr @nlink, align 4
  %arrayidx9 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9, align 4
  %conv10 = zext i32 %18 to i64
  store i64 %conv10, ptr @mtime, align 8
  %arrayidx11 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 6
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11, align 4
  store i32 %20, ptr @body_len, align 4
  %arrayidx12 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx12, align 4
  store i32 %22, ptr @major, align 4
  %arrayidx13 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 8
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx13, align 4
  store i32 %24, ptr @minor, align 4
  %arrayidx14 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 9
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14, align 4
  %shl = shl i32 %26, 20
  %arrayidx15 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 10
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx15, align 4
  %or = or i32 %shl, %28
  %and1.i = and i32 %28, 255
  %29 = lshr i32 %or, 12
  %shl.i = and i32 %29, 1048320
  %and2.i = shl i32 %28, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or.i = or i32 %shl3.i, %and1.i
  %or4.i = or i32 %or.i, %shl.i
  store i32 %or4.i, ptr @rdev, align 4
  %arrayidx17 = getelementptr inbounds [12 x i32], ptr %parsed, i32 0, i32 11
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17, align 4
  store i32 %31, ptr @name_len, align 4
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %parsed) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_hash() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %p.07 = phi ptr [ @head, %entry ], [ %incdec.ptr, %for.inc.while.cond.preheader_crit_edge ]
  %0 = ptrtoint ptr %p.07 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p.07, align 4
  %tobool.not6 = icmp eq ptr %1, null
  br i1 %tobool.not6, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.hash, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next, align 4
  %5 = ptrtoint ptr %p.07 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %p.07, align 4
  tail call void @kfree(ptr noundef nonnull %2) #19
  %6 = ptrtoint ptr %p.07 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.07, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %incdec.ptr = getelementptr ptr, ptr %p.07, i32 1
  %cmp = icmp ult ptr %incdec.ptr, getelementptr inbounds ([32 x ptr], ptr @head, i32 1, i32 0)
  br i1 %cmp, label %for.inc.while.cond.preheader_crit_edge, label %for.end

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clean_path(ptr noundef %path, i16 noundef zeroext %fmode) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %st = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #19
  %0 = call ptr @memset(ptr %st, i32 255, i32 144)
  %call = call i32 @init_stat(ptr noundef %path, ptr noundef nonnull %st, i32 noundef 256) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.kstat, ptr %st, i32 0, i32 1
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mode, align 4
  %xor13 = xor i16 %2, %fmode
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %xor13)
  %tobool2.not = icmp ult i16 %xor13, 4096
  br i1 %tobool2.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %call8 = call i32 @init_rmdir(ptr noundef %path) #23
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %call9 = call i32 @init_unlink(ptr noundef %path) #23
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #19
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @maybe_link() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nlink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @major, align 4
  %2 = load i32, ptr @minor, align 4
  %3 = load i32, ptr @ino, align 4
  %4 = load i16, ptr @mode, align 2
  %5 = load ptr, ptr @collected, align 4
  %call = tail call fastcc ptr @find_link(i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, ptr noundef %5) #24
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %cleanup

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %6 = load ptr, ptr @collected, align 4
  tail call fastcc void @clean_path(ptr noundef %6, i16 noundef zeroext 0) #24
  %7 = load ptr, ptr @collected, align 4
  %call2 = tail call i32 @init_link(ptr noundef nonnull %call, ptr noundef %7) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp3.inv = icmp sgt i32 %call2, -1
  %cond = select i1 %cmp3.inv, i32 1, i32 -1
  br label %return

return:                                           ; preds = %cleanup, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %cond, %cleanup ], [ 0, %entry.return_crit_edge ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fchown(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fchmod(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_truncate(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mkdir(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chown(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chmod(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dir_add(ptr noundef %name, i64 noundef %mtime) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #25
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic_show_mem(ptr noundef nonnull @.str.29)
  unreachable

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %prev.i, align 4
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #19
  %name2 = getelementptr inbounds %struct.dir_entry, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %name2, align 8
  %mtime3 = getelementptr inbounds %struct.dir_entry, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %mtime3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %mtime, ptr %mtime3, align 8
  %5 = load ptr, ptr @dir_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull @dir_list, ptr noundef %5) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %call7.i, align 8
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dir_list, ptr %prev.i, align 4
  store volatile ptr %call7.i, ptr @dir_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_stat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_rmdir(ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_unlink(ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_link(i32 noundef %major, i32 noundef %minor, i32 noundef %ino, i16 noundef zeroext %mode, ptr nocapture noundef readonly %name) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.i = shl i32 %major, 3
  %add.i = add i32 %shl.i, %minor
  %add1.i = add i32 %add.i, %ino
  %shr.i = lshr i32 %add1.i, 5
  %add2.i = add i32 %shr.i, %add1.i
  %and.i = and i32 %add2.i, 31
  %add.ptr = getelementptr ptr, ptr @head, i32 %and.i
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not53 = icmp eq ptr %1, null
  br i1 %tobool.not53, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %12, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %ino)
  %cmp.not = icmp eq i32 %4, %ino
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end:                                           ; preds = %for.body
  %minor2 = getelementptr inbounds %struct.hash, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %minor2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %minor)
  %cmp3.not = icmp eq i32 %6, %minor
  br i1 %cmp3.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %major6 = getelementptr inbounds %struct.hash, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %major6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %major6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %major)
  %cmp7.not = icmp eq i32 %8, %major
  br i1 %cmp7.not, label %if.end9, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end9:                                          ; preds = %if.end5
  %mode10 = getelementptr inbounds %struct.hash, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %mode10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mode10, align 4
  %xor50 = xor i16 %10, %mode
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %xor50)
  %tobool12.not = icmp ult i16 %xor50, 4096
  br i1 %tobool12.not, label %if.end14, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  %name15 = getelementptr inbounds %struct.hash, ptr %2, i32 0, i32 5
  br label %cleanup

for.inc:                                          ; preds = %if.end9.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.hash, ptr %2, i32 0, i32 4
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  %next.le = getelementptr inbounds %struct.hash, ptr %2, i32 0, i32 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %add.ptr, %entry.for.end_crit_edge ], [ %next.le, %for.end.loopexit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4120) #25
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic_show_mem(ptr noundef nonnull @.str.28)
  unreachable

if.end19:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  %major20 = getelementptr inbounds %struct.hash, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %major20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %major, ptr %major20, align 8
  %minor21 = getelementptr inbounds %struct.hash, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %minor21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %minor, ptr %minor21, align 4
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ino, ptr %call7.i, align 8
  %mode23 = getelementptr inbounds %struct.hash, ptr %call7.i, i32 0, i32 3
  %17 = ptrtoint ptr %mode23 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %mode, ptr %mode23, align 4
  %name24 = getelementptr inbounds %struct.hash, ptr %call7.i, i32 0, i32 5
  %call26 = tail call ptr @strcpy(ptr noundef %name24, ptr noundef %name) #28
  %next27 = getelementptr inbounds %struct.hash, ptr %call7.i, i32 0, i32 4
  %18 = ptrtoint ptr %next27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %next27, align 8
  %19 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %p.0.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14
  %retval.0 = phi ptr [ %name15, %if.end14 ], [ null, %if.end19 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_link(ptr noundef, ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_utimes(ptr noundef, ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xwrite(ptr noundef %file, ptr noundef %p, i32 noundef %count, ptr noundef %pos) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not35 = icmp eq i32 %count, 0
  br i1 %tobool.not35, label %entry.cleanup9_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup9

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %out.038 = phi i32 [ %out.1, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %count.addr.037 = phi i32 [ %count.addr.1, %cleanup.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %p.addr.036 = phi ptr [ %p.addr.1, %cleanup.while.body_crit_edge ], [ %p, %entry.while.body_crit_edge ]
  %call = tail call i32 @kernel_write(ptr noundef %file, ptr noundef %p.addr.036, i32 noundef %count.addr.037, ptr noundef %pos) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call, label %cleanup.thread [
    i32 -4, label %if.then.cleanup_crit_edge
    i32 -11, label %if.then.cleanup_crit_edge50
  ]

if.then.cleanup_crit_edge50:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out.038)
  %tobool4.not = icmp eq i32 %out.038, 0
  %call.out.0 = select i1 %tobool4.not, i32 %call, i32 %out.038
  br label %cleanup9

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.else.cleanup9_crit_edge, label %if.end8

if.else.cleanup9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup9

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr = getelementptr i8, ptr %p.addr.036, i32 %call
  %add = add i32 %call, %out.038
  %sub = sub i32 %count.addr.037, %call
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge50
  %p.addr.1 = phi ptr [ %add.ptr, %if.end8 ], [ %p.addr.036, %if.then.cleanup_crit_edge ], [ %p.addr.036, %if.then.cleanup_crit_edge50 ]
  %count.addr.1 = phi i32 [ %sub, %if.end8 ], [ %count.addr.037, %if.then.cleanup_crit_edge ], [ %count.addr.037, %if.then.cleanup_crit_edge50 ]
  %out.1 = phi i32 [ %add, %if.end8 ], [ %out.038, %if.then.cleanup_crit_edge ], [ %out.038, %if.then.cleanup_crit_edge50 ]
  %tobool.not = icmp eq i32 %count.addr.1, 0
  br i1 %tobool.not, label %cleanup.cleanup9_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

cleanup.cleanup9_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup.cleanup9_crit_edge, %if.else.cleanup9_crit_edge, %cleanup.thread, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ %call.out.0, %cleanup.thread ], [ 0, %entry.cleanup9_crit_edge ], [ %out.038, %if.else.cleanup9_crit_edge ], [ %out.1, %cleanup.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_utimes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_symlink(ptr noundef, ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @__usermodehelper_set_disable_depth(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind readnone }
attributes #23 = { cold nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !152, !154, !156, !157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__setup_retain_initrd_param, !1, !"__setup_retain_initrd_param", i1 false, i1 false}
!1 = !{!"../init/initramfs.c", i32 535, i32 1}
!2 = !{ptr @__setup_keepinitrd_setup, !3, !"__setup_keepinitrd_setup", i1 false, i1 false}
!3 = !{!"../init/initramfs.c", i32 543, i32 1}
!4 = !{ptr @__setup_initramfs_async_setup, !5, !"__setup_initramfs_async_setup", i1 false, i1 false}
!5 = !{!"../init/initramfs.c", i32 552, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../init/initramfs.c", i32 580, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @reserve_initrd_mem._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @reserve_initrd_mem._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../init/initramfs.c", i32 586, i32 3}
!14 = !{ptr @reserve_initrd_mem._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @reserve_initrd_mem._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../init/initramfs.c", i32 599, i32 2}
!18 = !{ptr @reserve_initrd_mem._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @reserve_initrd_mem._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../init/initramfs.c", i32 614, i32 4}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../init/initramfs.c", i32 720, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wait_for_initramfs._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @wait_for_initramfs._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_wait_for_initramfs, !29, !"__ksymtab_wait_for_initramfs", i1 false, i1 false}
!29 = !{!"../init/initramfs.c", i32 725, i32 1}
!30 = !{ptr @__initcall__kmod_initramfs__258_736_populate_rootfsrootfs, !31, !"__initcall__kmod_initramfs__258_736_populate_rootfsrootfs", i1 false, i1 false}
!31 = !{!"../init/initramfs.c", i32 736, i32 1}
!32 = !{ptr @initramfs_cookie, !33, !"initramfs_cookie", i1 false, i1 false}
!33 = !{!"../init/initramfs.c", i32 709, i32 23}
!34 = !{ptr @__setup_str_retain_initrd_param, !1, !"__setup_str_retain_initrd_param", i1 false, i1 false}
!35 = distinct !{null, !36, !"do_retain_initrd", i1 false, i1 false}
!36 = !{!"../init/initramfs.c", i32 526, i32 23}
!37 = !{ptr @__setup_str_keepinitrd_setup, !3, !"__setup_str_keepinitrd_setup", i1 false, i1 false}
!38 = !{ptr @__setup_str_initramfs_async_setup, !5, !"__setup_str_initramfs_async_setup", i1 false, i1 false}
!39 = !{ptr @initramfs_async, !40, !"initramfs_async", i1 false, i1 false}
!40 = !{!"../init/initramfs.c", i32 546, i32 24}
!41 = !{ptr @initramfs_domain, !42, !"initramfs_domain", i1 false, i1 false}
!42 = !{!"../init/initramfs.c", i32 708, i32 8}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../init/initramfs.c", i32 676, i32 18}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../init/initramfs.c", i32 682, i32 3}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @do_populate_rootfs._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @do_populate_rootfs._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @unpack_to_rootfs.msg_buf, !51, !"msg_buf", i1 false, i1 false}
!51 = !{!"../init/initramfs.c", i32 469, i32 25}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../init/initramfs.c", i32 476, i32 18}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../init/initramfs.c", i32 498, i32 3}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @unpack_to_rootfs.__UNIQUE_ID_ddebug255, !55, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../init/initramfs.c", i32 503, i32 11}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../init/initramfs.c", i32 507, i32 7}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../init/initramfs.c", i32 512, i32 10}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../init/initramfs.c", i32 514, i32 10}
!67 = !{ptr @header_buf, !68, !"header_buf", i1 false, i1 false}
!68 = !{!"../init/initramfs.c", i32 236, i32 25}
!69 = !{ptr @symlink_buf, !70, !"symlink_buf", i1 false, i1 false}
!70 = !{!"../init/initramfs.c", i32 236, i32 38}
!71 = !{ptr @name_buf, !72, !"name_buf", i1 false, i1 false}
!72 = !{!"../init/initramfs.c", i32 236, i32 52}
!73 = !{ptr @state, !74, !"state", i1 false, i1 false}
!74 = !{!"../init/initramfs.c", i32 205, i32 3}
!75 = !{ptr @this_header, !76, !"this_header", i1 false, i1 false}
!76 = !{!"../init/initramfs.c", i32 209, i32 26}
!77 = !{ptr @message, !78, !"message", i1 false, i1 false}
!78 = !{!"../init/initramfs.c", i32 44, i32 25}
!79 = !{ptr @byte_count, !80, !"byte_count", i1 false, i1 false}
!80 = !{!"../init/initramfs.c", i32 208, i32 22}
!81 = !{ptr @victim, !82, !"victim", i1 false, i1 false}
!82 = !{!"../init/initramfs.c", i32 207, i32 25}
!83 = !{ptr @actions, !84, !"actions", i1 false, i1 false}
!84 = !{!"../init/initramfs.c", i32 416, i32 25}
!85 = !{ptr @collected, !86, !"collected", i1 false, i1 false}
!86 = !{!"../init/initramfs.c", i32 218, i32 25}
!87 = !{ptr @collect, !88, !"collect", i1 false, i1 false}
!88 = !{!"../init/initramfs.c", i32 220, i32 25}
!89 = !{ptr @remains, !90, !"remains", i1 false, i1 false}
!90 = !{!"../init/initramfs.c", i32 219, i32 13}
!91 = !{ptr @next_state, !92, !"next_state", i1 false, i1 false}
!92 = !{!"../init/initramfs.c", i32 205, i32 10}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../init/initramfs.c", i32 260, i32 24}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../init/initramfs.c", i32 261, i32 9}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../init/initramfs.c", i32 264, i32 24}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../init/initramfs.c", i32 265, i32 9}
!101 = !{ptr @ino, !102, !"ino", i1 false, i1 false}
!102 = !{!"../init/initramfs.c", i32 163, i32 33}
!103 = !{ptr @uid, !104, !"uid", i1 false, i1 false}
!104 = !{!"../init/initramfs.c", i32 166, i32 25}
!105 = !{ptr @gid, !106, !"gid", i1 false, i1 false}
!106 = !{!"../init/initramfs.c", i32 167, i32 25}
!107 = !{ptr @nlink, !108, !"nlink", i1 false, i1 false}
!108 = !{!"../init/initramfs.c", i32 163, i32 52}
!109 = !{ptr @mtime, !110, !"mtime", i1 false, i1 false}
!110 = !{!"../init/initramfs.c", i32 159, i32 28}
!111 = !{ptr @major, !112, !"major", i1 false, i1 false}
!112 = !{!"../init/initramfs.c", i32 163, i32 38}
!113 = !{ptr @minor, !114, !"minor", i1 false, i1 false}
!114 = !{!"../init/initramfs.c", i32 163, i32 45}
!115 = !{ptr @rdev, !116, !"rdev", i1 false, i1 false}
!116 = !{!"../init/initramfs.c", i32 168, i32 28}
!117 = !{ptr @name_len, !118, !"name_len", i1 false, i1 false}
!118 = !{!"../init/initramfs.c", i32 165, i32 43}
!119 = !{ptr @body_len, !120, !"body_len", i1 false, i1 false}
!120 = !{!"../init/initramfs.c", i32 165, i32 33}
!121 = !{ptr @next_header, !122, !"next_header", i1 false, i1 false}
!122 = !{!"../init/initramfs.c", i32 209, i32 39}
!123 = !{ptr @mode, !124, !"mode", i1 false, i1 false}
!124 = !{!"../init/initramfs.c", i32 164, i32 27}
!125 = !{ptr @.str.27, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../init/initramfs.c", i32 341, i32 24}
!127 = !{ptr @head, !128, !"head", i1 false, i1 false}
!128 = !{!"../init/initramfs.c", i32 70, i32 4}
!129 = !{ptr @.str.28, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../init/initramfs.c", i32 96, i32 18}
!131 = !{ptr @wfile, !132, !"wfile", i1 false, i1 false}
!132 = !{!"../init/initramfs.c", i32 334, i32 32}
!133 = !{ptr @wfile_pos, !134, !"wfile_pos", i1 false, i1 false}
!134 = !{!"../init/initramfs.c", i32 335, i32 26}
!135 = !{ptr @.str.29, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../init/initramfs.c", i32 141, i32 18}
!137 = !{ptr @dir_list, !138, !"dir_list", i1 false, i1 false}
!138 = !{!"../init/initramfs.c", i32 130, i32 19}
!139 = !{ptr @.str.30, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../init/initramfs.c", i32 385, i32 10}
!141 = !{ptr @.str.31, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../init/initramfs.c", i32 305, i32 9}
!143 = !{ptr @.str.32, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../init/initramfs.c", i32 455, i32 10}
!145 = !{ptr @my_inptr, !146, !"my_inptr", i1 false, i1 false}
!146 = !{!"../init/initramfs.c", i32 460, i32 22}
!147 = !{ptr @.str.33, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../init/initramfs.c", i32 656, i32 2}
!149 = !{ptr @.str.34, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @populate_initrd_image._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @populate_initrd_image._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.35, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../init/initramfs.c", i32 658, i32 19}
!154 = !{ptr @.str.37, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../init/initramfs.c", i32 665, i32 3}
!156 = !{ptr @populate_initrd_image._entry.36, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @populate_initrd_image._entry_ptr.38, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 2148999420, i64 2148999443, i64 2148999475, i64 2148999507, i64 2148999545, i64 2148999575}
!168 = !{!"branch_weights", i32 2000, i32 1}
!169 = !{i8 0, i8 2}
!170 = !{!"auto-init"}
!171 = !{i64 2148414602, i64 2148414607, i64 2148414620, i64 2148414664, i64 2148414698, i64 2148414719}
