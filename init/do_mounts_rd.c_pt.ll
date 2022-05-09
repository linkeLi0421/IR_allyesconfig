; ModuleID = '/llk/IR_all_yes/init/do_mounts_rd.c_pt.bc'
source_filename = "../init/do_mounts_rd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.romfs_super_block = type { i32, i32, i32, i32, [0 x i8] }
%struct.cramfs_super = type { i32, i32, i32, i32, [16 x i8], %struct.cramfs_info, [16 x i8], %struct.cramfs_inode }
%struct.cramfs_info = type { i32, i32, i32, i32 }
%struct.cramfs_inode = type { [12 x i8] }
%struct.squashfs_super_block = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.minix_super_block = type { i16, i16, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }

@__setup_str_prompt_ramdisk = internal constant [16 x i8] c"prompt_ramdisk=\00", section ".init.rodata", align 1
@__setup_prompt_ramdisk = internal global %struct.obs_kernel_param { ptr @__setup_str_prompt_ramdisk, ptr @prompt_ramdisk, i32 0 }, section ".init.setup", align 4
@__setup_str_ramdisk_start_setup = internal constant [15 x i8] c"ramdisk_start=\00", section ".init.rodata", align 1
@__setup_ramdisk_start_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ramdisk_start_setup, ptr @ramdisk_start_setup, i32 0 }, section ".init.setup", align 4
@__const.rd_load_image.rotator = private unnamed_addr constant [4 x i8] c"|/-\\", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"/dev/ram\00", [23 x i8] zeroinitializer }, align 32
@out_file = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@in_file = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rd_image_start = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@in_pos = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rd_load_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RAMDISK: image too big! (%dKiB/%ldKiB)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rd_load_image\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init/do_mounts_rd.c\00", [44 x i8] zeroinitializer }, align 32
@rd_load_image._entry_ptr = internal global ptr @rd_load_image._entry, section ".printk_index", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"/initrd.image\00", [18 x i8] zeroinitializer }, align 32
@rd_load_image._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013RAMDISK: could not determine device size\0A\00", [52 x i8] zeroinitializer }, align 32
@rd_load_image._entry_ptr.7 = internal global ptr @rd_load_image._entry.5, section ".printk_index", align 4
@rd_load_image._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013RAMDISK: could not allocate buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@rd_load_image._entry_ptr.10 = internal global ptr @rd_load_image._entry.8, section ".printk_index", align 4
@rd_load_image._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015RAMDISK: Loading %dKiB [%ld disk%s] into ram disk... \00", [40 x i8] zeroinitializer }, align 32
@rd_load_image._entry_ptr.13 = internal global ptr @rd_load_image._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@rd_load_image._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01cdone disk #1.\0A\00", [47 x i8] zeroinitializer }, align 32
@rd_load_image._entry_ptr.18 = internal global ptr @rd_load_image._entry.16, section ".printk_index", align 4
@out_pos = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rd_load_image._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%c\08\00", [26 x i8] zeroinitializer }, align 32
@rd_load_image._entry_ptr.21 = internal global ptr @rd_load_image._entry.19, section ".printk_index", align 4
@rd_load_image._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cdone.\0A\00", [23 x i8] zeroinitializer }, align 32
@rd_load_image._entry_ptr.24 = internal global ptr @rd_load_image._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"/dev/root\00", [22 x i8] zeroinitializer }, align 32
@ROOT_DEV = external dso_local local_unnamed_addr global i32, align 4
@prompt_ramdisk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014ignoring the deprecated prompt_ramdisk= option\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prompt_ramdisk\00", [17 x i8] zeroinitializer }, align 32
@prompt_ramdisk._entry_ptr = internal global ptr @prompt_ramdisk._entry, section ".printk_index", align 4
@identify_ramdisk_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015RAMDISK: %s image found at block %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"identify_ramdisk_image\00", [41 x i8] zeroinitializer }, align 32
@identify_ramdisk_image._entry_ptr = internal global ptr @identify_ramdisk_image._entry, section ".printk_index", align 4
@identify_ramdisk_image._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\010RAMDISK: %s decompressor not configured!\0A\00", [52 x i8] zeroinitializer }, align 32
@identify_ramdisk_image._entry_ptr.32 = internal global ptr @identify_ramdisk_image._entry.30, section ".printk_index", align 4
@identify_ramdisk_image._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015RAMDISK: romfs filesystem found at block %d\0A\00", [49 x i8] zeroinitializer }, align 32
@identify_ramdisk_image._entry_ptr.35 = internal global ptr @identify_ramdisk_image._entry.33, section ".printk_index", align 4
@identify_ramdisk_image._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015RAMDISK: cramfs filesystem found at block %d\0A\00", [48 x i8] zeroinitializer }, align 32
@identify_ramdisk_image._entry_ptr.38 = internal global ptr @identify_ramdisk_image._entry.36, section ".printk_index", align 4
@identify_ramdisk_image._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.3, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015RAMDISK: squashfs filesystem found at block %d\0A\00", [46 x i8] zeroinitializer }, align 32
@identify_ramdisk_image._entry_ptr.41 = internal global ptr @identify_ramdisk_image._entry.39, section ".printk_index", align 4
@identify_ramdisk_image._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.3, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@identify_ramdisk_image._entry_ptr.43 = internal global ptr @identify_ramdisk_image._entry.42, section ".printk_index", align 4
@identify_ramdisk_image._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.29, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015RAMDISK: Minix filesystem found at block %d\0A\00", [49 x i8] zeroinitializer }, align 32
@identify_ramdisk_image._entry_ptr.46 = internal global ptr @identify_ramdisk_image._entry.44, section ".printk_index", align 4
@identify_ramdisk_image._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.3, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015RAMDISK: ext2 filesystem found at block %d\0A\00", [50 x i8] zeroinitializer }, align 32
@identify_ramdisk_image._entry_ptr.49 = internal global ptr @identify_ramdisk_image._entry.47, section ".printk_index", align 4
@identify_ramdisk_image._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.29, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015RAMDISK: Couldn't find valid RAM disk image starting at %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@identify_ramdisk_image._entry_ptr.52 = internal global ptr @identify_ramdisk_image._entry.50, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@crd_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\010Invalid ramdisk decompression routine.  Select appropriate config option.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"crd_load\00", [23 x i8] zeroinitializer }, align 32
@crd_load._entry_ptr = internal global ptr @crd_load._entry, section ".printk_index", align 4
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not decompress initial ramdisk image.\00", [52 x i8] zeroinitializer }, align 32
@decompress_error = internal global { i1, [31 x i8] } zeroinitializer, align 32
@compr_fill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013RAMDISK: error while reading compressed data\00", [49 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compr_fill\00", [21 x i8] zeroinitializer }, align 32
@compr_fill._entry_ptr = internal global ptr @compr_fill._entry, section ".printk_index", align 4
@compr_fill._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013RAMDISK: EOF while reading compressed data\00", [51 x i8] zeroinitializer }, align 32
@compr_fill._entry_ptr.60 = internal global ptr @compr_fill._entry.58, section ".printk_index", align 4
@compr_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013RAMDISK: incomplete write (%ld != %ld)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"compr_flush\00", [20 x i8] zeroinitializer }, align 32
@compr_flush._entry_ptr = internal global ptr @compr_flush._entry, section ".printk_index", align 4
@error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\013%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@error._entry_ptr = internal global ptr @error._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 684539205, i64 762474349, i64 1752396147]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 4991, i64 5007]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 198, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"out_file\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 17, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"in_file\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 17, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"in_pos\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 18, i32 15 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 223, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 231, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 237, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 243, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 247, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 251, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [8 x i8] c"out_pos\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 18, i32 23 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 260, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 265, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 281, i32 13 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 22, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 90, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 93, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 103, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 111, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 120, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 135, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 151, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 161, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 168, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 325, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 327, i32 9 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"decompress_error\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 293, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 295, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 304, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [23 x i8] c"../init/do_mounts_rd.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 315, i32 2 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__setup_prompt_ramdisk, ptr @__setup_ramdisk_start_setup, ptr @compr_fill._entry, ptr @compr_fill._entry.58, ptr @compr_fill._entry_ptr, ptr @compr_fill._entry_ptr.60, ptr @compr_flush._entry, ptr @compr_flush._entry_ptr, ptr @crd_load._entry, ptr @crd_load._entry_ptr, ptr @error._entry, ptr @error._entry_ptr, ptr @identify_ramdisk_image._entry, ptr @identify_ramdisk_image._entry.30, ptr @identify_ramdisk_image._entry.33, ptr @identify_ramdisk_image._entry.36, ptr @identify_ramdisk_image._entry.39, ptr @identify_ramdisk_image._entry.42, ptr @identify_ramdisk_image._entry.44, ptr @identify_ramdisk_image._entry.47, ptr @identify_ramdisk_image._entry.50, ptr @identify_ramdisk_image._entry_ptr, ptr @identify_ramdisk_image._entry_ptr.32, ptr @identify_ramdisk_image._entry_ptr.35, ptr @identify_ramdisk_image._entry_ptr.38, ptr @identify_ramdisk_image._entry_ptr.41, ptr @identify_ramdisk_image._entry_ptr.43, ptr @identify_ramdisk_image._entry_ptr.46, ptr @identify_ramdisk_image._entry_ptr.49, ptr @identify_ramdisk_image._entry_ptr.52, ptr @prompt_ramdisk._entry, ptr @prompt_ramdisk._entry_ptr, ptr @rd_load_image._entry, ptr @rd_load_image._entry.11, ptr @rd_load_image._entry.16, ptr @rd_load_image._entry.19, ptr @rd_load_image._entry.22, ptr @rd_load_image._entry.5, ptr @rd_load_image._entry.8, ptr @rd_load_image._entry_ptr, ptr @rd_load_image._entry_ptr.10, ptr @rd_load_image._entry_ptr.13, ptr @rd_load_image._entry_ptr.18, ptr @rd_load_image._entry_ptr.21, ptr @rd_load_image._entry_ptr.24, ptr @rd_load_image._entry_ptr.7, ptr @.str, ptr @out_file, ptr @in_file, ptr @in_pos, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @out_pos, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @decompress_error, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_file to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_file to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_pos to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_load_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_load_image._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_load_image._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_load_image._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_load_image._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_pos to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_load_image._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_load_image._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prompt_ramdisk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_ramdisk_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_ramdisk_image._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_ramdisk_image._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_ramdisk_image._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_ramdisk_image._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_ramdisk_image._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_ramdisk_image._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_ramdisk_image._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_ramdisk_image._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crd_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decompress_error to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compr_fill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compr_fill._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compr_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prompt_ramdisk(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #14
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ramdisk_start_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtol(ptr noundef %str, ptr noundef null, i32 noundef 0) #11
  store i32 %call, ptr @rd_image_start, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rd_load_image(ptr noundef %from) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %decompressor = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %decompressor) #11
  %0 = ptrtoint ptr %decompressor to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %decompressor, align 4
  %call = tail call ptr @filp_open(ptr noundef nonnull @.str, i32 noundef 2, i16 noundef zeroext 0) #11
  store ptr %call, ptr @out_file, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @filp_open(ptr noundef %from, i32 noundef 0, i16 noundef zeroext 0) #11
  store ptr %call2, ptr @in_file, align 4
  %cmp.i108 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.end.noclose_input_crit_edge, label %if.end5

if.end.noclose_input_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %noclose_input

if.end5:                                          ; preds = %if.end
  %1 = load i32, ptr @rd_image_start, align 4
  %mul = shl i32 %1, 10
  %conv = sext i32 %mul to i64
  store i64 %conv, ptr @in_pos, align 8
  %call6 = call fastcc i32 @identify_ramdisk_image(ptr noundef %call2, i64 noundef %conv, ptr noundef nonnull %decompressor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.done_crit_edge, label %if.end9

if.end5.done_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp10 = icmp eq i32 %call6, 0
  br i1 %cmp10, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end9
  %2 = ptrtoint ptr %decompressor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decompressor, align 4
  %call13 = tail call fastcc i32 @crd_load(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then12.successful_load_crit_edge, label %if.then12.done_crit_edge

if.then12.done_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then12.successful_load_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %successful_load

if.end18:                                         ; preds = %if.end9
  %4 = load ptr, ptr @out_file, align 4
  %call19 = tail call fastcc i32 @nr_blocks(ptr noundef %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %call19)
  %cmp20 = icmp ugt i32 %call6, %call19
  br i1 %cmp20, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call6, i32 noundef %call19) #14
  br label %done

if.end24:                                         ; preds = %if.end18
  %call25 = tail call i32 @strcmp(ptr noundef %from, ptr noundef nonnull dereferenceable(14) @.str.4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.end24.if.end39_crit_edge, label %if.end30

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end30:                                         ; preds = %if.end24
  %5 = load ptr, ptr @in_file, align 4
  %call29 = tail call fastcc i32 @nr_blocks(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp31 = icmp eq i32 %call29, 0
  br i1 %cmp31, label %do.end36, label %if.end30.if.end39_crit_edge

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %done

if.end39:                                         ; preds = %if.end30.if.end39_crit_edge, %if.end24.if.end39_crit_edge
  %devblocks.0111 = phi i32 [ %call29, %if.end30.if.end39_crit_edge ], [ %call6, %if.end24.if.end39_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1024) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end44, label %for.body.preheader

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %done

for.body.preheader:                               ; preds = %if.end39
  %sub = add nsw i32 %call6, -1
  %div = udiv i32 %sub, %devblocks.0111
  %add = add nuw nsw i32 %div, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %devblocks.0111)
  %cmp52 = icmp ugt i32 %call6, %devblocks.0111
  %cond = select i1 %cmp52, ptr @.str.14, ptr @.str.15
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call6, i32 noundef %add, ptr noundef nonnull %cond) #14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0114 = phi i32 [ %inc80, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %rotate.0113 = phi i16 [ %rotate.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0114)
  %tobool57.not = icmp eq i32 %i.0114, 0
  br i1 %tobool57.not, label %for.body.if.end66_crit_edge, label %land.lhs.true

for.body.if.end66_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

land.lhs.true:                                    ; preds = %for.body
  %rem = urem i32 %i.0114, %devblocks.0111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp58 = icmp eq i32 %rem, 0
  br i1 %cmp58, label %do.end63, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

do.end63:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  %7 = load ptr, ptr @in_file, align 4
  tail call void @fput(ptr noundef %7) #11
  br label %do.end83

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %for.body.if.end66_crit_edge
  %8 = load ptr, ptr @in_file, align 4
  %call67 = tail call i32 @kernel_read(ptr noundef %8, ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull @in_pos) #11
  %9 = load ptr, ptr @out_file, align 4
  %call68 = tail call i32 @kernel_write(ptr noundef %9, ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull @out_pos) #11
  %10 = and i32 %i.0114, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool70.not = icmp eq i32 %10, 0
  br i1 %tobool70.not, label %do.end74, label %if.end66.for.inc_crit_edge

if.end66.for.inc_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %11 = and i16 %rotate.0113, 3
  %and = zext i16 %11 to i32
  %arrayidx = getelementptr [4 x i8], ptr @__const.rd_load_image.rotator, i32 0, i32 %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv77 = zext i8 %13 to i32
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv77) #14
  %inc = add i16 %rotate.0113, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end74, %if.end66.for.inc_crit_edge
  %rotate.1 = phi i16 [ %rotate.0113, %if.end66.for.inc_crit_edge ], [ %inc, %do.end74 ]
  %inc80 = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc80, %call6
  br i1 %exitcond.not, label %for.inc.do.end83_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end83_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end83

do.end83:                                         ; preds = %for.inc.do.end83_crit_edge, %do.end63
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %successful_load

successful_load:                                  ; preds = %do.end83, %if.then12.successful_load_crit_edge
  %buf.0 = phi ptr [ null, %if.then12.successful_load_crit_edge ], [ %call7.i, %do.end83 ]
  br label %done

done:                                             ; preds = %successful_load, %do.end44, %do.end36, %do.end, %if.then12.done_crit_edge, %if.end5.done_crit_edge
  %buf.1 = phi ptr [ null, %if.end5.done_crit_edge ], [ %buf.0, %successful_load ], [ null, %if.then12.done_crit_edge ], [ null, %do.end ], [ null, %do.end36 ], [ null, %do.end44 ]
  %res.0 = phi i32 [ 0, %if.end5.done_crit_edge ], [ 1, %successful_load ], [ 0, %if.then12.done_crit_edge ], [ 0, %do.end ], [ 0, %do.end36 ], [ 0, %do.end44 ]
  %14 = load ptr, ptr @in_file, align 4
  tail call void @fput(ptr noundef %14) #11
  br label %noclose_input

noclose_input:                                    ; preds = %done, %if.end.noclose_input_crit_edge
  %buf.2 = phi ptr [ null, %if.end.noclose_input_crit_edge ], [ %buf.1, %done ]
  %res.1 = phi i32 [ 0, %if.end.noclose_input_crit_edge ], [ %res.0, %done ]
  %15 = load ptr, ptr @out_file, align 4
  tail call void @fput(ptr noundef %15) #11
  br label %out

out:                                              ; preds = %noclose_input, %entry.out_crit_edge
  %buf.3 = phi ptr [ null, %entry.out_crit_edge ], [ %buf.2, %noclose_input ]
  %res.2 = phi i32 [ 0, %entry.out_crit_edge ], [ %res.1, %noclose_input ]
  tail call void @kfree(ptr noundef %buf.3) #11
  %call86 = tail call i32 @init_unlink(ptr noundef nonnull @.str) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %decompressor) #11
  ret i32 %res.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @identify_ramdisk_image(ptr noundef %file, i64 noundef %pos, ptr nocapture noundef %decompressor) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %pos.addr = alloca i64, align 8
  %compress_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compress_name) #11
  %0 = ptrtoint ptr %compress_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %compress_name, align 4, !annotation !134
  %1 = load i32, ptr @rd_image_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 512) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memset(ptr %call7.i, i32 229, i32 512)
  %mul = shl i32 %1, 10
  %conv = sext i32 %mul to i64
  %4 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %pos.addr, align 8
  %call1 = call i32 @kernel_read(ptr noundef %file, ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef nonnull %pos.addr) #11
  %call2 = call ptr @decompress_method(ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef nonnull %compress_name) #11
  %5 = ptrtoint ptr %decompressor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %decompressor, align 4
  %6 = ptrtoint ptr %compress_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compress_name, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull %7, i32 noundef %1) #14
  %8 = ptrtoint ptr %decompressor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %decompressor, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %do.end10, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %compress_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compress_name, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %11) #14
  br label %done

if.end14:                                         ; preds = %if.end
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call7.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end14.if.end51_crit_edge [
    i32 762474349, label %land.lhs.true
    i32 684539205, label %do.end31
    i32 1752396147, label %do.end44
  ]

if.end14.if.end51_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end14
  %word1 = getelementptr inbounds %struct.romfs_super_block, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %word1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %word1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 828797741, i32 %16)
  %cmp16 = icmp eq i32 %16, 828797741
  br i1 %cmp16, label %do.end21, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

do.end21:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %1) #14
  %size24 = getelementptr inbounds %struct.romfs_super_block, ptr %call7.i, i32 0, i32 2
  %17 = ptrtoint ptr %size24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size24, align 8
  %sub = add i32 %18, 1023
  %shr = lshr i32 %sub, 10
  br label %done

do.end31:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %1) #14
  %size34 = getelementptr inbounds %struct.cramfs_super, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %size34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size34, align 4
  %sub36 = add i32 %20, 1023
  %shr37 = lshr i32 %sub36, 10
  br label %done

do.end44:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %1) #14
  %bytes_used = getelementptr inbounds %struct.squashfs_super_block, ptr %call7.i, i32 0, i32 12
  %21 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes_used, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  %sub48 = add i64 %23, 1023
  %shr49 = lshr i64 %sub48, 10
  %conv50 = trunc i64 %shr49 to i32
  br label %done

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %if.end14.if.end51_crit_edge
  %add53 = or i32 %mul, 512
  %conv54 = sext i32 %add53 to i64
  %24 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv54, ptr %pos.addr, align 8
  %call55 = call i32 @kernel_read(ptr noundef %file, ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef nonnull %pos.addr) #11
  %25 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 684539205, i32 %26)
  %cmp57 = icmp eq i32 %26, 684539205
  br i1 %cmp57, label %do.end62, label %if.end69

do.end62:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %1) #14
  %size65 = getelementptr inbounds %struct.cramfs_super, ptr %call7.i, i32 0, i32 1
  %27 = ptrtoint ptr %size65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size65, align 4
  %sub67 = add i32 %28, 1023
  %shr68 = lshr i32 %sub67, 10
  br label %done

if.end69:                                         ; preds = %if.end51
  %mul71 = add i32 %mul, 1024
  %conv72 = sext i32 %mul71 to i64
  %29 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv72, ptr %pos.addr, align 8
  %call73 = call i32 @kernel_read(ptr noundef %file, ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef nonnull %pos.addr) #11
  %s_magic74 = getelementptr inbounds %struct.minix_super_block, ptr %call7.i, i32 0, i32 7
  %30 = ptrtoint ptr %s_magic74 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %s_magic74, align 8
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %31, label %if.end90 [
    i16 4991, label %if.end69.do.end85_crit_edge
    i16 5007, label %if.end69.do.end85_crit_edge153
  ]

if.end69.do.end85_crit_edge153:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end85

if.end69.do.end85_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end85

do.end85:                                         ; preds = %if.end69.do.end85_crit_edge, %if.end69.do.end85_crit_edge153
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %1) #14
  %s_nzones = getelementptr inbounds %struct.minix_super_block, ptr %call7.i, i32 0, i32 1
  %33 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %s_nzones, align 2
  %conv88 = zext i16 %34 to i32
  %s_log_zone_size = getelementptr inbounds %struct.minix_super_block, ptr %call7.i, i32 0, i32 5
  %35 = ptrtoint ptr %s_log_zone_size to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %s_log_zone_size, align 2
  %conv89 = zext i16 %36 to i32
  %shl = shl i32 %conv88, %conv89
  br label %done

if.end90:                                         ; preds = %if.end69
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 56
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 21487, i16 %38)
  %cmp.not.i = icmp eq i16 %38, 21487
  br i1 %cmp.not.i, label %ext2_image_size.exit, label %if.end90.do.end103_crit_edge

if.end90.do.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end103

ext2_image_size.exit:                             ; preds = %if.end90
  %add.ptr2.i = getelementptr i8, ptr %call7.i, i32 4
  %39 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr2.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #11
  %conv3.i = zext i32 %41 to i64
  %add.ptr4.i = getelementptr i8, ptr %call7.i, i32 24
  %42 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr4.i, align 8
  %44 = call i32 @llvm.bswap.i32(i32 %43) #11
  %sh_prom.i = zext i32 %44 to i64
  %shl.i = shl i64 %conv3.i, %sh_prom.i
  %conv92 = trunc i64 %shl.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv92)
  %tobool93.not = icmp eq i32 %conv92, 0
  br i1 %tobool93.not, label %ext2_image_size.exit.do.end103_crit_edge, label %do.end97

ext2_image_size.exit.do.end103_crit_edge:         ; preds = %ext2_image_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end103

do.end97:                                         ; preds = %ext2_image_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %1) #14
  br label %done

do.end103:                                        ; preds = %ext2_image_size.exit.do.end103_crit_edge, %if.end90.do.end103_crit_edge
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %1) #14
  br label %done

done:                                             ; preds = %do.end103, %do.end97, %do.end85, %do.end62, %do.end44, %do.end31, %do.end21, %do.end10, %do.end.done_crit_edge
  %nblocks.0 = phi i32 [ %shr, %do.end21 ], [ %shr37, %do.end31 ], [ %conv50, %do.end44 ], [ %shr68, %do.end62 ], [ %shl, %do.end85 ], [ %conv92, %do.end97 ], [ -1, %do.end103 ], [ 0, %do.end10 ], [ 0, %do.end.done_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %nblocks.0, %done ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compress_name) #11
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crd_load(ptr noundef readonly %deco) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %deco, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.55) #18
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 %deco(ptr noundef null, i32 noundef 0, ptr noundef nonnull @compr_fill, ptr noundef nonnull @compr_flush, ptr noundef null, ptr noundef null, ptr noundef nonnull @error) #11
  %.b = load i1, ptr @decompress_error, align 4
  %spec.store.select = select i1 %.b, i32 1, i32 %call1
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nr_blocks(ptr nocapture noundef readonly %file) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %6)
  %cmp = icmp eq i16 %6, 24576
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !135
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %8 = tail call ptr @llvm.returnaddress(i32 0) #11
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %9) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call ptr @llvm.returnaddress(i32 0) #11
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %11) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !136
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !137

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #11, !srcloc !138
  %13 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !139
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !140
  %15 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %16, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %14, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %16, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !141
  %17 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !142
  %19 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %20, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = lshr i64 %18, 10
  %conv2 = trunc i64 %21 to i32
  br label %cleanup

cleanup:                                          ; preds = %i_size_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv2, %i_size_read.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_unlink(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rd_load_disk(i32 noundef %n) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ROOT_DEV to i32))
  %0 = load i32, ptr @ROOT_DEV, align 4
  tail call fastcc void @create_dev(ptr noundef nonnull @.str.25, i32 noundef %0) #15
  %or = or i32 %n, 1048576
  tail call fastcc void @create_dev(ptr noundef nonnull @.str, i32 noundef %or) #15
  %call2 = tail call i32 @rd_load_image(ptr noundef nonnull @.str.25) #15
  ret i32 %call2
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @create_dev(ptr noundef %name, i32 noundef %dev) unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @init_unlink(ptr noundef %name) #14
  %and1.i = and i32 %dev, 255
  %0 = lshr i32 %dev, 12
  %shl.i = and i32 %0, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %dev, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %call2 = tail call i32 @init_mknod(ptr noundef %name, i16 noundef zeroext 24960, i32 noundef %or4.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @decompress_method(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @compr_fill(ptr noundef %buf, i32 noundef %len) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @in_file, align 4
  %call = tail call i32 @kernel_read(ptr noundef %0, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @in_pos) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.if.end9.sink.split_crit_edge, label %if.else

entry.if.end9.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.else.if.end9.sink.split_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else.if.end9.sink.split_crit_edge, %entry.if.end9.sink.split_crit_edge
  %.str.59.sink = phi ptr [ @.str.56, %entry.if.end9.sink.split_crit_edge ], [ @.str.59, %if.else.if.end9.sink.split_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.59.sink) #14
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @compr_flush(ptr noundef %window, i32 noundef %outcnt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @out_file, align 4
  %call = tail call i32 @kernel_write(ptr noundef %0, ptr noundef %window, i32 noundef %outcnt, ptr noundef nonnull @out_pos) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %outcnt)
  %cmp.not = icmp eq i32 %call, %outcnt
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %.b = load i1, ptr @decompress_error, align 4
  br i1 %.b, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %call, i32 noundef %outcnt) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  store i1 true, ptr @decompress_error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end ], [ %outcnt, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @error(ptr noundef %x) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %x) #14
  store i1 true, ptr @decompress_error, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { cold }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__setup_prompt_ramdisk, !1, !"__setup_prompt_ramdisk", i1 false, i1 false}
!1 = !{!"../init/do_mounts_rd.c", i32 25, i32 1}
!2 = !{ptr @__setup_ramdisk_start_setup, !3, !"__setup_ramdisk_start_setup", i1 false, i1 false}
!3 = !{!"../init/do_mounts_rd.c", i32 34, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../init/do_mounts_rd.c", i32 198, i32 23}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../init/do_mounts_rd.c", i32 223, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rd_load_image._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @rd_load_image._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../init/do_mounts_rd.c", i32 231, i32 19}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../init/do_mounts_rd.c", i32 237, i32 3}
!16 = !{ptr @rd_load_image._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rd_load_image._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../init/do_mounts_rd.c", i32 243, i32 3}
!20 = !{ptr @rd_load_image._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rd_load_image._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../init/do_mounts_rd.c", i32 247, i32 2}
!24 = !{ptr @rd_load_image._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rd_load_image._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../init/do_mounts_rd.c", i32 251, i32 4}
!30 = !{ptr @rd_load_image._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rd_load_image._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../init/do_mounts_rd.c", i32 260, i32 4}
!34 = !{ptr @rd_load_image._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rd_load_image._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../init/do_mounts_rd.c", i32 265, i32 2}
!38 = !{ptr @rd_load_image._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rd_load_image._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../init/do_mounts_rd.c", i32 281, i32 13}
!42 = !{ptr @in_file, !43, !"in_file", i1 false, i1 false}
!43 = !{!"../init/do_mounts_rd.c", i32 17, i32 21}
!44 = !{ptr @out_file, !45, !"out_file", i1 false, i1 false}
!45 = !{!"../init/do_mounts_rd.c", i32 17, i32 31}
!46 = !{ptr @in_pos, !47, !"in_pos", i1 false, i1 false}
!47 = !{!"../init/do_mounts_rd.c", i32 18, i32 15}
!48 = !{ptr @out_pos, !49, !"out_pos", i1 false, i1 false}
!49 = !{!"../init/do_mounts_rd.c", i32 18, i32 23}
!50 = !{ptr @rd_image_start, !51, !"rd_image_start", i1 false, i1 false}
!51 = !{!"../init/do_mounts_rd.c", i32 27, i32 16}
!52 = !{ptr @__setup_str_prompt_ramdisk, !1, !"__setup_str_prompt_ramdisk", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../init/do_mounts_rd.c", i32 22, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @prompt_ramdisk._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @prompt_ramdisk._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @__setup_str_ramdisk_start_setup, !3, !"__setup_str_ramdisk_start_setup", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../init/do_mounts_rd.c", i32 90, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @identify_ramdisk_image._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @identify_ramdisk_image._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../init/do_mounts_rd.c", i32 93, i32 4}
!66 = !{ptr @identify_ramdisk_image._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @identify_ramdisk_image._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../init/do_mounts_rd.c", i32 103, i32 3}
!70 = !{ptr @identify_ramdisk_image._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @identify_ramdisk_image._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../init/do_mounts_rd.c", i32 111, i32 3}
!74 = !{ptr @identify_ramdisk_image._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @identify_ramdisk_image._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../init/do_mounts_rd.c", i32 120, i32 3}
!78 = !{ptr @identify_ramdisk_image._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @identify_ramdisk_image._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @identify_ramdisk_image._entry.42, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../init/do_mounts_rd.c", i32 135, i32 3}
!82 = !{ptr @identify_ramdisk_image._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../init/do_mounts_rd.c", i32 151, i32 3}
!85 = !{ptr @identify_ramdisk_image._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @identify_ramdisk_image._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../init/do_mounts_rd.c", i32 161, i32 3}
!89 = !{ptr @identify_ramdisk_image._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @identify_ramdisk_image._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../init/do_mounts_rd.c", i32 168, i32 2}
!93 = !{ptr @identify_ramdisk_image._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @identify_ramdisk_image._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../init/do_mounts_rd.c", i32 325, i32 3}
!97 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @crd_load._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @crd_load._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../init/do_mounts_rd.c", i32 327, i32 9}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../init/do_mounts_rd.c", i32 293, i32 3}
!104 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @compr_fill._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @compr_fill._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../init/do_mounts_rd.c", i32 295, i32 3}
!109 = !{ptr @compr_fill._entry.58, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @compr_fill._entry_ptr.60, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../init/do_mounts_rd.c", i32 304, i32 4}
!113 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @compr_flush._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @compr_flush._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../init/do_mounts_rd.c", i32 315, i32 2}
!118 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @error._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @error._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = distinct !{null, !122, !"exit_code", i1 false, i1 false}
!122 = !{!"../init/do_mounts_rd.c", i32 286, i32 12}
!123 = distinct !{null, !124, !"decompress_error", i1 false, i1 false}
!124 = !{!"../init/do_mounts_rd.c", i32 287, i32 12}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
!135 = !{i64 608130, i64 608191}
!136 = !{i64 610862}
!137 = !{!"branch_weights", i32 1, i32 2000}
!138 = !{i64 611147}
!139 = !{i64 2152501015}
!140 = !{i64 2152500857}
!141 = !{i64 2152501185}
!142 = !{i64 2150086999}
