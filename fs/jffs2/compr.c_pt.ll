; ModuleID = '/llk/IR_all_yes/fs/jffs2/compr.c_pt.bc'
source_filename = "../fs/jffs2/compr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jffs2_compressor = type { %struct.list_head, i32, ptr, i8, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32 }

@jffs2_compressor_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@jffs2_compressor_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @jffs2_compressor_list, ptr @jffs2_compressor_list }, [24 x i8] zeroinitializer }, align 32
@jffs2_compress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014jffs2: No memory for compressor allocation. (%d bytes)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jffs2_compress\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/jffs2/compr.c\00", [47 x i8] zeroinitializer }, align 32
@jffs2_compress._entry_ptr = internal global ptr @jffs2_compress._entry, section ".printk_index", align 4
@jffs2_compress._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013jffs2: unknown compression mode\0A\00", [61 x i8] zeroinitializer }, align 32
@jffs2_compress._entry_ptr.5 = internal global ptr @jffs2_compress._entry.3, section ".printk_index", align 4
@none_stat_compr_blocks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@none_stat_compr_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@none_stat_decompr_blocks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jffs2_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014jffs2: Decompressor \22%s\22 returned %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jffs2_decompress\00", [47 x i8] zeroinitializer }, align 32
@jffs2_decompress._entry_ptr = internal global ptr @jffs2_decompress._entry, section ".printk_index", align 4
@jffs2_decompress._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014jffs2: compression type 0x%02x not available\0A\00", [48 x i8] zeroinitializer }, align 32
@jffs2_decompress._entry_ptr.10 = internal global ptr @jffs2_decompress._entry.8, section ".printk_index", align 4
@jffs2_register_compressor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014jffs2: NULL compressor name at registering JFFS2 compressor. Failed.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jffs2_register_compressor\00", [38 x i8] zeroinitializer }, align 32
@jffs2_register_compressor._entry_ptr = internal global ptr @jffs2_register_compressor._entry, section ".printk_index", align 4
@jffs2_unregister_compressor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014jffs2: Compressor module is in use. Unregister failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"jffs2_unregister_compressor\00", [36 x i8] zeroinitializer }, align 32
@jffs2_unregister_compressor._entry_ptr = internal global ptr @jffs2_unregister_compressor._entry, section ".printk_index", align 4
@jffs2_selected_compress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014jffs2: No memory for compressor allocation. Compression failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jffs2_selected_compress\00", [40 x i8] zeroinitializer }, align 32
@jffs2_selected_compress._entry_ptr = internal global ptr @jffs2_selected_compress._entry, section ".printk_index", align 4
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"jffs2_compressor_list_lock\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.19 = private unnamed_addr constant [27 x i8] c"jffs2_compressor_list_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"jffs2_compressor_list\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 22, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 193, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 241, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"none_stat_compr_blocks\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 28, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"none_stat_compr_size\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 28, i32 69 }
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"none_stat_decompr_blocks\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 28, i32 42 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 283, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 294, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 306, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 347, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 84, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [20 x i8] c"../fs/jffs2/compr.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 19, i32 8 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @jffs2_compress._entry, ptr @jffs2_compress._entry.3, ptr @jffs2_compress._entry_ptr, ptr @jffs2_compress._entry_ptr.5, ptr @jffs2_decompress._entry, ptr @jffs2_decompress._entry.8, ptr @jffs2_decompress._entry_ptr, ptr @jffs2_decompress._entry_ptr.10, ptr @jffs2_register_compressor._entry, ptr @jffs2_register_compressor._entry_ptr, ptr @jffs2_selected_compress._entry, ptr @jffs2_selected_compress._entry_ptr, ptr @jffs2_unregister_compressor._entry, ptr @jffs2_unregister_compressor._entry_ptr, ptr @jffs2_compressor_list_lock, ptr @jffs2_compressor_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @none_stat_compr_blocks, ptr @none_stat_compr_size, ptr @none_stat_decompr_blocks, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_compressor_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_compressor_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_compress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_compress._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @none_stat_compr_blocks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @none_stat_compr_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @none_stat_decompr_blocks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_decompress._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_register_compressor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_unregister_compressor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_selected_compress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @jffs2_compress(ptr nocapture noundef readonly %c, ptr nocapture noundef readnone %f, ptr noundef %data_in, ptr nocapture noundef writeonly %cpage_out, ptr noundef %datalen, ptr noundef %cdatalen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opts = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 61
  %0 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mount_opts, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.sw.bb_crit_edge, label %if.end

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end:                                           ; preds = %entry
  %compr = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 61, i32 1
  %2 = ptrtoint ptr %compr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compr, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end61 [
    i32 0, label %if.end.if.then66_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb2_crit_edge
    i32 3, label %if.end.sw.bb2_crit_edge162
    i32 4, label %sw.bb55
    i32 5, label %sw.bb57
  ]

if.end.sw.bb2_crit_edge162:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.if.then66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then66

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  %call = tail call fastcc i32 @jffs2_selected_compress(i8 noundef zeroext 0, ptr noundef %data_in, ptr noundef %cpage_out, ptr noundef %datalen, ptr noundef %cdatalen)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge162
  %5 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %datalen, align 4
  %7 = ptrtoint ptr %cdatalen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cdatalen, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %this.0144 = load ptr, ptr @jffs2_compressor_list, align 4
  %cmp.not145 = icmp eq ptr %this.0144, @jffs2_compressor_list
  br i1 %cmp.not145, label %sw.bb2.if.end54_crit_edge, label %sw.bb2.for.body_crit_edge

sw.bb2.for.body_crit_edge:                        ; preds = %sw.bb2
  br label %for.body

sw.bb2.if.end54_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb2.for.body_crit_edge
  %this.0153 = phi ptr [ %this.0, %for.inc.for.body_crit_edge ], [ %this.0144, %sw.bb2.for.body_crit_edge ]
  %best.0150 = phi ptr [ %best.1, %for.inc.for.body_crit_edge ], [ null, %sw.bb2.for.body_crit_edge ]
  %best_dlen.0149 = phi i32 [ %best_dlen.1, %for.inc.for.body_crit_edge ], [ 0, %sw.bb2.for.body_crit_edge ]
  %best_slen.0146 = phi i32 [ %best_slen.1, %for.inc.for.body_crit_edge ], [ 0, %sw.bb2.for.body_crit_edge ]
  %compress = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0153, i32 0, i32 4
  %9 = ptrtoint ptr %compress to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %compress, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %disabled = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0153, i32 0, i32 7
  %11 = ptrtoint ptr %disabled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end6:                                          ; preds = %lor.lhs.false
  %compr_buf_size = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0153, i32 0, i32 9
  %13 = ptrtoint ptr %compr_buf_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %compr_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %6)
  %cmp7 = icmp ult i32 %14, %6
  br i1 %cmp7, label %land.lhs.true, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  %compr_buf = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0153, i32 0, i32 8
  %15 = ptrtoint ptr %compr_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %compr_buf, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %land.lhs.true.if.end13_crit_edge, label %if.then9

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %17 = ptrtoint ptr %compr_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %compr_buf, align 4
  tail call void @kfree(ptr noundef %18) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %19 = ptrtoint ptr %compr_buf_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %compr_buf_size, align 4
  %20 = ptrtoint ptr %compr_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %compr_buf, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %compr_buf14 = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0153, i32 0, i32 8
  %21 = ptrtoint ptr %compr_buf14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %compr_buf14, align 4
  %tobool15.not = icmp eq ptr %22, null
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end26_crit_edge

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then16:                                        ; preds = %if.end13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %do.end, label %if.else22

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %6) #9
  br label %for.inc

if.else22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %compr_buf14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %compr_buf14, align 4
  %24 = ptrtoint ptr %compr_buf_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %6, ptr %compr_buf_size, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.end13.if.end26_crit_edge
  %usecount = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0153, i32 0, i32 6
  %25 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usecount, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %usecount, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %27 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %6, ptr %datalen, align 4
  %28 = ptrtoint ptr %cdatalen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %8, ptr %cdatalen, align 4
  %29 = ptrtoint ptr %compress to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %compress, align 4
  %31 = ptrtoint ptr %compr_buf14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %compr_buf14, align 4
  %call29 = tail call i32 %30(ptr noundef %data_in, ptr noundef %32, ptr noundef %datalen, ptr noundef %cdatalen) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %33 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %usecount, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool31.not = icmp eq i32 %call29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_dlen.0149)
  %tobool33.not = icmp eq i32 %best_dlen.0149, 0
  %or.cond = select i1 %tobool31.not, i1 %tobool33.not, i1 false
  br i1 %or.cond, label %land.lhs.true37, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true37:                                  ; preds = %if.end26
  %35 = ptrtoint ptr %cdatalen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cdatalen, align 4
  %37 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp38 = icmp ult i32 %36, %38
  br i1 %cmp38, label %if.then39, label %land.lhs.true37.for.inc_crit_edge

land.lhs.true37.for.inc_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %land.lhs.true37.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %do.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_slen.1 = phi i32 [ %best_slen.0146, %lor.lhs.false.for.inc_crit_edge ], [ %best_slen.0146, %if.end26.for.inc_crit_edge ], [ %38, %if.then39 ], [ %best_slen.0146, %land.lhs.true37.for.inc_crit_edge ], [ %best_slen.0146, %do.end ], [ %best_slen.0146, %for.body.for.inc_crit_edge ]
  %best_dlen.1 = phi i32 [ %best_dlen.0149, %lor.lhs.false.for.inc_crit_edge ], [ %best_dlen.0149, %if.end26.for.inc_crit_edge ], [ %36, %if.then39 ], [ 0, %land.lhs.true37.for.inc_crit_edge ], [ %best_dlen.0149, %do.end ], [ %best_dlen.0149, %for.body.for.inc_crit_edge ]
  %best.1 = phi ptr [ %best.0150, %lor.lhs.false.for.inc_crit_edge ], [ %best.0150, %if.end26.for.inc_crit_edge ], [ %this.0153, %if.then39 ], [ %best.0150, %land.lhs.true37.for.inc_crit_edge ], [ %best.0150, %do.end ], [ %best.0150, %for.body.for.inc_crit_edge ]
  %39 = ptrtoint ptr %this.0153 to i32
  call void @__asan_load4_noabort(i32 %39)
  %this.0 = load ptr, ptr %this.0153, align 4
  %cmp.not = icmp eq ptr %this.0, @jffs2_compressor_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_dlen.1)
  %tobool46.not = icmp eq i32 %best_dlen.1, 0
  br i1 %tobool46.not, label %for.end.if.end54_crit_edge, label %if.then47

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %cdatalen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %best_dlen.1, ptr %cdatalen, align 4
  %41 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %best_slen.1, ptr %datalen, align 4
  %compr_buf48 = getelementptr inbounds %struct.jffs2_compressor, ptr %best.1, i32 0, i32 8
  %42 = ptrtoint ptr %compr_buf48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %compr_buf48, align 4
  store ptr null, ptr %compr_buf48, align 4
  %compr_buf_size50 = getelementptr inbounds %struct.jffs2_compressor, ptr %best.1, i32 0, i32 9
  %44 = ptrtoint ptr %compr_buf_size50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %compr_buf_size50, align 4
  %stat_compr_blocks = getelementptr inbounds %struct.jffs2_compressor, ptr %best.1, i32 0, i32 12
  %45 = ptrtoint ptr %stat_compr_blocks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stat_compr_blocks, align 4
  %inc51 = add i32 %46, 1
  store i32 %inc51, ptr %stat_compr_blocks, align 4
  %stat_compr_orig_size = getelementptr inbounds %struct.jffs2_compressor, ptr %best.1, i32 0, i32 10
  %47 = ptrtoint ptr %stat_compr_orig_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stat_compr_orig_size, align 4
  %add = add i32 %48, %best_slen.1
  store i32 %add, ptr %stat_compr_orig_size, align 4
  %stat_compr_new_size = getelementptr inbounds %struct.jffs2_compressor, ptr %best.1, i32 0, i32 11
  %49 = ptrtoint ptr %stat_compr_new_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stat_compr_new_size, align 4
  %add52 = add i32 %50, %best_dlen.1
  store i32 %add52, ptr %stat_compr_new_size, align 4
  %compr53 = getelementptr inbounds %struct.jffs2_compressor, ptr %best.1, i32 0, i32 3
  %51 = ptrtoint ptr %compr53 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %compr53, align 4
  %conv = zext i8 %52 to i32
  %53 = ptrtoint ptr %cpage_out to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %43, ptr %cpage_out, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %for.end.if.end54_crit_edge, %sw.bb2.if.end54_crit_edge
  %ret.0 = phi i32 [ %conv, %if.then47 ], [ 0, %for.end.if.end54_crit_edge ], [ 0, %sw.bb2.if.end54_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call56 = tail call fastcc i32 @jffs2_selected_compress(i8 noundef zeroext 7, ptr noundef %data_in, ptr noundef %cpage_out, ptr noundef %datalen, ptr noundef %cdatalen)
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call58 = tail call fastcc i32 @jffs2_selected_compress(i8 noundef zeroext 6, ptr noundef %data_in, ptr noundef %cpage_out, ptr noundef %datalen, ptr noundef %cdatalen)
  br label %sw.epilog

do.end61:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %if.then66

sw.epilog:                                        ; preds = %sw.bb57, %sw.bb55, %if.end54, %sw.bb
  %ret.1 = phi i32 [ %call58, %sw.bb57 ], [ %call56, %sw.bb55 ], [ %ret.0, %if.end54 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp64 = icmp eq i32 %ret.1, 0
  br i1 %cmp64, label %sw.epilog.if.then66_crit_edge, label %sw.epilog.if.end69_crit_edge

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

sw.epilog.if.then66_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then66

if.then66:                                        ; preds = %sw.epilog.if.then66_crit_edge, %do.end61, %if.end.if.then66_crit_edge
  %54 = ptrtoint ptr %cpage_out to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %data_in, ptr %cpage_out, align 4
  %55 = ptrtoint ptr %cdatalen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cdatalen, align 4
  %57 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %datalen, align 4
  %58 = load i32, ptr @none_stat_compr_blocks, align 4
  %inc67 = add i32 %58, 1
  store i32 %inc67, ptr @none_stat_compr_blocks, align 4
  %59 = load i32, ptr @none_stat_compr_size, align 4
  %add68 = add i32 %59, %56
  store i32 %add68, ptr @none_stat_compr_size, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %sw.epilog.if.end69_crit_edge
  %ret.1142 = phi i32 [ 0, %if.then66 ], [ %ret.1, %sw.epilog.if.end69_crit_edge ]
  %conv70 = trunc i32 %ret.1142 to i16
  ret i16 %conv70
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_selected_compress(i8 noundef zeroext %compr, ptr noundef %data_in, ptr nocapture noundef writeonly %cpage_out, ptr noundef %datalen, ptr noundef %cdatalen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdatalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cdatalen, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datalen, align 4
  %4 = ptrtoint ptr %cdatalen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cdatalen, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %this.069 = load ptr, ptr @jffs2_compressor_list, align 4
  %cmp.not70 = icmp eq ptr %this.069, @jffs2_compressor_list
  br i1 %cmp.not70, label %if.end.for.end.thread_crit_edge, label %for.body.lr.ph

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %compr)
  %tobool7.not = icmp eq i8 %compr, 0
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  br label %if.then31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %this.071 = phi ptr [ %this.069, %for.body.lr.ph ], [ %this.0, %for.inc.for.body_crit_edge ]
  %compress = getelementptr inbounds %struct.jffs2_compressor, ptr %this.071, i32 0, i32 4
  %6 = ptrtoint ptr %compress to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compress, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %disabled = getelementptr inbounds %struct.jffs2_compressor, ptr %this.071, i32 0, i32 7
  %8 = ptrtoint ptr %disabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end6:                                          ; preds = %lor.lhs.false
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %land.lhs.true

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %compr9 = getelementptr inbounds %struct.jffs2_compressor, ptr %this.071, i32 0, i32 3
  %10 = ptrtoint ptr %compr9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %compr9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %compr)
  %cmp11.not = icmp eq i8 %11, %compr
  br i1 %cmp11.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %usecount = getelementptr inbounds %struct.jffs2_compressor, ptr %this.071, i32 0, i32 6
  %12 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usecount, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %usecount, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %14 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %datalen, align 4
  %15 = ptrtoint ptr %cdatalen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %cdatalen, align 4
  %16 = ptrtoint ptr %compress to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %compress, align 4
  %call16 = tail call i32 %17(ptr noundef %data_in, ptr noundef nonnull %call9.i, ptr noundef %datalen, ptr noundef %cdatalen) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %18 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usecount, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %for.end, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %this.071 to i32
  call void @__asan_load4_noabort(i32 %20)
  %this.0 = load ptr, ptr %this.071, align 4
  %cmp.not = icmp eq ptr %this.0, @jffs2_compressor_list
  br i1 %cmp.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

for.end:                                          ; preds = %if.end14
  %compr20 = getelementptr inbounds %struct.jffs2_compressor, ptr %this.071, i32 0, i32 3
  %21 = ptrtoint ptr %compr20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %compr20, align 4
  %stat_compr_blocks = getelementptr inbounds %struct.jffs2_compressor, ptr %this.071, i32 0, i32 12
  %23 = ptrtoint ptr %stat_compr_blocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stat_compr_blocks, align 4
  %inc22 = add i32 %24, 1
  store i32 %inc22, ptr %stat_compr_blocks, align 4
  %25 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %datalen, align 4
  %stat_compr_orig_size = getelementptr inbounds %struct.jffs2_compressor, ptr %this.071, i32 0, i32 10
  %27 = ptrtoint ptr %stat_compr_orig_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stat_compr_orig_size, align 4
  %add = add i32 %28, %26
  store i32 %add, ptr %stat_compr_orig_size, align 4
  %29 = ptrtoint ptr %cdatalen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cdatalen, align 4
  %stat_compr_new_size = getelementptr inbounds %struct.jffs2_compressor, ptr %this.071, i32 0, i32 11
  %31 = ptrtoint ptr %stat_compr_new_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stat_compr_new_size, align 4
  %add23 = add i32 %32, %30
  store i32 %add23, ptr %stat_compr_new_size, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp29 = icmp eq i8 %22, 0
  br i1 %cmp29, label %for.end.if.then31_crit_edge, label %if.else

for.end.if.then31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

if.then31:                                        ; preds = %for.end.if.then31_crit_edge, %for.end.thread
  tail call void @kfree(ptr noundef nonnull %call9.i) #5
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv21 = zext i8 %22 to i32
  %33 = ptrtoint ptr %cpage_out to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i, ptr %cpage_out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then31, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv21, %if.else ], [ 0, %if.then31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_decompress(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %f, i16 noundef zeroext %comprtype, ptr noundef %cdata_in, ptr noundef %data_out, i32 noundef %cdatalen, i32 noundef %datalen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %comprtype, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %0)
  %cmp = icmp ult i16 %0, 7
  %spec.select = select i1 %cmp, i16 %0, i16 %comprtype
  %conv5 = zext i16 %spec.select to i32
  %trunc = trunc i16 %spec.select to i8
  %1 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %trunc, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = call ptr @memcpy(ptr %data_out, ptr %cdata_in, i32 %datalen)
  %3 = load i32, ptr @none_stat_decompr_blocks, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @none_stat_decompr_blocks, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = call ptr @memset(ptr %data_out, i32 0, i32 %datalen)
  br label %cleanup

sw.default:                                       ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.default
  %this.0.in = phi ptr [ @jffs2_compressor_list, %sw.default ], [ %this.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %this.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %this.0 = load ptr, ptr %this.0.in, align 4
  %cmp8.not = icmp eq ptr %this.0, @jffs2_compressor_list
  br i1 %cmp8.not, label %do.end29, label %for.body

for.body:                                         ; preds = %for.cond
  %compr = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0, i32 0, i32 3
  %6 = ptrtoint ptr %compr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %compr, align 4
  %8 = zext i8 %7 to i16
  %cmp12 = icmp eq i16 %spec.select, %8
  br i1 %cmp12, label %if.then14, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then14:                                        ; preds = %for.body
  %usecount = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0, i32 0, i32 6
  %9 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usecount, align 4
  %inc15 = add i32 %10, 1
  store i32 %inc15, ptr %usecount, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %decompress = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0, i32 0, i32 5
  %11 = ptrtoint ptr %decompress to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %decompress, align 4
  %call = tail call i32 %12(ptr noundef %cdata_in, ptr noundef %data_out, i32 noundef %cdatalen, i32 noundef %datalen) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0, i32 0, i32 2
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %14, i32 noundef %call) #9
  br label %if.end20

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %stat_decompr_blocks = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0, i32 0, i32 13
  %15 = ptrtoint ptr %stat_decompr_blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stat_decompr_blocks, align 4
  %inc19 = add i32 %16, 1
  store i32 %inc19, ptr %stat_decompr_blocks, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.end
  %17 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usecount, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %usecount, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  br label %cleanup

do.end29:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv5) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end20, %sw.bb7, %sw.bb
  %retval.0 = phi i32 [ %call, %if.end20 ], [ -5, %do.end29 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_register_compressor(ptr noundef %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.jffs2_compressor, ptr %comp, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %compr_buf = getelementptr inbounds %struct.jffs2_compressor, ptr %comp, i32 0, i32 8
  %usecount = getelementptr inbounds %struct.jffs2_compressor, ptr %comp, i32 0, i32 6
  %2 = ptrtoint ptr %usecount to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usecount, align 4
  %3 = call ptr @memset(ptr %compr_buf, i32 0, i32 24)
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %priority5 = getelementptr inbounds %struct.jffs2_compressor, ptr %comp, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %this.0.in = phi ptr [ @jffs2_compressor_list, %if.end ], [ %this.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %this.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %this.0 = load ptr, ptr %this.0.in, align 4
  %cmp.not = icmp eq ptr %this.0, @jffs2_compressor_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %priority = getelementptr inbounds %struct.jffs2_compressor, ptr %this.0, i32 0, i32 1
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority, align 4
  %7 = ptrtoint ptr %priority5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority5, align 4
  %cmp6 = icmp slt i32 %6, %8
  br i1 %cmp6, label %if.then7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then7:                                         ; preds = %for.body
  %prev = getelementptr inbounds %struct.list_head, ptr %this.0, i32 0, i32 1
  %9 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %comp, ptr noundef %10, ptr noundef %12) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  br label %out.sink.split

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @jffs2_compressor_list, i32 0, i32 1), align 4
  %call.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef %comp, ptr noundef %13, ptr noundef nonnull @jffs2_compressor_list) #5
  br i1 %call.i.i29, label %for.end.out.sink.split_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.end.out.sink.split_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %for.end.out.sink.split_crit_edge, %if.end.i.i
  %.sink36 = phi ptr [ %prev1.i.i, %if.end.i.i ], [ getelementptr inbounds (%struct.list_head, ptr @jffs2_compressor_list, i32 0, i32 1), %for.end.out.sink.split_crit_edge ]
  %jffs2_compressor_list.sink = phi ptr [ %12, %if.end.i.i ], [ @jffs2_compressor_list, %for.end.out.sink.split_crit_edge ]
  %.sink35 = phi ptr [ %10, %if.end.i.i ], [ %13, %for.end.out.sink.split_crit_edge ]
  %14 = ptrtoint ptr %.sink36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %comp, ptr %.sink36, align 4
  %15 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %jffs2_compressor_list.sink, ptr %comp, align 4
  %prev3.i.i30 = getelementptr inbounds %struct.list_head, ptr %comp, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink35, ptr %prev3.i.i30, align 4
  %17 = ptrtoint ptr %.sink35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %comp, ptr %.sink35, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %for.end.out_crit_edge, %if.then7.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ 0, %out ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_unregister_compressor(ptr noundef %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %usecount = getelementptr inbounds %struct.jffs2_compressor, ptr %comp, i32 0, i32 6
  %0 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %comp) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %comp, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %comp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %comp, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jffs2_compressor_list_lock) #5
  br label %return

return:                                           ; preds = %list_del.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %list_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_comprbuf(ptr noundef %comprbuf, ptr noundef readnone %orig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %orig, %comprbuf
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %comprbuf) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_compressors_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_zlib_init() #5
  %call1 = tail call i32 @jffs2_rtime_init() #5
  %call2 = tail call i32 @jffs2_rubinmips_init() #5
  %call3 = tail call i32 @jffs2_dynrubin_init() #5
  %call4 = tail call i32 @jffs2_lzo_init() #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_zlib_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_rtime_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_rubinmips_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_dynrubin_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_lzo_init() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_compressors_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @jffs2_lzo_exit() #5
  tail call void @jffs2_dynrubin_exit() #5
  tail call void @jffs2_rubinmips_exit() #5
  tail call void @jffs2_rtime_exit() #5
  tail call void @jffs2_zlib_exit() #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_lzo_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_dynrubin_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_rubinmips_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_rtime_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_zlib_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/compr.c", i32 193, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jffs2_compress._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jffs2_compress._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/compr.c", i32 241, i32 3}
!8 = !{ptr @jffs2_compress._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jffs2_compress._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jffs2/compr.c", i32 283, i32 6}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @jffs2_decompress._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @jffs2_decompress._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/jffs2/compr.c", i32 294, i32 3}
!17 = !{ptr @jffs2_decompress._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @jffs2_decompress._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/jffs2/compr.c", i32 306, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @jffs2_register_compressor._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @jffs2_register_compressor._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jffs2/compr.c", i32 347, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @jffs2_unregister_compressor._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @jffs2_unregister_compressor._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"jffs2_compression_mode", i1 false, i1 false}
!30 = !{!"../fs/jffs2/compr.c", i32 25, i32 12}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/jffs2/compr.c", i32 84, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @jffs2_selected_compress._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @jffs2_selected_compress._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/jffs2/compr.c", i32 19, i32 8}
!38 = !{ptr @jffs2_compressor_list_lock, !37, !"jffs2_compressor_list_lock", i1 false, i1 false}
!39 = !{ptr @jffs2_compressor_list, !40, !"jffs2_compressor_list", i1 false, i1 false}
!40 = !{!"../fs/jffs2/compr.c", i32 22, i32 8}
!41 = !{ptr @none_stat_compr_blocks, !42, !"none_stat_compr_blocks", i1 false, i1 false}
!42 = !{!"../fs/jffs2/compr.c", i32 28, i32 17}
!43 = !{ptr @none_stat_compr_size, !44, !"none_stat_compr_size", i1 false, i1 false}
!44 = !{!"../fs/jffs2/compr.c", i32 28, i32 69}
!45 = !{ptr @none_stat_decompr_blocks, !46, !"none_stat_decompr_blocks", i1 false, i1 false}
!46 = !{!"../fs/jffs2/compr.c", i32 28, i32 42}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
