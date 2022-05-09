; ModuleID = '/llk/IR_all_yes/fs/pstore/ram_core.c_pt.bc'
source_filename = "../fs/pstore/ram_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.persistent_ram_zone = type { i32, i32, ptr, ptr, i32, i32, %struct.raw_spinlock, ptr, i32, ptr, ptr, ptr, i32, i32, %struct.persistent_ram_ecc_info, ptr, i32 }
%struct.persistent_ram_ecc_info = type { i32, i32, i32, i32, ptr }
%struct.persistent_ram_buffer = type { i32, %struct.atomic_t, %struct.atomic_t, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.9, %union.anon.42, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.42 = type { %struct.atomic_t }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\0A%d Corrected bytes, %d unrecoverable blocks\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0ANo errors detected\0A\00", [43 x i8] zeroinitializer }, align 32
@persistent_ram_save_old._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ramoops: failed to allocate buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"persistent_ram_save_old\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/pstore/ram_core.c\00", [43 x i8] zeroinitializer }, align 32
@persistent_ram_save_old._entry_ptr = internal global ptr @persistent_ram_save_old._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@persistent_ram_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ramoops: failed to allocate persistent ram zone\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"persistent_ram_new\00", [45 x i8] zeroinitializer }, align 32
@persistent_ram_new._entry_ptr = internal global ptr @persistent_ram_new._entry, section ".printk_index", align 4
@persistent_ram_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&prz->buffer_lock\00", [46 x i8] zeroinitializer }, align 32
@persistent_ram_new.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.6, ptr @.str.4, ptr @.str.9, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ramoops\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"attached %s 0x%zx@0x%llx: %zu header, %zu data, %zu ecc (%d/%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"ramoops: attached %s 0x%zx@0x%llx: %zu header, %zu data, %zu ecc (%d/%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@persistent_ram_buffer_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ramoops: %s: Failed to map 0x%llx pages at 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"persistent_ram_buffer_map\00", [38 x i8] zeroinitializer }, align 32
@persistent_ram_buffer_map._entry_ptr = internal global ptr @persistent_ram_buffer_map._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@persistent_ram_vmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ramoops: invalid mem_type=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"persistent_ram_vmap\00", [44 x i8] zeroinitializer }, align 32
@persistent_ram_vmap._entry_ptr = internal global ptr @persistent_ram_vmap._entry, section ".printk_index", align 4
@persistent_ram_vmap._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ramoops: %s: Failed to allocate array for %u pages\0A\00", [42 x i8] zeroinitializer }, align 32
@persistent_ram_vmap._entry_ptr.20 = internal global ptr @persistent_ram_vmap._entry.18, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@persistent_ram_iomap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ramoops: request mem region (%s 0x%llx@0x%llx) failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"persistent_ram_iomap\00", [43 x i8] zeroinitializer }, align 32
@persistent_ram_iomap._entry_ptr = internal global ptr @persistent_ram_iomap._entry, section ".printk_index", align 4
@persistent_ram_post_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014ramoops: ECC failed %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"persistent_ram_post_init\00", [39 x i8] zeroinitializer }, align 32
@persistent_ram_post_init._entry_ptr = internal global ptr @persistent_ram_post_init._entry, section ".printk_index", align 4
@persistent_ram_post_init.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"found existing empty buffer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ramoops: found existing empty buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@persistent_ram_post_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.4, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016ramoops: found existing invalid buffer, size %zu, start %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@persistent_ram_post_init._entry_ptr.29 = internal global ptr @persistent_ram_post_init._entry.27, section ".printk_index", align 4
@persistent_ram_post_init.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.24, ptr @.str.4, ptr @.str.30, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"found existing buffer, size %zu, start %zu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ramoops: found existing buffer, size %zu, start %zu\0A\00", [43 x i8] zeroinitializer }, align 32
@persistent_ram_post_init.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.24, ptr @.str.4, ptr @.str.32, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no valid data in buffer (sig = 0x%08x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ramoops: no valid data in buffer (sig = 0x%08x)\0A\00", [47 x i8] zeroinitializer }, align 32
@persistent_ram_init_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013ramoops: %s: invalid ecc_size %u (total %zu, buffer size %zu)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"persistent_ram_init_ecc\00", [40 x i8] zeroinitializer }, align 32
@persistent_ram_init_ecc._entry_ptr = internal global ptr @persistent_ram_init_ecc._entry, section ".printk_index", align 4
@persistent_ram_init_ecc._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016ramoops: init_rs failed\0A\00", [37 x i8] zeroinitializer }, align 32
@persistent_ram_init_ecc._entry_ptr.38 = internal global ptr @persistent_ram_init_ecc._entry.36, section ".printk_index", align 4
@persistent_ram_init_ecc._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.4, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ramoops: cannot allocate ECC parity workspace\0A\00", [47 x i8] zeroinitializer }, align 32
@persistent_ram_init_ecc._entry_ptr.41 = internal global ptr @persistent_ram_init_ecc._entry.39, section ".printk_index", align 4
@persistent_ram_init_ecc._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.4, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016ramoops: error in header, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@persistent_ram_init_ecc._entry_ptr.44 = internal global ptr @persistent_ram_init_ecc._entry.42, section ".printk_index", align 4
@persistent_ram_init_ecc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@persistent_ram_init_ecc._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.4, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ramoops: uncorrectable error in header\0A\00", [54 x i8] zeroinitializer }, align 32
@persistent_ram_init_ecc._entry_ptr.48 = internal global ptr @persistent_ram_init_ecc._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 265, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 269, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 306, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 582, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 587, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 599, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 230, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 214, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 156, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 491, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 427, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 433, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 459, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 510, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 518, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 524, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 528, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 533, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 209, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 227, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 236, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 246, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [24 x i8] c"../fs/pstore/ram_core.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 249, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @persistent_ram_buffer_map._entry, ptr @persistent_ram_buffer_map._entry_ptr, ptr @persistent_ram_init_ecc._entry, ptr @persistent_ram_init_ecc._entry.36, ptr @persistent_ram_init_ecc._entry.39, ptr @persistent_ram_init_ecc._entry.42, ptr @persistent_ram_init_ecc._entry.46, ptr @persistent_ram_init_ecc._entry_ptr, ptr @persistent_ram_init_ecc._entry_ptr.38, ptr @persistent_ram_init_ecc._entry_ptr.41, ptr @persistent_ram_init_ecc._entry_ptr.44, ptr @persistent_ram_init_ecc._entry_ptr.48, ptr @persistent_ram_iomap._entry, ptr @persistent_ram_iomap._entry_ptr, ptr @persistent_ram_new._entry, ptr @persistent_ram_new._entry_ptr, ptr @persistent_ram_post_init._entry, ptr @persistent_ram_post_init._entry.27, ptr @persistent_ram_post_init._entry_ptr, ptr @persistent_ram_post_init._entry_ptr.29, ptr @persistent_ram_save_old._entry, ptr @persistent_ram_save_old._entry_ptr, ptr @persistent_ram_vmap._entry, ptr @persistent_ram_vmap._entry.18, ptr @persistent_ram_vmap._entry_ptr, ptr @persistent_ram_vmap._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @persistent_ram_new.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @persistent_ram_init_ecc._rs, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_save_old._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_buffer_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_vmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_vmap._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_iomap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_post_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_post_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_init_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_init_ecc._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_init_ecc._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_init_ecc._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_init_ecc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ram_init_ecc._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @persistent_ram_ecc_string(ptr nocapture noundef readonly %prz, ptr nocapture noundef writeonly %str, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %ecc_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %corrected_bytes = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 12
  %2 = ptrtoint ptr %corrected_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %corrected_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %bad_blocks = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 13
  %4 = ptrtoint ptr %bad_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bad_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %bad_blocks5 = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 13
  %6 = ptrtoint ptr %bad_blocks5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bad_blocks5, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %len, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %7)
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %len, ptr noundef nonnull @.str.1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then3 ], [ %call6, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @persistent_ram_save_old(ptr nocapture noundef %prz) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer1 = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 7
  %0 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer1, align 4
  %size.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %1, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %size.i, align 4
  %4 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer1, align 4
  %start.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %5, i32 0, i32 1
  %call.i.i.i38 = tail call zeroext i1 @__kasan_check_read(ptr noundef %start.i, i32 noundef 4) #10
  %6 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %start.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %old_log = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 15
  %8 = ptrtoint ptr %old_log to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_log, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %ecc_info.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14
  %ecc_size.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ecc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then4.if.end8.i_crit_edge, label %if.end.i39

if.then4.if.end8.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end.i39:                                       ; preds = %if.then4
  %12 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer1, align 4
  %data.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %13, i32 0, i32 3
  %par_buffer.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 9
  %14 = ptrtoint ptr %par_buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %par_buffer.i, align 4
  %size.i54.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %13, i32 0, i32 2
  %call.i.i.i55.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i54.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %size.i54.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %size.i54.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %data.i, i32 %17
  %cmp57.i = icmp ult ptr %data.i, %add.ptr56.i
  br i1 %cmp57.i, label %while.body.lr.ph.i, label %if.end.i39.if.end8.i_crit_edge

if.end.i39.if.end8.i_crit_edge:                   ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

while.body.lr.ph.i:                               ; preds = %if.end.i39
  %buffer_size.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 8
  %par.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 4
  %rs_decoder.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 11
  %bad_blocks.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 13
  %corrected_bytes.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %block.060.i = phi ptr [ %data.i, %while.body.lr.ph.i ], [ %add.ptr26.i, %if.end23.i.while.body.i_crit_edge ]
  %par.058.i = phi ptr [ %15, %while.body.lr.ph.i ], [ %add.ptr29.i, %if.end23.i.while.body.i_crit_edge ]
  %18 = ptrtoint ptr %ecc_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecc_info.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %block.060.i, i32 %19
  %20 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buffer_size.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %data.i, i32 %21
  %cmp9.i = icmp ugt ptr %add.ptr5.i, %add.ptr8.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr8.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %block.060.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %size.0.i = select i1 %cmp9.i, i32 %sub.ptr.sub.i, i32 %19
  %22 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ecc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp11.i.i = icmp sgt i32 %23, 0
  br i1 %cmp11.i.i, label %while.body.i.for.body.i.i_crit_edge, label %while.body.i.persistent_ram_decode_rs8.exit.i_crit_edge

while.body.i.persistent_ram_decode_rs8.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_decode_rs8.exit.i

while.body.i.for.body.i.i_crit_edge:              ; preds = %while.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.body.i.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %while.body.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %par.058.i, i32 %i.012.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %25 to i16
  %26 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %par.i.i, align 4
  %arrayidx2.i.i = getelementptr i16, ptr %27, i32 %i.012.i.i
  %28 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i, ptr %arrayidx2.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %29 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ecc_size.i, align 4
  %cmp.i.i40 = icmp slt i32 %inc.i.i, %30
  br i1 %cmp.i.i40, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.persistent_ram_decode_rs8.exit.i_crit_edge

for.body.i.i.persistent_ram_decode_rs8.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_decode_rs8.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

persistent_ram_decode_rs8.exit.i:                 ; preds = %for.body.i.i.persistent_ram_decode_rs8.exit.i_crit_edge, %while.body.i.persistent_ram_decode_rs8.exit.i_crit_edge
  %31 = ptrtoint ptr %rs_decoder.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rs_decoder.i.i, align 4
  %33 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %par.i.i, align 4
  %call.i.i = tail call i32 @decode_rs8(ptr noundef %32, ptr noundef %block.060.i, ptr noundef %34, i32 noundef %size.0.i, ptr noundef null, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp17.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp17.i, label %persistent_ram_decode_rs8.exit.i.if.end23.sink.split.i_crit_edge, label %if.else.i

persistent_ram_decode_rs8.exit.i.if.end23.sink.split.i_crit_edge: ; preds = %persistent_ram_decode_rs8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %persistent_ram_decode_rs8.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp19.i, label %if.else.i.if.end23.sink.split.i_crit_edge, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.else.i.if.end23.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.else.i.if.end23.sink.split.i_crit_edge, %persistent_ram_decode_rs8.exit.i.if.end23.sink.split.i_crit_edge
  %bad_blocks.sink62.i = phi ptr [ %corrected_bytes.i, %persistent_ram_decode_rs8.exit.i.if.end23.sink.split.i_crit_edge ], [ %bad_blocks.i, %if.else.i.if.end23.sink.split.i_crit_edge ]
  %.sink61.i = phi i32 [ %call.i.i, %persistent_ram_decode_rs8.exit.i.if.end23.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end23.sink.split.i_crit_edge ]
  %35 = ptrtoint ptr %bad_blocks.sink62.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bad_blocks.sink62.i, align 4
  %inc.i = add i32 %36, %.sink61.i
  store i32 %inc.i, ptr %bad_blocks.sink62.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %if.else.i.if.end23.i_crit_edge
  %37 = ptrtoint ptr %ecc_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ecc_info.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %block.060.i, i32 %38
  %39 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ecc_size.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %par.058.i, i32 %40
  %41 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer1, align 4
  %size.i.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %42, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i.i, i32 noundef 4) #10
  %43 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %size.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %44
  %cmp.i41 = icmp ult ptr %add.ptr26.i, %add.ptr.i
  br i1 %cmp.i41, label %if.end23.i.while.body.i_crit_edge, label %if.end23.i.if.end8.i_crit_edge

if.end23.i.if.end8.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end8.i:                                        ; preds = %if.end23.i.if.end8.i_crit_edge, %if.end.i39.if.end8.i_crit_edge, %if.then4.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #13
  %45 = ptrtoint ptr %old_log to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i, ptr %old_log, align 4
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %do.end, label %if.end8.i.if.end12_crit_edge

if.end8.i.if.end12_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end:                                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %46 = phi ptr [ %call9.i, %if.end8.i.if.end12_crit_edge ], [ %9, %if.end.if.end12_crit_edge ]
  %old_log_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 16
  %47 = ptrtoint ptr %old_log_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %3, ptr %old_log_size, align 4
  %data = getelementptr inbounds %struct.persistent_ram_buffer, ptr %1, i32 0, i32 3
  %arrayidx = getelementptr %struct.persistent_ram_buffer, ptr %1, i32 0, i32 3, i32 %7
  %sub = sub i32 %3, %7
  tail call void @mmiocpy(ptr noundef nonnull %46, ptr noundef %arrayidx, i32 noundef %sub) #10
  %48 = ptrtoint ptr %old_log to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %old_log, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 %3
  %idx.neg = sub i32 0, %7
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  tail call void @mmiocpy(ptr noundef %add.ptr15, ptr noundef %data, i32 noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @persistent_ram_write(ptr noundef %prz, ptr noundef %s, i32 noundef returned %count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 8
  %0 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %count)
  %cmp = icmp ult i32 %1, %count
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !103

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %count, %1
  %add.ptr = getelementptr i8, ptr %s, i32 %sub
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %s, %entry.if.end_crit_edge ]
  %c.0 = phi i32 [ %1, %if.then ], [ %count, %entry.if.end_crit_edge ]
  %flags1.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 5
  %2 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_lock.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 6
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.end.if.end.i_crit_edge
  %flags.0.i = phi i32 [ 0, %if.end.if.end.i_crit_edge ], [ %call.i, %do.body.i ]
  %buffer.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 7
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 4
  %size.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %5, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i, i32 noundef 4) #10
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %size.i, align 4
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.i = icmp eq i32 %7, %9
  br i1 %cmp3.i, label %if.end.i.exit.i_crit_edge, label %if.end6.i

if.end.i.exit.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %7, %c.0
  %10 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %9) #10
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer.i, align 4
  %size14.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %12, i32 0, i32 2
  %call.i.i39.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %size14.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %size14.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %10, ptr %size14.i, align 4
  br label %exit.i

exit.i:                                           ; preds = %if.end6.i, %if.end.i.exit.i_crit_edge
  %14 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags1.i, align 4
  %and16.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body19.i, label %exit.i.buffer_size_add.exit_crit_edge

exit.i.buffer_size_add.exit_crit_edge:            ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %buffer_size_add.exit

do.body19.i:                                      ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_lock25.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock25.i, i32 noundef %flags.0.i) #10
  br label %buffer_size_add.exit

buffer_size_add.exit:                             ; preds = %do.body19.i, %exit.i.buffer_size_add.exit_crit_edge
  %16 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags1.i, align 4
  %and.i41 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.not.i42 = icmp eq i32 %and.i41, 0
  br i1 %tobool.not.i42, label %do.body.i45, label %buffer_size_add.exit.if.end.i51_crit_edge

buffer_size_add.exit.if.end.i51_crit_edge:        ; preds = %buffer_size_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i51

do.body.i45:                                      ; preds = %buffer_size_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_lock.i43 = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 6
  %call.i44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock.i43) #10
  br label %if.end.i51

if.end.i51:                                       ; preds = %do.body.i45, %buffer_size_add.exit.if.end.i51_crit_edge
  %flags.0.i46 = phi i32 [ 0, %buffer_size_add.exit.if.end.i51_crit_edge ], [ %call.i44, %do.body.i45 ]
  %18 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer.i, align 4
  %start.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %19, i32 0, i32 1
  %call.i.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef %start.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %start.i, align 4
  %add.i49 = add i32 %21, %c.0
  %22 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_size, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.i51
  %new.0.i = phi i32 [ %add.i49, %if.end.i51 ], [ %sub.i, %while.cond.i.while.cond.i_crit_edge ]
  %cmp3.not.i = icmp ult i32 %new.0.i, %23
  %sub.i = sub i32 %new.0.i, %23
  br i1 %cmp3.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge, !prof !104

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %24 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer.i, align 4
  %start9.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %25, i32 0, i32 1
  %call.i.i34.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %start9.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %start9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %new.0.i, ptr %start9.i, align 4
  %27 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags1.i, align 4
  %and11.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %while.end.i.buffer_start_add.exit_crit_edge

while.end.i.buffer_start_add.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %buffer_start_add.exit

do.body14.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_lock20.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock20.i, i32 noundef %flags.0.i46) #10
  br label %buffer_start_add.exit

buffer_start_add.exit:                            ; preds = %do.body14.i, %while.end.i.buffer_start_add.exit_crit_edge
  %29 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_size, align 4
  %sub5 = sub i32 %30, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0, i32 %sub5)
  %cmp6 = icmp sgt i32 %c.0, %sub5
  br i1 %cmp6, label %if.then13, label %buffer_start_add.exit.if.end16_crit_edge, !prof !103

buffer_start_add.exit.if.end16_crit_edge:         ; preds = %buffer_start_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %buffer_start_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @persistent_ram_update(ptr noundef %prz, ptr noundef %s.addr.0, i32 noundef %21, i32 noundef %sub5)
  %add.ptr14 = getelementptr i8, ptr %s.addr.0, i32 %sub5
  %sub15 = sub i32 %c.0, %sub5
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %buffer_start_add.exit.if.end16_crit_edge
  %s.addr.1 = phi ptr [ %add.ptr14, %if.then13 ], [ %s.addr.0, %buffer_start_add.exit.if.end16_crit_edge ]
  %c.1 = phi i32 [ %sub15, %if.then13 ], [ %c.0, %buffer_start_add.exit.if.end16_crit_edge ]
  %start.0 = phi i32 [ 0, %if.then13 ], [ %21, %buffer_start_add.exit.if.end16_crit_edge ]
  %31 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer.i, align 4
  %data.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %32, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %start.0
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef %s.addr.1, i32 noundef %c.1) #10
  %33 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer.i, align 4
  %data.i.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buffer_size, align 4
  %add.ptr.i.i = getelementptr i8, ptr %data.i.i, i32 %36
  %ecc_info.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14
  %37 = ptrtoint ptr %ecc_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ecc_info.i.i, align 4
  %ecc_size3.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 1
  %39 = ptrtoint ptr %ecc_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ecc_size3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.end16.persistent_ram_update_header_ecc.exit_crit_edge, label %if.end.i.i

if.end16.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

if.end.i.i:                                       ; preds = %if.end16
  %neg.i.i = sub i32 0, %38
  %and.i.i = and i32 %start.0, %neg.i.i
  %add.ptr6.i.i = getelementptr i8, ptr %data.i.i, i32 %and.i.i
  %par_buffer.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 9
  %41 = ptrtoint ptr %par_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %par_buffer.i.i, align 4
  %div.i.i = udiv i32 %start.0, %38
  %mul.i.i = mul i32 %div.i.i, %40
  %add.ptr7.i.i = getelementptr i8, ptr %42, i32 %mul.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %par.i.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 4
  %rs_decoder.i.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 11
  %add.ptr15.i.i = getelementptr i8, ptr %data.i.i, i32 %start.0
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr15.i.i, i32 %c.1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %persistent_ram_encode_rs8.exit.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %block.0.i.i = phi ptr [ %add.ptr6.i.i, %if.end.i.i ], [ %add.ptr8.i.i, %persistent_ram_encode_rs8.exit.i.i.do.body.i.i_crit_edge ]
  %par.0.i.i = phi ptr [ %add.ptr7.i.i, %if.end.i.i ], [ %add.ptr12.i.i, %persistent_ram_encode_rs8.exit.i.i.do.body.i.i_crit_edge ]
  %size.0.i.i = phi i32 [ %38, %if.end.i.i ], [ %size.1.i.i, %persistent_ram_encode_rs8.exit.i.i.do.body.i.i_crit_edge ]
  %add.ptr8.i.i = getelementptr i8, ptr %block.0.i.i, i32 %38
  %cmp.i.i = icmp ugt ptr %add.ptr8.i.i, %add.ptr.i.i
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %block.0.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %size.1.i.i = select i1 %cmp.i.i, i32 %sub.ptr.sub.i.i, i32 %size.0.i.i
  %43 = ptrtoint ptr %par.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %par.i.i.i, align 4
  %45 = ptrtoint ptr %ecc_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ecc_size3.i.i, align 4
  %mul.i.i.i = shl i32 %46, 1
  %47 = call ptr @memset(ptr %44, i32 0, i32 %mul.i.i.i)
  %48 = ptrtoint ptr %rs_decoder.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rs_decoder.i.i.i, align 4
  %50 = load ptr, ptr %par.i.i.i, align 4
  %call.i.i.i52 = tail call i32 @encode_rs8(ptr noundef %49, ptr noundef %block.0.i.i, i32 noundef %size.1.i.i, ptr noundef %50, i16 noundef zeroext 0) #10
  %51 = ptrtoint ptr %ecc_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ecc_size3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp17.i.i.i = icmp sgt i32 %52, 0
  br i1 %cmp17.i.i.i, label %do.body.i.i.for.body.i.i.i_crit_edge, label %do.body.i.i.persistent_ram_encode_rs8.exit.i.i_crit_edge

do.body.i.i.persistent_ram_encode_rs8.exit.i.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_encode_rs8.exit.i.i

do.body.i.i.for.body.i.i.i_crit_edge:             ; preds = %do.body.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.body.i.i.for.body.i.i.i_crit_edge
  %i.018.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.body.i.i.for.body.i.i.i_crit_edge ]
  %53 = ptrtoint ptr %par.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %par.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %54, i32 %i.018.i.i.i
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = trunc i16 %56 to i8
  %arrayidx8.i.i.i = getelementptr i8, ptr %par.0.i.i, i32 %i.018.i.i.i
  %57 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i.i.i, ptr %arrayidx8.i.i.i, align 1
  %inc.i.i.i = add nuw nsw i32 %i.018.i.i.i, 1
  %58 = ptrtoint ptr %ecc_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ecc_size3.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %59
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.persistent_ram_encode_rs8.exit.i.i_crit_edge

for.body.i.i.i.persistent_ram_encode_rs8.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_encode_rs8.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

persistent_ram_encode_rs8.exit.i.i:               ; preds = %for.body.i.i.i.persistent_ram_encode_rs8.exit.i.i_crit_edge, %do.body.i.i.persistent_ram_encode_rs8.exit.i.i_crit_edge
  %add.ptr12.i.i = getelementptr i8, ptr %par.0.i.i, i32 %40
  %cmp17.i.i = icmp ult ptr %add.ptr8.i.i, %add.ptr16.i.i
  br i1 %cmp17.i.i, label %persistent_ram_encode_rs8.exit.i.i.do.body.i.i_crit_edge, label %persistent_ram_update.exit

persistent_ram_encode_rs8.exit.i.i.do.body.i.i_crit_edge: ; preds = %persistent_ram_encode_rs8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

persistent_ram_update.exit:                       ; preds = %persistent_ram_encode_rs8.exit.i.i
  %60 = ptrtoint ptr %ecc_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load i32, ptr %ecc_size3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i53 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i53, label %persistent_ram_update.exit.persistent_ram_update_header_ecc.exit_crit_edge, label %if.end.i57

persistent_ram_update.exit.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %persistent_ram_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

if.end.i57:                                       ; preds = %persistent_ram_update.exit
  %61 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer.i, align 4
  %par_header.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 10
  %63 = ptrtoint ptr %par_header.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %par_header.i, align 4
  %65 = ptrtoint ptr %par.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %par.i.i.i, align 4
  %mul.i.i55 = shl i32 %.pr, 1
  %67 = call ptr @memset(ptr %66, i32 0, i32 %mul.i.i55)
  %68 = ptrtoint ptr %rs_decoder.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rs_decoder.i.i.i, align 4
  %70 = load ptr, ptr %par.i.i.i, align 4
  %call.i.i = tail call i32 @encode_rs8(ptr noundef %69, ptr noundef %62, i32 noundef 12, ptr noundef %70, i16 noundef zeroext 0) #10
  %71 = ptrtoint ptr %ecc_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ecc_size3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp17.i.i56 = icmp sgt i32 %72, 0
  br i1 %cmp17.i.i56, label %if.end.i57.for.body.i.i_crit_edge, label %if.end.i57.persistent_ram_update_header_ecc.exit_crit_edge

if.end.i57.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

if.end.i57.for.body.i.i_crit_edge:                ; preds = %if.end.i57
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i57.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i57.for.body.i.i_crit_edge ]
  %73 = ptrtoint ptr %par.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %par.i.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %74, i32 %i.018.i.i
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = trunc i16 %76 to i8
  %arrayidx8.i.i = getelementptr i8, ptr %64, i32 %i.018.i.i
  %77 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv.i.i, ptr %arrayidx8.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %78 = ptrtoint ptr %ecc_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ecc_size3.i.i, align 4
  %cmp.i.i58 = icmp slt i32 %inc.i.i, %79
  br i1 %cmp.i.i58, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.persistent_ram_update_header_ecc.exit_crit_edge

for.body.i.i.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

persistent_ram_update_header_ecc.exit:            ; preds = %for.body.i.i.persistent_ram_update_header_ecc.exit_crit_edge, %if.end.i57.persistent_ram_update_header_ecc.exit_crit_edge, %persistent_ram_update.exit.persistent_ram_update_header_ecc.exit_crit_edge, %if.end16.persistent_ram_update_header_ecc.exit_crit_edge
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @persistent_ram_update(ptr nocapture noundef readonly %prz, ptr noundef %s, i32 noundef %start, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %buffer1 = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 7
  %0 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer1, align 4
  %data = getelementptr inbounds %struct.persistent_ram_buffer, ptr %1, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %data, i32 %start
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %s, i32 noundef %count) #10
  %2 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer1, align 4
  %data.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %3, i32 0, i32 3
  %buffer_size.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 8
  %4 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %5
  %ecc_info.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14
  %6 = ptrtoint ptr %ecc_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_info.i, align 4
  %ecc_size3.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %ecc_size3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecc_size3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.persistent_ram_update_ecc.exit_crit_edge, label %if.end.i

entry.persistent_ram_update_ecc.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_ecc.exit

if.end.i:                                         ; preds = %entry
  %neg.i = sub i32 0, %7
  %and.i = and i32 %neg.i, %start
  %add.ptr6.i = getelementptr i8, ptr %data.i, i32 %and.i
  %par_buffer.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 9
  %10 = ptrtoint ptr %par_buffer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par_buffer.i, align 4
  %div.i = udiv i32 %start, %7
  %mul.i = mul i32 %div.i, %9
  %add.ptr7.i = getelementptr i8, ptr %11, i32 %mul.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %par.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 4
  %rs_decoder.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 11
  %add.ptr15.i = getelementptr i8, ptr %data.i, i32 %start
  %add.ptr16.i = getelementptr i8, ptr %add.ptr15.i, i32 %count
  br label %do.body.i

do.body.i:                                        ; preds = %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge, %if.end.i
  %block.0.i = phi ptr [ %add.ptr6.i, %if.end.i ], [ %add.ptr8.i, %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge ]
  %par.0.i = phi ptr [ %add.ptr7.i, %if.end.i ], [ %add.ptr12.i, %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge ]
  %size.0.i = phi i32 [ %7, %if.end.i ], [ %size.1.i, %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge ]
  %add.ptr8.i = getelementptr i8, ptr %block.0.i, i32 %7
  %cmp.i = icmp ugt ptr %add.ptr8.i, %add.ptr.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %block.0.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %size.1.i = select i1 %cmp.i, i32 %sub.ptr.sub.i, i32 %size.0.i
  %12 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par.i.i, align 4
  %14 = ptrtoint ptr %ecc_size3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ecc_size3.i, align 4
  %mul.i.i = shl i32 %15, 1
  %16 = call ptr @memset(ptr %13, i32 0, i32 %mul.i.i)
  %17 = ptrtoint ptr %rs_decoder.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rs_decoder.i.i, align 4
  %19 = load ptr, ptr %par.i.i, align 4
  %call.i.i = tail call i32 @encode_rs8(ptr noundef %18, ptr noundef %block.0.i, i32 noundef %size.1.i, ptr noundef %19, i16 noundef zeroext 0) #10
  %20 = ptrtoint ptr %ecc_size3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ecc_size3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp17.i.i = icmp sgt i32 %21, 0
  br i1 %cmp17.i.i, label %do.body.i.for.body.i.i_crit_edge, label %do.body.i.persistent_ram_encode_rs8.exit.i_crit_edge

do.body.i.persistent_ram_encode_rs8.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_encode_rs8.exit.i

do.body.i.for.body.i.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.i.for.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %par.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %23, i32 %i.018.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = trunc i16 %25 to i8
  %arrayidx8.i.i = getelementptr i8, ptr %par.0.i, i32 %i.018.i.i
  %26 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i.i, ptr %arrayidx8.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %27 = ptrtoint ptr %ecc_size3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ecc_size3.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %28
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.persistent_ram_encode_rs8.exit.i_crit_edge

for.body.i.i.persistent_ram_encode_rs8.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_encode_rs8.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

persistent_ram_encode_rs8.exit.i:                 ; preds = %for.body.i.i.persistent_ram_encode_rs8.exit.i_crit_edge, %do.body.i.persistent_ram_encode_rs8.exit.i_crit_edge
  %add.ptr12.i = getelementptr i8, ptr %par.0.i, i32 %9
  %cmp17.i = icmp ult ptr %add.ptr8.i, %add.ptr16.i
  br i1 %cmp17.i, label %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge, label %persistent_ram_encode_rs8.exit.i.persistent_ram_update_ecc.exit_crit_edge

persistent_ram_encode_rs8.exit.i.persistent_ram_update_ecc.exit_crit_edge: ; preds = %persistent_ram_encode_rs8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_ecc.exit

persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge: ; preds = %persistent_ram_encode_rs8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

persistent_ram_update_ecc.exit:                   ; preds = %persistent_ram_encode_rs8.exit.i.persistent_ram_update_ecc.exit_crit_edge, %entry.persistent_ram_update_ecc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @persistent_ram_write_user(ptr noundef %prz, ptr noundef %s, i32 noundef %count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 8
  %0 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %count)
  %cmp = icmp ult i32 %1, %count
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !103

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %count, %1
  %add.ptr = getelementptr i8, ptr %s, i32 %sub
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %s, %entry.if.end_crit_edge ]
  %c.0 = phi i32 [ %1, %if.then ], [ %count, %entry.if.end_crit_edge ]
  %flags1.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 5
  %2 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_lock.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 6
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.end.if.end.i_crit_edge
  %flags.0.i = phi i32 [ 0, %if.end.if.end.i_crit_edge ], [ %call.i, %do.body.i ]
  %buffer.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 7
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 4
  %size.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %5, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i, i32 noundef 4) #10
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %size.i, align 4
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.i = icmp eq i32 %7, %9
  br i1 %cmp3.i, label %if.end.i.exit.i_crit_edge, label %if.end6.i

if.end.i.exit.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %7, %c.0
  %10 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %9) #10
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer.i, align 4
  %size14.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %12, i32 0, i32 2
  %call.i.i39.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %size14.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %size14.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %10, ptr %size14.i, align 4
  br label %exit.i

exit.i:                                           ; preds = %if.end6.i, %if.end.i.exit.i_crit_edge
  %14 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags1.i, align 4
  %and16.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body19.i, label %exit.i.buffer_size_add.exit_crit_edge

exit.i.buffer_size_add.exit_crit_edge:            ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %buffer_size_add.exit

do.body19.i:                                      ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_lock25.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock25.i, i32 noundef %flags.0.i) #10
  br label %buffer_size_add.exit

buffer_size_add.exit:                             ; preds = %do.body19.i, %exit.i.buffer_size_add.exit_crit_edge
  %16 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags1.i, align 4
  %and.i63 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i64 = icmp eq i32 %and.i63, 0
  br i1 %tobool.not.i64, label %do.body.i67, label %buffer_size_add.exit.if.end.i73_crit_edge

buffer_size_add.exit.if.end.i73_crit_edge:        ; preds = %buffer_size_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73

do.body.i67:                                      ; preds = %buffer_size_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_lock.i65 = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 6
  %call.i66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock.i65) #10
  br label %if.end.i73

if.end.i73:                                       ; preds = %do.body.i67, %buffer_size_add.exit.if.end.i73_crit_edge
  %flags.0.i68 = phi i32 [ 0, %buffer_size_add.exit.if.end.i73_crit_edge ], [ %call.i66, %do.body.i67 ]
  %18 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer.i, align 4
  %start.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %19, i32 0, i32 1
  %call.i.i.i70 = tail call zeroext i1 @__kasan_check_read(ptr noundef %start.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %start.i, align 4
  %add.i71 = add i32 %21, %c.0
  %22 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_size, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.i73
  %new.0.i = phi i32 [ %add.i71, %if.end.i73 ], [ %sub.i, %while.cond.i.while.cond.i_crit_edge ]
  %cmp3.not.i = icmp ult i32 %new.0.i, %23
  %sub.i = sub i32 %new.0.i, %23
  br i1 %cmp3.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge, !prof !104

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %24 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer.i, align 4
  %start9.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %25, i32 0, i32 1
  %call.i.i34.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %start9.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %start9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %new.0.i, ptr %start9.i, align 4
  %27 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags1.i, align 4
  %and11.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %while.end.i.buffer_start_add.exit_crit_edge

while.end.i.buffer_start_add.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %buffer_start_add.exit

do.body14.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_lock20.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock20.i, i32 noundef %flags.0.i68) #10
  br label %buffer_start_add.exit

buffer_start_add.exit:                            ; preds = %do.body14.i, %while.end.i.buffer_start_add.exit_crit_edge
  %29 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_size, align 4
  %sub5 = sub i32 %30, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0, i32 %sub5)
  %cmp6 = icmp sgt i32 %c.0, %sub5
  br i1 %cmp6, label %if.end17, label %buffer_start_add.exit.if.then27_crit_edge, !prof !103

buffer_start_add.exit.if.then27_crit_edge:        ; preds = %buffer_start_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.end17:                                         ; preds = %buffer_start_add.exit
  %call14 = tail call fastcc i32 @persistent_ram_update_user(ptr noundef %prz, ptr noundef %s.addr.0, i32 noundef %21, i32 noundef %sub5)
  %add.ptr15 = getelementptr i8, ptr %s.addr.0, i32 %sub5
  %sub16 = sub i32 %c.0, %sub5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool18.not = icmp eq i32 %call14, 0
  br i1 %tobool18.not, label %if.end17.if.then27_crit_edge, label %if.end17.if.end29_crit_edge, !prof !104

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end17.if.then27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %if.end17.if.then27_crit_edge, %buffer_start_add.exit.if.then27_crit_edge
  %start.083 = phi i32 [ 0, %if.end17.if.then27_crit_edge ], [ %21, %buffer_start_add.exit.if.then27_crit_edge ]
  %c.182 = phi i32 [ %sub16, %if.end17.if.then27_crit_edge ], [ %c.0, %buffer_start_add.exit.if.then27_crit_edge ]
  %s.addr.181 = phi ptr [ %add.ptr15, %if.end17.if.then27_crit_edge ], [ %s.addr.0, %buffer_start_add.exit.if.then27_crit_edge ]
  %call28 = tail call fastcc i32 @persistent_ram_update_user(ptr noundef %prz, ptr noundef %s.addr.181, i32 noundef %start.083, i32 noundef %c.182)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end17.if.end29_crit_edge
  %ret.1 = phi i32 [ %call28, %if.then27 ], [ %call14, %if.end17.if.end29_crit_edge ]
  %ecc_size.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 1
  %31 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i74 = icmp eq i32 %32, 0
  br i1 %tobool.not.i74, label %if.end29.persistent_ram_update_header_ecc.exit_crit_edge, label %if.end.i75

if.end29.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

if.end.i75:                                       ; preds = %if.end29
  %33 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer.i, align 4
  %par_header.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 10
  %35 = ptrtoint ptr %par_header.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %par_header.i, align 4
  %par.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 4
  %37 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %par.i.i, align 4
  %mul.i.i = shl i32 %32, 1
  %39 = call ptr @memset(ptr %38, i32 0, i32 %mul.i.i)
  %rs_decoder.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 11
  %40 = ptrtoint ptr %rs_decoder.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rs_decoder.i.i, align 4
  %42 = load ptr, ptr %par.i.i, align 4
  %call.i.i = tail call i32 @encode_rs8(ptr noundef %41, ptr noundef %34, i32 noundef 12, ptr noundef %42, i16 noundef zeroext 0) #10
  %43 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ecc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp17.i.i = icmp sgt i32 %44, 0
  br i1 %cmp17.i.i, label %if.end.i75.for.body.i.i_crit_edge, label %if.end.i75.persistent_ram_update_header_ecc.exit_crit_edge

if.end.i75.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

if.end.i75.for.body.i.i_crit_edge:                ; preds = %if.end.i75
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i75.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i75.for.body.i.i_crit_edge ]
  %45 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %par.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %46, i32 %i.018.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = trunc i16 %48 to i8
  %arrayidx8.i.i = getelementptr i8, ptr %36, i32 %i.018.i.i
  %49 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i.i, ptr %arrayidx8.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %50 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ecc_size.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %51
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.persistent_ram_update_header_ecc.exit_crit_edge

for.body.i.i.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

persistent_ram_update_header_ecc.exit:            ; preds = %for.body.i.i.persistent_ram_update_header_ecc.exit_crit_edge, %if.end.i75.persistent_ram_update_header_ecc.exit_crit_edge, %if.end29.persistent_ram_update_header_ecc.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool30.not = icmp eq i32 %ret.1, 0
  %count.ret.1 = select i1 %tobool30.not, i32 %count, i32 %ret.1, !prof !104
  ret i32 %count.ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @persistent_ram_update_user(ptr nocapture noundef readonly %prz, ptr noundef %s, i32 noundef %start, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %buffer1 = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 7
  %0 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer1, align 4
  %data = getelementptr inbounds %struct.persistent_ram_buffer, ptr %1, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %data, i32 %start
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_from_user.exit_crit_edge, label %if.then27.i.i, !prof !104

land.rhs16.i.i.copy_from_user.exit_crit_edge:     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_user.exit

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %s, i32 %count, i32 -1226833920) #15, !srcloc !105
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !104

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count) #10
  %3 = tail call i32 @llvm.read_register.i32(metadata !93) #10
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !106
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !108
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %s, i32 noundef %count) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !108
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.then11.i.i, !prof !104

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_from_user.exit_crit_edge
  %7 = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_from_user.exit_crit_edge ]
  %8 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer1, align 4
  %data.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %9, i32 0, i32 3
  %buffer_size.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 8
  %10 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %11
  %ecc_info.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14
  %12 = ptrtoint ptr %ecc_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ecc_info.i, align 4
  %ecc_size3.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %ecc_size3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ecc_size3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %copy_from_user.exit.persistent_ram_update_ecc.exit_crit_edge, label %if.end.i

copy_from_user.exit.persistent_ram_update_ecc.exit_crit_edge: ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_ecc.exit

if.end.i:                                         ; preds = %copy_from_user.exit
  %neg.i = sub i32 0, %13
  %and.i = and i32 %neg.i, %start
  %add.ptr6.i = getelementptr i8, ptr %data.i, i32 %and.i
  %par_buffer.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 9
  %16 = ptrtoint ptr %par_buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par_buffer.i, align 4
  %div.i = udiv i32 %start, %13
  %mul.i = mul i32 %div.i, %15
  %add.ptr7.i = getelementptr i8, ptr %17, i32 %mul.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %par.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 4
  %rs_decoder.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 11
  %add.ptr15.i = getelementptr i8, ptr %data.i, i32 %start
  %add.ptr16.i = getelementptr i8, ptr %add.ptr15.i, i32 %count
  br label %do.body.i

do.body.i:                                        ; preds = %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge, %if.end.i
  %block.0.i = phi ptr [ %add.ptr6.i, %if.end.i ], [ %add.ptr8.i, %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge ]
  %par.0.i = phi ptr [ %add.ptr7.i, %if.end.i ], [ %add.ptr12.i, %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge ]
  %size.0.i = phi i32 [ %13, %if.end.i ], [ %size.1.i, %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge ]
  %add.ptr8.i = getelementptr i8, ptr %block.0.i, i32 %13
  %cmp.i = icmp ugt ptr %add.ptr8.i, %add.ptr.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %block.0.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %size.1.i = select i1 %cmp.i, i32 %sub.ptr.sub.i, i32 %size.0.i
  %18 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %par.i.i, align 4
  %20 = ptrtoint ptr %ecc_size3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ecc_size3.i, align 4
  %mul.i.i = shl i32 %21, 1
  %22 = call ptr @memset(ptr %19, i32 0, i32 %mul.i.i)
  %23 = ptrtoint ptr %rs_decoder.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rs_decoder.i.i, align 4
  %25 = load ptr, ptr %par.i.i, align 4
  %call.i.i7 = tail call i32 @encode_rs8(ptr noundef %24, ptr noundef %block.0.i, i32 noundef %size.1.i, ptr noundef %25, i16 noundef zeroext 0) #10
  %26 = ptrtoint ptr %ecc_size3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ecc_size3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp17.i.i = icmp sgt i32 %27, 0
  br i1 %cmp17.i.i, label %do.body.i.for.body.i.i_crit_edge, label %do.body.i.persistent_ram_encode_rs8.exit.i_crit_edge

do.body.i.persistent_ram_encode_rs8.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_encode_rs8.exit.i

do.body.i.for.body.i.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %par.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %29, i32 %i.018.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = trunc i16 %31 to i8
  %arrayidx8.i.i = getelementptr i8, ptr %par.0.i, i32 %i.018.i.i
  %32 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i.i, ptr %arrayidx8.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %33 = ptrtoint ptr %ecc_size3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ecc_size3.i, align 4
  %cmp.i.i8 = icmp slt i32 %inc.i.i, %34
  br i1 %cmp.i.i8, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.persistent_ram_encode_rs8.exit.i_crit_edge

for.body.i.i.persistent_ram_encode_rs8.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_encode_rs8.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

persistent_ram_encode_rs8.exit.i:                 ; preds = %for.body.i.i.persistent_ram_encode_rs8.exit.i_crit_edge, %do.body.i.persistent_ram_encode_rs8.exit.i_crit_edge
  %add.ptr12.i = getelementptr i8, ptr %par.0.i, i32 %15
  %cmp17.i = icmp ult ptr %add.ptr8.i, %add.ptr16.i
  br i1 %cmp17.i, label %persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge, label %persistent_ram_encode_rs8.exit.i.persistent_ram_update_ecc.exit_crit_edge

persistent_ram_encode_rs8.exit.i.persistent_ram_update_ecc.exit_crit_edge: ; preds = %persistent_ram_encode_rs8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_ecc.exit

persistent_ram_encode_rs8.exit.i.do.body.i_crit_edge: ; preds = %persistent_ram_encode_rs8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

persistent_ram_update_ecc.exit:                   ; preds = %persistent_ram_encode_rs8.exit.i.persistent_ram_update_ecc.exit_crit_edge, %copy_from_user.exit.persistent_ram_update_ecc.exit_crit_edge
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @persistent_ram_old_size(ptr nocapture noundef readonly %prz) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %old_log_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 16
  %0 = ptrtoint ptr %old_log_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %old_log_size, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @persistent_ram_old(ptr nocapture noundef readonly %prz) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %old_log = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 15
  %0 = ptrtoint ptr %old_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_log, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @persistent_ram_free_old(ptr nocapture noundef %prz) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %old_log = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 15
  %0 = ptrtoint ptr %old_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_log, align 4
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %old_log to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %old_log, align 4
  %old_log_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 16
  %3 = ptrtoint ptr %old_log_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %old_log_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @persistent_ram_zap(ptr nocapture noundef readonly %prz) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 7
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %start = getelementptr inbounds %struct.persistent_ram_buffer, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %start, i32 noundef 4) #10
  %2 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %start, align 4
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %size = getelementptr inbounds %struct.persistent_ram_buffer, ptr %4, i32 0, i32 2
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %size, i32 noundef 4) #10
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %size, align 4
  %ecc_size.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.persistent_ram_update_header_ecc.exit_crit_edge, label %if.end.i

entry.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %par_header.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 10
  %10 = ptrtoint ptr %par_header.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par_header.i, align 4
  %par.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par.i.i, align 4
  %mul.i.i = shl i32 %7, 1
  %14 = call ptr @memset(ptr %13, i32 0, i32 %mul.i.i)
  %rs_decoder.i.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 11
  %15 = ptrtoint ptr %rs_decoder.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rs_decoder.i.i, align 4
  %17 = load ptr, ptr %par.i.i, align 4
  %call.i.i5 = tail call i32 @encode_rs8(ptr noundef %16, ptr noundef %9, i32 noundef 12, ptr noundef %17, i16 noundef zeroext 0) #10
  %18 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17.i.i = icmp sgt i32 %19, 0
  br i1 %cmp17.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.persistent_ram_update_header_ecc.exit_crit_edge

if.end.i.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %par.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %par.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %21, i32 %i.018.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = trunc i16 %23 to i8
  %arrayidx8.i.i = getelementptr i8, ptr %11, i32 %i.018.i.i
  %24 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i.i, ptr %arrayidx8.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %25 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ecc_size.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %26
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.persistent_ram_update_header_ecc.exit_crit_edge

for.body.i.i.persistent_ram_update_header_ecc.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_update_header_ecc.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

persistent_ram_update_header_ecc.exit:            ; preds = %for.body.i.i.persistent_ram_update_header_ecc.exit_crit_edge, %if.end.i.persistent_ram_update_header_ecc.exit_crit_edge, %entry.persistent_ram_update_header_ecc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @persistent_ram_free(ptr noundef %prz) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prz, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %vaddr = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 2
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end11_crit_edge, label %if.then2

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %prz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prz, align 4
  %shr = lshr i32 %3, 12
  %call = tail call i32 @pfn_valid(i32 noundef %shr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %prz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prz, align 4
  %and = and i32 %7, 4095
  %idx.neg = sub nsw i32 0, %and
  %add.ptr = getelementptr i8, ptr %5, i32 %idx.neg
  tail call void @vunmap(ptr noundef %add.ptr) #10
  br label %if.end9

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef %5) #10
  %8 = ptrtoint ptr %prz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prz, align 4
  %size = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef %11) #10
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %12 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vaddr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end.if.end11_crit_edge
  %rs_decoder = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 11
  %13 = ptrtoint ptr %rs_decoder to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rs_decoder, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_rs(ptr noundef nonnull %14) #10
  %15 = ptrtoint ptr %rs_decoder to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rs_decoder, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %par = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 4
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 4
  tail call void @kfree(ptr noundef %17) #10
  %18 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %par, align 4
  %old_log.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 15
  %19 = ptrtoint ptr %old_log.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %old_log.i, align 4
  tail call void @kfree(ptr noundef %20) #10
  %21 = ptrtoint ptr %old_log.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %old_log.i, align 4
  %old_log_size.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 16
  %22 = ptrtoint ptr %old_log_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %old_log_size.i, align 4
  %label = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 3
  %23 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %label, align 4
  tail call void @kfree(ptr noundef %24) #10
  tail call void @kfree(ptr noundef nonnull %prz) #10
  br label %return

return:                                           ; preds = %if.end16, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rs(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @persistent_ram_new(i32 noundef %start, i32 noundef %size, i32 noundef %sig, ptr noundef %ecc_info, i32 noundef %memtype, i32 noundef %flags, ptr noundef %label) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %err

do.body2:                                         ; preds = %entry
  %buffer_lock = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %buffer_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @persistent_ram_new.__key, i16 noundef signext 2) #10
  %flags5 = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %flags, ptr %flags5, align 4
  %call6 = tail call noalias ptr @kstrdup(ptr noundef %label, i32 noundef 3264) #10
  %label7 = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %label7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %label7, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %start, ptr %call7.i.i, align 8
  %size1.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %size1.i, align 4
  %shr.i = lshr i32 %start, 12
  %call.i = tail call i32 @pfn_valid(i32 noundef %shr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body2
  %and.i.i = and i32 %start, 4095
  %add.i.i = add i32 %size, 4095
  %sub3.i.i = add i32 %add.i.i, %and.i.i
  %div41.i.i = lshr i32 %sub3.i.i, 12
  %5 = zext i32 %memtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %memtype, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb4.i.i
    i32 0, label %sw.bb8.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %6, 512
  br label %if.end7.i.i.i

sw.bb4.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or5.i.i = and i32 %7, -573
  %and6.i.i = or i32 %or5.i.i, 512
  br label %if.end7.i.i.i

sw.bb8.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or9.i.i = and i32 %8, -573
  %or11.i.i = or i32 %or9.i.i, 516
  br label %if.end7.i.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %memtype) #14
  br label %if.end.i.thread

if.end7.i.i.i:                                    ; preds = %sw.bb8.i.i, %sw.bb4.i.i, %sw.bb.i.i
  %prot.0.i.i = phi i32 [ %or11.i.i, %sw.bb8.i.i ], [ %and6.i.i, %sw.bb4.i.i ], [ %or.i.i, %sw.bb.i.i ]
  %9 = shl nuw nsw i32 %div41.i.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #13
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end15.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub3.i.i)
  %cmp44.not.i.i = icmp ult i32 %sub3.i.i, 4096
  br i1 %cmp44.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div41.i.i, i32 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %for.body.i.i

do.end15.i.i:                                     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %div41.i.i) #14
  br label %if.end.i.thread

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.045.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %12 = add nuw nsw i32 %i.045.i.i, %shr.i
  %shr.i.i = and i32 %12, 1048575
  %sub19.i.i = sub i32 %shr.i.i, %11
  %add.ptr.i.i = getelementptr %struct.page, ptr %10, i32 %sub19.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.045.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %call20.i.i = tail call ptr @vmap(ptr noundef nonnull %call8.i.i.i, i32 noundef %div41.i.i, i32 noundef 4, i32 noundef %prot.0.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  %add.ptr22.i.i = getelementptr i8, ptr %call20.i.i, i32 %and.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %do.body2
  %14 = ptrtoint ptr %label7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %label7, align 4
  %tobool.not.i29.i = icmp eq ptr %15, null
  %..str.8.i.i = select i1 %tobool.not.i29.i, ptr @.str.8, ptr %15
  %call.i30.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %start, i32 noundef %size, ptr noundef %..str.8.i.i, i32 noundef 0) #10
  %tobool1.not.i.i = icmp eq ptr %call.i30.i, null
  br i1 %tobool1.not.i.i, label %do.end.i31.i, label %if.end.i.i

do.end.i31.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i32 %size to i64
  %conv7.i.i = zext i32 %start to i64
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %..str.8.i.i, i64 noundef %conv.i.i, i64 noundef %conv7.i.i) #14
  br label %if.end.i.thread

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %memtype)
  %tobool9.not.i.i = icmp eq i32 %memtype, 0
  br i1 %tobool9.not.i.i, label %if.else.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i.i = tail call ptr @ioremap(i32 noundef %start, i32 noundef %size) #10
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i.i = tail call ptr @ioremap_wc(i32 noundef %start, i32 noundef %size) #10
  br label %if.end.i

if.end.i.thread:                                  ; preds = %do.end.i31.i, %do.end15.i.i, %do.end.i.i
  %vaddr4.i54 = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %vaddr4.i54 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %vaddr4.i54, align 8
  br label %persistent_ram_buffer_map.exit

if.end.i:                                         ; preds = %if.else.i.i, %if.then10.i.i, %for.end.i.i
  %retval.0.i32.sink.i = phi ptr [ %add.ptr22.i.i, %for.end.i.i ], [ %call11.i.i, %if.then10.i.i ], [ %call12.i.i, %if.else.i.i ]
  %vaddr4.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %vaddr4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i32.sink.i, ptr %vaddr4.i, align 8
  %tobool6.not.i = icmp eq ptr %retval.0.i32.sink.i, null
  br i1 %tobool6.not.i, label %if.end.i.persistent_ram_buffer_map.exit_crit_edge, label %if.end11

if.end.i.persistent_ram_buffer_map.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_buffer_map.exit

persistent_ram_buffer_map.exit:                   ; preds = %if.end.i.persistent_ram_buffer_map.exit_crit_edge, %if.end.i.thread
  %conv.i = zext i32 %size to i64
  %conv8.i = zext i32 %start to i64
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i64 noundef %conv.i, i64 noundef %conv8.i) #14
  br label %err

if.end11:                                         ; preds = %if.end.i
  %buffer.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i32.sink.i, ptr %buffer.i, align 4
  %sub.i = add i32 %size, -12
  %buffer_size.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i, ptr %buffer_size.i, align 8
  %call12 = tail call fastcc i32 @persistent_ram_post_init(ptr noundef nonnull %call7.i.i, i32 noundef %sig, ptr noundef %ecc_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body16, label %if.end11.err_crit_edge

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @persistent_ram_new.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@persistent_ram_new, %if.then22)) #10
          to label %cleanup [label %if.then22], !srcloc !109

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %label7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %label7, align 4
  %22 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size1.i, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %25 to i64
  %26 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_size.i, align 8
  %sub = add i32 %23, -12
  %sub27 = sub i32 %sub, %27
  %ecc_info28 = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 14
  %ecc_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %call7.i.i, i32 0, i32 14, i32 1
  %28 = ptrtoint ptr %ecc_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ecc_size, align 4
  %30 = ptrtoint ptr %ecc_info28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ecc_info28, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @persistent_ram_new.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.10, ptr noundef %21, i32 noundef %23, i64 noundef %conv, i32 noundef 12, i32 noundef %27, i32 noundef %sub27, i32 noundef %29, i32 noundef %31) #10
  br label %cleanup

err:                                              ; preds = %if.end11.err_crit_edge, %persistent_ram_buffer_map.exit, %do.end
  %ret.0 = phi i32 [ -12, %persistent_ram_buffer_map.exit ], [ %call12, %if.end11.err_crit_edge ], [ -12, %do.end ]
  tail call void @persistent_ram_free(ptr noundef %call7.i.i)
  %32 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then22, %do.body16
  %retval.0 = phi ptr [ %32, %err ], [ %call7.i.i, %if.then22 ], [ %call7.i.i, %do.body16 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @persistent_ram_post_init(ptr noundef %prz, i32 noundef %sig, ptr noundef readonly %ecc_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %buffer1.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 7
  %2 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer1.i, align 4
  %tobool.not.i = icmp eq ptr %ecc_info, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %ecc_size.i = getelementptr inbounds %struct.persistent_ram_ecc_info, ptr %ecc_info, i32 0, i32 1
  %4 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %ecc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  %..i = select i1 %tobool3.not.i, i32 128, i32 %7
  %ecc_info4.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14
  %8 = ptrtoint ptr %ecc_info4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %..i, ptr %ecc_info4.i, align 4
  %9 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ecc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not.i = icmp eq i32 %10, 0
  %cond11.i = select i1 %tobool7.not.i, i32 16, i32 %10
  %ecc_size13.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %ecc_size13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond11.i, ptr %ecc_size13.i, align 4
  %symsize.i = getelementptr inbounds %struct.persistent_ram_ecc_info, ptr %ecc_info, i32 0, i32 2
  %12 = ptrtoint ptr %symsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %symsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not.i = icmp eq i32 %13, 0
  %cond18.i = select i1 %tobool14.not.i, i32 8, i32 %13
  %symsize20.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %symsize20.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond18.i, ptr %symsize20.i, align 4
  %poly.i = getelementptr inbounds %struct.persistent_ram_ecc_info, ptr %ecc_info, i32 0, i32 3
  %15 = ptrtoint ptr %poly.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %poly.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool21.not.i = icmp eq i32 %16, 0
  %cond25.i = select i1 %tobool21.not.i, i32 285, i32 %16
  %poly27.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 3
  %17 = ptrtoint ptr %poly27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond25.i, ptr %poly27.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 8
  %18 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size.i, align 4
  %add.i = add i32 %cond11.i, %..i
  %add34.i = add i32 %..i, -1
  %sub35.i = add i32 %add34.i, %19
  %div.i = udiv i32 %sub35.i, %add.i
  %add41.i = add i32 %div.i, 1
  %mul.i = mul i32 %add41.i, %cond11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mul.i)
  %cmp.not.i = icmp ugt i32 %19, %mul.i
  br i1 %cmp.not.i, label %if.end49.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %cond11.i, i32 noundef %mul.i, i32 noundef %19) #14
  br label %do.end

if.end49.i:                                       ; preds = %if.end.i
  %sub51.i = sub i32 %19, %mul.i
  %20 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub51.i, ptr %buffer_size.i, align 4
  %data.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %3, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %sub51.i
  %par_buffer.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 9
  %21 = ptrtoint ptr %par_buffer.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %par_buffer.i, align 4
  %mul56.i = mul i32 %div.i, %cond11.i
  %add.ptr57.i = getelementptr i8, ptr %add.ptr.i, i32 %mul56.i
  %par_header.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 10
  %22 = ptrtoint ptr %par_header.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr57.i, ptr %par_header.i, align 4
  %call.i.i = tail call ptr @init_rs_gfp(i32 noundef %cond18.i, i32 noundef %cond25.i, i32 noundef 0, i32 noundef 1, i32 noundef %cond11.i, i32 noundef 3264) #10
  %rs_decoder.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 11
  %23 = ptrtoint ptr %rs_decoder.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i, ptr %rs_decoder.i, align 4
  %cmp66.i = icmp eq ptr %call.i.i, null
  br i1 %cmp66.i, label %do.end70.i, label %if.end73.i

do.end70.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  br label %do.end

if.end73.i:                                       ; preds = %if.end49.i
  %24 = ptrtoint ptr %ecc_size13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ecc_size13.i, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 2) #10
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !103

kmalloc_array.exit.thread.i:                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  %par164.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 4
  %28 = ptrtoint ptr %par164.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %par164.i, align 4
  br label %do.end84.i

if.end7.i.i:                                      ; preds = %if.end73.i
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #13
  %par.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 14, i32 4
  %30 = ptrtoint ptr %par.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i, ptr %par.i, align 4
  %tobool80.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool80.not.i, label %if.end7.i.i.do.end84.i_crit_edge, label %if.end87.i

if.end7.i.i.do.end84.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84.i

do.end84.i:                                       ; preds = %if.end7.i.i.do.end84.i_crit_edge, %kmalloc_array.exit.thread.i
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #14
  br label %do.end

if.end87.i:                                       ; preds = %if.end7.i.i
  %corrected_bytes.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 12
  %31 = ptrtoint ptr %corrected_bytes.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %corrected_bytes.i, align 4
  %bad_blocks.i = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 13
  %32 = ptrtoint ptr %bad_blocks.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bad_blocks.i, align 4
  %33 = ptrtoint ptr %par_header.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %par_header.i, align 4
  %35 = ptrtoint ptr %ecc_size13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ecc_size13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp11.i.i = icmp sgt i32 %36, 0
  br i1 %cmp11.i.i, label %if.end87.i.for.body.i.i_crit_edge, label %if.end87.i.persistent_ram_decode_rs8.exit.i_crit_edge

if.end87.i.persistent_ram_decode_rs8.exit.i_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_decode_rs8.exit.i

if.end87.i.for.body.i.i_crit_edge:                ; preds = %if.end87.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end87.i.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end87.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %34, i32 %i.012.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %38 to i16
  %39 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %par.i, align 4
  %arrayidx2.i.i = getelementptr i16, ptr %40, i32 %i.012.i.i
  %41 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i, ptr %arrayidx2.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %42 = ptrtoint ptr %ecc_size13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ecc_size13.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %43
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.persistent_ram_decode_rs8.exit.i_crit_edge

for.body.i.i.persistent_ram_decode_rs8.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %persistent_ram_decode_rs8.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

persistent_ram_decode_rs8.exit.i:                 ; preds = %for.body.i.i.persistent_ram_decode_rs8.exit.i_crit_edge, %if.end87.i.persistent_ram_decode_rs8.exit.i_crit_edge
  %44 = ptrtoint ptr %rs_decoder.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rs_decoder.i, align 4
  %46 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %par.i, align 4
  %call.i162.i = tail call i32 @decode_rs8(ptr noundef %45, ptr noundef %3, ptr noundef %47, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i)
  %cmp90.i = icmp sgt i32 %call.i162.i, 0
  br i1 %cmp90.i, label %do.end94.i, label %if.else.i

do.end94.i:                                       ; preds = %persistent_ram_decode_rs8.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call.i162.i) #14
  br label %if.end.sink.split

if.else.i:                                        ; preds = %persistent_ram_decode_rs8.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i)
  %cmp99.i = icmp slt i32 %call.i162.i, 0
  br i1 %cmp99.i, label %if.then100.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then100.i:                                     ; preds = %if.else.i
  %call101.i = tail call i32 @___ratelimit(ptr noundef nonnull @persistent_ram_init_ecc._rs, ptr noundef nonnull @.str.35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %if.then100.i.if.end.sink.split_crit_edge, label %do.end106.i

if.then100.i.if.end.sink.split_crit_edge:         ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

do.end106.i:                                      ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #12
  %call108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #14
  br label %if.end.sink.split

do.end:                                           ; preds = %do.end84.i, %do.end70.i, %do.end.i
  %retval.0.i106 = phi i32 [ -22, %do.end.i ], [ -22, %do.end70.i ], [ -12, %do.end84.i ]
  %label = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 3
  %48 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %label, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %49) #14
  br label %cleanup

if.end.sink.split:                                ; preds = %do.end106.i, %if.then100.i.if.end.sink.split_crit_edge, %do.end94.i
  %bad_blocks.i.sink133 = phi ptr [ %corrected_bytes.i, %do.end94.i ], [ %bad_blocks.i, %do.end106.i ], [ %bad_blocks.i, %if.then100.i.if.end.sink.split_crit_edge ]
  %.sink132 = phi i32 [ %call.i162.i, %do.end94.i ], [ 1, %do.end106.i ], [ 1, %if.then100.i.if.end.sink.split_crit_edge ]
  %50 = ptrtoint ptr %bad_blocks.i.sink133 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bad_blocks.i.sink133, align 4
  %inc.i = add i32 %51, %.sink132
  store i32 %inc.i, ptr %bad_blocks.i.sink133, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %xor = xor i32 %sig, 1128743492
  %52 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer1.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %xor)
  %cmp = icmp eq i32 %55, %xor
  br i1 %cmp, label %if.then5, label %do.body55

if.then5:                                         ; preds = %if.end
  %size.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %53, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i, i32 noundef 4) #10
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp7 = icmp eq i32 %57, 0
  br i1 %cmp7, label %do.body9, label %if.end21

do.body9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @persistent_ram_post_init.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@persistent_ram_post_init, %if.then17)) #10
          to label %cleanup [label %if.then17], !srcloc !109

if.then17:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @persistent_ram_post_init.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end21:                                         ; preds = %if.then5
  %58 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer1.i, align 4
  %size.i108 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %59, i32 0, i32 2
  %call.i.i.i109 = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i108, i32 noundef 4) #10
  %60 = ptrtoint ptr %size.i108 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %size.i108, align 4
  %buffer_size = getelementptr inbounds %struct.persistent_ram_zone, ptr %prz, i32 0, i32 8
  %62 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp23 = icmp ugt i32 %61, %63
  br i1 %cmp23, label %if.end21.do.end30_crit_edge, label %lor.lhs.false

if.end21.do.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

lor.lhs.false:                                    ; preds = %if.end21
  %64 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer1.i, align 4
  %start.i = getelementptr inbounds %struct.persistent_ram_buffer, ptr %65, i32 0, i32 1
  %call.i.i.i111 = tail call zeroext i1 @__kasan_check_read(ptr noundef %start.i, i32 noundef 4) #10
  %66 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %start.i, align 4
  %68 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer1.i, align 4
  %size.i113 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %69, i32 0, i32 2
  %call.i.i.i114 = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i113, i32 noundef 4) #10
  %70 = ptrtoint ptr %size.i113 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %size.i113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %71)
  %cmp26 = icmp ugt i32 %67, %71
  br i1 %cmp26, label %lor.lhs.false.do.end30_crit_edge, label %do.body35

lor.lhs.false.do.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.end30:                                         ; preds = %lor.lhs.false.do.end30_crit_edge, %if.end21.do.end30_crit_edge
  %72 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buffer1.i, align 4
  %size.i116 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %73, i32 0, i32 2
  %call.i.i.i117 = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i116, i32 noundef 4) #10
  %74 = ptrtoint ptr %size.i116 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %size.i116, align 4
  %76 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffer1.i, align 4
  %start.i119 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %77, i32 0, i32 1
  %call.i.i.i120 = tail call zeroext i1 @__kasan_check_read(ptr noundef %start.i119, i32 noundef 4) #10
  %78 = ptrtoint ptr %start.i119 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %start.i119, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %75, i32 noundef %79) #14
  br label %if.then77

do.body35:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @persistent_ram_post_init.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@persistent_ram_post_init, %if.then47)) #10
          to label %do.end52 [label %if.then47], !srcloc !109

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buffer1.i, align 4
  %size.i122 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %81, i32 0, i32 2
  %call.i.i.i123 = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i122, i32 noundef 4) #10
  %82 = ptrtoint ptr %size.i122 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %size.i122, align 4
  %84 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer1.i, align 4
  %start.i125 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %85, i32 0, i32 1
  %call.i.i.i126 = tail call zeroext i1 @__kasan_check_read(ptr noundef %start.i125, i32 noundef 4) #10
  %86 = ptrtoint ptr %start.i125 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %start.i125, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @persistent_ram_post_init.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.31, i32 noundef %83, i32 noundef %87) #10
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body35
  tail call void @persistent_ram_save_old(ptr noundef %prz)
  %88 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %extract.t.not = icmp eq i32 %88, 0
  br i1 %extract.t.not, label %do.end52.cleanup_crit_edge, label %do.end52.if.then77_crit_edge

do.end52.if.then77_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

do.end52.cleanup_crit_edge:                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body55:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @persistent_ram_post_init.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@persistent_ram_post_init, %if.then67)) #10
          to label %do.end72 [label %if.then67], !srcloc !109

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buffer1.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @persistent_ram_post_init.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.33, i32 noundef %92) #10
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %do.body55
  %93 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %buffer1.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %xor, ptr %94, align 4
  br label %if.then77

if.then77:                                        ; preds = %do.end72, %do.end52.if.then77_crit_edge, %do.end30
  tail call void @persistent_ram_zap(ptr noundef %prz)
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.end52.cleanup_crit_edge, %if.then17, %do.body9, %do.end
  %retval.0 = phi i32 [ %retval.0.i106, %do.end ], [ 0, %if.then17 ], [ 0, %if.then77 ], [ 0, %do.end52.cleanup_crit_edge ], [ 0, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @decode_rs8(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @encode_rs8(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_rs_gfp(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/pstore/ram_core.c", i32 265, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/pstore/ram_core.c", i32 269, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/pstore/ram_core.c", i32 306, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @persistent_ram_save_old._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @persistent_ram_save_old._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/pstore/ram_core.c", i32 582, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @persistent_ram_new._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @persistent_ram_new._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @persistent_ram_new.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/pstore/ram_core.c", i32 587, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/pstore/ram_core.c", i32 599, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @persistent_ram_new.__UNIQUE_ID_ddebug231, !19, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/pstore/ram_core.c", i32 491, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @persistent_ram_buffer_map._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @persistent_ram_buffer_map._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/pstore/ram_core.c", i32 427, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @persistent_ram_vmap._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @persistent_ram_vmap._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/pstore/ram_core.c", i32 433, i32 3}
!42 = !{ptr @persistent_ram_vmap._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @persistent_ram_vmap._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/pstore/ram_core.c", i32 459, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @persistent_ram_iomap._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @persistent_ram_iomap._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/pstore/ram_core.c", i32 510, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @persistent_ram_post_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @persistent_ram_post_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/pstore/ram_core.c", i32 518, i32 4}
!56 = !{ptr @persistent_ram_post_init.__UNIQUE_ID_ddebug228, !55, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!57 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/pstore/ram_core.c", i32 524, i32 4}
!60 = !{ptr @persistent_ram_post_init._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @persistent_ram_post_init._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/pstore/ram_core.c", i32 528, i32 4}
!64 = !{ptr @persistent_ram_post_init.__UNIQUE_ID_ddebug229, !63, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!65 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/pstore/ram_core.c", i32 533, i32 3}
!68 = !{ptr @persistent_ram_post_init.__UNIQUE_ID_ddebug230, !67, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!69 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/pstore/ram_core.c", i32 209, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @persistent_ram_init_ecc._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @persistent_ram_init_ecc._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/pstore/ram_core.c", i32 227, i32 3}
!77 = !{ptr @persistent_ram_init_ecc._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @persistent_ram_init_ecc._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/pstore/ram_core.c", i32 236, i32 3}
!81 = !{ptr @persistent_ram_init_ecc._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @persistent_ram_init_ecc._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/pstore/ram_core.c", i32 246, i32 3}
!85 = !{ptr @persistent_ram_init_ecc._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @persistent_ram_init_ecc._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/pstore/ram_core.c", i32 249, i32 3}
!89 = !{ptr @persistent_ram_init_ecc._rs, !88, !"_rs", i1 false, i1 false}
!90 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @persistent_ram_init_ecc._entry.46, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @persistent_ram_init_ecc._entry_ptr.48, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2153290870, i64 2153290895}
!106 = !{i64 5786425}
!107 = !{i64 5786622}
!108 = !{i64 2153271855}
!109 = !{i64 2148290780, i64 2148290785, i64 2148290798, i64 2148290842, i64 2148290876, i64 2148290897}
